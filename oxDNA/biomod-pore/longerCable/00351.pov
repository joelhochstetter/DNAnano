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
	<23.919750, 35.158684, 34.911388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238064, 34.993454, 35.088520>,  <24.429052, 34.894318, 35.194801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238064, 34.993454, 35.088520>,  <23.919750, 35.158684, 34.911388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238064, 34.993454, 35.088520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555958, 0.208421, -0.804656,
		0.240087, 0.886527, 0.395510,
		0.795782, -0.413074, 0.442832,
		24.476799, 34.869534, 35.221371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536194, 35.566925, 34.927246>,  <23.919750, 35.158684, 34.911388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536194, 35.566925, 34.927246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642195, 35.181465, 34.913712>,  <24.705795, 34.950188, 34.905590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642195, 35.181465, 34.913712>,  <24.536194, 35.566925, 34.927246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642195, 35.181465, 34.913712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540679, 0.177556, -0.822277,
		0.798398, 0.199615, 0.568080,
		0.265005, -0.963654, -0.033833,
		24.721697, 34.892368, 34.903561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332478, 35.467281, 34.842743>,  <24.536194, 35.566925, 34.927246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332478, 35.467281, 34.842743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164631, 35.120014, 34.736752>,  <25.063923, 34.911655, 34.673157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164631, 35.120014, 34.736752>,  <25.332478, 35.467281, 34.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164631, 35.120014, 34.736752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421408, 0.072231, -0.903990,
		0.803951, -0.490993, 0.335542,
		-0.419617, -0.868163, -0.264979,
		25.038746, 34.859566, 34.657257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918110, 34.960476, 34.698483>,  <25.332478, 35.467281, 34.842743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918110, 34.960476, 34.698483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574818, 34.908649, 34.499825>,  <25.368843, 34.877556, 34.380630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574818, 34.908649, 34.499825>,  <25.918110, 34.960476, 34.698483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574818, 34.908649, 34.499825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477230, 0.154748, -0.865046,
		0.188931, -0.979422, -0.070980,
		-0.858229, -0.129560, -0.496646,
		25.317348, 34.869781, 34.350830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121853, 34.230930, 34.580124>,  <25.918110, 34.960476, 34.698483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121853, 34.230930, 34.580124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287121, 34.136490, 34.228317>,  <26.386282, 34.079826, 34.017235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287121, 34.136490, 34.228317>,  <26.121853, 34.230930, 34.580124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287121, 34.136490, 34.228317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415984, -0.908086, 0.048351,
		-0.810092, 0.345887, -0.473405,
		0.413169, -0.236098, -0.879517,
		26.411072, 34.065662, 33.964462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671387, 34.003178, 34.138695>,  <26.121853, 34.230930, 34.580124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671387, 34.003178, 34.138695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024343, 33.856628, 34.020611>,  <26.236118, 33.768700, 33.949760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024343, 33.856628, 34.020611>,  <25.671387, 34.003178, 34.138695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024343, 33.856628, 34.020611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363026, -0.929280, 0.068195,
		-0.299322, 0.046995, -0.952994,
		0.882394, -0.366374, -0.295214,
		26.289062, 33.746716, 33.932045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485493, 33.385612, 33.976730>,  <25.671387, 34.003178, 34.138695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485493, 33.385612, 33.976730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860306, 33.262112, 33.911434>,  <26.085194, 33.188011, 33.872257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860306, 33.262112, 33.911434>,  <25.485493, 33.385612, 33.976730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860306, 33.262112, 33.911434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271983, -0.938321, 0.213492,
		-0.219085, -0.155651, -0.963211,
		0.937031, -0.308750, -0.163237,
		26.141415, 33.169487, 33.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317814, 33.875038, 33.437035>,  <25.485493, 33.385612, 33.976730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317814, 33.875038, 33.437035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707087, 33.805275, 33.377033>,  <25.940649, 33.763416, 33.341030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707087, 33.805275, 33.377033>,  <25.317814, 33.875038, 33.437035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707087, 33.805275, 33.377033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225507, -0.852113, -0.472282,
		-0.045454, 0.493443, -0.868589,
		0.973181, -0.174406, -0.150007,
		25.999041, 33.752953, 33.332031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429815, 33.599300, 32.789333>,  <25.317814, 33.875038, 33.437035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429815, 33.599300, 32.789333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742903, 33.472759, 33.003723>,  <25.930756, 33.396835, 33.132359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742903, 33.472759, 33.003723>,  <25.429815, 33.599300, 32.789333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742903, 33.472759, 33.003723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133904, -0.926613, -0.351366,
		0.607798, 0.203252, -0.767639,
		0.782721, -0.316349, 0.535977,
		25.977718, 33.377853, 33.164516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785694, 33.299515, 32.309994>,  <25.429815, 33.599300, 32.789333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785694, 33.299515, 32.309994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903818, 33.127060, 32.651031>,  <25.974691, 33.023586, 32.855652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903818, 33.127060, 32.651031>,  <25.785694, 33.299515, 32.309994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903818, 33.127060, 32.651031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006615, -0.893291, -0.449431,
		0.955379, 0.127081, -0.266649,
		0.295309, -0.431141, 0.852590,
		25.992411, 32.997719, 32.906807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244883, 32.812504, 32.049408>,  <25.785694, 33.299515, 32.309994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244883, 32.812504, 32.049408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190723, 32.670666, 32.419476>,  <26.158228, 32.585564, 32.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190723, 32.670666, 32.419476>,  <26.244883, 32.812504, 32.049408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190723, 32.670666, 32.419476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069550, -0.928058, -0.365884,
		0.988347, -0.113885, 0.100994,
		-0.135397, -0.354597, 0.925164,
		26.150105, 32.564285, 32.697025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765314, 32.289913, 32.193924>,  <26.244883, 32.812504, 32.049408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765314, 32.289913, 32.193924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430027, 32.249554, 32.408295>,  <26.228855, 32.225338, 32.536915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430027, 32.249554, 32.408295>,  <26.765314, 32.289913, 32.193924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430027, 32.249554, 32.408295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073249, -0.953000, -0.293983,
		0.540397, -0.285677, 0.791429,
		-0.838216, -0.100896, 0.535923,
		26.178562, 32.219284, 32.569073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718786, 31.883459, 32.792561>,  <26.765314, 32.289913, 32.193924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718786, 31.883459, 32.792561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345697, 31.850204, 32.652206>,  <26.121845, 31.830252, 32.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345697, 31.850204, 32.652206>,  <26.718786, 31.883459, 32.792561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345697, 31.850204, 32.652206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115661, -0.990622, -0.072736,
		-0.341547, -0.108426, 0.933590,
		-0.932721, -0.083137, -0.350885,
		26.065882, 31.825264, 32.546940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291702, 31.526989, 33.161499>,  <26.718786, 31.883459, 32.792561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291702, 31.526989, 33.161499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105726, 31.499136, 32.808460>,  <25.994141, 31.482424, 32.596638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105726, 31.499136, 32.808460>,  <26.291702, 31.526989, 33.161499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105726, 31.499136, 32.808460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050467, -0.993197, 0.104941,
		-0.883904, 0.093334, 0.458262,
		-0.464939, -0.069631, -0.882600,
		25.966246, 31.478247, 32.543678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507450, 31.322613, 33.175652>,  <26.291702, 31.526989, 33.161499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507450, 31.322613, 33.175652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685572, 31.213169, 32.834629>,  <25.792444, 31.147503, 32.630016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685572, 31.213169, 32.834629>,  <25.507450, 31.322613, 33.175652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685572, 31.213169, 32.834629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291874, -0.944515, 0.150670,
		-0.846472, 0.181744, -0.500454,
		0.445303, -0.273607, -0.852551,
		25.819162, 31.131086, 32.578865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414694, 32.120670, 33.255936>,  <25.507450, 31.322613, 33.175652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414694, 32.120670, 33.255936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788771, 32.098747, 33.115986>,  <26.013216, 32.085594, 33.032017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788771, 32.098747, 33.115986>,  <25.414694, 32.120670, 33.255936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788771, 32.098747, 33.115986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250353, 0.801073, 0.543695,
		0.250478, -0.596052, 0.762878,
		0.935192, -0.054805, -0.349874,
		26.069328, 32.082306, 33.011024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044849, 32.023331, 33.819088>,  <25.414694, 32.120670, 33.255936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044849, 32.023331, 33.819088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117319, 32.216251, 33.476261>,  <26.160801, 32.332005, 33.270565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117319, 32.216251, 33.476261>,  <26.044849, 32.023331, 33.819088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117319, 32.216251, 33.476261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025912, 0.873528, 0.486084,
		0.983110, -0.065857, 0.170757,
		0.181173, 0.482298, -0.857067,
		26.171671, 32.360939, 33.219139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510599, 32.557751, 33.996620>,  <26.044849, 32.023331, 33.819088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510599, 32.557751, 33.996620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372303, 32.686569, 33.644085>,  <26.289326, 32.763859, 33.432564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372303, 32.686569, 33.644085>,  <26.510599, 32.557751, 33.996620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372303, 32.686569, 33.644085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178663, 0.944670, 0.275098,
		0.921164, -0.062349, -0.384147,
		-0.345740, 0.322043, -0.881335,
		26.268581, 32.783184, 33.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088297, 32.957962, 33.669289>,  <26.510599, 32.557751, 33.996620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088297, 32.957962, 33.669289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751219, 33.084167, 33.494789>,  <26.548971, 33.159889, 33.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751219, 33.084167, 33.494789>,  <27.088297, 32.957962, 33.669289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751219, 33.084167, 33.494789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292582, 0.948572, 0.120859,
		0.451948, -0.025792, -0.891671,
		-0.842697, 0.315509, -0.436251,
		26.498409, 33.178822, 33.363914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304617, 33.523518, 33.244991>,  <27.088297, 32.957962, 33.669289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304617, 33.523518, 33.244991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908583, 33.570000, 33.276566>,  <26.670963, 33.597889, 33.295509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908583, 33.570000, 33.276566>,  <27.304617, 33.523518, 33.244991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908583, 33.570000, 33.276566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125272, 0.984613, 0.121837,
		-0.063563, 0.130517, -0.989406,
		-0.990084, 0.116201, 0.078935,
		26.611557, 33.604858, 33.300247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005529, 34.043510, 32.766544>,  <27.304617, 33.523518, 33.244991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005529, 34.043510, 32.766544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806570, 34.014511, 33.112339>,  <26.687195, 33.997112, 33.319817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806570, 34.014511, 33.112339>,  <27.005529, 34.043510, 32.766544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806570, 34.014511, 33.112339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117387, 0.981713, 0.149868,
		-0.859545, 0.176023, -0.479791,
		-0.497397, -0.072497, 0.864489,
		26.657351, 33.992764, 33.371685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534653, 34.592098, 32.862049>,  <27.005529, 34.043510, 32.766544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534653, 34.592098, 32.862049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702246, 34.458874, 33.199932>,  <26.802801, 34.378941, 33.402660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702246, 34.458874, 33.199932>,  <26.534653, 34.592098, 32.862049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702246, 34.458874, 33.199932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338672, 0.920486, 0.194955,
		-0.842469, 0.204394, 0.498467,
		0.418984, -0.333060, 0.844703,
		26.827940, 34.358955, 33.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106253, 35.105728, 32.882061>,  <26.534653, 34.592098, 32.862049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106253, 35.105728, 32.882061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786001, 34.900463, 32.758350>,  <25.593851, 34.777302, 32.684124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786001, 34.900463, 32.758350>,  <26.106253, 35.105728, 32.882061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786001, 34.900463, 32.758350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368000, 0.013807, 0.929723,
		-0.472832, 0.858178, -0.199899,
		-0.800628, -0.513166, -0.309281,
		25.545813, 34.746513, 32.665565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618580, 35.587246, 33.020927>,  <26.106253, 35.105728, 32.882061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618580, 35.587246, 33.020927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525383, 35.199238, 33.048550>,  <25.469465, 34.966431, 33.065125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525383, 35.199238, 33.048550>,  <25.618580, 35.587246, 33.020927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525383, 35.199238, 33.048550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395919, 0.159477, 0.904331,
		-0.888236, 0.183361, -0.421208,
		-0.232992, -0.970024, 0.069057,
		25.455486, 34.908230, 33.069267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885799, 35.541546, 33.312794>,  <25.618580, 35.587246, 33.020927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885799, 35.541546, 33.312794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090267, 35.201710, 33.364796>,  <25.212948, 34.997807, 33.395996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090267, 35.201710, 33.364796>,  <24.885799, 35.541546, 33.312794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090267, 35.201710, 33.364796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397519, -0.099591, 0.912173,
		-0.762025, -0.517957, -0.388636,
		0.511171, -0.849589, 0.130007,
		25.243618, 34.946835, 33.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267019, 35.125832, 33.553162>,  <24.885799, 35.541546, 33.312794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267019, 35.125832, 33.553162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615015, 34.958332, 33.657291>,  <24.823812, 34.857834, 33.719769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615015, 34.958332, 33.657291>,  <24.267019, 35.125832, 33.553162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615015, 34.958332, 33.657291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408685, -0.317026, 0.855845,
		-0.275850, -0.850969, -0.446944,
		0.869990, -0.418744, 0.260327,
		24.876011, 34.832706, 33.735390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200838, 34.428497, 33.739582>,  <24.267019, 35.125832, 33.553162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.200838, 34.428497, 33.739582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533575, 34.555435, 33.921715>,  <24.733217, 34.631599, 34.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533575, 34.555435, 33.921715>,  <24.200838, 34.428497, 33.739582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533575, 34.555435, 33.921715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317812, -0.400227, 0.859543,
		0.455010, -0.859715, -0.232069,
		0.831842, 0.317347, 0.455335,
		24.783127, 34.650639, 34.058315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547096, 33.813900, 34.055420>,  <24.200838, 34.428497, 33.739582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547096, 33.813900, 34.055420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665876, 34.145576, 34.244850>,  <24.737144, 34.344582, 34.358509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665876, 34.145576, 34.244850>,  <24.547096, 33.813900, 34.055420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665876, 34.145576, 34.244850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298206, -0.390610, 0.870917,
		0.907135, -0.399841, 0.131276,
		0.296951, 0.829187, 0.473571,
		24.754961, 34.394333, 34.386921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820377, 33.647255, 34.636494>,  <24.547096, 33.813900, 34.055420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820377, 33.647255, 34.636494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779024, 34.031281, 34.740486>,  <24.754213, 34.261696, 34.802883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779024, 34.031281, 34.740486>,  <24.820377, 33.647255, 34.636494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779024, 34.031281, 34.740486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009923, -0.262368, 0.964917,
		0.994592, 0.097175, 0.036651,
		-0.103382, 0.960062, 0.259985,
		24.748009, 34.319298, 34.818481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275808, 33.777206, 35.145489>,  <24.820377, 33.647255, 34.636494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275808, 33.777206, 35.145489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946198, 34.001884, 35.175102>,  <24.748430, 34.136692, 35.192871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946198, 34.001884, 35.175102>,  <25.275808, 33.777206, 35.145489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946198, 34.001884, 35.175102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125186, -0.307968, 0.943124,
		0.552546, 0.767892, 0.324090,
		-0.824028, 0.561691, 0.074037,
		24.698990, 34.170391, 35.197311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334620, 34.146152, 35.857990>,  <25.275808, 33.777206, 35.145489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334620, 34.146152, 35.857990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948126, 34.152992, 35.755154>,  <24.716228, 34.157097, 35.693451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948126, 34.152992, 35.755154>,  <25.334620, 34.146152, 35.857990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948126, 34.152992, 35.755154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257165, -0.002265, 0.966365,
		0.015945, 0.999851, 0.006587,
		-0.966236, 0.017103, -0.257091,
		24.658255, 34.158123, 35.678028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950716, 34.770977, 36.211414>,  <25.334620, 34.146152, 35.857990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950716, 34.770977, 36.211414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689238, 34.480396, 36.126610>,  <24.532351, 34.306049, 36.075726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689238, 34.480396, 36.126610>,  <24.950716, 34.770977, 36.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689238, 34.480396, 36.126610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258683, -0.048781, 0.964730,
		-0.711173, 0.685483, -0.156033,
		-0.653695, -0.726452, -0.212015,
		24.493130, 34.262459, 36.063004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095404, 34.266739, 36.767937>,  <24.950716, 34.770977, 36.211414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095404, 34.266739, 36.767937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719177, 34.396805, 36.807137>,  <24.493443, 34.474846, 36.830658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719177, 34.396805, 36.807137>,  <25.095404, 34.266739, 36.767937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719177, 34.396805, 36.807137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208315, -0.780285, 0.589711,
		0.268223, 0.534247, 0.801646,
		-0.940564, 0.325169, 0.097999,
		24.437008, 34.494354, 36.836536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383265, 33.847584, 37.378899>,  <25.095404, 34.266739, 36.767937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383265, 33.847584, 37.378899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198816, 33.517704, 37.509892>,  <25.088148, 33.319778, 37.588486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198816, 33.517704, 37.509892>,  <25.383265, 33.847584, 37.378899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198816, 33.517704, 37.509892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886193, -0.446763, 0.122740,
		0.045083, 0.346809, 0.936852,
		-0.461118, -0.824697, 0.327481,
		25.060480, 33.270294, 37.608135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780069, 33.564415, 37.819286>,  <25.383265, 33.847584, 37.378899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780069, 33.564415, 37.819286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547750, 33.248940, 37.738640>,  <25.408360, 33.059654, 37.690254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547750, 33.248940, 37.738640>,  <25.780069, 33.564415, 37.819286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547750, 33.248940, 37.738640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794326, -0.603256, 0.071612,
		-0.178103, -0.118554, 0.976844,
		-0.580797, -0.788687, -0.201612,
		25.373512, 33.012333, 37.678158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250566, 33.022858, 37.950344>,  <25.780069, 33.564415, 37.819286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250566, 33.022858, 37.950344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531881, 32.739670, 37.976154>,  <26.700670, 32.569756, 37.991642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531881, 32.739670, 37.976154>,  <26.250566, 33.022858, 37.950344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531881, 32.739670, 37.976154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710610, 0.702714, -0.035029,
		-0.020546, 0.070490, 0.997301,
		0.703286, -0.707972, 0.064528,
		26.742867, 32.527279, 37.995514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622524, 32.885654, 38.714233>,  <26.250566, 33.022858, 37.950344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622524, 32.885654, 38.714233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774849, 32.841537, 38.347012>,  <26.866243, 32.815067, 38.126678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774849, 32.841537, 38.347012>,  <26.622524, 32.885654, 38.714233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774849, 32.841537, 38.347012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534543, 0.836399, 0.121247,
		0.754484, -0.536910, 0.377466,
		0.380811, -0.110293, -0.918052,
		26.889091, 32.808449, 38.071594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346863, 32.943134, 38.770142>,  <26.622524, 32.885654, 38.714233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346863, 32.943134, 38.770142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270161, 33.011326, 38.383533>,  <27.224138, 33.052242, 38.151569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270161, 33.011326, 38.383533>,  <27.346863, 32.943134, 38.770142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270161, 33.011326, 38.383533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642283, 0.766428, 0.007759,
		0.742092, -0.619294, -0.256464,
		-0.191756, 0.170480, -0.966523,
		27.212633, 33.062469, 38.093578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974560, 33.218269, 38.647823>,  <27.346863, 32.943134, 38.770142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974560, 33.218269, 38.647823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752737, 33.331139, 38.334686>,  <27.619644, 33.398861, 38.146805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752737, 33.331139, 38.334686>,  <27.974560, 33.218269, 38.647823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752737, 33.331139, 38.334686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485590, 0.873704, -0.029065,
		0.675773, -0.396260, -0.621538,
		-0.554557, 0.282171, -0.782845,
		27.586370, 33.415791, 38.099834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397278, 33.422031, 38.152176>,  <27.974560, 33.218269, 38.647823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397278, 33.422031, 38.152176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049097, 33.594059, 38.056385>,  <27.840189, 33.697277, 37.998909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049097, 33.594059, 38.056385>,  <28.397278, 33.422031, 38.152176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049097, 33.594059, 38.056385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474645, 0.862245, -0.176763,
		0.130468, -0.267531, -0.954676,
		-0.870454, 0.430070, -0.239477,
		27.787960, 33.723080, 37.984543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114536, 34.069695, 38.475468>,  <28.397278, 33.422031, 38.152176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114536, 34.069695, 38.475468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967857, 34.303627, 38.186054>,  <27.879850, 34.443985, 38.012405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967857, 34.303627, 38.186054>,  <28.114536, 34.069695, 38.475468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967857, 34.303627, 38.186054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437384, -0.794776, -0.420744,
		-0.821115, 0.162179, 0.547236,
		-0.366694, 0.584832, -0.723538,
		27.857849, 34.479076, 37.968994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434832, 34.174629, 38.520370>,  <28.114536, 34.069695, 38.475468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434832, 34.174629, 38.520370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552456, 34.166992, 38.138130>,  <27.623030, 34.162411, 37.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552456, 34.166992, 38.138130>,  <27.434832, 34.174629, 38.520370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552456, 34.166992, 38.138130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557145, -0.815793, -0.155147,
		-0.776607, 0.578029, -0.250529,
		0.294059, -0.019092, -0.955597,
		27.640673, 34.161266, 37.851452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855761, 34.247051, 37.875553>,  <27.434832, 34.174629, 38.520370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855761, 34.247051, 37.875553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176369, 34.060005, 37.726475>,  <27.368734, 33.947777, 37.637028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176369, 34.060005, 37.726475>,  <26.855761, 34.247051, 37.875553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176369, 34.060005, 37.726475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548992, -0.822495, -0.148695,
		-0.237009, 0.323789, -0.915963,
		0.801521, -0.467614, -0.372696,
		27.416824, 33.919720, 37.614666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707119, 33.823051, 37.235661>,  <26.855761, 34.247051, 37.875553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707119, 33.823051, 37.235661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001556, 33.681469, 37.466442>,  <27.178219, 33.596519, 37.604912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001556, 33.681469, 37.466442>,  <26.707119, 33.823051, 37.235661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001556, 33.681469, 37.466442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423706, -0.905675, -0.015053,
		0.527861, -0.233378, -0.816638,
		0.736096, -0.353960, 0.576954,
		27.222385, 33.575279, 37.639526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007776, 33.224640, 36.805763>,  <26.707119, 33.823051, 37.235661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007776, 33.224640, 36.805763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063900, 33.173515, 37.198494>,  <27.097574, 33.142841, 37.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063900, 33.173515, 37.198494>,  <27.007776, 33.224640, 36.805763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063900, 33.173515, 37.198494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365706, -0.928202, -0.068566,
		0.920094, -0.349438, -0.176976,
		0.140310, -0.127808, 0.981824,
		27.105993, 33.135174, 37.493042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440380, 32.594379, 36.885242>,  <27.007776, 33.224640, 36.805763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440380, 32.594379, 36.885242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255972, 32.670197, 37.232006>,  <27.145327, 32.715687, 37.440063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255972, 32.670197, 37.232006>,  <27.440380, 32.594379, 36.885242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255972, 32.670197, 37.232006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357965, -0.933633, 0.013769,
		0.811986, -0.303976, 0.498275,
		-0.461021, 0.189546, 0.866910,
		27.117666, 32.727058, 37.492081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532616, 32.048241, 37.158722>,  <27.440380, 32.594379, 36.885242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532616, 32.048241, 37.158722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232630, 32.204517, 37.372234>,  <27.052639, 32.298283, 37.500340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232630, 32.204517, 37.372234>,  <27.532616, 32.048241, 37.158722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232630, 32.204517, 37.372234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439592, -0.897344, 0.039160,
		0.494280, -0.205275, 0.844718,
		-0.749964, 0.390688, 0.533777,
		27.007641, 32.321724, 37.532368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330915, 31.872236, 37.029671>,  <27.532616, 32.048241, 37.158722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330915, 31.872236, 37.029671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517700, 32.142689, 36.801708>,  <28.629770, 32.304958, 36.664932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517700, 32.142689, 36.801708>,  <28.330915, 31.872236, 37.029671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517700, 32.142689, 36.801708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750496, 0.037814, 0.659792,
		0.467656, -0.735811, -0.489775,
		0.466963, 0.676130, -0.569907,
		28.657789, 32.345528, 36.630737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995316, 31.711765, 36.941326>,  <28.330915, 31.872236, 37.029671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995316, 31.711765, 36.941326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980783, 32.111492, 36.944054>,  <28.972063, 32.351330, 36.945690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980783, 32.111492, 36.944054>,  <28.995316, 31.711765, 36.941326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980783, 32.111492, 36.944054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857677, 0.027681, 0.513444,
		0.512904, 0.024501, -0.858096,
		-0.036333, 0.999317, 0.006817,
		28.969883, 32.411285, 36.946098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638885, 31.504810, 36.753963>,  <28.995316, 31.711765, 36.941326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638885, 31.504810, 36.753963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356411, 31.702127, 36.550800>,  <29.186926, 31.820517, 36.428902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356411, 31.702127, 36.550800>,  <29.638885, 31.504810, 36.753963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356411, 31.702127, 36.550800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002611, -0.715534, -0.698574,
		-0.708025, -0.494647, 0.504010,
		-0.706183, 0.493291, -0.507907,
		29.144556, 31.850115, 36.398430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051933, 31.023691, 36.517651>,  <29.638885, 31.504810, 36.753963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051933, 31.023691, 36.517651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097660, 31.327454, 36.261452>,  <29.125097, 31.509710, 36.107735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097660, 31.327454, 36.261452>,  <29.051933, 31.023691, 36.517651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097660, 31.327454, 36.261452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157933, -0.650415, -0.742979,
		-0.980810, -0.016219, -0.194290,
		0.114319, 0.759406, -0.640495,
		29.131956, 31.555275, 36.069302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535654, 31.162243, 35.959030>,  <29.051933, 31.023691, 36.517651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535654, 31.162243, 35.959030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906454, 31.276291, 35.861561>,  <29.128935, 31.344719, 35.803078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906454, 31.276291, 35.861561>,  <28.535654, 31.162243, 35.959030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906454, 31.276291, 35.861561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087095, -0.468285, -0.879275,
		-0.364806, 0.836311, -0.409268,
		0.927001, 0.285119, -0.243672,
		29.184555, 31.361826, 35.788460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558846, 31.150316, 35.258072>,  <28.535654, 31.162243, 35.959030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558846, 31.150316, 35.258072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954590, 31.181969, 35.306900>,  <29.192036, 31.200960, 35.336197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954590, 31.181969, 35.306900>,  <28.558846, 31.150316, 35.258072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954590, 31.181969, 35.306900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141804, -0.337211, -0.930688,
		-0.032483, 0.938098, -0.344845,
		0.989362, 0.079132, 0.122073,
		29.251398, 31.205708, 35.343521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695389, 31.646482, 34.724220>,  <28.558846, 31.150316, 35.258072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695389, 31.646482, 34.724220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934473, 31.528767, 34.425922>,  <29.077923, 31.458138, 34.246944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934473, 31.528767, 34.425922>,  <28.695389, 31.646482, 34.724220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934473, 31.528767, 34.425922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746499, 0.134934, -0.651562,
		0.292375, 0.946143, -0.139037,
		0.597709, -0.294291, -0.745745,
		29.113787, 31.440479, 34.202198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107338, 32.337563, 34.788914>,  <28.695389, 31.646482, 34.724220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107338, 32.337563, 34.788914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467867, 32.210487, 34.671135>,  <29.684183, 32.134243, 34.600468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467867, 32.210487, 34.671135>,  <29.107338, 32.337563, 34.788914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467867, 32.210487, 34.671135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161639, 0.877350, -0.451807,
		0.401861, 0.359630, 0.842125,
		0.901321, -0.317684, -0.294442,
		29.738264, 32.115181, 34.582802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646599, 32.761047, 35.007504>,  <29.107338, 32.337563, 34.788914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646599, 32.761047, 35.007504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806742, 32.573818, 34.692387>,  <29.902828, 32.461479, 34.503315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806742, 32.573818, 34.692387>,  <29.646599, 32.761047, 35.007504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806742, 32.573818, 34.692387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168445, 0.882642, -0.438827,
		0.900743, 0.042988, 0.432219,
		0.400359, -0.468076, -0.787793,
		29.926849, 32.433395, 34.456047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045425, 33.284325, 34.712112>,  <29.646599, 32.761047, 35.007504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045425, 33.284325, 34.712112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033415, 33.016991, 34.414810>,  <30.026209, 32.856590, 34.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033415, 33.016991, 34.414810>,  <30.045425, 33.284325, 34.712112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033415, 33.016991, 34.414810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033438, 0.743843, -0.667517,
		0.998990, 0.004811, -0.044682,
		-0.030025, -0.668337, -0.743252,
		30.024406, 32.816490, 34.191833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683348, 33.359135, 34.330284>,  <30.045425, 33.284325, 34.712112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683348, 33.359135, 34.330284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367147, 33.228321, 34.123150>,  <30.177427, 33.149834, 33.998867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367147, 33.228321, 34.123150>,  <30.683348, 33.359135, 34.330284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367147, 33.228321, 34.123150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032872, 0.821632, -0.569070,
		0.611576, -0.466874, -0.638751,
		-0.790502, -0.327033, -0.517838,
		30.129997, 33.130211, 33.967800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835205, 33.687023, 33.731247>,  <30.683348, 33.359135, 34.330284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835205, 33.687023, 33.731247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924782, 34.056198, 33.856491>,  <30.978527, 34.277702, 33.931637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924782, 34.056198, 33.856491>,  <30.835205, 33.687023, 33.731247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924782, 34.056198, 33.856491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968812, 0.245778, -0.031556,
		-0.106079, -0.296276, 0.949193,
		0.223942, 0.922938, 0.313108,
		30.991964, 34.333080, 33.950424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400496, 33.999763, 34.148159>,  <30.835205, 33.687023, 33.731247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400496, 33.999763, 34.148159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360483, 34.030815, 34.544941>,  <31.336475, 34.049446, 34.783009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360483, 34.030815, 34.544941>,  <31.400496, 33.999763, 34.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360483, 34.030815, 34.544941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897250, -0.423855, 0.123649,
		0.430042, 0.902398, -0.027251,
		-0.100030, 0.077625, 0.991952,
		31.330475, 34.054104, 34.842525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362471, 33.230370, 34.003830>,  <31.400496, 33.999763, 34.148159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362471, 33.230370, 34.003830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732542, 33.188183, 34.149662>,  <31.954586, 33.162868, 34.237160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732542, 33.188183, 34.149662>,  <31.362471, 33.230370, 34.003830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732542, 33.188183, 34.149662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376566, 0.135300, -0.916456,
		0.047330, 0.985175, 0.164893,
		0.925180, -0.105470, 0.364580,
		32.010098, 33.156544, 34.259037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848389, 33.691177, 33.638889>,  <31.362471, 33.230370, 34.003830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848389, 33.691177, 33.638889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078003, 33.400208, 33.789272>,  <32.215771, 33.225628, 33.879501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078003, 33.400208, 33.789272>,  <31.848389, 33.691177, 33.638889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078003, 33.400208, 33.789272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523993, -0.026481, -0.851311,
		0.629216, 0.685681, 0.365962,
		0.574037, -0.727420, 0.375955,
		32.250214, 33.181980, 33.902058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516273, 33.950619, 33.539207>,  <31.848389, 33.691177, 33.638889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516273, 33.950619, 33.539207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531204, 33.550907, 33.536385>,  <32.540161, 33.311081, 33.534691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531204, 33.550907, 33.536385>,  <32.516273, 33.950619, 33.539207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531204, 33.550907, 33.536385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516084, 0.025322, -0.856164,
		0.855724, 0.028314, 0.516657,
		0.037324, -0.999278, -0.007056,
		32.542400, 33.251125, 33.534267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081234, 33.828575, 33.229755>,  <32.516273, 33.950619, 33.539207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081234, 33.828575, 33.229755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885227, 33.482925, 33.183842>,  <32.767624, 33.275536, 33.156292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885227, 33.482925, 33.183842>,  <33.081234, 33.828575, 33.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885227, 33.482925, 33.183842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332342, -0.063460, -0.941022,
		0.805874, -0.499264, 0.318280,
		-0.490016, -0.864123, -0.114786,
		32.738224, 33.223690, 33.149406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509041, 33.262005, 32.840645>,  <33.081234, 33.828575, 33.229755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509041, 33.262005, 32.840645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113155, 33.225281, 32.796749>,  <32.875626, 33.203247, 32.770412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113155, 33.225281, 32.796749>,  <33.509041, 33.262005, 32.840645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113155, 33.225281, 32.796749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097844, 0.125303, -0.987282,
		0.104386, -0.987862, -0.115032,
		-0.989712, -0.091803, -0.109737,
		32.816242, 33.197739, 32.763828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299267, 32.798676, 32.276333>,  <33.509041, 33.262005, 32.840645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299267, 32.798676, 32.276333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978924, 33.033108, 32.325550>,  <32.786720, 33.173767, 32.355080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978924, 33.033108, 32.325550>,  <33.299267, 32.798676, 32.276333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978924, 33.033108, 32.325550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024513, 0.237366, -0.971111,
		-0.598358, -0.774702, -0.204462,
		-0.800854, 0.586084, 0.123039,
		32.738667, 33.208931, 32.362461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817684, 32.526588, 31.806845>,  <33.299267, 32.798676, 32.276333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817684, 32.526588, 31.806845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765427, 32.914612, 31.888737>,  <32.734074, 33.147427, 31.937872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765427, 32.914612, 31.888737>,  <32.817684, 32.526588, 31.806845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765427, 32.914612, 31.888737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181920, 0.226450, -0.956883,
		-0.974596, -0.087766, -0.206058,
		-0.130644, 0.970061, 0.204731,
		32.726234, 33.205631, 31.950155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604565, 32.678730, 31.204399>,  <32.817684, 32.526588, 31.806845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604565, 32.678730, 31.204399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640755, 33.061668, 31.314165>,  <32.662468, 33.291431, 31.380026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640755, 33.061668, 31.314165>,  <32.604565, 32.678730, 31.204399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640755, 33.061668, 31.314165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196044, 0.253035, -0.947386,
		-0.976412, 0.139516, -0.164787,
		0.090478, 0.957344, 0.274417,
		32.667900, 33.348873, 31.396490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050972, 33.004513, 30.941216>,  <32.604565, 32.678730, 31.204399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050972, 33.004513, 30.941216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350235, 33.267174, 30.979315>,  <32.529793, 33.424770, 31.002174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350235, 33.267174, 30.979315>,  <32.050972, 33.004513, 30.941216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350235, 33.267174, 30.979315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098439, 0.032119, -0.994625,
		-0.656178, 0.753513, -0.040610,
		0.748158, 0.656648, 0.095250,
		32.574684, 33.464169, 31.007891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894316, 33.432964, 30.480957>,  <32.050972, 33.004513, 30.941216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894316, 33.432964, 30.480957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275791, 33.532837, 30.548052>,  <32.504677, 33.592758, 30.588308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275791, 33.532837, 30.548052>,  <31.894316, 33.432964, 30.480957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275791, 33.532837, 30.548052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086827, 0.305402, -0.948257,
		-0.287985, 0.918908, 0.269580,
		0.953691, 0.249677, 0.167737,
		32.561897, 33.607738, 30.598373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949364, 34.137108, 30.304813>,  <31.894316, 33.432964, 30.480957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949364, 34.137108, 30.304813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312786, 33.970371, 30.293730>,  <32.530842, 33.870331, 30.287079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312786, 33.970371, 30.293730>,  <31.949364, 34.137108, 30.304813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312786, 33.970371, 30.293730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075386, 0.228832, -0.970542,
		0.410900, 0.879705, 0.239331,
		0.908558, -0.416839, -0.027710,
		32.585354, 33.845318, 30.285418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401058, 34.603493, 29.975298>,  <31.949364, 34.137108, 30.304813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401058, 34.603493, 29.975298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572708, 34.246700, 29.918432>,  <32.675697, 34.032623, 29.884314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572708, 34.246700, 29.918432>,  <32.401058, 34.603493, 29.975298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572708, 34.246700, 29.918432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079459, 0.194061, -0.977766,
		0.899741, 0.408292, 0.154154,
		0.429129, -0.891986, -0.142162,
		32.701447, 33.979103, 29.875784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923134, 34.765472, 29.528006>,  <32.401058, 34.603493, 29.975298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923134, 34.765472, 29.528006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891945, 34.367336, 29.505312>,  <32.873230, 34.128456, 29.491695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891945, 34.367336, 29.505312>,  <32.923134, 34.765472, 29.528006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891945, 34.367336, 29.505312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202090, 0.039946, -0.978552,
		0.976258, -0.087768, 0.198034,
		-0.077975, -0.995340, -0.056734,
		32.868553, 34.068733, 29.488291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411026, 34.582397, 28.973555>,  <32.923134, 34.765472, 29.528006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411026, 34.582397, 28.973555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179825, 34.257740, 29.007383>,  <33.041103, 34.062946, 29.027679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179825, 34.257740, 29.007383>,  <33.411026, 34.582397, 28.973555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179825, 34.257740, 29.007383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075188, -0.156163, -0.984865,
		0.812565, -0.562894, 0.151288,
		-0.578000, -0.811643, 0.084570,
		33.006424, 34.014248, 29.032755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791466, 34.036461, 28.713877>,  <33.411026, 34.582397, 28.973555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791466, 34.036461, 28.713877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396267, 33.990910, 28.672123>,  <33.159149, 33.963581, 28.647070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396267, 33.990910, 28.672123>,  <33.791466, 34.036461, 28.713877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396267, 33.990910, 28.672123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122056, -0.161238, -0.979339,
		0.094692, -0.980324, 0.173202,
		-0.987996, -0.113876, -0.104386,
		33.099869, 33.956745, 28.640808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730679, 33.528244, 28.190432>,  <33.791466, 34.036461, 28.713877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730679, 33.528244, 28.190432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354061, 33.655739, 28.234064>,  <33.128090, 33.732235, 28.260244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354061, 33.655739, 28.234064>,  <33.730679, 33.528244, 28.190432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354061, 33.655739, 28.234064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191449, -0.239813, -0.951755,
		-0.277205, -0.917003, 0.286817,
		-0.941544, 0.318741, 0.109081,
		33.071598, 33.751358, 28.266788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441730, 33.031776, 27.841173>,  <33.730679, 33.528244, 28.190432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441730, 33.031776, 27.841173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197857, 33.348671, 27.851423>,  <33.051533, 33.538807, 27.857573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197857, 33.348671, 27.851423>,  <33.441730, 33.031776, 27.841173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197857, 33.348671, 27.851423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027521, 0.011150, -0.999559,
		-0.792170, -0.610116, 0.015005,
		-0.609680, 0.792233, 0.025624,
		33.014954, 33.586342, 27.859110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950161, 32.873451, 27.301962>,  <33.441730, 33.031776, 27.841173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950161, 32.873451, 27.301962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929199, 33.270279, 27.347668>,  <32.916622, 33.508373, 27.375092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929199, 33.270279, 27.347668>,  <32.950161, 32.873451, 27.301962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929199, 33.270279, 27.347668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028159, 0.115844, -0.992868,
		-0.998229, -0.048813, -0.034007,
		-0.052404, 0.992067, 0.114265,
		32.913479, 33.567898, 27.381947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324646, 33.096218, 26.821230>,  <32.950161, 32.873451, 27.301962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324646, 33.096218, 26.821230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580284, 33.388149, 26.918316>,  <32.733665, 33.563309, 26.976568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580284, 33.388149, 26.918316>,  <32.324646, 33.096218, 26.821230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580284, 33.388149, 26.918316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096881, 0.236670, -0.966748,
		-0.763002, 0.641358, 0.080548,
		0.639095, 0.729827, 0.242714,
		32.772011, 33.607098, 26.991131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113628, 33.515697, 26.457893>,  <32.324646, 33.096218, 26.821230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113628, 33.515697, 26.457893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472996, 33.658772, 26.559797>,  <32.688618, 33.744617, 26.620939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472996, 33.658772, 26.559797>,  <32.113628, 33.515697, 26.457893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472996, 33.658772, 26.559797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160651, 0.272215, -0.948731,
		-0.408696, 0.893286, 0.187100,
		0.898420, 0.357685, 0.254760,
		32.742523, 33.766079, 26.636225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081944, 34.144886, 26.289806>,  <32.113628, 33.515697, 26.457893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081944, 34.144886, 26.289806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466682, 34.035728, 26.282101>,  <32.697525, 33.970234, 26.277477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466682, 34.035728, 26.282101>,  <32.081944, 34.144886, 26.289806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466682, 34.035728, 26.282101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051966, 0.251397, -0.966488,
		0.268589, 0.928617, 0.255988,
		0.961852, -0.272891, -0.019266,
		32.755238, 33.953861, 26.276321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319012, 34.633121, 25.859869>,  <32.081944, 34.144886, 26.289806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319012, 34.633121, 25.859869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609173, 34.358208, 25.875000>,  <32.783268, 34.193260, 25.884079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609173, 34.358208, 25.875000>,  <32.319012, 34.633121, 25.859869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609173, 34.358208, 25.875000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249473, 0.211291, -0.945050,
		0.641526, 0.694978, 0.324730,
		0.725401, -0.687286, 0.037829,
		32.826794, 34.152023, 25.886349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962860, 34.978073, 25.575232>,  <32.319012, 34.633121, 25.859869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962860, 34.978073, 25.575232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002026, 34.580933, 25.547947>,  <33.025524, 34.342648, 25.531576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002026, 34.580933, 25.547947>,  <32.962860, 34.978073, 25.575232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002026, 34.580933, 25.547947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233529, 0.089551, -0.968217,
		0.967408, 0.078870, 0.240629,
		0.097912, -0.992855, -0.068214,
		33.031399, 34.283077, 25.527483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599522, 34.943928, 25.290373>,  <32.962860, 34.978073, 25.575232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599522, 34.943928, 25.290373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394829, 34.603577, 25.242817>,  <33.272015, 34.399364, 25.214283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394829, 34.603577, 25.242817>,  <33.599522, 34.943928, 25.290373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394829, 34.603577, 25.242817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454840, -0.150910, -0.877694,
		0.728873, -0.503216, 0.464239,
		-0.511728, -0.850882, -0.118889,
		33.241310, 34.348312, 25.207150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969666, 34.462074, 24.939907>,  <33.599522, 34.943928, 25.290373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969666, 34.462074, 24.939907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619682, 34.290855, 24.849380>,  <33.409691, 34.188122, 24.795065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619682, 34.290855, 24.849380>,  <33.969666, 34.462074, 24.939907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619682, 34.290855, 24.849380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298345, -0.108467, -0.948275,
		0.381362, -0.897222, 0.222611,
		-0.874959, -0.428051, -0.226316,
		33.357193, 34.162441, 24.781487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134953, 33.986614, 24.472107>,  <33.969666, 34.462074, 24.939907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134953, 33.986614, 24.472107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739285, 33.986629, 24.413389>,  <33.501884, 33.986637, 24.378159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739285, 33.986629, 24.413389>,  <34.134953, 33.986614, 24.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739285, 33.986629, 24.413389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146165, -0.092246, -0.984950,
		-0.013572, -0.995736, 0.091242,
		-0.989167, 0.000032, -0.146793,
		33.442535, 33.986641, 24.369350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946789, 33.375534, 24.033119>,  <34.134953, 33.986614, 24.472107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946789, 33.375534, 24.033119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635002, 33.622578, 23.991186>,  <33.447929, 33.770805, 23.966026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635002, 33.622578, 23.991186>,  <33.946789, 33.375534, 24.033119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635002, 33.622578, 23.991186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038046, -0.120366, -0.992000,
		-0.625288, -0.777219, 0.070324,
		-0.779466, 0.617610, -0.104834,
		33.401161, 33.807861, 23.959736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339180, 32.949974, 23.714136>,  <33.946789, 33.375534, 24.033119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339180, 32.949974, 23.714136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245647, 33.331509, 23.638742>,  <33.189526, 33.560429, 23.593506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245647, 33.331509, 23.638742>,  <33.339180, 32.949974, 23.714136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245647, 33.331509, 23.638742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105464, -0.167833, -0.980158,
		-0.966540, -0.249072, -0.061350,
		-0.233834, 0.953832, -0.188485,
		33.175499, 33.617657, 23.582197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804001, 32.958248, 23.102484>,  <33.339180, 32.949974, 23.714136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804001, 32.958248, 23.102484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938885, 33.334343, 23.121447>,  <33.019817, 33.559998, 23.132824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938885, 33.334343, 23.121447>,  <32.804001, 32.958248, 23.102484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938885, 33.334343, 23.121447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005203, 0.052219, -0.998622,
		-0.941414, 0.336501, 0.022501,
		0.337212, 0.940234, 0.047409,
		33.040047, 33.616413, 23.135670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379745, 33.336823, 22.575815>,  <32.804001, 32.958248, 23.102484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379745, 33.336823, 22.575815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732746, 33.511574, 22.645464>,  <32.944546, 33.616425, 22.687252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732746, 33.511574, 22.645464>,  <32.379745, 33.336823, 22.575815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732746, 33.511574, 22.645464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140872, 0.107675, -0.984155,
		-0.448707, 0.893052, 0.033480,
		0.882506, 0.436881, 0.174121,
		32.997498, 33.642639, 22.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214207, 33.992981, 22.336237>,  <32.379745, 33.336823, 22.575815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214207, 33.992981, 22.336237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610836, 33.941345, 22.340607>,  <32.848812, 33.910366, 22.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610836, 33.941345, 22.340607>,  <32.214207, 33.992981, 22.336237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610836, 33.941345, 22.340607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037332, 0.203985, -0.978262,
		0.124053, 0.970426, 0.207085,
		0.991573, -0.129087, 0.010923,
		32.908306, 33.902618, 22.343884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424084, 34.423500, 21.889704>,  <32.214207, 33.992981, 22.336237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424084, 34.423500, 21.889704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770790, 34.226620, 21.921860>,  <32.978813, 34.108490, 21.941154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770790, 34.226620, 21.921860>,  <32.424084, 34.423500, 21.889704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770790, 34.226620, 21.921860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214191, 0.221817, -0.951273,
		0.450385, 0.841746, 0.297687,
		0.866762, -0.492200, 0.080391,
		33.030819, 34.078960, 21.945976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978729, 34.872429, 21.539900>,  <32.424084, 34.423500, 21.889704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978729, 34.872429, 21.539900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065098, 34.481972, 21.549109>,  <33.116920, 34.247700, 21.554634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065098, 34.481972, 21.549109>,  <32.978729, 34.872429, 21.539900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065098, 34.481972, 21.549109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292000, 0.042056, -0.955493,
		0.931726, 0.213036, 0.294114,
		0.215924, -0.976139, 0.023022,
		33.129875, 34.189129, 21.556015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661709, 34.856148, 21.384892>,  <32.978729, 34.872429, 21.539900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661709, 34.856148, 21.384892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506393, 34.498215, 21.296787>,  <33.413204, 34.283455, 21.243925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506393, 34.498215, 21.296787>,  <33.661709, 34.856148, 21.384892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506393, 34.498215, 21.296787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191416, 0.155486, -0.969115,
		0.901439, -0.418457, 0.110911,
		-0.388288, -0.894828, -0.220260,
		33.389908, 34.229767, 21.230709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168747, 34.465904, 20.977585>,  <33.661709, 34.856148, 21.384892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168747, 34.465904, 20.977585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803848, 34.336277, 20.877365>,  <33.584908, 34.258499, 20.817232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803848, 34.336277, 20.877365>,  <34.168747, 34.465904, 20.977585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803848, 34.336277, 20.877365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217041, 0.136345, -0.966594,
		0.347407, -0.936156, -0.054044,
		-0.912251, -0.324071, -0.250551,
		33.530174, 34.239056, 20.802200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277138, 34.086258, 20.452444>,  <34.168747, 34.465904, 20.977585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277138, 34.086258, 20.452444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885605, 34.149925, 20.400967>,  <33.650684, 34.188126, 20.370079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885605, 34.149925, 20.400967>,  <34.277138, 34.086258, 20.452444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885605, 34.149925, 20.400967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149720, 0.128020, -0.980406,
		-0.139574, -0.978916, -0.149140,
		-0.978828, 0.159168, -0.128695,
		33.591957, 34.197674, 20.362358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223133, 33.677010, 19.863333>,  <34.277138, 34.086258, 20.452444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223133, 33.677010, 19.863333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903481, 33.917282, 19.872828>,  <33.711689, 34.061447, 19.878525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903481, 33.917282, 19.872828>,  <34.223133, 33.677010, 19.863333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903481, 33.917282, 19.872828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065406, 0.126132, -0.989855,
		-0.597582, -0.789476, -0.140085,
		-0.799135, 0.600682, 0.023738,
		33.663738, 34.097488, 19.879950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715755, 33.349819, 19.391024>,  <34.223133, 33.677010, 19.863333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715755, 33.349819, 19.391024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614666, 33.734921, 19.429482>,  <33.554012, 33.965981, 19.452557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614666, 33.734921, 19.429482>,  <33.715755, 33.349819, 19.391024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614666, 33.734921, 19.429482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177745, 0.143876, -0.973502,
		-0.951071, -0.228940, -0.207485,
		-0.252726, 0.962749, 0.096143,
		33.538849, 34.023746, 19.458324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377487, 33.490383, 18.842623>,  <33.715755, 33.349819, 19.391024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377487, 33.490383, 18.842623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475487, 33.853882, 18.977770>,  <33.534286, 34.071980, 19.058859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475487, 33.853882, 18.977770>,  <33.377487, 33.490383, 18.842623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475487, 33.853882, 18.977770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284016, 0.265931, -0.921203,
		-0.926991, 0.321651, -0.192947,
		0.244996, 0.908747, 0.337870,
		33.548985, 34.126507, 19.079130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283966, 33.869415, 18.307390>,  <33.377487, 33.490383, 18.842623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283966, 33.869415, 18.307390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502979, 34.118610, 18.530849>,  <33.634388, 34.268127, 18.664925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502979, 34.118610, 18.530849>,  <33.283966, 33.869415, 18.307390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502979, 34.118610, 18.530849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402210, 0.389496, -0.828565,
		-0.733779, 0.678363, -0.037310,
		0.547536, 0.622990, 0.558648,
		33.667240, 34.305508, 18.698444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183117, 34.473850, 18.016237>,  <33.283966, 33.869415, 18.307390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183117, 34.473850, 18.016237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539604, 34.472260, 18.197659>,  <33.753498, 34.471306, 18.306511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539604, 34.472260, 18.197659>,  <33.183117, 34.473850, 18.016237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539604, 34.472260, 18.197659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440020, 0.250206, -0.862426,
		-0.110050, 0.968184, 0.224740,
		0.891219, -0.003980, 0.453556,
		33.806969, 34.471066, 18.333725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445560, 35.159889, 17.898405>,  <33.183117, 34.473850, 18.016237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445560, 35.159889, 17.898405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771301, 34.944836, 17.985842>,  <33.966747, 34.815804, 18.038303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771301, 34.944836, 17.985842>,  <33.445560, 35.159889, 17.898405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771301, 34.944836, 17.985842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503927, 0.468179, -0.725856,
		0.287902, 0.701257, 0.652189,
		0.814353, -0.537631, 0.218593,
		34.015606, 34.783546, 18.051420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007771, 35.558754, 17.729393>,  <33.445560, 35.159889, 17.898405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007771, 35.558754, 17.729393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219360, 35.219593, 17.743492>,  <34.346313, 35.016098, 17.751951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219360, 35.219593, 17.743492>,  <34.007771, 35.558754, 17.729393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219360, 35.219593, 17.743492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588622, 0.336667, -0.734969,
		0.611315, 0.409532, 0.677184,
		0.528979, -0.847903, 0.035250,
		34.378056, 34.965221, 17.754066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760448, 35.739391, 17.746119>,  <34.007771, 35.558754, 17.729393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760448, 35.739391, 17.746119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731339, 35.369564, 17.596519>,  <34.713871, 35.147667, 17.506760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731339, 35.369564, 17.596519>,  <34.760448, 35.739391, 17.746119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731339, 35.369564, 17.596519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650622, 0.240203, -0.720412,
		0.755906, -0.295761, 0.584065,
		-0.072775, -0.924569, -0.374000,
		34.709507, 35.092194, 17.484320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378925, 35.550049, 17.496679>,  <34.760448, 35.739391, 17.746119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378925, 35.550049, 17.496679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151691, 35.274864, 17.316017>,  <35.015350, 35.109753, 17.207621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151691, 35.274864, 17.316017>,  <35.378925, 35.550049, 17.496679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151691, 35.274864, 17.316017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562496, 0.076022, -0.823298,
		0.600729, -0.721758, 0.343786,
		-0.568087, -0.687957, -0.451655,
		34.981266, 35.068478, 17.180521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780876, 35.027317, 17.243801>,  <35.378925, 35.550049, 17.496679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780876, 35.027317, 17.243801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447395, 35.011993, 17.023445>,  <35.247307, 35.002800, 16.891232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447395, 35.011993, 17.023445>,  <35.780876, 35.027317, 17.243801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447395, 35.011993, 17.023445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543853, 0.116054, -0.831117,
		0.095772, -0.992504, -0.075919,
		-0.833697, -0.038309, -0.550891,
		35.197285, 35.000500, 16.858177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007172, 34.709038, 16.617382>,  <35.780876, 35.027317, 17.243801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007172, 34.709038, 16.617382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652786, 34.861790, 16.512136>,  <35.440155, 34.953442, 16.448990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652786, 34.861790, 16.512136>,  <36.007172, 34.709038, 16.617382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652786, 34.861790, 16.512136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410283, 0.380984, -0.828564,
		-0.216171, -0.842032, -0.494219,
		-0.885967, 0.381881, -0.263113,
		35.386997, 34.976353, 16.433203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837547, 34.475563, 15.897413>,  <36.007172, 34.709038, 16.617382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837547, 34.475563, 15.897413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606216, 34.799042, 15.940407>,  <35.467419, 34.993130, 15.966203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606216, 34.799042, 15.940407>,  <35.837547, 34.475563, 15.897413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606216, 34.799042, 15.940407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496868, 0.453659, -0.739808,
		-0.647038, -0.374446, -0.664178,
		-0.578328, 0.808693, 0.107485,
		35.432716, 35.041649, 15.972652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709896, 34.604107, 15.250397>,  <35.837547, 34.475563, 15.897413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709896, 34.604107, 15.250397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649082, 34.927189, 15.478258>,  <35.612595, 35.121037, 15.614975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649082, 34.927189, 15.478258>,  <35.709896, 34.604107, 15.250397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649082, 34.927189, 15.478258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507298, 0.558411, -0.656373,
		-0.848254, 0.189195, -0.494642,
		-0.152031, 0.807702, 0.569653,
		35.603474, 35.169498, 15.649154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547729, 35.219685, 14.848810>,  <35.709896, 34.604107, 15.250397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547729, 35.219685, 14.848810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698132, 35.362732, 15.190742>,  <35.788372, 35.448559, 15.395900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698132, 35.362732, 15.190742>,  <35.547729, 35.219685, 14.848810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698132, 35.362732, 15.190742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507973, 0.691998, -0.512935,
		-0.774973, 0.627096, 0.078537,
		0.376007, 0.357616, 0.854827,
		35.810932, 35.470016, 15.447189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333321, 35.957951, 15.022442>,  <35.547729, 35.219685, 14.848810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333321, 35.957951, 15.022442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698254, 35.864853, 15.157187>,  <35.917213, 35.808994, 15.238035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698254, 35.864853, 15.157187>,  <35.333321, 35.957951, 15.022442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698254, 35.864853, 15.157187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391137, 0.738705, -0.548932,
		-0.121082, 0.632569, 0.764981,
		0.912333, -0.232747, 0.336865,
		35.971954, 35.795029, 15.258247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567165, 36.608040, 14.989225>,  <35.333321, 35.957951, 15.022442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567165, 36.608040, 14.989225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774448, 36.950039, 14.980773>,  <35.898819, 37.155239, 14.975701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774448, 36.950039, 14.980773>,  <35.567165, 36.608040, 14.989225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774448, 36.950039, 14.980773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065676, -0.064416, -0.995759,
		-0.852732, 0.514619, -0.089533,
		0.518204, 0.854996, -0.021131,
		35.929909, 37.206539, 14.974434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247383, 36.988487, 14.584318>,  <35.567165, 36.608040, 14.989225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247383, 36.988487, 14.584318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626816, 37.115105, 14.583643>,  <35.854473, 37.191074, 14.583238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626816, 37.115105, 14.583643>,  <35.247383, 36.988487, 14.584318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626816, 37.115105, 14.583643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023978, -0.077171, -0.996729,
		-0.315634, 0.945435, -0.080793,
		0.948578, 0.316539, -0.001688,
		35.911388, 37.210068, 14.583137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430412, 37.527153, 14.012122>,  <35.247383, 36.988487, 14.584318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430412, 37.527153, 14.012122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752445, 37.306149, 14.098447>,  <35.945663, 37.173546, 14.150242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752445, 37.306149, 14.098447>,  <35.430412, 37.527153, 14.012122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752445, 37.306149, 14.098447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129451, -0.191403, -0.972937,
		0.578867, 0.811230, -0.082572,
		0.805081, -0.552513, 0.215812,
		35.993969, 37.140396, 14.163190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916916, 37.628994, 13.585244>,  <35.430412, 37.527153, 14.012122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916916, 37.628994, 13.585244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972233, 37.256813, 13.720966>,  <36.005424, 37.033504, 13.802400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972233, 37.256813, 13.720966>,  <35.916916, 37.628994, 13.585244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972233, 37.256813, 13.720966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296888, -0.287895, -0.910480,
		0.944845, 0.226647, 0.236428,
		0.138291, -0.930455, 0.339305,
		36.013721, 36.977676, 13.822758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598152, 37.460823, 13.335178>,  <35.916916, 37.628994, 13.585244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598152, 37.460823, 13.335178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393776, 37.127930, 13.421272>,  <36.271152, 36.928192, 13.472928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393776, 37.127930, 13.421272>,  <36.598152, 37.460823, 13.335178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393776, 37.127930, 13.421272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291752, -0.403407, -0.867262,
		0.808595, -0.380320, 0.448922,
		-0.510936, -0.832237, 0.215234,
		36.240494, 36.878258, 13.485843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045441, 36.875252, 13.316128>,  <36.598152, 37.460823, 13.335178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045441, 36.875252, 13.316128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660305, 36.867977, 13.208344>,  <36.429222, 36.863613, 13.143675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660305, 36.867977, 13.208344>,  <37.045441, 36.875252, 13.316128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660305, 36.867977, 13.208344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269436, 0.003645, -0.963011,
		0.018503, -0.999828, 0.001392,
		-0.962841, -0.018194, -0.269457,
		36.371452, 36.862522, 13.127507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009518, 37.024849, 14.045095>,  <37.045441, 36.875252, 13.316128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009518, 37.024849, 14.045095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678867, 37.245266, 14.090771>,  <36.480476, 37.377518, 14.118176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678867, 37.245266, 14.090771>,  <37.009518, 37.024849, 14.045095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678867, 37.245266, 14.090771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050917, -0.128842, 0.990357,
		0.560442, 0.824470, 0.078447,
		-0.826627, 0.551043, 0.114188,
		36.430878, 37.410580, 14.125028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105156, 37.557339, 14.575695>,  <37.009518, 37.024849, 14.045095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105156, 37.557339, 14.575695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712399, 37.482281, 14.565352>,  <36.476742, 37.437244, 14.559147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712399, 37.482281, 14.565352>,  <37.105156, 37.557339, 14.575695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712399, 37.482281, 14.565352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038787, 0.065567, 0.997094,
		-0.185407, 0.980045, -0.071658,
		-0.981896, -0.187648, -0.025856,
		36.417831, 37.425987, 14.557595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887081, 38.068707, 14.989314>,  <37.105156, 37.557339, 14.575695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887081, 38.068707, 14.989314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592533, 37.802059, 14.943067>,  <36.415802, 37.642071, 14.915318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592533, 37.802059, 14.943067>,  <36.887081, 38.068707, 14.989314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592533, 37.802059, 14.943067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188806, 0.038373, 0.981264,
		-0.649697, 0.744407, -0.154120,
		-0.736374, -0.666623, -0.115618,
		36.371620, 37.602074, 14.908381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283661, 38.377281, 15.293598>,  <36.887081, 38.068707, 14.989314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283661, 38.377281, 15.293598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257900, 37.978912, 15.318883>,  <36.242443, 37.739891, 15.334054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257900, 37.978912, 15.318883>,  <36.283661, 38.377281, 15.293598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257900, 37.978912, 15.318883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209865, 0.075443, 0.974816,
		-0.975607, 0.049518, -0.213868,
		-0.064405, -0.995920, 0.063211,
		36.238579, 37.680138, 15.337847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637283, 38.413010, 15.646909>,  <36.283661, 38.377281, 15.293598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637283, 38.413010, 15.646909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808598, 38.055695, 15.701478>,  <35.911385, 37.841305, 15.734220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808598, 38.055695, 15.701478>,  <35.637283, 38.413010, 15.646909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808598, 38.055695, 15.701478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327221, -0.012586, 0.944864,
		-0.842319, -0.449309, -0.297693,
		0.428283, -0.893288, 0.136422,
		35.937084, 37.787708, 15.742405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186516, 38.121357, 16.159836>,  <35.637283, 38.413010, 15.646909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186516, 38.121357, 16.159836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533562, 37.923290, 16.141712>,  <35.741791, 37.804451, 16.130838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533562, 37.923290, 16.141712>,  <35.186516, 38.121357, 16.159836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533562, 37.923290, 16.141712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053111, -0.182891, 0.981698,
		-0.494390, -0.849330, -0.184978,
		0.867616, -0.495166, -0.045310,
		35.793846, 37.774742, 16.128119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037430, 37.487003, 16.551342>,  <35.186516, 38.121357, 16.159836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037430, 37.487003, 16.551342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435448, 37.525299, 16.562050>,  <35.674259, 37.548275, 16.568474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435448, 37.525299, 16.562050>,  <35.037430, 37.487003, 16.551342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435448, 37.525299, 16.562050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006952, -0.201616, 0.979440,
		0.099163, -0.974775, -0.199952,
		0.995047, 0.095734, 0.026769,
		35.733963, 37.554020, 16.570080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193264, 37.059963, 17.155304>,  <35.037430, 37.487003, 16.551342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193264, 37.059963, 17.155304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527332, 37.273216, 17.101257>,  <35.727772, 37.401169, 17.068830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527332, 37.273216, 17.101257>,  <35.193264, 37.059963, 17.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527332, 37.273216, 17.101257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278410, -0.197947, 0.939843,
		0.474320, -0.822546, -0.313750,
		0.835170, 0.533137, -0.135115,
		35.777882, 37.433159, 17.060722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795063, 36.661774, 17.314510>,  <35.193264, 37.059963, 17.155304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795063, 36.661774, 17.314510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909607, 37.039330, 17.380316>,  <35.978333, 37.265865, 17.419800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909607, 37.039330, 17.380316>,  <35.795063, 36.661774, 17.314510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909607, 37.039330, 17.380316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133510, -0.209340, 0.968686,
		0.948776, -0.255425, -0.185965,
		0.286356, 0.943893, 0.164515,
		35.995514, 37.322498, 17.429670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301067, 36.654121, 17.820011>,  <35.795063, 36.661774, 17.314510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301067, 36.654121, 17.820011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231483, 37.046837, 17.850561>,  <36.189735, 37.282467, 17.868891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231483, 37.046837, 17.850561>,  <36.301067, 36.654121, 17.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231483, 37.046837, 17.850561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111465, -0.057429, 0.992107,
		0.978425, 0.181097, -0.099445,
		-0.173956, 0.981787, 0.076376,
		36.179298, 37.341373, 17.873474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838917, 36.921860, 18.364576>,  <36.301067, 36.654121, 17.820011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838917, 36.921860, 18.364576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533241, 37.176735, 18.324560>,  <36.349834, 37.329659, 18.300550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533241, 37.176735, 18.324560>,  <36.838917, 36.921860, 18.364576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533241, 37.176735, 18.324560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073217, 0.239798, 0.968058,
		0.640824, 0.732454, -0.229904,
		-0.764189, 0.637187, -0.100040,
		36.303986, 37.367889, 18.294548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101810, 37.593864, 18.563160>,  <36.838917, 36.921860, 18.364576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101810, 37.593864, 18.563160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705177, 37.592358, 18.614933>,  <36.467197, 37.591454, 18.645998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705177, 37.592358, 18.614933>,  <37.101810, 37.593864, 18.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705177, 37.592358, 18.614933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120888, 0.331272, 0.935759,
		-0.046406, 0.943528, -0.328027,
		-0.991581, -0.003770, 0.129434,
		36.407703, 37.591225, 18.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983227, 38.180000, 19.050306>,  <37.101810, 37.593864, 18.563160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983227, 38.180000, 19.050306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640049, 37.974537, 19.046602>,  <36.434143, 37.851257, 19.044380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640049, 37.974537, 19.046602>,  <36.983227, 38.180000, 19.050306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640049, 37.974537, 19.046602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069654, 0.098446, 0.992702,
		-0.509000, 0.852327, -0.120239,
		-0.857944, -0.513660, -0.009259,
		36.382668, 37.820438, 19.043825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373180, 38.574951, 19.338106>,  <36.983227, 38.180000, 19.050306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373180, 38.574951, 19.338106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299900, 38.186665, 19.400263>,  <36.255932, 37.953693, 19.437557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299900, 38.186665, 19.400263>,  <36.373180, 38.574951, 19.338106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299900, 38.186665, 19.400263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293461, 0.204861, 0.933763,
		-0.938252, 0.125467, -0.322398,
		-0.183203, -0.970716, 0.155392,
		36.244938, 37.895451, 19.446880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770958, 38.445766, 19.767820>,  <36.373180, 38.574951, 19.338106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770958, 38.445766, 19.767820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932911, 38.080540, 19.787365>,  <36.030083, 37.861404, 19.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932911, 38.080540, 19.787365>,  <35.770958, 38.445766, 19.767820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932911, 38.080540, 19.787365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250889, -0.059548, 0.966182,
		-0.879276, -0.403448, -0.253187,
		0.404881, -0.913063, 0.048861,
		36.054375, 37.806622, 19.802023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308514, 38.102127, 20.243795>,  <35.770958, 38.445766, 19.767820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308514, 38.102127, 20.243795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657207, 37.906147, 20.242119>,  <35.866425, 37.788559, 20.241114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657207, 37.906147, 20.242119>,  <35.308514, 38.102127, 20.243795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657207, 37.906147, 20.242119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030626, -0.063024, 0.997542,
		-0.489014, -0.869467, -0.069946,
		0.871738, -0.489955, -0.004191,
		35.918728, 37.759159, 20.240862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268024, 37.354305, 20.570801>,  <35.308514, 38.102127, 20.243795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268024, 37.354305, 20.570801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619781, 37.542206, 20.601782>,  <35.830837, 37.654945, 20.620371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619781, 37.542206, 20.601782>,  <35.268024, 37.354305, 20.570801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619781, 37.542206, 20.601782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042895, -0.083849, 0.995555,
		0.474160, -0.878806, -0.053586,
		0.879393, 0.469754, 0.077454,
		35.883598, 37.683132, 20.625019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608627, 36.888241, 20.942677>,  <35.268024, 37.354305, 20.570801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608627, 36.888241, 20.942677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814613, 37.227634, 20.991476>,  <35.938206, 37.431271, 21.020756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814613, 37.227634, 20.991476>,  <35.608627, 36.888241, 20.942677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814613, 37.227634, 20.991476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060578, -0.177986, 0.982167,
		0.855069, -0.498390, -0.143056,
		0.514964, 0.848486, 0.121999,
		35.969101, 37.482182, 21.028076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077045, 36.700600, 21.493847>,  <35.608627, 36.888241, 20.942677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077045, 36.700600, 21.493847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026043, 37.096870, 21.474621>,  <35.995441, 37.334633, 21.463085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026043, 37.096870, 21.474621>,  <36.077045, 36.700600, 21.493847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026043, 37.096870, 21.474621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260313, 0.013335, 0.965432,
		0.957068, 0.135611, 0.256184,
		-0.127507, 0.990672, -0.048063,
		35.987789, 37.394073, 21.460201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242367, 36.935722, 22.173180>,  <36.077045, 36.700600, 21.493847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242367, 36.935722, 22.173180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082481, 37.269947, 22.022413>,  <35.986549, 37.470482, 21.931953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082481, 37.269947, 22.022413>,  <36.242367, 36.935722, 22.173180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082481, 37.269947, 22.022413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411741, 0.203714, 0.888240,
		0.818963, 0.510232, 0.262608,
		-0.399712, 0.835562, -0.376918,
		35.962566, 37.520615, 21.909338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285824, 37.412399, 22.688560>,  <36.242367, 36.935722, 22.173180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285824, 37.412399, 22.688560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997036, 37.572582, 22.462856>,  <35.823761, 37.668694, 22.327433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997036, 37.572582, 22.462856>,  <36.285824, 37.412399, 22.688560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997036, 37.572582, 22.462856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459002, 0.333039, 0.823651,
		0.517758, 0.853650, -0.056634,
		-0.721972, 0.400457, -0.564261,
		35.780445, 37.692719, 22.293577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160187, 38.047806, 22.993496>,  <36.285824, 37.412399, 22.688560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160187, 38.047806, 22.993496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826607, 37.957668, 22.792004>,  <35.626457, 37.903584, 22.671108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826607, 37.957668, 22.792004>,  <36.160187, 38.047806, 22.993496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826607, 37.957668, 22.792004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548073, 0.231781, 0.803675,
		-0.064350, 0.946307, -0.316800,
		-0.833951, -0.225347, -0.503730,
		35.576420, 37.890064, 22.640884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647110, 38.484032, 23.164598>,  <36.160187, 38.047806, 22.993496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647110, 38.484032, 23.164598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413113, 38.196636, 23.014105>,  <35.272713, 38.024200, 22.923809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413113, 38.196636, 23.014105>,  <35.647110, 38.484032, 23.164598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413113, 38.196636, 23.014105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585443, 0.053053, 0.808976,
		-0.561279, 0.693513, -0.451670,
		-0.584998, -0.718488, -0.376236,
		35.237614, 37.981091, 22.901234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942486, 38.678509, 23.272659>,  <35.647110, 38.484032, 23.164598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942486, 38.678509, 23.272659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974789, 38.283047, 23.222008>,  <34.994171, 38.045769, 23.191616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974789, 38.283047, 23.222008>,  <34.942486, 38.678509, 23.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974789, 38.283047, 23.222008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539872, -0.150181, 0.828242,
		-0.837864, 0.001476, -0.545876,
		0.080758, -0.988657, -0.126628,
		34.999016, 37.986450, 23.184019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368187, 38.373173, 23.698820>,  <34.942486, 38.678509, 23.272659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368187, 38.373173, 23.698820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580185, 38.042362, 23.623857>,  <34.707386, 37.843876, 23.578880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580185, 38.042362, 23.623857>,  <34.368187, 38.373173, 23.698820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580185, 38.042362, 23.623857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258675, -0.368139, 0.893063,
		-0.807582, -0.424845, -0.409045,
		0.529999, -0.827031, -0.187405,
		34.739185, 37.794254, 23.567636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892673, 37.886906, 23.771189>,  <34.368187, 38.373173, 23.698820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892673, 37.886906, 23.771189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256123, 37.742725, 23.855545>,  <34.474194, 37.656219, 23.906158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256123, 37.742725, 23.855545>,  <33.892673, 37.886906, 23.771189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256123, 37.742725, 23.855545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349086, -0.378398, 0.857294,
		-0.229209, -0.852580, -0.469650,
		0.908626, -0.360448, 0.210892,
		34.528709, 37.634590, 23.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792713, 37.352936, 24.115633>,  <33.892673, 37.886906, 23.771189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792713, 37.352936, 24.115633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181801, 37.367680, 24.207243>,  <34.415253, 37.376526, 24.262209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181801, 37.367680, 24.207243>,  <33.792713, 37.352936, 24.115633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181801, 37.367680, 24.207243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173714, -0.538578, 0.824474,
		0.153738, -0.841769, -0.517484,
		0.972722, 0.036859, 0.229027,
		34.473618, 37.378738, 24.275951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910889, 36.748703, 24.416922>,  <33.792713, 37.352936, 24.115633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910889, 36.748703, 24.416922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226128, 36.967419, 24.530001>,  <34.415272, 37.098648, 24.597849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226128, 36.967419, 24.530001>,  <33.910889, 36.748703, 24.416922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226128, 36.967419, 24.530001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023099, -0.485210, 0.874093,
		0.615116, -0.682340, -0.395023,
		0.788098, 0.546793, 0.282699,
		34.462559, 37.131458, 24.614811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603271, 36.292336, 24.650768>,  <33.910889, 36.748703, 24.416922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603271, 36.292336, 24.650768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619671, 36.646725, 24.835537>,  <34.629513, 36.859356, 24.946398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619671, 36.646725, 24.835537>,  <34.603271, 36.292336, 24.650768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619671, 36.646725, 24.835537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119448, -0.463344, 0.878092,
		0.991993, 0.019172, -0.124825,
		0.041002, 0.885971, 0.461924,
		34.631973, 36.912518, 24.974113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811710, 36.108196, 25.260542>,  <34.603271, 36.292336, 24.650768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811710, 36.108196, 25.260542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763996, 36.497284, 25.340132>,  <34.735367, 36.730736, 25.387886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763996, 36.497284, 25.340132>,  <34.811710, 36.108196, 25.260542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763996, 36.497284, 25.340132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072957, -0.191275, 0.978821,
		0.990176, 0.131272, -0.048151,
		-0.119282, 0.972719, 0.198973,
		34.728210, 36.789101, 25.399824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346966, 36.418713, 25.783232>,  <34.811710, 36.108196, 25.260542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346966, 36.418713, 25.783232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999096, 36.613625, 25.814814>,  <34.790375, 36.730572, 25.833763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999096, 36.613625, 25.814814>,  <35.346966, 36.418713, 25.783232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999096, 36.613625, 25.814814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069945, -0.036691, 0.996876,
		0.488652, 0.872476, -0.002174,
		-0.869671, 0.487277, 0.078955,
		34.738194, 36.759808, 25.838499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490219, 36.870861, 26.342293>,  <35.346966, 36.418713, 25.783232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490219, 36.870861, 26.342293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092812, 36.908260, 26.316412>,  <34.854366, 36.930698, 26.300882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092812, 36.908260, 26.316412>,  <35.490219, 36.870861, 26.342293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092812, 36.908260, 26.316412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068366, -0.036516, 0.996992,
		0.090854, 0.994949, 0.042671,
		-0.993515, 0.093498, -0.064703,
		34.794758, 36.936310, 26.297001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240078, 37.344910, 26.965626>,  <35.490219, 36.870861, 26.342293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240078, 37.344910, 26.965626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929485, 37.120163, 26.851521>,  <34.743130, 36.985313, 26.783058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929485, 37.120163, 26.851521>,  <35.240078, 37.344910, 26.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929485, 37.120163, 26.851521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256422, -0.131779, 0.957540,
		-0.575604, 0.816662, -0.041751,
		-0.776485, -0.561869, -0.285262,
		34.696541, 36.951603, 26.765942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616886, 37.675129, 27.176117>,  <35.240078, 37.344910, 26.965626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616886, 37.675129, 27.176117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510708, 37.291733, 27.134497>,  <34.447002, 37.061695, 27.109524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510708, 37.291733, 27.134497>,  <34.616886, 37.675129, 27.176117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510708, 37.291733, 27.134497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435174, 0.022808, 0.900058,
		-0.860327, 0.284196, -0.423166,
		-0.265445, -0.958495, -0.104052,
		34.431076, 37.004185, 27.103281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983021, 37.638741, 27.581205>,  <34.616886, 37.675129, 27.176117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983021, 37.638741, 27.581205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086655, 37.257244, 27.520216>,  <34.148834, 37.028347, 27.483624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086655, 37.257244, 27.520216>,  <33.983021, 37.638741, 27.581205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086655, 37.257244, 27.520216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370913, -0.244004, 0.896039,
		-0.891796, -0.175593, -0.416973,
		0.259081, -0.953745, -0.152472,
		34.164379, 36.971119, 27.474474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418846, 37.171360, 27.670521>,  <33.983021, 37.638741, 27.581205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418846, 37.171360, 27.670521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758205, 36.973904, 27.746988>,  <33.961819, 36.855431, 27.792870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758205, 36.973904, 27.746988>,  <33.418846, 37.171360, 27.670521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758205, 36.973904, 27.746988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303194, -0.157099, 0.939890,
		-0.433933, -0.855360, -0.282951,
		0.848396, -0.493638, 0.191170,
		34.012726, 36.825813, 27.804338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168480, 36.684277, 28.162102>,  <33.418846, 37.171360, 27.670521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168480, 36.684277, 28.162102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562160, 36.616371, 28.182182>,  <33.798370, 36.575626, 28.194231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562160, 36.616371, 28.182182>,  <33.168480, 36.684277, 28.162102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562160, 36.616371, 28.182182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114222, -0.392286, 0.912724,
		-0.135257, -0.904041, -0.405481,
		0.984205, -0.169767, 0.050202,
		33.857422, 36.565441, 28.197243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271374, 36.014870, 28.479685>,  <33.168480, 36.684277, 28.162102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271374, 36.014870, 28.479685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625809, 36.187618, 28.547024>,  <33.838470, 36.291267, 28.587427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625809, 36.187618, 28.547024>,  <33.271374, 36.014870, 28.479685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625809, 36.187618, 28.547024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007163, -0.375907, 0.926630,
		0.463469, -0.819866, -0.336179,
		0.886084, 0.431872, 0.168348,
		33.891636, 36.317181, 28.597528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743858, 35.418640, 28.782642>,  <33.271374, 36.014870, 28.479685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743858, 35.418640, 28.782642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875397, 35.785748, 28.871687>,  <33.954319, 36.006012, 28.925114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875397, 35.785748, 28.871687>,  <33.743858, 35.418640, 28.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875397, 35.785748, 28.871687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158442, -0.285996, 0.945041,
		0.930999, -0.275499, -0.239462,
		0.328843, 0.917773, 0.222611,
		33.974049, 36.061081, 28.938471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360035, 35.325970, 29.177839>,  <33.743858, 35.418640, 28.782642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360035, 35.325970, 29.177839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257870, 35.697613, 29.284817>,  <34.196571, 35.920597, 29.349003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257870, 35.697613, 29.284817>,  <34.360035, 35.325970, 29.177839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257870, 35.697613, 29.284817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061244, -0.260513, 0.963526,
		0.964891, 0.262472, 0.009635,
		-0.255409, 0.929108, 0.267442,
		34.181248, 35.976345, 29.365049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766346, 35.446793, 29.709282>,  <34.360035, 35.325970, 29.177839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766346, 35.446793, 29.709282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459919, 35.699966, 29.754065>,  <34.276062, 35.851871, 29.780933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459919, 35.699966, 29.754065>,  <34.766346, 35.446793, 29.709282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459919, 35.699966, 29.754065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043514, -0.224850, 0.973421,
		0.641286, 0.740834, 0.199792,
		-0.766067, 0.632935, 0.111957,
		34.230099, 35.889847, 29.787651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832142, 35.653980, 30.313486>,  <34.766346, 35.446793, 29.709282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832142, 35.653980, 30.313486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448467, 35.744019, 30.245028>,  <34.218262, 35.798042, 30.203953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448467, 35.744019, 30.245028>,  <34.832142, 35.653980, 30.313486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448467, 35.744019, 30.245028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237582, -0.313328, 0.919446,
		0.153336, 0.922583, 0.354018,
		-0.959189, 0.225092, -0.171145,
		34.160709, 35.811546, 30.193684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544983, 35.712269, 30.108551>,  <34.832142, 35.653980, 30.313486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544983, 35.712269, 30.108551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922367, 35.581802, 30.084898>,  <36.148796, 35.503521, 30.070707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922367, 35.581802, 30.084898>,  <35.544983, 35.712269, 30.108551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922367, 35.581802, 30.084898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216085, 0.740422, -0.636461,
		0.251376, 0.587699, 0.769039,
		0.943460, -0.326169, -0.059131,
		36.205406, 35.483952, 30.067160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052006, 36.270798, 30.137760>,  <35.544983, 35.712269, 30.108551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052006, 36.270798, 30.137760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280098, 35.991440, 29.964748>,  <36.416954, 35.823826, 29.860941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280098, 35.991440, 29.964748>,  <36.052006, 36.270798, 30.137760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280098, 35.991440, 29.964748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368263, 0.687981, -0.625352,
		0.734313, 0.197311, 0.649501,
		0.570233, -0.698392, -0.432531,
		36.451168, 35.781921, 29.834990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720825, 36.511780, 30.001081>,  <36.052006, 36.270798, 30.137760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720825, 36.511780, 30.001081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699245, 36.204700, 29.745668>,  <36.686298, 36.020451, 29.592421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699245, 36.204700, 29.745668>,  <36.720825, 36.511780, 30.001081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699245, 36.204700, 29.745668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394004, 0.571216, -0.720051,
		0.917524, -0.290430, 0.271661,
		-0.053948, -0.767700, -0.638535,
		36.683060, 35.974392, 29.554108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349297, 36.502148, 29.735752>,  <36.720825, 36.511780, 30.001081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349297, 36.502148, 29.735752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116520, 36.318874, 29.467005>,  <36.976852, 36.208908, 29.305756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116520, 36.318874, 29.467005>,  <37.349297, 36.502148, 29.735752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116520, 36.318874, 29.467005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350273, 0.604387, -0.715559,
		0.733929, -0.651752, -0.191229,
		-0.581943, -0.458187, -0.671868,
		36.941936, 36.181419, 29.265444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830082, 36.484409, 29.190983>,  <37.349297, 36.502148, 29.735752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830082, 36.484409, 29.190983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479774, 36.384312, 29.025864>,  <37.269588, 36.324253, 28.926792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479774, 36.384312, 29.025864>,  <37.830082, 36.484409, 29.190983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479774, 36.384312, 29.025864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309771, 0.364506, -0.878167,
		0.370239, -0.896942, -0.241699,
		-0.875766, -0.250260, -0.412801,
		37.217041, 36.309238, 28.902025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970165, 36.148026, 28.548153>,  <37.830082, 36.484409, 29.190983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970165, 36.148026, 28.548153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589634, 36.252052, 28.482018>,  <37.361313, 36.314468, 28.442337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589634, 36.252052, 28.482018>,  <37.970165, 36.148026, 28.548153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589634, 36.252052, 28.482018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249257, 0.333843, -0.909076,
		-0.181222, -0.906044, -0.382418,
		-0.951330, 0.260065, -0.165339,
		37.304234, 36.330070, 28.432415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736320, 35.672554, 27.977081>,  <37.970165, 36.148026, 28.548153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736320, 35.672554, 27.977081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530392, 36.015068, 27.993763>,  <37.406834, 36.220577, 28.003771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530392, 36.015068, 27.993763>,  <37.736320, 35.672554, 27.977081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530392, 36.015068, 27.993763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294398, 0.222267, -0.929477,
		-0.805166, -0.466235, -0.366515,
		-0.514819, 0.856284, 0.041703,
		37.375946, 36.271954, 28.006273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377098, 35.716255, 27.296289>,  <37.736320, 35.672554, 27.977081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377098, 35.716255, 27.296289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317791, 36.092682, 27.417883>,  <37.282207, 36.318539, 27.490839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317791, 36.092682, 27.417883>,  <37.377098, 35.716255, 27.296289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317791, 36.092682, 27.417883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229728, 0.331745, -0.914970,
		-0.961895, -0.065823, -0.265375,
		-0.148263, 0.941070, 0.303983,
		37.273312, 36.375004, 27.509077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994881, 36.089470, 26.821440>,  <37.377098, 35.716255, 27.296289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994881, 36.089470, 26.821440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165020, 36.399700, 27.008015>,  <37.267101, 36.585838, 27.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165020, 36.399700, 27.008015>,  <36.994881, 36.089470, 26.821440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165020, 36.399700, 27.008015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188532, 0.428146, -0.883825,
		-0.885176, 0.463870, 0.035890,
		0.425346, 0.775575, 0.466439,
		37.292625, 36.632374, 27.147945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800838, 36.581051, 26.391415>,  <36.994881, 36.089470, 26.821440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800838, 36.581051, 26.391415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067463, 36.770573, 26.621616>,  <37.227436, 36.884285, 26.759737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067463, 36.770573, 26.621616>,  <36.800838, 36.581051, 26.391415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067463, 36.770573, 26.621616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313963, 0.521772, -0.793210,
		-0.676108, 0.709410, 0.199035,
		0.666562, 0.473806, 0.575503,
		37.267433, 36.912716, 26.794268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687878, 37.311684, 26.312733>,  <36.800838, 36.581051, 26.391415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687878, 37.311684, 26.312733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064682, 37.200535, 26.388000>,  <37.290764, 37.133846, 26.433161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064682, 37.200535, 26.388000>,  <36.687878, 37.311684, 26.312733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064682, 37.200535, 26.388000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306600, 0.484613, -0.819235,
		0.136455, 0.829419, 0.541706,
		0.942007, -0.277875, 0.188172,
		37.347282, 37.117172, 26.444452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088871, 37.928856, 26.223722>,  <36.687878, 37.311684, 26.312733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088871, 37.928856, 26.223722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362217, 37.639790, 26.182230>,  <37.526226, 37.466351, 26.157335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362217, 37.639790, 26.182230>,  <37.088871, 37.928856, 26.223722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362217, 37.639790, 26.182230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247065, 0.362611, -0.898594,
		0.687000, 0.588441, 0.426343,
		0.683367, -0.722669, -0.103731,
		37.567226, 37.422989, 26.151112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764088, 38.215763, 25.984478>,  <37.088871, 37.928856, 26.223722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764088, 38.215763, 25.984478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788357, 37.826878, 25.894043>,  <37.802917, 37.593544, 25.839783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788357, 37.826878, 25.894043>,  <37.764088, 38.215763, 25.984478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788357, 37.826878, 25.894043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288725, 0.233916, -0.928397,
		0.955487, -0.008946, 0.294896,
		0.060676, -0.972216, -0.226087,
		37.806561, 37.535213, 25.826218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380680, 38.186256, 25.728559>,  <37.764088, 38.215763, 25.984478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380680, 38.186256, 25.728559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202969, 37.855209, 25.591352>,  <38.096344, 37.656578, 25.509029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202969, 37.855209, 25.591352>,  <38.380680, 38.186256, 25.728559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202969, 37.855209, 25.591352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467891, 0.112162, -0.876640,
		0.764000, -0.549964, 0.337406,
		-0.444276, -0.827622, -0.343015,
		38.069687, 37.606922, 25.488447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887939, 37.929356, 25.230555>,  <38.380680, 38.186256, 25.728559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887939, 37.929356, 25.230555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541603, 37.746655, 25.148874>,  <38.333801, 37.637035, 25.099867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541603, 37.746655, 25.148874>,  <38.887939, 37.929356, 25.230555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541603, 37.746655, 25.148874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302691, -0.153239, -0.940689,
		0.398370, -0.876296, 0.270935,
		-0.865840, -0.456752, -0.204201,
		38.281853, 37.609631, 25.087614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083584, 37.259346, 25.047905>,  <38.887939, 37.929356, 25.230555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083584, 37.259346, 25.047905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723495, 37.343750, 24.895546>,  <38.507442, 37.394390, 24.804131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723495, 37.343750, 24.895546>,  <39.083584, 37.259346, 25.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723495, 37.343750, 24.895546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387809, -0.009278, -0.921693,
		-0.198019, -0.977440, -0.073478,
		-0.900218, 0.211008, -0.380897,
		38.453430, 37.407051, 24.781277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132660, 36.944672, 24.354094>,  <39.083584, 37.259346, 25.047905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132660, 36.944672, 24.354094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826195, 37.201195, 24.337528>,  <38.642315, 37.355110, 24.327589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826195, 37.201195, 24.337528>,  <39.132660, 36.944672, 24.354094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826195, 37.201195, 24.337528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098668, 0.053710, -0.993670,
		-0.635026, -0.765400, -0.104427,
		-0.766163, 0.641310, -0.041414,
		38.596344, 37.393589, 24.325104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729172, 36.666851, 23.883722>,  <39.132660, 36.944672, 24.354094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729172, 36.666851, 23.883722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632275, 37.054878, 23.890596>,  <38.574139, 37.287693, 23.894720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632275, 37.054878, 23.890596>,  <38.729172, 36.666851, 23.883722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632275, 37.054878, 23.890596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082878, -0.003043, -0.996555,
		-0.966670, -0.242829, 0.081134,
		-0.242239, 0.970065, 0.017184,
		38.559605, 37.345898, 23.895752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197453, 36.656132, 23.447983>,  <38.729172, 36.666851, 23.883722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197453, 36.656132, 23.447983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342060, 37.028332, 23.471561>,  <38.428825, 37.251652, 23.485708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342060, 37.028332, 23.471561>,  <38.197453, 36.656132, 23.447983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342060, 37.028332, 23.471561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156126, 0.122743, -0.980081,
		-0.919201, 0.345114, 0.189649,
		0.361517, 0.930500, 0.058945,
		38.450516, 37.307484, 23.489244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781376, 37.086849, 23.013071>,  <38.197453, 36.656132, 23.447983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781376, 37.086849, 23.013071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133450, 37.274151, 23.044081>,  <38.344696, 37.386532, 23.062687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133450, 37.274151, 23.044081>,  <37.781376, 37.086849, 23.013071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133450, 37.274151, 23.044081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009983, 0.181570, -0.983327,
		-0.474524, 0.864737, 0.164490,
		0.880186, 0.468255, 0.077527,
		38.397507, 37.414627, 23.067339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599804, 37.657345, 22.708605>,  <37.781376, 37.086849, 23.013071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599804, 37.657345, 22.708605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999317, 37.638702, 22.702063>,  <38.239025, 37.627518, 22.698137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999317, 37.638702, 22.702063>,  <37.599804, 37.657345, 22.708605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999317, 37.638702, 22.702063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007780, 0.178543, -0.983901,
		0.048777, 0.982827, 0.177963,
		0.998779, -0.046608, -0.016355,
		38.298950, 37.624722, 22.697157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823505, 38.074387, 22.206610>,  <37.599804, 37.657345, 22.708605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823505, 38.074387, 22.206610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124958, 37.816601, 22.258312>,  <38.305828, 37.661930, 22.289333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124958, 37.816601, 22.258312>,  <37.823505, 38.074387, 22.206610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124958, 37.816601, 22.258312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074608, -0.111508, -0.990959,
		0.653050, 0.756461, -0.035954,
		0.753631, -0.644464, 0.129258,
		38.351048, 37.623260, 22.297091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377239, 38.310211, 21.793650>,  <37.823505, 38.074387, 22.206610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377239, 38.310211, 21.793650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452606, 37.920494, 21.843037>,  <38.497826, 37.686665, 21.872669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452606, 37.920494, 21.843037>,  <38.377239, 38.310211, 21.793650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452606, 37.920494, 21.843037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109401, -0.104114, -0.988530,
		0.975976, 0.199765, 0.086972,
		0.188419, -0.974297, 0.123467,
		38.509132, 37.628204, 21.880077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947037, 38.191563, 21.481209>,  <38.377239, 38.310211, 21.793650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947037, 38.191563, 21.481209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769150, 37.834335, 21.508492>,  <38.662418, 37.619999, 21.524860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769150, 37.834335, 21.508492>,  <38.947037, 38.191563, 21.481209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769150, 37.834335, 21.508492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062897, -0.107102, -0.992257,
		0.893461, -0.436982, 0.103802,
		-0.444716, -0.893071, 0.068207,
		38.635735, 37.566414, 21.528954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322521, 37.836529, 21.042253>,  <38.947037, 38.191563, 21.481209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322521, 37.836529, 21.042253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994850, 37.612377, 21.091124>,  <38.798248, 37.477886, 21.120445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994850, 37.612377, 21.091124>,  <39.322521, 37.836529, 21.042253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994850, 37.612377, 21.091124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122486, -0.379031, -0.917242,
		0.560313, -0.736417, 0.379131,
		-0.819175, -0.560380, 0.122175,
		38.749096, 37.444263, 21.127775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538521, 37.103970, 20.778229>,  <39.322521, 37.836529, 21.042253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538521, 37.103970, 20.778229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141319, 37.141903, 20.806376>,  <38.903000, 37.164661, 20.823263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141319, 37.141903, 20.806376>,  <39.538521, 37.103970, 20.778229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141319, 37.141903, 20.806376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109658, -0.519401, -0.847466,
		-0.043820, -0.849252, 0.526166,
		-0.993003, 0.094834, 0.070367,
		38.843418, 37.170353, 20.827486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227638, 36.495308, 20.589157>,  <39.538521, 37.103970, 20.778229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227638, 36.495308, 20.589157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915619, 36.739693, 20.535110>,  <38.728409, 36.886322, 20.502684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915619, 36.739693, 20.535110>,  <39.227638, 36.495308, 20.589157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915619, 36.739693, 20.535110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109275, -0.345627, -0.931987,
		-0.616109, -0.712226, 0.336368,
		-0.780044, 0.610963, -0.135115,
		38.681606, 36.922981, 20.494576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797653, 36.078926, 20.237461>,  <39.227638, 36.495308, 20.589157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797653, 36.078926, 20.237461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621994, 36.435883, 20.195921>,  <38.516598, 36.650059, 20.170998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621994, 36.435883, 20.195921>,  <38.797653, 36.078926, 20.237461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621994, 36.435883, 20.195921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115030, -0.170491, -0.978622,
		-0.891022, -0.417811, 0.177523,
		-0.439145, 0.892394, -0.103850,
		38.490250, 36.703602, 20.164766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082836, 36.003231, 19.814512>,  <38.797653, 36.078926, 20.237461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082836, 36.003231, 19.814512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234955, 36.367302, 19.748850>,  <38.326225, 36.585743, 19.709452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234955, 36.367302, 19.748850>,  <38.082836, 36.003231, 19.814512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234955, 36.367302, 19.748850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140679, -0.118500, -0.982938,
		-0.914101, 0.396905, 0.082977,
		0.380300, 0.910178, -0.164157,
		38.349045, 36.640354, 19.699602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631245, 36.398987, 19.458698>,  <38.082836, 36.003231, 19.814512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631245, 36.398987, 19.458698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989666, 36.561871, 19.387970>,  <38.204720, 36.659599, 19.345533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989666, 36.561871, 19.387970>,  <37.631245, 36.398987, 19.458698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989666, 36.561871, 19.387970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102509, -0.197746, -0.974879,
		-0.431947, 0.891670, -0.135448,
		0.896055, 0.407211, -0.176820,
		38.258484, 36.684032, 19.334925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539654, 36.653183, 18.913898>,  <37.631245, 36.398987, 19.458698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539654, 36.653183, 18.913898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937279, 36.693344, 18.897093>,  <38.175854, 36.717442, 18.887011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937279, 36.693344, 18.897093>,  <37.539654, 36.653183, 18.913898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937279, 36.693344, 18.897093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020349, -0.207747, -0.977971,
		-0.106922, 0.973016, -0.204470,
		0.994059, 0.100406, -0.042013,
		38.235497, 36.723465, 18.884489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771843, 36.994690, 18.325886>,  <37.539654, 36.653183, 18.913898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771843, 36.994690, 18.325886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112938, 36.800579, 18.403193>,  <38.317596, 36.684113, 18.449575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112938, 36.800579, 18.403193>,  <37.771843, 36.994690, 18.325886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112938, 36.800579, 18.403193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050705, -0.291347, -0.955273,
		0.519875, 0.824395, -0.223837,
		0.852736, -0.485272, 0.193266,
		38.368759, 36.654999, 18.461172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208298, 37.082912, 17.794950>,  <37.771843, 36.994690, 18.325886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208298, 37.082912, 17.794950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373283, 36.761284, 17.966225>,  <38.472275, 36.568306, 18.068989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373283, 36.761284, 17.966225>,  <38.208298, 37.082912, 17.794950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373283, 36.761284, 17.966225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108197, -0.423463, -0.899429,
		0.904525, 0.417311, -0.087666,
		0.412465, -0.804071, 0.428185,
		38.497025, 36.520061, 18.094681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655170, 36.906425, 17.298002>,  <38.208298, 37.082912, 17.794950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655170, 36.906425, 17.298002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650143, 36.577339, 17.525328>,  <38.647125, 36.379887, 17.661722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650143, 36.577339, 17.525328>,  <38.655170, 36.906425, 17.298002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650143, 36.577339, 17.525328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231113, -0.555359, -0.798851,
		0.972846, 0.121305, 0.197120,
		-0.012568, -0.822716, 0.568314,
		38.646374, 36.330524, 17.695822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182140, 36.581932, 17.041121>,  <38.655170, 36.906425, 17.298002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182140, 36.581932, 17.041121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977337, 36.295593, 17.231030>,  <38.854454, 36.123791, 17.344975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977337, 36.295593, 17.231030>,  <39.182140, 36.581932, 17.041121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977337, 36.295593, 17.231030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244208, -0.651218, -0.718525,
		0.823537, -0.251944, 0.508243,
		-0.512005, -0.715849, 0.474775,
		38.823734, 36.080837, 17.373463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653210, 36.066097, 17.100248>,  <39.182140, 36.581932, 17.041121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653210, 36.066097, 17.100248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297356, 35.892567, 17.157291>,  <39.083843, 35.788448, 17.191517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297356, 35.892567, 17.157291>,  <39.653210, 36.066097, 17.100248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297356, 35.892567, 17.157291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228641, -0.693462, -0.683252,
		0.395306, -0.575242, 0.716121,
		-0.889638, -0.433828, 0.142605,
		39.030464, 35.762417, 17.200073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695553, 35.258274, 17.308630>,  <39.653210, 36.066097, 17.100248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695553, 35.258274, 17.308630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340172, 35.331814, 17.140419>,  <39.126942, 35.375938, 17.039492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340172, 35.331814, 17.140419>,  <39.695553, 35.258274, 17.308630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340172, 35.331814, 17.140419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159821, -0.734988, -0.658977,
		-0.430234, -0.652682, 0.623623,
		-0.888457, 0.183847, -0.420529,
		39.073635, 35.386967, 17.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402706, 34.591904, 17.112122>,  <39.695553, 35.258274, 17.308630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402706, 34.591904, 17.112122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203190, 34.862282, 16.895123>,  <39.083481, 35.024509, 16.764923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203190, 34.862282, 16.895123>,  <39.402706, 34.591904, 17.112122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203190, 34.862282, 16.895123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039577, -0.643028, -0.764820,
		-0.865818, -0.360016, 0.347488,
		-0.498792, 0.675947, -0.542497,
		39.053551, 35.065067, 16.732374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708244, 34.269417, 16.450993>,  <39.402706, 34.591904, 17.112122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708244, 34.269417, 16.450993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958744, 33.958622, 16.476627>,  <40.109043, 33.772144, 16.492008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958744, 33.958622, 16.476627>,  <39.708244, 34.269417, 16.450993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958744, 33.958622, 16.476627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295033, -0.160101, 0.941979,
		-0.721641, -0.608822, -0.329499,
		0.626250, -0.776983, 0.064087,
		40.146618, 33.725529, 16.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278255, 33.667507, 16.737900>,  <39.708244, 34.269417, 16.450993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278255, 33.667507, 16.737900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669991, 33.609184, 16.793962>,  <39.905029, 33.574192, 16.827600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669991, 33.609184, 16.793962>,  <39.278255, 33.667507, 16.737900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669991, 33.609184, 16.793962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151271, -0.068120, 0.986142,
		-0.134237, -0.986965, -0.088768,
		0.979335, -0.145805, 0.140155,
		39.963791, 33.565441, 16.836008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311146, 33.082462, 17.172533>,  <39.278255, 33.667507, 16.737900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311146, 33.082462, 17.172533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659431, 33.278671, 17.186661>,  <39.868401, 33.396397, 17.195137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659431, 33.278671, 17.186661>,  <39.311146, 33.082462, 17.172533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659431, 33.278671, 17.186661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026240, -0.025374, 0.999334,
		0.491094, -0.871057, -0.009223,
		0.870711, 0.490525, 0.035317,
		39.920647, 33.425827, 17.197256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503071, 32.920277, 17.860046>,  <39.311146, 33.082462, 17.172533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503071, 32.920277, 17.860046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771183, 33.192574, 17.741850>,  <39.932053, 33.355949, 17.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771183, 33.192574, 17.741850>,  <39.503071, 32.920277, 17.860046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771183, 33.192574, 17.741850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319193, 0.095006, 0.942915,
		0.669954, -0.726338, -0.153607,
		0.670282, 0.680740, -0.295491,
		39.972267, 33.396797, 17.653202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181355, 32.785278, 18.163971>,  <39.503071, 32.920277, 17.860046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181355, 32.785278, 18.163971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210938, 33.175629, 18.081797>,  <40.228687, 33.409840, 18.032492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210938, 33.175629, 18.081797>,  <40.181355, 32.785278, 18.163971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210938, 33.175629, 18.081797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316346, 0.172406, 0.932846,
		0.945757, -0.133978, -0.295963,
		0.073955, 0.975872, -0.205438,
		40.233124, 33.468391, 18.020164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727642, 33.100368, 18.540722>,  <40.181355, 32.785278, 18.163971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727642, 33.100368, 18.540722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492828, 33.412853, 18.455782>,  <40.351940, 33.600346, 18.404818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492828, 33.412853, 18.455782>,  <40.727642, 33.100368, 18.540722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492828, 33.412853, 18.455782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006852, 0.267090, 0.963647,
		0.809534, 0.564238, -0.162144,
		-0.587034, 0.781216, -0.212352,
		40.316719, 33.647217, 18.392076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958641, 33.720467, 18.886034>,  <40.727642, 33.100368, 18.540722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958641, 33.720467, 18.886034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586666, 33.812660, 18.771423>,  <40.363483, 33.867977, 18.702658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586666, 33.812660, 18.771423>,  <40.958641, 33.720467, 18.886034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586666, 33.812660, 18.771423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260384, 0.137467, 0.955669,
		0.259654, 0.963317, -0.067821,
		-0.929935, 0.230484, -0.286526,
		40.307686, 33.881805, 18.685465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899902, 34.346706, 19.136211>,  <40.958641, 33.720467, 18.886034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899902, 34.346706, 19.136211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528141, 34.205242, 19.093992>,  <40.305084, 34.120365, 19.068661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528141, 34.205242, 19.093992>,  <40.899902, 34.346706, 19.136211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528141, 34.205242, 19.093992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232703, 0.339552, 0.911347,
		-0.286465, 0.871569, -0.397877,
		-0.929402, -0.353656, -0.105547,
		40.249321, 34.099144, 19.062328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480770, 34.897587, 19.202078>,  <40.899902, 34.346706, 19.136211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480770, 34.897587, 19.202078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274776, 34.565655, 19.288038>,  <40.151180, 34.366497, 19.339615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274776, 34.565655, 19.288038>,  <40.480770, 34.897587, 19.202078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274776, 34.565655, 19.288038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196429, 0.358268, 0.912721,
		-0.834392, 0.427822, -0.347504,
		-0.514981, -0.829827, 0.214899,
		40.120281, 34.316708, 19.352509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909340, 35.120350, 19.568468>,  <40.480770, 34.897587, 19.202078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909340, 35.120350, 19.568468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972229, 34.739254, 19.672443>,  <40.009960, 34.510597, 19.734829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972229, 34.739254, 19.672443>,  <39.909340, 35.120350, 19.568468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972229, 34.739254, 19.672443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127253, 0.241473, 0.962028,
		-0.979331, -0.184326, -0.083275,
		0.157218, -0.952740, 0.259938,
		40.019394, 34.453430, 19.750425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506641, 35.026493, 20.179008>,  <39.909340, 35.120350, 19.568468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506641, 35.026493, 20.179008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745213, 34.705505, 20.186115>,  <39.888355, 34.512913, 20.190378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745213, 34.705505, 20.186115>,  <39.506641, 35.026493, 20.179008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745213, 34.705505, 20.186115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000986, 0.022865, 0.999738,
		-0.802663, -0.596258, 0.014428,
		0.596431, -0.802467, 0.017765,
		39.924141, 34.464764, 20.191444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334793, 34.692036, 20.807051>,  <39.506641, 35.026493, 20.179008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334793, 34.692036, 20.807051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668453, 34.498932, 20.700363>,  <39.868649, 34.383072, 20.636351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668453, 34.498932, 20.700363>,  <39.334793, 34.692036, 20.807051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668453, 34.498932, 20.700363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269995, -0.064269, 0.960714,
		-0.480934, -0.873393, 0.076732,
		0.834149, -0.482758, -0.266721,
		39.918697, 34.354103, 20.620346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432182, 33.862152, 20.998905>,  <39.334793, 34.692036, 20.807051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432182, 33.862152, 20.998905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761986, 34.086468, 20.968689>,  <39.959866, 34.221058, 20.950560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761986, 34.086468, 20.968689>,  <39.432182, 33.862152, 20.998905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761986, 34.086468, 20.968689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229323, -0.209112, 0.950622,
		0.517305, -0.801115, -0.301016,
		0.824504, 0.560791, -0.075539,
		40.009338, 34.254704, 20.946028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023785, 33.450928, 21.415403>,  <39.432182, 33.862152, 20.998905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023785, 33.450928, 21.415403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084080, 33.844814, 21.380497>,  <40.120258, 34.081146, 21.359552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084080, 33.844814, 21.380497>,  <40.023785, 33.450928, 21.415403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084080, 33.844814, 21.380497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029713, 0.083722, 0.996046,
		0.988127, -0.152738, -0.016639,
		0.150741, 0.984714, -0.087266,
		40.129303, 34.140228, 21.354317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474579, 33.663628, 21.998827>,  <40.023785, 33.450928, 21.415403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474579, 33.663628, 21.998827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337658, 34.001099, 21.833401>,  <40.255505, 34.203583, 21.734144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337658, 34.001099, 21.833401>,  <40.474579, 33.663628, 21.998827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337658, 34.001099, 21.833401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174344, 0.489546, 0.854370,
		0.923272, 0.220352, -0.314663,
		-0.342304, 0.843676, -0.413568,
		40.234966, 34.254200, 21.709330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894268, 34.160381, 22.320797>,  <40.474579, 33.663628, 21.998827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894268, 34.160381, 22.320797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566929, 34.340706, 22.178211>,  <40.370525, 34.448902, 22.092659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566929, 34.340706, 22.178211>,  <40.894268, 34.160381, 22.320797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566929, 34.340706, 22.178211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044445, 0.568741, 0.821315,
		0.572998, 0.687967, -0.445393,
		-0.818351, 0.450816, -0.356464,
		40.321423, 34.475952, 22.071272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038410, 34.855652, 22.563192>,  <40.894268, 34.160381, 22.320797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038410, 34.855652, 22.563192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645176, 34.825310, 22.496513>,  <40.409237, 34.807106, 22.456505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645176, 34.825310, 22.496513>,  <41.038410, 34.855652, 22.563192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645176, 34.825310, 22.496513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174141, 0.669021, 0.722555,
		0.056718, 0.739363, -0.670914,
		-0.983086, -0.075852, -0.166699,
		40.350250, 34.802555, 22.446505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728905, 35.488995, 22.768944>,  <41.038410, 34.855652, 22.563192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728905, 35.488995, 22.768944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421627, 35.234367, 22.796242>,  <40.237259, 35.081589, 22.812620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421627, 35.234367, 22.796242>,  <40.728905, 35.488995, 22.768944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421627, 35.234367, 22.796242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269617, 0.418349, 0.867347,
		-0.580677, 0.647891, -0.493003,
		-0.768194, -0.636570, 0.068244,
		40.191170, 35.043396, 22.816715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156738, 35.886395, 22.823580>,  <40.728905, 35.488995, 22.768944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156738, 35.886395, 22.823580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061394, 35.532295, 22.983341>,  <40.004189, 35.319836, 23.079197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061394, 35.532295, 22.983341>,  <40.156738, 35.886395, 22.823580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061394, 35.532295, 22.983341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195116, 0.446523, 0.873240,
		-0.951374, 0.130218, -0.279160,
		-0.238363, -0.885246, 0.399402,
		39.989883, 35.266720, 23.103163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464802, 36.006462, 23.202438>,  <40.156738, 35.886395, 22.823580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464802, 36.006462, 23.202438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608761, 35.670113, 23.364130>,  <39.695137, 35.468304, 23.461145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608761, 35.670113, 23.364130>,  <39.464802, 36.006462, 23.202438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608761, 35.670113, 23.364130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218891, 0.345066, 0.912697,
		-0.906951, -0.416959, -0.059872,
		0.359897, -0.840877, 0.404227,
		39.716728, 35.417850, 23.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966782, 35.864658, 23.645876>,  <39.464802, 36.006462, 23.202438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966782, 35.864658, 23.645876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290730, 35.668434, 23.774534>,  <39.485100, 35.550701, 23.851730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290730, 35.668434, 23.774534>,  <38.966782, 35.864658, 23.645876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290730, 35.668434, 23.774534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208640, 0.271577, 0.939529,
		-0.548250, -0.828007, 0.117592,
		0.809872, -0.490562, 0.321647,
		39.533691, 35.521267, 23.871029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871891, 35.858906, 24.327940>,  <38.966782, 35.864658, 23.645876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871891, 35.858906, 24.327940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221905, 35.665302, 24.325296>,  <39.431915, 35.549141, 24.323709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221905, 35.665302, 24.325296>,  <38.871891, 35.858906, 24.327940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221905, 35.665302, 24.325296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053331, 0.082826, 0.995136,
		-0.481108, -0.871134, 0.098289,
		0.875038, -0.484010, -0.006610,
		39.484417, 35.520100, 24.323313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826664, 35.118183, 24.737745>,  <38.871891, 35.858906, 24.327940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826664, 35.118183, 24.737745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190899, 35.283337, 24.730270>,  <39.409439, 35.382431, 24.725786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190899, 35.283337, 24.730270>,  <38.826664, 35.118183, 24.737745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190899, 35.283337, 24.730270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024363, -0.008491, 0.999667,
		0.412592, -0.910742, -0.017791,
		0.910590, 0.412888, -0.018685,
		39.464077, 35.407204, 24.724665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341446, 34.691338, 25.075859>,  <38.826664, 35.118183, 24.737745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341446, 34.691338, 25.075859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494442, 35.060551, 25.092396>,  <39.586239, 35.282078, 25.102318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494442, 35.060551, 25.092396>,  <39.341446, 34.691338, 25.075859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494442, 35.060551, 25.092396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117555, -0.092997, 0.988702,
		0.916449, -0.373313, -0.144078,
		0.382494, 0.923033, 0.041342,
		39.609192, 35.337460, 25.104799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860813, 34.647766, 25.589371>,  <39.341446, 34.691338, 25.075859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860813, 34.647766, 25.589371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809219, 35.039471, 25.526865>,  <39.778263, 35.274494, 25.489361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809219, 35.039471, 25.526865>,  <39.860813, 34.647766, 25.589371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809219, 35.039471, 25.526865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097928, 0.169389, 0.980672,
		0.986799, 0.111192, -0.117745,
		-0.128988, 0.979257, -0.156264,
		39.770523, 35.333248, 25.479986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372974, 34.959560, 25.927523>,  <39.860813, 34.647766, 25.589371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372974, 34.959560, 25.927523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092873, 35.242214, 25.886909>,  <39.924812, 35.411808, 25.862541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092873, 35.242214, 25.886909>,  <40.372974, 34.959560, 25.927523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092873, 35.242214, 25.886909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081756, 0.220669, 0.971916,
		0.709195, 0.672288, -0.212297,
		-0.700255, 0.706635, -0.101534,
		39.882797, 35.454205, 25.856449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640594, 35.692352, 26.347706>,  <40.372974, 34.959560, 25.927523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640594, 35.692352, 26.347706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241505, 35.709248, 26.326683>,  <40.002052, 35.719383, 26.314070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241505, 35.709248, 26.326683>,  <40.640594, 35.692352, 26.347706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241505, 35.709248, 26.326683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027261, 0.460213, 0.887390,
		0.061669, 0.886803, -0.458014,
		-0.997724, 0.042239, -0.052556,
		39.942188, 35.721920, 26.310917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493065, 36.219009, 26.764328>,  <40.640594, 35.692352, 26.347706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493065, 36.219009, 26.764328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131542, 36.052582, 26.724272>,  <39.914631, 35.952724, 26.700237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131542, 36.052582, 26.724272>,  <40.493065, 36.219009, 26.764328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131542, 36.052582, 26.724272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204869, 0.215216, 0.954836,
		-0.375725, 0.883499, -0.279752,
		-0.903803, -0.416068, -0.100140,
		39.860401, 35.927761, 26.694229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960651, 36.698574, 27.064173>,  <40.493065, 36.219009, 26.764328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960651, 36.698574, 27.064173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793285, 36.335300, 27.059732>,  <39.692863, 36.117336, 27.057068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793285, 36.335300, 27.059732>,  <39.960651, 36.698574, 27.064173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793285, 36.335300, 27.059732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239590, 0.098580, 0.965856,
		-0.876084, 0.406791, -0.258840,
		-0.418418, -0.908187, -0.011099,
		39.667759, 36.062843, 27.056402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321911, 36.812363, 27.415327>,  <39.960651, 36.698574, 27.064173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321911, 36.812363, 27.415327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380486, 36.416706, 27.420294>,  <39.415630, 36.179314, 27.423273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380486, 36.416706, 27.420294>,  <39.321911, 36.812363, 27.415327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380486, 36.416706, 27.420294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217809, -0.019998, 0.975787,
		-0.964943, -0.145598, -0.218372,
		0.146439, -0.989142, 0.012415,
		39.424416, 36.119965, 27.424019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732906, 36.446041, 27.691751>,  <39.321911, 36.812363, 27.415327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732906, 36.446041, 27.691751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062656, 36.236042, 27.776392>,  <39.260506, 36.110043, 27.827177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062656, 36.236042, 27.776392>,  <38.732906, 36.446041, 27.691751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062656, 36.236042, 27.776392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272766, -0.040892, 0.961211,
		-0.495985, -0.850118, -0.176914,
		0.824377, -0.525002, 0.211602,
		39.309971, 36.078541, 27.839872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470818, 35.811691, 28.011459>,  <38.732906, 36.446041, 27.691751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470818, 35.811691, 28.011459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855854, 35.858456, 28.109228>,  <39.086876, 35.886513, 28.167891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855854, 35.858456, 28.109228>,  <38.470818, 35.811691, 28.011459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855854, 35.858456, 28.109228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229550, -0.127351, 0.964929,
		0.143940, -0.984943, -0.095750,
		0.962594, 0.116912, 0.244424,
		39.144634, 35.893528, 28.182556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596066, 35.319313, 28.693699>,  <38.470818, 35.811691, 28.011459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596066, 35.319313, 28.693699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919468, 35.554272, 28.679409>,  <39.113510, 35.695248, 28.670835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919468, 35.554272, 28.679409>,  <38.596066, 35.319313, 28.693699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919468, 35.554272, 28.679409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051651, -0.010358, 0.998611,
		0.586214, -0.809231, -0.038714,
		0.808508, 0.587399, -0.035725,
		39.162022, 35.730492, 28.668692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909393, 35.056618, 29.251778>,  <38.596066, 35.319313, 28.693699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909393, 35.056618, 29.251778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089767, 35.401237, 29.158495>,  <39.197990, 35.608009, 29.102526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089767, 35.401237, 29.158495>,  <38.909393, 35.056618, 29.251778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089767, 35.401237, 29.158495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238552, 0.135442, 0.961638,
		0.860087, -0.489270, -0.144449,
		0.450937, 0.861551, -0.233208,
		39.225048, 35.659702, 29.088533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649498, 35.038074, 29.543119>,  <38.909393, 35.056618, 29.251778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649498, 35.038074, 29.543119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562637, 35.425251, 29.492624>,  <39.510521, 35.657558, 29.462326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562637, 35.425251, 29.492624>,  <39.649498, 35.038074, 29.543119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562637, 35.425251, 29.492624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099616, 0.150624, 0.983559,
		0.971042, 0.201005, -0.129131,
		-0.217150, 0.967941, -0.126239,
		39.497494, 35.715633, 29.454752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132198, 35.415367, 30.131399>,  <39.649498, 35.038074, 29.543119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132198, 35.415367, 30.131399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848156, 35.673866, 30.019604>,  <39.677731, 35.828964, 29.952526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848156, 35.673866, 30.019604>,  <40.132198, 35.415367, 30.131399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848156, 35.673866, 30.019604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132004, 0.267718, 0.954412,
		0.691612, 0.714625, -0.104800,
		-0.710104, 0.646249, -0.279490,
		39.635124, 35.867741, 29.935757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287331, 35.885502, 30.520016>,  <40.132198, 35.415367, 30.131399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287331, 35.885502, 30.520016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909313, 35.965458, 30.416525>,  <39.682503, 36.013432, 30.354431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909313, 35.965458, 30.416525>,  <40.287331, 35.885502, 30.520016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909313, 35.965458, 30.416525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242888, 0.100496, 0.964835,
		0.218865, 0.974650, -0.046421,
		-0.945042, 0.199893, -0.258725,
		39.625801, 36.025425, 30.338907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100372, 36.365833, 30.994108>,  <40.287331, 35.885502, 30.520016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100372, 36.365833, 30.994108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731503, 36.273651, 30.869854>,  <39.510181, 36.218342, 30.795301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731503, 36.273651, 30.869854>,  <40.100372, 36.365833, 30.994108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731503, 36.273651, 30.869854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331833, 0.058758, 0.941506,
		-0.198719, 0.971308, -0.130656,
		-0.922170, -0.230451, -0.310636,
		39.454853, 36.204517, 30.776663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696812, 36.914352, 31.123875>,  <40.100372, 36.365833, 30.994108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696812, 36.914352, 31.123875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488979, 36.572765, 31.135029>,  <39.364281, 36.367813, 31.141722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488979, 36.572765, 31.135029>,  <39.696812, 36.914352, 31.123875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488979, 36.572765, 31.135029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203920, 0.155631, 0.966538,
		-0.829729, 0.496511, -0.255003,
		-0.519583, -0.853965, 0.027883,
		39.333103, 36.316574, 31.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071564, 37.033821, 31.474491>,  <39.696812, 36.914352, 31.123875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071564, 37.033821, 31.474491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079494, 36.634197, 31.489895>,  <39.084255, 36.394421, 31.499136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079494, 36.634197, 31.489895>,  <39.071564, 37.033821, 31.474491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079494, 36.634197, 31.489895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432776, 0.026143, 0.901122,
		-0.901284, -0.034533, -0.431851,
		0.019829, -0.999062, 0.038507,
		39.085442, 36.334480, 31.501448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427521, 36.880440, 31.805733>,  <39.071564, 37.033821, 31.474491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427521, 36.880440, 31.805733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653698, 36.553970, 31.853296>,  <38.789406, 36.358089, 31.881834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653698, 36.553970, 31.853296>,  <38.427521, 36.880440, 31.805733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653698, 36.553970, 31.853296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356911, -0.112156, 0.927381,
		-0.743565, -0.566821, -0.354719,
		0.565443, -0.816171, 0.118910,
		38.823330, 36.309120, 31.888969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946495, 36.411850, 32.005634>,  <38.427521, 36.880440, 31.805733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946495, 36.411850, 32.005634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312675, 36.304489, 32.125576>,  <38.532383, 36.240074, 32.197540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312675, 36.304489, 32.125576>,  <37.946495, 36.411850, 32.005634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312675, 36.304489, 32.125576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385213, -0.368854, 0.845907,
		-0.116438, -0.889893, -0.441058,
		0.915453, -0.268397, 0.299850,
		38.587311, 36.223969, 32.215530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810410, 35.866051, 32.457741>,  <37.946495, 36.411850, 32.005634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810410, 35.866051, 32.457741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196690, 35.941986, 32.528595>,  <38.428459, 35.987549, 32.571110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196690, 35.941986, 32.528595>,  <37.810410, 35.866051, 32.457741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196690, 35.941986, 32.528595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043201, -0.555239, 0.830568,
		0.256029, -0.809735, -0.527995,
		0.965703, 0.189840, 0.177139,
		38.486401, 35.998940, 32.581738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965118, 35.296684, 32.768417>,  <37.810410, 35.866051, 32.457741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965118, 35.296684, 32.768417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304996, 35.501934, 32.816956>,  <38.508923, 35.625084, 32.846077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304996, 35.501934, 32.816956>,  <37.965118, 35.296684, 32.768417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304996, 35.501934, 32.816956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140793, -0.442571, 0.885612,
		0.508132, -0.735414, -0.448294,
		0.849693, 0.513125, 0.121344,
		38.559906, 35.655872, 32.853359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497826, 34.748772, 32.814095>,  <37.965118, 35.296684, 32.768417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497826, 34.748772, 32.814095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550915, 35.094902, 33.007420>,  <38.582767, 35.302582, 33.123413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550915, 35.094902, 33.007420>,  <38.497826, 34.748772, 32.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550915, 35.094902, 33.007420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053226, -0.480698, 0.875269,
		0.989723, -0.141890, -0.017740,
		0.132720, 0.865330, 0.483311,
		38.590733, 35.354500, 33.152412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847843, 34.475338, 33.426678>,  <38.497826, 34.748772, 32.814095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847843, 34.475338, 33.426678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738628, 34.855701, 33.484947>,  <38.673100, 35.083920, 33.519909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738628, 34.855701, 33.484947>,  <38.847843, 34.475338, 33.426678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738628, 34.855701, 33.484947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239842, -0.213932, 0.946947,
		0.931626, 0.223613, 0.286479,
		-0.273036, 0.950911, 0.145672,
		38.656719, 35.140976, 33.528648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255371, 34.696220, 33.929695>,  <38.847843, 34.475338, 33.426678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255371, 34.696220, 33.929695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926579, 34.923752, 33.940933>,  <38.729305, 35.060268, 33.947674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926579, 34.923752, 33.940933>,  <39.255371, 34.696220, 33.929695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926579, 34.923752, 33.940933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044364, -0.113129, 0.992589,
		0.567789, 0.814640, 0.118225,
		-0.821978, 0.568827, 0.028093,
		38.679985, 35.094398, 33.949360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324932, 35.111973, 34.486248>,  <39.255371, 34.696220, 33.929695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324932, 35.111973, 34.486248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939289, 35.044270, 34.404430>,  <38.707901, 35.003647, 34.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939289, 35.044270, 34.404430>,  <39.324932, 35.111973, 34.486248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939289, 35.044270, 34.404430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165638, -0.218639, 0.961645,
		-0.207490, 0.961014, 0.182756,
		-0.964112, -0.169260, -0.204546,
		38.650055, 34.993492, 34.343067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978832, 35.212101, 35.155376>,  <39.324932, 35.111973, 34.486248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978832, 35.212101, 35.155376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717323, 34.997944, 34.941486>,  <38.560417, 34.869450, 34.813152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717323, 34.997944, 34.941486>,  <38.978832, 35.212101, 35.155376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717323, 34.997944, 34.941486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301893, -0.463436, 0.833119,
		-0.693859, 0.706102, 0.141351,
		-0.653774, -0.535394, -0.534727,
		38.521191, 34.837326, 34.781067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577705, 35.093365, 35.677074>,  <38.978832, 35.212101, 35.155376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577705, 35.093365, 35.677074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453590, 34.895550, 35.352322>,  <38.379120, 34.776859, 35.157471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453590, 34.895550, 35.352322>,  <38.577705, 35.093365, 35.677074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453590, 34.895550, 35.352322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491257, -0.647749, 0.582313,
		-0.813871, 0.579528, -0.041957,
		-0.310289, -0.494539, -0.811882,
		38.360504, 34.747189, 35.108757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905491, 35.243382, 35.673977>,  <38.577705, 35.093365, 35.677074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905491, 35.243382, 35.673977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997463, 34.903404, 35.484356>,  <38.052647, 34.699417, 35.370583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997463, 34.903404, 35.484356>,  <37.905491, 35.243382, 35.673977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997463, 34.903404, 35.484356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329717, -0.526326, 0.783753,
		-0.915653, -0.023905, -0.401259,
		0.229929, -0.849947, -0.474050,
		38.066441, 34.648418, 35.342140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318001, 34.834835, 35.790279>,  <37.905491, 35.243382, 35.673977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318001, 34.834835, 35.790279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616512, 34.580902, 35.710228>,  <37.795620, 34.428543, 35.662197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616512, 34.580902, 35.710228>,  <37.318001, 34.834835, 35.790279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616512, 34.580902, 35.710228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291181, -0.581721, 0.759483,
		-0.598571, -0.508509, -0.618977,
		0.746275, -0.634838, -0.200133,
		37.840397, 34.390453, 35.650188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134743, 34.127983, 35.865395>,  <37.318001, 34.834835, 35.790279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134743, 34.127983, 35.865395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526802, 34.050392, 35.881771>,  <37.762039, 34.003838, 35.891598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526802, 34.050392, 35.881771>,  <37.134743, 34.127983, 35.865395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526802, 34.050392, 35.881771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162404, -0.667158, 0.726997,
		-0.113706, -0.719216, -0.685419,
		0.980151, -0.193979, 0.040944,
		37.820847, 33.992199, 35.894054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242729, 33.407444, 35.950092>,  <37.134743, 34.127983, 35.865395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242729, 33.407444, 35.950092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568523, 33.592155, 36.090595>,  <37.764000, 33.702980, 36.174896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568523, 33.592155, 36.090595>,  <37.242729, 33.407444, 35.950092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568523, 33.592155, 36.090595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116508, -0.723263, 0.680673,
		0.568372, -0.513471, -0.642885,
		0.814481, 0.461777, 0.351259,
		37.812866, 33.730690, 36.195972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843380, 32.863319, 35.894009>,  <37.242729, 33.407444, 35.950092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843380, 32.863319, 35.894009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900433, 33.146255, 36.170940>,  <37.934666, 33.316017, 36.337101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900433, 33.146255, 36.170940>,  <37.843380, 32.863319, 35.894009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900433, 33.146255, 36.170940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146072, -0.706866, 0.692101,
		0.978937, 0.002412, -0.204147,
		0.142635, 0.707343, 0.692330,
		37.943222, 33.358459, 36.378639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578506, 32.778069, 36.186134>,  <37.843380, 32.863319, 35.894009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578506, 32.778069, 36.186134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304508, 32.923969, 36.438400>,  <38.140110, 33.011509, 36.589760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304508, 32.923969, 36.438400>,  <38.578506, 32.778069, 36.186134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304508, 32.923969, 36.438400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259778, -0.686459, 0.679182,
		0.680656, 0.629071, 0.375470,
		-0.684999, 0.364750, 0.630661,
		38.099010, 33.033394, 36.627598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699383, 32.293251, 36.597755>,  <38.578506, 32.778069, 36.186134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699383, 32.293251, 36.597755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481396, 32.569946, 36.787285>,  <38.350605, 32.735962, 36.901001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481396, 32.569946, 36.787285>,  <38.699383, 32.293251, 36.597755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481396, 32.569946, 36.787285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155596, -0.471863, 0.867834,
		0.823893, 0.546667, 0.149519,
		-0.544968, 0.691738, 0.473824,
		38.317905, 32.777466, 36.929432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023163, 32.605282, 37.065125>,  <38.699383, 32.293251, 36.597755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023163, 32.605282, 37.065125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640785, 32.622131, 37.181335>,  <38.411358, 32.632240, 37.251060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640785, 32.622131, 37.181335>,  <39.023163, 32.605282, 37.065125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640785, 32.622131, 37.181335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238682, -0.464635, 0.852728,
		0.170908, 0.884500, 0.434109,
		-0.955940, 0.042124, 0.290523,
		38.354004, 32.634769, 37.268494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003227, 32.774685, 37.853653>,  <39.023163, 32.605282, 37.065125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003227, 32.774685, 37.853653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639999, 32.623943, 37.780560>,  <38.422062, 32.533497, 37.736706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639999, 32.623943, 37.780560>,  <39.003227, 32.774685, 37.853653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639999, 32.623943, 37.780560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003753, -0.428962, 0.903315,
		-0.418803, 0.820958, 0.388112,
		-0.908069, -0.376855, -0.182732,
		38.367580, 32.510887, 37.725739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585251, 32.845631, 38.507439>,  <39.003227, 32.774685, 37.853653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585251, 32.845631, 38.507439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449242, 32.548409, 38.276875>,  <38.367634, 32.370075, 38.138538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449242, 32.548409, 38.276875>,  <38.585251, 32.845631, 38.507439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449242, 32.548409, 38.276875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067583, -0.630652, 0.773118,
		-0.937985, 0.223924, 0.264655,
		-0.340025, -0.743059, -0.576408,
		38.347233, 32.325489, 38.103951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495037, 32.336853, 39.013546>,  <38.585251, 32.845631, 38.507439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495037, 32.336853, 39.013546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413918, 32.107166, 38.696270>,  <38.365246, 31.969355, 38.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413918, 32.107166, 38.696270>,  <38.495037, 32.336853, 39.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413918, 32.107166, 38.696270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108382, -0.791882, 0.600979,
		-0.973204, 0.207844, 0.098356,
		-0.202796, -0.574216, -0.793190,
		38.353077, 31.934902, 38.458313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461475, 31.909676, 39.663063>,  <38.495037, 32.336853, 39.013546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461475, 31.909676, 39.663063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197796, 31.644411, 39.521259>,  <38.039589, 31.485252, 39.436176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197796, 31.644411, 39.521259>,  <38.461475, 31.909676, 39.663063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197796, 31.644411, 39.521259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368366, 0.126218, -0.921073,
		0.655565, -0.737758, 0.161084,
		-0.659198, -0.663161, -0.354509,
		38.000038, 31.445463, 39.414906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837856, 31.519886, 39.062321>,  <38.461475, 31.909676, 39.663063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837856, 31.519886, 39.062321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439255, 31.509169, 39.030682>,  <38.200092, 31.502739, 39.011700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439255, 31.509169, 39.030682>,  <38.837856, 31.519886, 39.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439255, 31.509169, 39.030682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064273, 0.358708, -0.931234,
		0.053322, -0.933065, -0.355734,
		-0.996507, -0.026791, -0.079098,
		38.140305, 31.501131, 39.006950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778744, 31.273262, 38.438663>,  <38.837856, 31.519886, 39.062321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778744, 31.273262, 38.438663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430832, 31.448988, 38.528538>,  <38.222084, 31.554424, 38.582462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430832, 31.448988, 38.528538>,  <38.778744, 31.273262, 38.438663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430832, 31.448988, 38.528538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079025, 0.325445, -0.942253,
		-0.487068, -0.837310, -0.248349,
		-0.869782, 0.439316, 0.224682,
		38.169899, 31.580782, 38.595943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237583, 31.225328, 37.901207>,  <38.778744, 31.273262, 38.438663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237583, 31.225328, 37.901207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114384, 31.548990, 38.101372>,  <38.040466, 31.743187, 38.221470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114384, 31.548990, 38.101372>,  <38.237583, 31.225328, 37.901207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114384, 31.548990, 38.101372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091234, 0.498434, -0.862114,
		-0.947003, -0.311182, -0.079693,
		-0.307996, 0.809153, 0.500409,
		38.021984, 31.791737, 38.251495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778358, 31.612871, 37.345913>,  <38.237583, 31.225328, 37.901207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778358, 31.612871, 37.345913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871498, 31.847466, 37.656219>,  <37.927383, 31.988222, 37.842403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871498, 31.847466, 37.656219>,  <37.778358, 31.612871, 37.345913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871498, 31.847466, 37.656219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101064, 0.807968, -0.580495,
		-0.967247, 0.056767, 0.247410,
		0.232852, 0.586486, 0.775767,
		37.941353, 32.023411, 37.888950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164547, 32.145271, 37.420269>,  <37.778358, 31.612871, 37.345913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164547, 32.145271, 37.420269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540989, 32.241936, 37.514858>,  <37.766853, 32.299934, 37.571613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540989, 32.241936, 37.514858>,  <37.164547, 32.145271, 37.420269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540989, 32.241936, 37.514858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065910, 0.817095, -0.572723,
		-0.331631, 0.523406, 0.784899,
		0.941104, 0.241665, 0.236477,
		37.823318, 32.314434, 37.585800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122169, 32.872803, 37.576931>,  <37.164547, 32.145271, 37.420269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122169, 32.872803, 37.576931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505219, 32.800224, 37.487457>,  <37.735046, 32.756676, 37.433773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505219, 32.800224, 37.487457>,  <37.122169, 32.872803, 37.576931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505219, 32.800224, 37.487457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026910, 0.829581, -0.557737,
		0.286767, 0.528082, 0.799308,
		0.957622, -0.181450, -0.223686,
		37.792503, 32.745789, 37.420353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500732, 33.433151, 37.695282>,  <37.122169, 32.872803, 37.576931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500732, 33.433151, 37.695282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726089, 33.238525, 37.428196>,  <37.861301, 33.121750, 37.267944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726089, 33.238525, 37.428196>,  <37.500732, 33.433151, 37.695282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726089, 33.238525, 37.428196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186808, 0.862278, -0.470722,
		0.804794, 0.140465, 0.576694,
		0.563391, -0.486566, -0.667716,
		37.895107, 33.092556, 37.227882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979050, 33.896881, 37.657074>,  <37.500732, 33.433151, 37.695282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979050, 33.896881, 37.657074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942863, 33.675068, 37.326180>,  <37.921154, 33.541981, 37.127644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942863, 33.675068, 37.326180>,  <37.979050, 33.896881, 37.657074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942863, 33.675068, 37.326180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463209, 0.711893, -0.527870,
		0.881620, -0.430934, 0.192463,
		-0.090464, -0.554531, -0.827232,
		37.915726, 33.508709, 37.078011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278603, 34.356678, 37.224472>,  <37.979050, 33.896881, 37.657074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278603, 34.356678, 37.224472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175438, 34.054401, 36.983673>,  <38.113537, 33.873035, 36.839191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175438, 34.054401, 36.983673>,  <38.278603, 34.356678, 37.224472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175438, 34.054401, 36.983673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356612, 0.504626, -0.786245,
		0.897947, -0.417464, 0.139340,
		-0.257914, -0.755696, -0.602000,
		38.098064, 33.827694, 36.803074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884621, 34.186478, 36.837082>,  <38.278603, 34.356678, 37.224472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884621, 34.186478, 36.837082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569733, 34.051136, 36.630856>,  <38.380802, 33.969929, 36.507118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569733, 34.051136, 36.630856>,  <38.884621, 34.186478, 36.837082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569733, 34.051136, 36.630856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348656, 0.445388, -0.824663,
		0.508657, -0.828941, -0.232646,
		-0.787215, -0.338357, -0.515565,
		38.333569, 33.949631, 36.476185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132896, 33.683819, 36.245121>,  <38.884621, 34.186478, 36.837082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132896, 33.683819, 36.245121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794735, 33.893250, 36.202854>,  <38.591839, 34.018909, 36.177494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794735, 33.893250, 36.202854>,  <39.132896, 33.683819, 36.245121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794735, 33.893250, 36.202854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393535, 0.476796, -0.785999,
		-0.361152, -0.706066, -0.609130,
		-0.845399, 0.523579, -0.105666,
		38.541115, 34.050323, 36.171154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416718, 33.496387, 36.111691>,  <39.132896, 33.683819, 36.245121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416718, 33.496387, 36.111691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108978, 33.569569, 35.866863>,  <37.924335, 33.613476, 35.719967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108978, 33.569569, 35.866863>,  <38.416718, 33.496387, 36.111691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108978, 33.569569, 35.866863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627063, 0.399290, -0.668849,
		0.122026, -0.898385, -0.421916,
		-0.769351, 0.182951, -0.612069,
		37.878174, 33.624454, 35.683243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684525, 33.451752, 35.487064>,  <38.416718, 33.496387, 36.111691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684525, 33.451752, 35.487064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374416, 33.703094, 35.461365>,  <38.188351, 33.853901, 35.445946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374416, 33.703094, 35.461365>,  <38.684525, 33.451752, 35.487064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374416, 33.703094, 35.461365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479984, 0.519958, -0.706583,
		-0.410582, -0.578627, -0.704708,
		-0.775266, 0.628358, -0.064247,
		38.141838, 33.891602, 35.442089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593536, 33.622692, 34.751156>,  <38.684525, 33.451752, 35.487064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593536, 33.622692, 34.751156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417896, 33.930183, 34.937164>,  <38.312511, 34.114677, 35.048771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417896, 33.930183, 34.937164>,  <38.593536, 33.622692, 34.751156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417896, 33.930183, 34.937164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176034, 0.581169, -0.794516,
		-0.881024, -0.267012, -0.390514,
		-0.439100, 0.768731, 0.465020,
		38.286167, 34.160801, 35.076672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141838, 34.005508, 34.193176>,  <38.593536, 33.622692, 34.751156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141838, 34.005508, 34.193176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113132, 34.249630, 34.508739>,  <38.095909, 34.396103, 34.698078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113132, 34.249630, 34.508739>,  <38.141838, 34.005508, 34.193176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113132, 34.249630, 34.508739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063205, 0.786576, -0.614251,
		-0.995417, -0.093946, -0.017877,
		-0.071768, 0.610305, 0.788908,
		38.091602, 34.432720, 34.745411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517040, 34.428322, 34.124565>,  <38.141838, 34.005508, 34.193176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517040, 34.428322, 34.124565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812988, 34.614033, 34.319309>,  <37.990559, 34.725460, 34.436157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812988, 34.614033, 34.319309>,  <37.517040, 34.428322, 34.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812988, 34.614033, 34.319309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047243, 0.757762, -0.650818,
		-0.671085, 0.458523, 0.582582,
		0.739874, 0.464277, 0.486861,
		38.034950, 34.753315, 34.465366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430195, 35.094303, 33.982403>,  <37.517040, 34.428322, 34.124565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430195, 35.094303, 33.982403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800976, 35.077114, 34.131493>,  <38.023445, 35.066803, 34.220947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800976, 35.077114, 34.131493>,  <37.430195, 35.094303, 33.982403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800976, 35.077114, 34.131493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297985, 0.687938, -0.661775,
		-0.227974, 0.724496, 0.650487,
		0.926948, -0.042969, 0.372721,
		38.079060, 35.064224, 34.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616539, 35.798153, 33.958385>,  <37.430195, 35.094303, 33.982403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616539, 35.798153, 33.958385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957188, 35.589737, 33.981213>,  <38.161575, 35.464687, 33.994907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957188, 35.589737, 33.981213>,  <37.616539, 35.798153, 33.958385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957188, 35.589737, 33.981213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375742, 0.530949, -0.759546,
		0.365458, 0.668287, 0.647945,
		0.851621, -0.521042, 0.057065,
		38.212673, 35.433426, 33.998333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138401, 36.234077, 33.765846>,  <37.616539, 35.798153, 33.958385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138401, 36.234077, 33.765846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316814, 35.881104, 33.706024>,  <38.423862, 35.669319, 33.670132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316814, 35.881104, 33.706024>,  <38.138401, 36.234077, 33.765846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316814, 35.881104, 33.706024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520854, 0.391808, -0.758418,
		0.727847, 0.260388, 0.634379,
		0.446038, -0.882431, -0.149552,
		38.450626, 35.616375, 33.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861908, 36.412739, 33.867889>,  <38.138401, 36.234077, 33.765846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861908, 36.412739, 33.867889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780830, 36.088959, 33.647449>,  <38.732185, 35.894691, 33.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780830, 36.088959, 33.647449>,  <38.861908, 36.412739, 33.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780830, 36.088959, 33.647449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578107, 0.355327, -0.734531,
		0.790384, -0.467477, 0.395926,
		-0.202693, -0.809449, -0.551097,
		38.720024, 35.846123, 33.482121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516487, 36.250416, 33.498203>,  <38.861908, 36.412739, 33.867889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516487, 36.250416, 33.498203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197861, 36.131138, 33.287846>,  <39.006683, 36.059570, 33.161633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197861, 36.131138, 33.287846>,  <39.516487, 36.250416, 33.498203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197861, 36.131138, 33.287846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442116, 0.305957, -0.843163,
		0.412331, -0.904139, -0.111876,
		-0.796565, -0.298200, -0.525890,
		38.958893, 36.041679, 33.130077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716656, 36.262276, 32.822483>,  <39.516487, 36.250416, 33.498203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716656, 36.262276, 32.822483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336353, 36.159859, 32.752632>,  <39.108170, 36.098408, 32.710720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336353, 36.159859, 32.752632>,  <39.716656, 36.262276, 32.822483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336353, 36.159859, 32.752632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176306, 0.016581, -0.984196,
		0.254896, -0.966522, 0.029378,
		-0.950760, -0.256047, -0.174631,
		39.051125, 36.083046, 32.700241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811554, 35.686214, 32.489170>,  <39.716656, 36.262276, 32.822483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811554, 35.686214, 32.489170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452587, 35.847664, 32.417931>,  <39.237206, 35.944534, 32.375187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452587, 35.847664, 32.417931>,  <39.811554, 35.686214, 32.489170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452587, 35.847664, 32.417931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139280, -0.123846, -0.982478,
		-0.418614, -0.906502, 0.054925,
		-0.897420, 0.403629, -0.178101,
		39.183361, 35.968754, 32.364502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512245, 35.240452, 32.008545>,  <39.811554, 35.686214, 32.489170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512245, 35.240452, 32.008545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308285, 35.583012, 31.976103>,  <39.185909, 35.788548, 31.956638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308285, 35.583012, 31.976103>,  <39.512245, 35.240452, 32.008545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308285, 35.583012, 31.976103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162063, 0.003045, -0.986776,
		-0.844830, -0.516300, -0.140343,
		-0.509900, 0.856402, -0.081100,
		39.155315, 35.839931, 31.951773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255764, 35.394417, 31.940239>,  <39.512245, 35.240452, 32.008545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255764, 35.394417, 31.940239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455288, 35.716587, 32.068283>,  <40.575005, 35.909889, 32.145111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455288, 35.716587, 32.068283>,  <40.255764, 35.394417, 31.940239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455288, 35.716587, 32.068283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502049, -0.569577, 0.650791,
		0.706492, -0.163913, -0.688477,
		0.498814, 0.805428, 0.320110,
		40.604931, 35.958214, 32.164314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977810, 35.164673, 31.809618>,  <40.255764, 35.394417, 31.940239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977810, 35.164673, 31.809618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901604, 35.403179, 32.121559>,  <40.855881, 35.546284, 32.308723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901604, 35.403179, 32.121559>,  <40.977810, 35.164673, 31.809618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901604, 35.403179, 32.121559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320375, -0.713145, 0.623526,
		0.927935, 0.368637, -0.055163,
		-0.190515, 0.596264, 0.779854,
		40.844448, 35.582058, 32.355515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483551, 35.617588, 32.226967>,  <40.977810, 35.164673, 31.809618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483551, 35.617588, 32.226967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195435, 35.488277, 32.472462>,  <41.022564, 35.410690, 32.619759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195435, 35.488277, 32.472462>,  <41.483551, 35.617588, 32.226967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195435, 35.488277, 32.472462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640279, -0.650241, 0.408937,
		0.266876, 0.687516, 0.675351,
		-0.720291, -0.323278, 0.613736,
		40.979347, 35.391293, 32.656582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637314, 35.700493, 32.989994>,  <41.483551, 35.617588, 32.226967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637314, 35.700493, 32.989994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425694, 35.366428, 32.929844>,  <41.298721, 35.165989, 32.893753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425694, 35.366428, 32.929844>,  <41.637314, 35.700493, 32.989994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425694, 35.366428, 32.929844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614028, -0.499072, 0.611472,
		-0.585722, 0.231170, 0.776847,
		-0.529055, -0.835158, -0.150372,
		41.266975, 35.115883, 32.884731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301838, 35.525814, 33.683819>,  <41.637314, 35.700493, 32.989994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301838, 35.525814, 33.683819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354717, 35.208996, 33.445427>,  <41.386444, 35.018906, 33.302391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354717, 35.208996, 33.445427>,  <41.301838, 35.525814, 33.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354717, 35.208996, 33.445427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360610, -0.521625, 0.773219,
		-0.923301, -0.317134, 0.216661,
		0.132199, -0.792044, -0.595978,
		41.394379, 34.971382, 33.266632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320690, 35.094250, 34.207794>,  <41.301838, 35.525814, 33.683819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320690, 35.094250, 34.207794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446335, 34.891930, 33.886421>,  <41.521721, 34.770538, 33.693600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446335, 34.891930, 33.886421>,  <41.320690, 35.094250, 34.207794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446335, 34.891930, 33.886421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457706, -0.660742, 0.594916,
		-0.831769, -0.554604, 0.023962,
		0.314110, -0.505800, -0.803431,
		41.540569, 34.740189, 33.645393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222210, 34.268127, 34.224300>,  <41.320690, 35.094250, 34.207794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222210, 34.268127, 34.224300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537872, 34.394417, 34.013565>,  <41.727268, 34.470188, 33.887123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537872, 34.394417, 34.013565>,  <41.222210, 34.268127, 34.224300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537872, 34.394417, 34.013565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604597, -0.550358, 0.575819,
		-0.108150, -0.772934, -0.625201,
		0.789155, 0.315720, -0.526835,
		41.774620, 34.489132, 33.855515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573353, 33.658123, 34.026592>,  <41.222210, 34.268127, 34.224300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573353, 33.658123, 34.026592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832062, 33.962891, 34.012966>,  <41.987289, 34.145752, 34.004791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832062, 33.962891, 34.012966>,  <41.573353, 33.658123, 34.026592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832062, 33.962891, 34.012966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630304, -0.508836, 0.586347,
		0.429418, -0.400704, -0.809343,
		0.646774, 0.761920, -0.034062,
		42.026093, 34.191467, 34.002747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105633, 33.443016, 33.518097>,  <41.573353, 33.658123, 34.026592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105633, 33.443016, 33.518097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216743, 33.691669, 33.811058>,  <42.283409, 33.840862, 33.986835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216743, 33.691669, 33.811058>,  <42.105633, 33.443016, 33.518097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216743, 33.691669, 33.811058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673679, -0.669565, 0.312793,
		0.684832, 0.406514, -0.604774,
		0.277781, 0.621634, 0.732399,
		42.300079, 33.878159, 34.030777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808701, 33.665390, 33.516029>,  <42.105633, 33.443016, 33.518097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808701, 33.665390, 33.516029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697178, 33.616840, 33.897087>,  <42.630264, 33.587711, 34.125721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697178, 33.616840, 33.897087>,  <42.808701, 33.665390, 33.516029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697178, 33.616840, 33.897087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778018, -0.610079, 0.149972,
		0.562987, 0.782990, 0.264523,
		-0.278806, -0.121372, 0.952647,
		42.613537, 33.580429, 34.182880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365582, 33.798450, 33.865963>,  <42.808701, 33.665390, 33.516029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365582, 33.798450, 33.865963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125507, 33.535217, 34.047825>,  <42.981464, 33.377277, 34.156944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125507, 33.535217, 34.047825>,  <43.365582, 33.798450, 33.865963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125507, 33.535217, 34.047825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681046, -0.718538, -0.140995,
		0.419475, 0.225019, 0.879436,
		-0.600182, -0.658080, 0.454657,
		42.945454, 33.337795, 34.184223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801441, 33.470158, 33.376522>,  <43.365582, 33.798450, 33.865963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801441, 33.470158, 33.376522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939671, 33.621544, 33.719997>,  <44.022606, 33.712376, 33.926083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939671, 33.621544, 33.719997>,  <43.801441, 33.470158, 33.376522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939671, 33.621544, 33.719997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918790, 0.322522, 0.227606,
		-0.190805, -0.867608, 0.459185,
		0.345570, 0.378466, 0.858688,
		44.043343, 33.735085, 33.977604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486813, 33.336594, 33.667812>,  <43.801441, 33.470158, 33.376522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486813, 33.336594, 33.667812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583618, 33.701534, 33.535721>,  <44.641701, 33.920498, 33.456467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583618, 33.701534, 33.535721>,  <44.486813, 33.336594, 33.667812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583618, 33.701534, 33.535721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135284, 0.368746, 0.919633,
		0.960796, -0.177885, 0.212667,
		0.242009, 0.912350, -0.330225,
		44.656219, 33.975239, 33.436653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972809, 33.659447, 34.163933>,  <44.486813, 33.336594, 33.667812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972809, 33.659447, 34.163933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751514, 33.917446, 33.953064>,  <44.618740, 34.072247, 33.826542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751514, 33.917446, 33.953064>,  <44.972809, 33.659447, 34.163933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751514, 33.917446, 33.953064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228427, 0.491118, 0.840609,
		0.801096, 0.585473, -0.124368,
		-0.553233, 0.644999, -0.527171,
		44.585545, 34.110947, 33.794914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998592, 34.169319, 34.578617>,  <44.972809, 33.659447, 34.163933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998592, 34.169319, 34.578617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676319, 34.267765, 34.363098>,  <44.482956, 34.326832, 34.233788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676319, 34.267765, 34.363098>,  <44.998592, 34.169319, 34.578617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676319, 34.267765, 34.363098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304113, 0.608704, 0.732799,
		0.508324, 0.754258, -0.415573,
		-0.805681, 0.246119, -0.538799,
		44.434616, 34.341602, 34.201458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663998, 34.463848, 34.813869>,  <44.998592, 34.169319, 34.578617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663998, 34.463848, 34.813869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775764, 34.822113, 34.952274>,  <45.842823, 35.037071, 35.035316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775764, 34.822113, 34.952274>,  <45.663998, 34.463848, 34.813869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775764, 34.822113, 34.952274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960128, -0.257285, -0.109350,
		-0.008918, 0.362767, -0.931837,
		0.279417, 0.895659, 0.346009,
		45.859589, 35.090809, 35.056076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132622, 34.720974, 34.255959>,  <45.663998, 34.463848, 34.813869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132622, 34.720974, 34.255959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188606, 34.909618, 34.604210>,  <46.222195, 35.022804, 34.813160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188606, 34.909618, 34.604210>,  <46.132622, 34.720974, 34.255959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188606, 34.909618, 34.604210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990016, -0.081486, -0.115010,
		0.016705, 0.878035, -0.478304,
		0.139958, 0.471608, 0.870631,
		46.230595, 35.051102, 34.865398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566433, 35.437057, 34.174469>,  <46.132622, 34.720974, 34.255959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566433, 35.437057, 34.174469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579433, 35.301144, 34.550446>,  <46.587234, 35.219597, 34.776031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579433, 35.301144, 34.550446>,  <46.566433, 35.437057, 34.174469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579433, 35.301144, 34.550446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989280, -0.123022, -0.078679,
		0.142367, 0.932424, 0.332139,
		0.032502, -0.339780, 0.939943,
		46.589184, 35.199211, 34.832428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051716, 35.795269, 34.696579>,  <46.566433, 35.437057, 34.174469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051716, 35.795269, 34.696579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998722, 35.416729, 34.814476>,  <46.966927, 35.189606, 34.885212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998722, 35.416729, 34.814476>,  <47.051716, 35.795269, 34.696579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998722, 35.416729, 34.814476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990759, -0.135153, 0.011404,
		0.029043, 0.293527, 0.955510,
		-0.132488, -0.946349, 0.294740,
		46.958977, 35.132824, 34.902897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502815, 35.741837, 35.231602>,  <47.051716, 35.795269, 34.696579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502815, 35.741837, 35.231602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434227, 35.388020, 35.058083>,  <47.393074, 35.175728, 34.953972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434227, 35.388020, 35.058083>,  <47.502815, 35.741837, 35.231602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.434227, 35.388020, 35.058083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956802, -0.254459, 0.140647,
		-0.234792, -0.390942, 0.889964,
		-0.171475, -0.884542, -0.433799,
		47.382786, 35.122658, 34.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788807, 35.184315, 35.644459>,  <47.502815, 35.741837, 35.231602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788807, 35.184315, 35.644459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735111, 34.981899, 35.303661>,  <47.702892, 34.860451, 35.099182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735111, 34.981899, 35.303661>,  <47.788807, 35.184315, 35.644459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735111, 34.981899, 35.303661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863670, -0.481290, 0.149780,
		-0.485853, -0.715738, 0.501662,
		-0.134242, -0.506042, -0.851998,
		47.694839, 34.830086, 35.048061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.173859, 31.475515, 22.820854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809753, 31.640913, 22.812510>,  <35.591290, 31.740152, 22.807503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809753, 31.640913, 22.812510>,  <36.173859, 31.475515, 22.820854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809753, 31.640913, 22.812510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004626, 0.040230, 0.999180,
		0.413995, 0.909617, -0.034707,
		-0.910268, 0.413494, -0.020863,
		35.536674, 31.764961, 22.806252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127495, 32.034775, 23.398798>,  <36.173859, 31.475515, 22.820854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127495, 32.034775, 23.398798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744911, 31.971786, 23.300495>,  <35.515362, 31.933994, 23.241514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744911, 31.971786, 23.300495>,  <36.127495, 32.034775, 23.398798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744911, 31.971786, 23.300495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260527, 0.080950, 0.962067,
		-0.131603, 0.984200, -0.118450,
		-0.956455, -0.157470, -0.245757,
		35.457973, 31.924545, 23.226768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757267, 32.565987, 23.723387>,  <36.127495, 32.034775, 23.398798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757267, 32.565987, 23.723387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465912, 32.304264, 23.642065>,  <35.291100, 32.147232, 23.593271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465912, 32.304264, 23.642065>,  <35.757267, 32.565987, 23.723387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465912, 32.304264, 23.642065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257434, -0.013633, 0.966200,
		-0.634960, 0.756109, -0.158510,
		-0.728391, -0.654304, -0.203304,
		35.247395, 32.107971, 23.581074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068661, 32.815422, 23.882540>,  <35.757267, 32.565987, 23.723387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068661, 32.815422, 23.882540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.075066, 32.415916, 23.901382>,  <35.078907, 32.176212, 23.912689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.075066, 32.415916, 23.901382>,  <35.068661, 32.815422, 23.882540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075066, 32.415916, 23.901382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383082, 0.037391, 0.922957,
		-0.923576, -0.032826, -0.382009,
		0.016013, -0.998761, 0.047109,
		35.079868, 32.116287, 23.915516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462502, 32.682629, 24.083359>,  <35.068661, 32.815422, 23.882540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462502, 32.682629, 24.083359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671185, 32.353676, 24.174147>,  <34.796394, 32.156303, 24.228619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671185, 32.353676, 24.174147>,  <34.462502, 32.682629, 24.083359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671185, 32.353676, 24.174147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277833, 0.087764, 0.956612,
		-0.806618, -0.562129, -0.182697,
		0.521705, -0.822380, 0.226970,
		34.827698, 32.106960, 24.242237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047001, 32.250507, 24.528168>,  <34.462502, 32.682629, 24.083359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047001, 32.250507, 24.528168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413193, 32.103954, 24.594694>,  <34.632908, 32.016022, 24.634609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413193, 32.103954, 24.594694>,  <34.047001, 32.250507, 24.528168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413193, 32.103954, 24.594694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167857, 0.027897, 0.985417,
		-0.365684, -0.930044, -0.035961,
		0.915478, -0.366387, 0.166316,
		34.687836, 31.994038, 24.644588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916164, 31.820339, 25.004326>,  <34.047001, 32.250507, 24.528168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916164, 31.820339, 25.004326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309277, 31.877907, 25.050669>,  <34.545143, 31.912447, 25.078474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309277, 31.877907, 25.050669>,  <33.916164, 31.820339, 25.004326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309277, 31.877907, 25.050669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121496, 0.030983, 0.992108,
		0.139196, -0.989104, 0.047936,
		0.982783, 0.143922, 0.115859,
		34.604111, 31.921082, 25.085426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056202, 31.593395, 25.673943>,  <33.916164, 31.820339, 25.004326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056202, 31.593395, 25.673943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.403107, 31.772856, 25.587618>,  <34.611248, 31.880531, 25.535824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.403107, 31.772856, 25.587618>,  <34.056202, 31.593395, 25.673943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403107, 31.772856, 25.587618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209405, 0.064545, 0.975696,
		0.451676, -0.891374, -0.037972,
		0.867259, 0.448650, -0.215812,
		34.663284, 31.907450, 25.522875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515579, 31.336123, 26.220188>,  <34.056202, 31.593395, 25.673943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515579, 31.336123, 26.220188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657291, 31.683128, 26.080532>,  <34.742321, 31.891333, 25.996738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657291, 31.683128, 26.080532>,  <34.515579, 31.336123, 26.220188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657291, 31.683128, 26.080532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406335, 0.193458, 0.893009,
		0.842243, -0.458248, -0.283963,
		0.354284, 0.867516, -0.349141,
		34.763577, 31.943382, 25.975790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280724, 31.474995, 26.327402>,  <34.515579, 31.336123, 26.220188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280724, 31.474995, 26.327402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084206, 31.822468, 26.302025>,  <34.966297, 32.030952, 26.286798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084206, 31.822468, 26.302025>,  <35.280724, 31.474995, 26.327402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084206, 31.822468, 26.302025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465736, 0.323558, 0.823650,
		0.736018, 0.375105, -0.563538,
		-0.491292, 0.868681, -0.063444,
		34.936817, 32.083073, 26.282991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723900, 31.913094, 26.585241>,  <35.280724, 31.474995, 26.327402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723900, 31.913094, 26.585241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376961, 32.110039, 26.614305>,  <35.168797, 32.228207, 26.631744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376961, 32.110039, 26.614305>,  <35.723900, 31.913094, 26.585241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376961, 32.110039, 26.614305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265356, 0.333979, 0.904458,
		0.421055, 0.803764, -0.420329,
		-0.867352, 0.492363, 0.072661,
		35.116756, 32.257748, 26.636105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903557, 32.449776, 27.027987>,  <35.723900, 31.913094, 26.585241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903557, 32.449776, 27.027987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503777, 32.459190, 27.037310>,  <35.263908, 32.464840, 27.042904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503777, 32.459190, 27.037310>,  <35.903557, 32.449776, 27.027987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503777, 32.459190, 27.037310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030988, 0.415684, 0.908981,
		0.011710, 0.909205, -0.416185,
		-0.999451, 0.023541, 0.023306,
		35.203941, 32.466251, 27.044302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744202, 33.029037, 27.311119>,  <35.903557, 32.449776, 27.027987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744202, 33.029037, 27.311119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428207, 32.788731, 27.360111>,  <35.238609, 32.644547, 27.389505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428207, 32.788731, 27.360111>,  <35.744202, 33.029037, 27.311119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428207, 32.788731, 27.360111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014657, 0.218207, 0.975792,
		-0.612951, 0.769066, -0.181185,
		-0.789985, -0.600769, 0.122478,
		35.191212, 32.608501, 27.396854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181408, 33.470196, 27.621651>,  <35.744202, 33.029037, 27.311119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181408, 33.470196, 27.621651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093006, 33.092941, 27.720978>,  <35.039967, 32.866589, 27.780573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093006, 33.092941, 27.720978>,  <35.181408, 33.470196, 27.621651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093006, 33.092941, 27.720978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048550, 0.243657, 0.968646,
		-0.974064, 0.226128, -0.008060,
		-0.221002, -0.943132, 0.248316,
		35.026707, 32.810001, 27.795473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700741, 33.414589, 28.157051>,  <35.181408, 33.470196, 27.621651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700741, 33.414589, 28.157051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874886, 33.055576, 28.185034>,  <34.979374, 32.840168, 28.201822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874886, 33.055576, 28.185034>,  <34.700741, 33.414589, 28.157051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874886, 33.055576, 28.185034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018877, 0.086791, 0.996048,
		-0.900056, -0.432323, 0.054728,
		0.435365, -0.897532, 0.069956,
		35.005493, 32.786316, 28.206020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411217, 33.219994, 28.810476>,  <34.700741, 33.414589, 28.157051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411217, 33.219994, 28.810476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706543, 32.957539, 28.748026>,  <34.883739, 32.800068, 28.710556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706543, 32.957539, 28.748026>,  <34.411217, 33.219994, 28.810476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706543, 32.957539, 28.748026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096304, -0.126554, 0.987274,
		-0.667542, -0.743957, -0.030249,
		0.738318, -0.656134, -0.156126,
		34.928040, 32.760700, 28.701187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187080, 32.555733, 29.048143>,  <34.411217, 33.219994, 28.810476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187080, 32.555733, 29.048143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586639, 32.571365, 29.037767>,  <34.826374, 32.580746, 29.031542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586639, 32.571365, 29.037767>,  <34.187080, 32.555733, 29.048143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586639, 32.571365, 29.037767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031551, -0.150541, 0.988100,
		0.034713, -0.987831, -0.151608,
		0.998899, 0.039083, -0.025941,
		34.886311, 32.583092, 29.029985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390934, 32.022129, 29.536209>,  <34.187080, 32.555733, 29.048143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390934, 32.022129, 29.536209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.727367, 32.230869, 29.479286>,  <34.929226, 32.356113, 29.445133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.727367, 32.230869, 29.479286>,  <34.390934, 32.022129, 29.536209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727367, 32.230869, 29.479286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315428, -0.259469, 0.912787,
		0.439417, -0.812616, -0.382842,
		0.841081, 0.521853, -0.142307,
		34.979691, 32.387424, 29.436594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969433, 31.576435, 29.634506>,  <34.390934, 32.022129, 29.536209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969433, 31.576435, 29.634506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110191, 31.945866, 29.695398>,  <35.194645, 32.167526, 29.731934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110191, 31.945866, 29.695398>,  <34.969433, 31.576435, 29.634506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110191, 31.945866, 29.695398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284968, -0.260615, 0.922428,
		0.891607, -0.281217, -0.354899,
		0.351895, 0.923578, 0.152228,
		35.215759, 32.222939, 29.741066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638123, 31.504469, 29.742090>,  <34.969433, 31.576435, 29.634506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638123, 31.504469, 29.742090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506023, 31.844919, 29.905317>,  <35.426765, 32.049191, 30.003254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506023, 31.844919, 29.905317>,  <35.638123, 31.504469, 29.742090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506023, 31.844919, 29.905317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411801, -0.259091, 0.873666,
		0.849327, 0.456570, -0.264930,
		-0.330249, 0.851126, 0.408069,
		35.406948, 32.100258, 30.027739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196922, 31.684061, 30.113508>,  <35.638123, 31.504469, 29.742090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196922, 31.684061, 30.113508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917370, 31.928629, 30.261953>,  <35.749638, 32.075371, 30.351021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917370, 31.928629, 30.261953>,  <36.196922, 31.684061, 30.113508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917370, 31.928629, 30.261953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278572, -0.245202, 0.928587,
		0.658755, 0.752357, 0.001043,
		-0.698884, 0.611421, 0.371113,
		35.707703, 32.112057, 30.373287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581928, 32.201443, 30.599295>,  <36.196922, 31.684061, 30.113508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581928, 32.201443, 30.599295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194283, 32.148327, 30.682417>,  <35.961697, 32.116459, 30.732290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194283, 32.148327, 30.682417>,  <36.581928, 32.201443, 30.599295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194283, 32.148327, 30.682417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232360, -0.209375, 0.949827,
		-0.082614, 0.968777, 0.233763,
		-0.969115, -0.132786, 0.207808,
		35.903549, 32.108490, 30.744759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027779, 32.693607, 30.866072>,  <36.581928, 32.201443, 30.599295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027779, 32.693607, 30.866072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396206, 32.844898, 30.903118>,  <37.617264, 32.935673, 30.925346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396206, 32.844898, 30.903118>,  <37.027779, 32.693607, 30.866072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396206, 32.844898, 30.903118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074063, 0.063345, -0.995240,
		-0.382295, 0.923542, 0.030333,
		0.921067, 0.378229, 0.092617,
		37.672527, 32.958366, 30.930902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108101, 33.306820, 30.434748>,  <37.027779, 32.693607, 30.866072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108101, 33.306820, 30.434748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482197, 33.179611, 30.496965>,  <37.706654, 33.103287, 30.534296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482197, 33.179611, 30.496965>,  <37.108101, 33.306820, 30.434748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482197, 33.179611, 30.496965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151254, -0.038308, -0.987752,
		0.320087, 0.947309, 0.012275,
		0.935236, -0.318023, 0.155546,
		37.762768, 33.084206, 30.543629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495712, 33.664516, 30.009346>,  <37.108101, 33.306820, 30.434748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495712, 33.664516, 30.009346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744118, 33.361443, 30.089609>,  <37.893162, 33.179600, 30.137768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744118, 33.361443, 30.089609>,  <37.495712, 33.664516, 30.009346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744118, 33.361443, 30.089609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184042, -0.107889, -0.976979,
		0.761887, 0.643646, 0.072445,
		0.621013, -0.757681, 0.200657,
		37.930420, 33.134140, 30.149807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105221, 33.762806, 29.608572>,  <37.495712, 33.664516, 30.009346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105221, 33.762806, 29.608572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132462, 33.373093, 29.694490>,  <38.148808, 33.139263, 29.746042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132462, 33.373093, 29.694490>,  <38.105221, 33.762806, 29.608572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132462, 33.373093, 29.694490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085459, -0.208808, -0.974215,
		0.994011, 0.084702, 0.069041,
		0.068102, -0.974282, 0.214796,
		38.152893, 33.080807, 29.758930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542931, 33.493015, 29.168432>,  <38.105221, 33.762806, 29.608572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542931, 33.493015, 29.168432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350803, 33.165531, 29.294294>,  <38.235527, 32.969040, 29.369812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350803, 33.165531, 29.294294>,  <38.542931, 33.493015, 29.168432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350803, 33.165531, 29.294294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008727, -0.363193, -0.931673,
		0.877050, -0.444755, 0.181594,
		-0.480320, -0.818709, 0.314657,
		38.206707, 32.919918, 29.388691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875229, 32.882458, 28.905306>,  <38.542931, 33.493015, 29.168432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875229, 32.882458, 28.905306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490635, 32.786709, 28.959330>,  <38.259876, 32.729259, 28.991743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490635, 32.786709, 28.959330>,  <38.875229, 32.882458, 28.905306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490635, 32.786709, 28.959330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048991, -0.334258, -0.941207,
		0.270447, -0.911575, 0.309658,
		-0.961487, -0.239377, 0.135058,
		38.202190, 32.714897, 28.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785515, 32.219738, 28.535774>,  <38.875229, 32.882458, 28.905306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785515, 32.219738, 28.535774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408260, 32.342213, 28.587540>,  <38.181908, 32.415699, 28.618599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408260, 32.342213, 28.587540>,  <38.785515, 32.219738, 28.535774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408260, 32.342213, 28.587540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247399, -0.386531, -0.888475,
		-0.222017, -0.869967, 0.440301,
		-0.943134, 0.306187, 0.129412,
		38.125320, 32.434071, 28.626364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371849, 31.608282, 28.342981>,  <38.785515, 32.219738, 28.535774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371849, 31.608282, 28.342981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120415, 31.919041, 28.328491>,  <37.969555, 32.105495, 28.319798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120415, 31.919041, 28.328491>,  <38.371849, 31.608282, 28.342981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120415, 31.919041, 28.328491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346753, -0.321641, -0.881084,
		-0.696164, -0.541275, 0.471570,
		-0.628584, 0.776897, -0.036226,
		37.931839, 32.152111, 28.317623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749401, 31.328150, 28.187557>,  <38.371849, 31.608282, 28.342981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749401, 31.328150, 28.187557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716805, 31.711245, 28.077209>,  <37.697247, 31.941101, 28.011002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716805, 31.711245, 28.077209>,  <37.749401, 31.328150, 28.187557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716805, 31.711245, 28.077209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303879, -0.287485, -0.908301,
		-0.949219, 0.009814, 0.314462,
		-0.081490, 0.957735, -0.275869,
		37.692356, 31.998566, 27.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199753, 31.332649, 27.660900>,  <37.749401, 31.328150, 28.187557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199753, 31.332649, 27.660900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367611, 31.689774, 27.595430>,  <37.468327, 31.904047, 27.556149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367611, 31.689774, 27.595430>,  <37.199753, 31.332649, 27.660900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367611, 31.689774, 27.595430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065878, -0.149886, -0.986506,
		-0.905294, 0.424765, -0.004082,
		0.419645, 0.892810, -0.163674,
		37.493504, 31.957617, 27.546328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874332, 31.607677, 27.126497>,  <37.199753, 31.332649, 27.660900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874332, 31.607677, 27.126497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235691, 31.779198, 27.126221>,  <37.452507, 31.882111, 27.126055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235691, 31.779198, 27.126221>,  <36.874332, 31.607677, 27.126497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235691, 31.779198, 27.126221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011574, -0.026002, -0.999595,
		-0.428645, 0.903025, -0.028453,
		0.903399, 0.428801, -0.000694,
		37.506710, 31.907839, 27.126013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803917, 32.193085, 26.677973>,  <36.874332, 31.607677, 27.126497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803917, 32.193085, 26.677973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189816, 32.090130, 26.699924>,  <37.421356, 32.028358, 26.713097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189816, 32.090130, 26.699924>,  <36.803917, 32.193085, 26.677973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189816, 32.090130, 26.699924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112606, 0.215241, -0.970047,
		0.237862, 0.942032, 0.236636,
		0.964750, -0.257384, 0.054881,
		37.479240, 32.012917, 26.716389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026413, 32.711369, 26.138807>,  <36.803917, 32.193085, 26.677973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026413, 32.711369, 26.138807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301250, 32.432896, 26.221979>,  <37.466152, 32.265812, 26.271881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301250, 32.432896, 26.221979>,  <37.026413, 32.711369, 26.138807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301250, 32.432896, 26.221979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222614, -0.070700, -0.972340,
		0.691624, 0.714378, 0.106401,
		0.687095, -0.696180, 0.207929,
		37.507378, 32.224041, 26.284357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644001, 32.800266, 25.725693>,  <37.026413, 32.711369, 26.138807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644001, 32.800266, 25.725693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680687, 32.414413, 25.824549>,  <37.702698, 32.182903, 25.883862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680687, 32.414413, 25.824549>,  <37.644001, 32.800266, 25.725693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680687, 32.414413, 25.824549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295182, -0.210694, -0.931920,
		0.951029, 0.158421, 0.265418,
		0.091714, -0.964630, 0.247139,
		37.708202, 32.125023, 25.898691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298668, 32.621384, 25.505150>,  <37.644001, 32.800266, 25.725693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298668, 32.621384, 25.505150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106285, 32.273773, 25.551588>,  <37.990856, 32.065208, 25.579451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106285, 32.273773, 25.551588>,  <38.298668, 32.621384, 25.505150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106285, 32.273773, 25.551588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276075, -0.275791, -0.920718,
		0.832144, -0.410775, 0.372560,
		-0.480956, -0.869024, 0.116093,
		37.961998, 32.013065, 25.586416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731258, 32.121822, 25.189333>,  <38.298668, 32.621384, 25.505150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731258, 32.121822, 25.189333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.371326, 31.951466, 25.227119>,  <38.155369, 31.849253, 25.249792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.371326, 31.951466, 25.227119>,  <38.731258, 32.121822, 25.189333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371326, 31.951466, 25.227119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078410, -0.370922, -0.925348,
		0.429135, -0.825250, 0.367161,
		-0.899831, -0.425888, 0.094468,
		38.101376, 31.823700, 25.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807640, 31.505877, 24.836824>,  <38.731258, 32.121822, 25.189333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807640, 31.505877, 24.836824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414299, 31.567966, 24.874611>,  <38.178295, 31.605221, 24.897284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414299, 31.567966, 24.874611>,  <38.807640, 31.505877, 24.836824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414299, 31.567966, 24.874611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139817, -0.314307, -0.938969,
		-0.116057, -0.936545, 0.330777,
		-0.983352, 0.155222, 0.094467,
		38.119293, 31.614534, 24.902950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478409, 30.854586, 24.548168>,  <38.807640, 31.505877, 24.836824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478409, 30.854586, 24.548168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224304, 31.163393, 24.539904>,  <38.071842, 31.348679, 24.534945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224304, 31.163393, 24.539904>,  <38.478409, 30.854586, 24.548168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224304, 31.163393, 24.539904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144179, -0.144837, -0.978895,
		-0.758719, -0.618876, 0.203318,
		-0.635263, 0.772020, -0.020662,
		38.033726, 31.394999, 24.533705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.946487, 30.677395, 24.094265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904625, 31.075117, 24.102259>,  <37.879505, 31.313751, 24.107056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904625, 31.075117, 24.102259>,  <37.946487, 30.677395, 24.094265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904625, 31.075117, 24.102259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203010, -0.001687, -0.979175,
		-0.973567, -0.106536, 0.202031,
		-0.104659, 0.994307, 0.019985,
		37.873226, 31.373409, 24.108253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373306, 30.765074, 23.667822>,  <37.946487, 30.677395, 24.094265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373306, 30.765074, 23.667822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558369, 31.119162, 23.687153>,  <37.669407, 31.331615, 23.698751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558369, 31.119162, 23.687153>,  <37.373306, 30.765074, 23.667822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558369, 31.119162, 23.687153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162434, 0.138234, -0.976988,
		-0.871532, 0.444155, 0.207744,
		0.462652, 0.885222, 0.048330,
		37.697163, 31.384727, 23.701653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024818, 31.208702, 23.252094>,  <37.373306, 30.765074, 23.667822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024818, 31.208702, 23.252094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359474, 31.427221, 23.268095>,  <37.560268, 31.558332, 23.277695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359474, 31.427221, 23.268095>,  <37.024818, 31.208702, 23.252094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359474, 31.427221, 23.268095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108674, 0.237116, -0.965384,
		-0.536873, 0.803327, 0.257748,
		0.836635, 0.546299, 0.040000,
		37.610466, 31.591110, 23.280094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959187, 31.917910, 22.912809>,  <37.024818, 31.208702, 23.252094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959187, 31.917910, 22.912809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353493, 31.850929, 22.906824>,  <37.590076, 31.810741, 22.903233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353493, 31.850929, 22.906824>,  <36.959187, 31.917910, 22.912809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353493, 31.850929, 22.906824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038674, 0.312493, -0.949132,
		0.163609, 0.935045, 0.314522,
		0.985767, -0.167450, -0.014965,
		37.649223, 31.800694, 22.902334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273544, 32.473022, 22.561949>,  <36.959187, 31.917910, 22.912809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273544, 32.473022, 22.561949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554626, 32.189518, 22.537067>,  <37.723274, 32.019417, 22.522139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554626, 32.189518, 22.537067>,  <37.273544, 32.473022, 22.561949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554626, 32.189518, 22.537067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178779, 0.260519, -0.948772,
		0.688658, 0.655582, 0.309779,
		0.702701, -0.708761, -0.062204,
		37.765438, 31.976891, 22.518406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876556, 32.885746, 22.268274>,  <37.273544, 32.473022, 22.561949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876556, 32.885746, 22.268274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910847, 32.492191, 22.205505>,  <37.931419, 32.256058, 22.167843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910847, 32.492191, 22.205505>,  <37.876556, 32.885746, 22.268274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910847, 32.492191, 22.205505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182885, 0.170367, -0.968260,
		0.979390, 0.054305, 0.194542,
		0.085724, -0.983883, -0.156924,
		37.936565, 32.197025, 22.158428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489548, 32.810223, 21.783888>,  <37.876556, 32.885746, 22.268274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489548, 32.810223, 21.783888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285843, 32.469753, 21.733042>,  <38.163620, 32.265472, 21.702534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285843, 32.469753, 21.733042>,  <38.489548, 32.810223, 21.783888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285843, 32.469753, 21.733042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090602, 0.093860, -0.991454,
		0.855830, -0.516426, 0.029318,
		-0.509261, -0.851172, -0.127117,
		38.133064, 32.214401, 21.694906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881493, 32.431263, 21.299774>,  <38.489548, 32.810223, 21.783888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881493, 32.431263, 21.299774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513691, 32.274170, 21.293119>,  <38.293011, 32.179913, 21.289127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513691, 32.274170, 21.293119>,  <38.881493, 32.431263, 21.299774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513691, 32.274170, 21.293119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154228, -0.321517, -0.934259,
		0.361565, -0.861619, 0.356206,
		-0.919502, -0.392732, -0.016636,
		38.237839, 32.156349, 21.288128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955536, 31.723736, 21.207020>,  <38.881493, 32.431263, 21.299774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955536, 31.723736, 21.207020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.583668, 31.804428, 21.083719>,  <38.360546, 31.852844, 21.009739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.583668, 31.804428, 21.083719>,  <38.955536, 31.723736, 21.207020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583668, 31.804428, 21.083719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207891, -0.403493, -0.891053,
		-0.304130, -0.892467, 0.333177,
		-0.929670, 0.201731, -0.308250,
		38.304768, 31.864948, 20.991243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625122, 31.074268, 20.798981>,  <38.955536, 31.723736, 21.207020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625122, 31.074268, 20.798981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426636, 31.396458, 20.669376>,  <38.307545, 31.589771, 20.591614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426636, 31.396458, 20.669376>,  <38.625122, 31.074268, 20.798981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426636, 31.396458, 20.669376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043985, -0.349398, -0.935941,
		-0.867084, -0.478681, 0.137948,
		-0.496217, 0.805472, -0.324012,
		38.277771, 31.638100, 20.572172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294186, 30.861780, 20.254211>,  <38.625122, 31.074268, 20.798981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294186, 30.861780, 20.254211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207447, 31.245020, 20.179350>,  <38.155403, 31.474964, 20.134434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207447, 31.245020, 20.179350>,  <38.294186, 30.861780, 20.254211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207447, 31.245020, 20.179350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024530, -0.186307, -0.982186,
		-0.975898, -0.217573, 0.016897,
		-0.216845, 0.958098, -0.187153,
		38.142395, 31.532450, 20.123203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649010, 30.941629, 19.864517>,  <38.294186, 30.861780, 20.254211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649010, 30.941629, 19.864517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871815, 31.267385, 19.799397>,  <38.005497, 31.462839, 19.760324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871815, 31.267385, 19.799397>,  <37.649010, 30.941629, 19.864517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871815, 31.267385, 19.799397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177516, -0.074750, -0.981275,
		-0.811308, 0.575486, 0.102930,
		0.557016, 0.814388, -0.162803,
		38.038921, 31.511702, 19.750555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305603, 31.411018, 19.501455>,  <37.649010, 30.941629, 19.864517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305603, 31.411018, 19.501455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675354, 31.539110, 19.418537>,  <37.897205, 31.615965, 19.368786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.675354, 31.539110, 19.418537>,  <37.305603, 31.411018, 19.501455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675354, 31.539110, 19.418537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232199, 0.041195, -0.971796,
		-0.302658, 0.946444, 0.112437,
		0.924382, 0.320229, -0.207296,
		37.952667, 31.635180, 19.356348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291782, 31.941833, 18.895416>,  <37.305603, 31.411018, 19.501455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291782, 31.941833, 18.895416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679340, 31.843779, 18.908951>,  <37.911877, 31.784945, 18.917072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679340, 31.843779, 18.908951>,  <37.291782, 31.941833, 18.895416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679340, 31.843779, 18.908951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032645, -0.008929, -0.999427,
		0.245301, 0.969447, -0.000649,
		0.968897, -0.245139, 0.033838,
		37.970009, 31.770237, 18.919102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709785, 32.497955, 18.402554>,  <37.291782, 31.941833, 18.895416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709785, 32.497955, 18.402554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.961960, 32.190952, 18.449003>,  <38.113262, 32.006752, 18.476873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.961960, 32.190952, 18.449003>,  <37.709785, 32.497955, 18.402554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961960, 32.190952, 18.449003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164235, -0.014326, -0.986317,
		0.758671, 0.640878, 0.117020,
		0.630433, -0.767509, 0.116124,
		38.151089, 31.960699, 18.483841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328873, 32.698498, 18.076874>,  <37.709785, 32.497955, 18.402554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328873, 32.698498, 18.076874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349792, 32.299049, 18.075445>,  <38.362347, 32.059380, 18.074589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349792, 32.299049, 18.075445>,  <38.328873, 32.698498, 18.076874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349792, 32.299049, 18.075445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130710, 0.010390, -0.991366,
		0.990040, 0.051384, 0.131073,
		0.052303, -0.998625, -0.003570,
		38.365482, 31.999462, 18.074373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881264, 32.599037, 17.776438>,  <38.328873, 32.698498, 18.076874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881264, 32.599037, 17.776438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707417, 32.241341, 17.733671>,  <38.603107, 32.026722, 17.708012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707417, 32.241341, 17.733671>,  <38.881264, 32.599037, 17.776438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707417, 32.241341, 17.733671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237094, 0.000921, -0.971486,
		0.868845, -0.447578, 0.211620,
		-0.434621, -0.894245, -0.106918,
		38.577030, 31.973066, 17.701595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301788, 32.152962, 17.379475>,  <38.881264, 32.599037, 17.776438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301788, 32.152962, 17.379475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950188, 31.972492, 17.317770>,  <38.739227, 31.864210, 17.280746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950188, 31.972492, 17.317770>,  <39.301788, 32.152962, 17.379475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950188, 31.972492, 17.317770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137808, 0.069332, -0.988029,
		0.456470, -0.889738, 0.001233,
		-0.879001, -0.451176, -0.154261,
		38.686485, 31.837139, 17.271492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352680, 31.537577, 17.045162>,  <39.301788, 32.152962, 17.379475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352680, 31.537577, 17.045162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972698, 31.633825, 16.965467>,  <38.744709, 31.691574, 16.917650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972698, 31.633825, 16.965467>,  <39.352680, 31.537577, 17.045162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972698, 31.633825, 16.965467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142541, -0.233656, -0.961815,
		-0.277990, -0.942075, 0.187662,
		-0.949949, 0.240626, -0.199238,
		38.687714, 31.706013, 16.905697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196541, 31.129326, 16.419100>,  <39.352680, 31.537577, 17.045162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196541, 31.129326, 16.419100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923645, 31.419241, 16.457537>,  <38.759907, 31.593189, 16.480598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923645, 31.419241, 16.457537>,  <39.196541, 31.129326, 16.419100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923645, 31.419241, 16.457537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166415, -0.025960, -0.985714,
		-0.711938, -0.688484, 0.138326,
		-0.682239, 0.724787, 0.096092,
		38.718975, 31.636677, 16.486364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625889, 30.835064, 16.250486>,  <39.196541, 31.129326, 16.419100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625889, 30.835064, 16.250486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549404, 31.222511, 16.186972>,  <38.503513, 31.454981, 16.148863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549404, 31.222511, 16.186972>,  <38.625889, 30.835064, 16.250486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549404, 31.222511, 16.186972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101301, -0.180382, -0.978366,
		-0.976307, -0.170992, 0.132614,
		-0.191214, 0.968620, -0.158786,
		38.492039, 31.513098, 16.139336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050732, 30.834747, 15.880229>,  <38.625889, 30.835064, 16.250486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050732, 30.834747, 15.880229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241051, 31.179129, 15.808257>,  <38.355244, 31.385757, 15.765074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241051, 31.179129, 15.808257>,  <38.050732, 30.834747, 15.880229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241051, 31.179129, 15.808257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163118, -0.114648, -0.979922,
		-0.864297, 0.495594, 0.085888,
		0.475797, 0.860954, -0.179930,
		38.383789, 31.437414, 15.754278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732494, 31.225798, 15.303476>,  <38.050732, 30.834747, 15.880229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732494, 31.225798, 15.303476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112820, 31.349606, 15.308541>,  <38.341015, 31.423889, 15.311581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112820, 31.349606, 15.308541>,  <37.732494, 31.225798, 15.303476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112820, 31.349606, 15.308541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030950, -0.054243, -0.998048,
		-0.308228, 0.949345, -0.061154,
		0.950809, 0.309519, 0.012663,
		38.398064, 31.442461, 15.312341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104904, 31.687574, 15.169882>,  <37.732494, 31.225798, 15.303476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104904, 31.687574, 15.169882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004219, 32.037071, 15.003406>,  <36.943806, 32.246769, 14.903520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004219, 32.037071, 15.003406>,  <37.104904, 31.687574, 15.169882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004219, 32.037071, 15.003406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351942, 0.317955, 0.880364,
		0.901541, 0.368077, 0.227472,
		-0.251716, 0.873741, -0.416191,
		36.928703, 32.299194, 14.878549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386887, 32.295017, 15.534017>,  <37.104904, 31.687574, 15.169882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386887, 32.295017, 15.534017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061077, 32.427094, 15.343219>,  <36.865589, 32.506340, 15.228740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061077, 32.427094, 15.343219>,  <37.386887, 32.295017, 15.534017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061077, 32.427094, 15.343219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271251, 0.510045, 0.816258,
		0.512807, 0.794249, -0.325881,
		-0.814525, 0.330187, -0.476995,
		36.816719, 32.526150, 15.200120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325489, 33.027882, 15.752398>,  <37.386887, 32.295017, 15.534017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325489, 33.027882, 15.752398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972794, 32.888428, 15.625285>,  <36.761177, 32.804756, 15.549017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972794, 32.888428, 15.625285>,  <37.325489, 33.027882, 15.752398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972794, 32.888428, 15.625285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453744, 0.442540, 0.773482,
		-0.129032, 0.826203, -0.548397,
		-0.881741, -0.348636, -0.317783,
		36.708271, 32.783836, 15.529950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861584, 33.609020, 15.776753>,  <37.325489, 33.027882, 15.752398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861584, 33.609020, 15.776753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650856, 33.269859, 15.800464>,  <36.524418, 33.066360, 15.814690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650856, 33.269859, 15.800464>,  <36.861584, 33.609020, 15.776753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650856, 33.269859, 15.800464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453685, 0.339485, 0.823966,
		-0.718769, 0.407191, -0.563531,
		-0.526822, -0.847906, 0.059275,
		36.492809, 33.015488, 15.818246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190849, 33.853844, 15.922595>,  <36.861584, 33.609020, 15.776753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190849, 33.853844, 15.922595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218914, 33.475079, 16.048094>,  <36.235752, 33.247822, 16.123394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218914, 33.475079, 16.048094>,  <36.190849, 33.853844, 15.922595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218914, 33.475079, 16.048094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419549, 0.257341, 0.870491,
		-0.905017, -0.192705, -0.379221,
		0.070159, -0.946911, 0.313747,
		36.239964, 33.191006, 16.142218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635525, 33.796059, 16.460129>,  <36.190849, 33.853844, 15.922595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635525, 33.796059, 16.460129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821251, 33.443226, 16.491974>,  <35.932686, 33.231525, 16.511082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821251, 33.443226, 16.491974>,  <35.635525, 33.796059, 16.460129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821251, 33.443226, 16.491974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352324, -0.101489, 0.930359,
		-0.812575, -0.460030, -0.357903,
		0.464316, -0.882084, 0.079612,
		35.960545, 33.178600, 16.515858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091251, 33.346413, 16.671099>,  <35.635525, 33.796059, 16.460129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091251, 33.346413, 16.671099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431541, 33.169353, 16.784462>,  <35.635715, 33.063118, 16.852480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431541, 33.169353, 16.784462>,  <35.091251, 33.346413, 16.671099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431541, 33.169353, 16.784462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394950, -0.182590, 0.900375,
		-0.346806, -0.877906, -0.330160,
		0.850729, -0.442653, 0.283406,
		35.686760, 33.036560, 16.869484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864521, 32.721127, 17.066023>,  <35.091251, 33.346413, 16.671099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864521, 32.721127, 17.066023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242867, 32.786655, 17.178095>,  <35.469875, 32.825974, 17.245338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242867, 32.786655, 17.178095>,  <34.864521, 32.721127, 17.066023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242867, 32.786655, 17.178095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237659, -0.238300, 0.941664,
		0.221035, -0.957274, -0.186466,
		0.945865, 0.163825, 0.280178,
		35.526627, 32.835804, 17.262148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089542, 32.091621, 17.472811>,  <34.864521, 32.721127, 17.066023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089542, 32.091621, 17.472811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309994, 32.410007, 17.572971>,  <35.442265, 32.601040, 17.633068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309994, 32.410007, 17.572971>,  <35.089542, 32.091621, 17.472811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309994, 32.410007, 17.572971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174691, -0.183374, 0.967397,
		0.815930, -0.576901, 0.037986,
		0.551127, 0.795965, 0.250400,
		35.475330, 32.648796, 17.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426025, 31.870840, 18.119091>,  <35.089542, 32.091621, 17.472811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426025, 31.870840, 18.119091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515148, 32.259083, 18.155487>,  <35.568623, 32.492027, 18.177324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515148, 32.259083, 18.155487>,  <35.426025, 31.870840, 18.119091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515148, 32.259083, 18.155487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059111, -0.079713, 0.995064,
		0.973069, -0.227085, 0.039613,
		0.222807, 0.970607, 0.090990,
		35.581989, 32.550266, 18.182783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003689, 31.890804, 18.559977>,  <35.426025, 31.870840, 18.119091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003689, 31.890804, 18.559977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819275, 32.245750, 18.562180>,  <35.708626, 32.458717, 18.563501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819275, 32.245750, 18.562180>,  <36.003689, 31.890804, 18.559977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819275, 32.245750, 18.562180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020612, 0.004506, 0.999777,
		0.887141, 0.461049, -0.020368,
		-0.461038, 0.887363, 0.005506,
		35.680962, 32.511959, 18.563831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469307, 32.358124, 18.908810>,  <36.003689, 31.890804, 18.559977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469307, 32.358124, 18.908810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097389, 32.503998, 18.928740>,  <35.874237, 32.591522, 18.940699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097389, 32.503998, 18.928740>,  <36.469307, 32.358124, 18.908810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097389, 32.503998, 18.928740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077579, 0.061839, 0.995067,
		0.359804, 0.929075, -0.085789,
		-0.929797, 0.364684, 0.049827,
		35.818451, 32.613403, 18.943687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576939, 32.883293, 19.390060>,  <36.469307, 32.358124, 18.908810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576939, 32.883293, 19.390060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183399, 32.814301, 19.370939>,  <35.947273, 32.772907, 19.359467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183399, 32.814301, 19.370939>,  <36.576939, 32.883293, 19.390060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183399, 32.814301, 19.370939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085832, 0.220303, 0.971648,
		-0.157057, 0.960061, -0.231550,
		-0.983853, -0.172478, -0.047804,
		35.888245, 32.762558, 19.356598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289791, 33.290752, 19.908054>,  <36.576939, 32.883293, 19.390060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289791, 33.290752, 19.908054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025711, 32.999260, 19.835300>,  <35.867264, 32.824364, 19.791647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025711, 32.999260, 19.835300>,  <36.289791, 33.290752, 19.908054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025711, 32.999260, 19.835300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095372, -0.158868, 0.982683,
		-0.745009, 0.666115, 0.035384,
		-0.660201, -0.728733, -0.181887,
		35.827652, 32.780640, 19.780735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715900, 33.442928, 20.388863>,  <36.289791, 33.290752, 19.908054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715900, 33.442928, 20.388863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709927, 33.056763, 20.284739>,  <35.706341, 32.825066, 20.222265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709927, 33.056763, 20.284739>,  <35.715900, 33.442928, 20.388863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709927, 33.056763, 20.284739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099157, -0.257624, 0.961144,
		-0.994959, 0.040169, -0.091878,
		-0.014939, -0.965410, -0.260308,
		35.705444, 32.767139, 20.206646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343792, 33.178059, 20.830307>,  <35.715900, 33.442928, 20.388863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343792, 33.178059, 20.830307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507244, 32.834518, 20.706764>,  <35.605316, 32.628395, 20.632639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507244, 32.834518, 20.706764>,  <35.343792, 33.178059, 20.830307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507244, 32.834518, 20.706764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125163, -0.387931, 0.913151,
		-0.904078, -0.334482, -0.266016,
		0.408628, -0.858855, -0.308855,
		35.629833, 32.576862, 20.614107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741943, 32.655754, 21.063639>,  <35.343792, 33.178059, 20.830307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741943, 32.655754, 21.063639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.101124, 32.491211, 21.001076>,  <35.316631, 32.392487, 20.963539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.101124, 32.491211, 21.001076>,  <34.741943, 32.655754, 21.063639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101124, 32.491211, 21.001076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039116, -0.428591, 0.902652,
		-0.438362, -0.804415, -0.400943,
		0.897947, -0.411371, -0.156413,
		35.370510, 32.367802, 20.954153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612972, 31.969748, 21.156193>,  <34.741943, 32.655754, 21.063639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612972, 31.969748, 21.156193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008217, 32.020432, 21.191038>,  <35.245361, 32.050842, 21.211945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008217, 32.020432, 21.191038>,  <34.612972, 31.969748, 21.156193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008217, 32.020432, 21.191038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036823, -0.355054, 0.934120,
		0.149294, -0.926218, -0.346166,
		0.988107, 0.126712, 0.087113,
		35.304649, 32.058445, 21.217173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922134, 31.306511, 21.405256>,  <34.612972, 31.969748, 21.156193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922134, 31.306511, 21.405256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156136, 31.619812, 21.489433>,  <35.296535, 31.807793, 21.539940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156136, 31.619812, 21.489433>,  <34.922134, 31.306511, 21.405256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156136, 31.619812, 21.489433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, -0.269902, 0.962771,
		0.810894, -0.560058, -0.169664,
		0.585000, 0.783255, 0.210445,
		35.331635, 31.854788, 21.552567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332294, 31.045963, 21.850021>,  <34.922134, 31.306511, 21.405256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332294, 31.045963, 21.850021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355354, 31.443422, 21.888683>,  <35.369190, 31.681898, 21.911880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355354, 31.443422, 21.888683>,  <35.332294, 31.045963, 21.850021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355354, 31.443422, 21.888683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049658, -0.093841, 0.994348,
		0.997101, -0.062124, 0.043933,
		0.057650, 0.993647, 0.096654,
		35.372650, 31.741516, 21.917679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790661, 31.048553, 22.386042>,  <35.332294, 31.045963, 21.850021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790661, 31.048553, 22.386042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585876, 31.391619, 22.366816>,  <35.463005, 31.597458, 22.355280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585876, 31.391619, 22.366816>,  <35.790661, 31.048553, 22.386042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585876, 31.391619, 22.366816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004829, 0.053081, 0.998579,
		0.858995, 0.511466, -0.023034,
		-0.511962, 0.857662, -0.048066,
		35.432289, 31.648918, 22.352396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.729576, 31.834507, 26.796549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333435, 31.882830, 26.769388>,  <38.095749, 31.911823, 26.753092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333435, 31.882830, 26.769388>,  <38.729576, 31.834507, 26.796549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333435, 31.882830, 26.769388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020179, 0.359041, 0.933104,
		0.137103, 0.925471, -0.353139,
		-0.990351, 0.120805, -0.067900,
		38.036331, 31.919071, 26.749018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608215, 32.494602, 27.165308>,  <38.729576, 31.834507, 26.796549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608215, 32.494602, 27.165308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.242855, 32.334209, 27.137270>,  <38.023640, 32.237976, 27.120447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.242855, 32.334209, 27.137270>,  <38.608215, 32.494602, 27.165308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242855, 32.334209, 27.137270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232215, 0.371848, 0.898780,
		-0.334326, 0.837224, -0.432760,
		-0.913401, -0.400979, -0.070097,
		37.968834, 32.213917, 27.116241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180679, 33.038780, 27.277105>,  <38.608215, 32.494602, 27.165308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180679, 33.038780, 27.277105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957943, 32.717064, 27.360090>,  <37.824303, 32.524033, 27.409882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957943, 32.717064, 27.360090>,  <38.180679, 33.038780, 27.277105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957943, 32.717064, 27.360090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140388, 0.337307, 0.930868,
		-0.818669, 0.489221, -0.300739,
		-0.556842, -0.804293, 0.207462,
		37.790890, 32.475777, 27.422329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635380, 33.264854, 27.694168>,  <38.180679, 33.038780, 27.277105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635380, 33.264854, 27.694168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679127, 32.873466, 27.764177>,  <37.705376, 32.638634, 27.806183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679127, 32.873466, 27.764177>,  <37.635380, 33.264854, 27.694168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679127, 32.873466, 27.764177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091671, 0.165400, 0.981957,
		-0.989765, -0.123437, -0.071608,
		0.109366, -0.978471, 0.175023,
		37.711937, 32.579926, 27.816685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019344, 33.078327, 28.138727>,  <37.635380, 33.264854, 27.694168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019344, 33.078327, 28.138727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.321484, 32.823547, 28.200361>,  <37.502766, 32.670677, 28.237343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.321484, 32.823547, 28.200361>,  <37.019344, 33.078327, 28.138727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321484, 32.823547, 28.200361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168386, 0.038591, 0.984965,
		-0.633322, -0.769937, -0.078104,
		0.755347, -0.636952, 0.154087,
		37.548088, 32.632462, 28.246588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901638, 32.803627, 28.817146>,  <37.019344, 33.078327, 28.138727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901638, 32.803627, 28.817146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.273586, 32.674644, 28.746313>,  <37.496758, 32.597256, 28.703814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.273586, 32.674644, 28.746313>,  <36.901638, 32.803627, 28.817146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273586, 32.674644, 28.746313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202130, 0.045633, 0.978295,
		-0.307374, -0.945484, 0.107611,
		0.929873, -0.322454, -0.177084,
		37.552547, 32.577908, 28.693188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018600, 32.240517, 29.291044>,  <36.901638, 32.803627, 28.817146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018600, 32.240517, 29.291044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387936, 32.370880, 29.209818>,  <37.609535, 32.449097, 29.161081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387936, 32.370880, 29.209818>,  <37.018600, 32.240517, 29.291044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387936, 32.370880, 29.209818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138649, 0.210197, 0.967778,
		0.358090, -0.921739, 0.148895,
		0.923335, 0.325907, -0.203068,
		37.664936, 32.468651, 29.148897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485809, 31.938637, 29.753490>,  <37.018600, 32.240517, 29.291044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485809, 31.938637, 29.753490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.717239, 32.243801, 29.638100>,  <37.856098, 32.426899, 29.568865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.717239, 32.243801, 29.638100>,  <37.485809, 31.938637, 29.753490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717239, 32.243801, 29.638100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235548, 0.182326, 0.954607,
		0.780876, -0.620263, -0.074213,
		0.578576, 0.762910, -0.288476,
		37.890812, 32.472675, 29.551558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107872, 31.849899, 30.131245>,  <37.485809, 31.938637, 29.753490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107872, 31.849899, 30.131245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112865, 32.228874, 30.003366>,  <38.115860, 32.456261, 29.926640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.112865, 32.228874, 30.003366>,  <38.107872, 31.849899, 30.131245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112865, 32.228874, 30.003366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278426, 0.303782, 0.911150,
		0.960376, -0.100383, -0.260001,
		0.012481, 0.947439, -0.319694,
		38.116611, 32.513107, 29.907457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777519, 32.202793, 30.304533>,  <38.107872, 31.849899, 30.131245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777519, 32.202793, 30.304533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.520954, 32.508781, 30.281199>,  <38.367016, 32.692375, 30.267199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.520954, 32.508781, 30.281199>,  <38.777519, 32.202793, 30.304533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520954, 32.508781, 30.281199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257612, 0.286379, 0.922834,
		0.722648, 0.576894, -0.380754,
		-0.641417, 0.764971, -0.058336,
		38.328529, 32.738274, 30.263697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897755, 32.554100, 30.910601>,  <38.777519, 32.202793, 30.304533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897755, 32.554100, 30.910601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556583, 32.718666, 30.782072>,  <38.351879, 32.817406, 30.704954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556583, 32.718666, 30.782072>,  <38.897755, 32.554100, 30.910601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556583, 32.718666, 30.782072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104592, 0.468366, 0.877322,
		0.511444, 0.781900, -0.356452,
		-0.852928, 0.411419, -0.321323,
		38.300705, 32.842091, 30.685675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922520, 33.323410, 31.134329>,  <38.897755, 32.554100, 30.910601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922520, 33.323410, 31.134329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.538918, 33.233021, 31.065931>,  <38.308754, 33.178787, 31.024893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.538918, 33.233021, 31.065931>,  <38.922520, 33.323410, 31.134329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538918, 33.233021, 31.065931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261044, 0.469682, 0.843359,
		-0.110261, 0.853426, -0.509418,
		-0.959009, -0.225970, -0.170994,
		38.251213, 33.165230, 31.014633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565369, 33.995262, 31.324160>,  <38.922520, 33.323410, 31.134329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565369, 33.995262, 31.324160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306866, 33.690266, 31.311733>,  <38.151764, 33.507267, 31.304277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.306866, 33.690266, 31.311733>,  <38.565369, 33.995262, 31.324160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306866, 33.690266, 31.311733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433771, 0.333545, 0.837013,
		-0.627849, 0.554402, -0.546301,
		-0.646257, -0.762487, -0.031067,
		38.112988, 33.461521, 31.302414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308483, 34.567307, 31.911491>,  <38.565369, 33.995262, 31.324160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308483, 34.567307, 31.911491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529099, 34.234943, 31.940893>,  <38.661469, 34.035526, 31.958534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529099, 34.234943, 31.940893>,  <38.308483, 34.567307, 31.911491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529099, 34.234943, 31.940893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816835, -0.555851, -0.154309,
		0.169074, 0.025067, -0.985285,
		0.551539, -0.830904, 0.073504,
		38.694561, 33.985672, 31.962944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901707, 35.084114, 31.565933>,  <38.308483, 34.567307, 31.911491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901707, 35.084114, 31.565933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001305, 35.470032, 31.532070>,  <39.061066, 35.701584, 31.511751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001305, 35.470032, 31.532070>,  <38.901707, 35.084114, 31.565933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001305, 35.470032, 31.532070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066819, -0.070091, -0.995300,
		-0.966196, 0.253485, 0.047015,
		0.248998, 0.964797, -0.084659,
		39.076004, 35.759472, 31.506672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604069, 35.262005, 30.935806>,  <38.901707, 35.084114, 31.565933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604069, 35.262005, 30.935806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.836136, 35.580193, 31.005806>,  <38.975376, 35.771107, 31.047806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.836136, 35.580193, 31.005806>,  <38.604069, 35.262005, 30.935806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836136, 35.580193, 31.005806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110321, 0.136127, -0.984530,
		-0.806988, 0.590502, -0.008781,
		0.580172, 0.795473, 0.174998,
		39.010189, 35.818836, 31.058306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258812, 35.830715, 30.509970>,  <38.604069, 35.262005, 30.935806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258812, 35.830715, 30.509970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.644363, 35.913570, 30.576944>,  <38.875694, 35.963284, 30.617128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.644363, 35.913570, 30.576944>,  <38.258812, 35.830715, 30.509970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644363, 35.913570, 30.576944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136071, 0.157455, -0.978107,
		-0.228970, 0.965557, 0.123582,
		0.963876, 0.207141, 0.167437,
		38.933525, 35.975712, 30.627176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393188, 36.339336, 30.139580>,  <38.258812, 35.830715, 30.509970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393188, 36.339336, 30.139580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774513, 36.228653, 30.187958>,  <39.003307, 36.162243, 30.216984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774513, 36.228653, 30.187958>,  <38.393188, 36.339336, 30.139580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774513, 36.228653, 30.187958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174827, 0.179148, -0.968164,
		0.246229, 0.944108, 0.219160,
		0.953314, -0.276705, 0.120944,
		39.060509, 36.145641, 30.224241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751648, 36.762318, 29.673201>,  <38.393188, 36.339336, 30.139580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751648, 36.762318, 29.673201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036949, 36.496563, 29.762524>,  <39.208130, 36.337109, 29.816118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036949, 36.496563, 29.762524>,  <38.751648, 36.762318, 29.673201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036949, 36.496563, 29.762524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271054, -0.032359, -0.962020,
		0.646380, 0.746688, 0.157005,
		0.713248, -0.664387, 0.223309,
		39.250923, 36.297245, 29.829515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334084, 37.015442, 29.390175>,  <38.751648, 36.762318, 29.673201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334084, 37.015442, 29.390175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344749, 36.616116, 29.410793>,  <39.351147, 36.376518, 29.423164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344749, 36.616116, 29.410793>,  <39.334084, 37.015442, 29.390175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344749, 36.616116, 29.410793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179649, -0.045941, -0.982657,
		0.983369, 0.035459, 0.178121,
		0.026661, -0.998315, 0.051547,
		39.352749, 36.316620, 29.426258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802620, 36.873802, 28.935286>,  <39.334084, 37.015442, 29.390175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802620, 36.873802, 28.935286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619564, 36.520634, 28.977253>,  <39.509731, 36.308731, 29.002434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619564, 36.520634, 28.977253>,  <39.802620, 36.873802, 28.935286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619564, 36.520634, 28.977253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149140, -0.192557, -0.969886,
		0.876540, -0.428212, 0.219801,
		-0.457641, -0.882925, 0.104920,
		39.482273, 36.255756, 29.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248211, 36.485348, 28.519176>,  <39.802620, 36.873802, 28.935286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248211, 36.485348, 28.519176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937965, 36.239502, 28.576670>,  <39.751816, 36.091995, 28.611166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937965, 36.239502, 28.576670>,  <40.248211, 36.485348, 28.519176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937965, 36.239502, 28.576670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111786, -0.357869, -0.927057,
		0.621225, -0.702975, 0.346275,
		-0.775618, -0.614619, 0.143734,
		39.705280, 36.055115, 28.619789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400799, 35.791546, 28.316771>,  <40.248211, 36.485348, 28.519176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400799, 35.791546, 28.316771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.001133, 35.784042, 28.302275>,  <39.761333, 35.779541, 28.293577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.001133, 35.784042, 28.302275>,  <40.400799, 35.791546, 28.316771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001133, 35.784042, 28.302275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039019, -0.179210, -0.983037,
		0.011948, -0.983632, 0.179793,
		-0.999167, -0.018761, -0.036239,
		39.701382, 35.778416, 28.291403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287052, 35.238678, 27.911263>,  <40.400799, 35.791546, 28.316771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287052, 35.238678, 27.911263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955326, 35.460499, 27.883818>,  <39.756290, 35.593590, 27.867352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955326, 35.460499, 27.883818>,  <40.287052, 35.238678, 27.911263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955326, 35.460499, 27.883818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034138, -0.072272, -0.996801,
		-0.557736, -0.829005, 0.041005,
		-0.829316, 0.554552, -0.068610,
		39.706532, 35.626865, 27.863235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838074, 34.923275, 27.491737>,  <40.287052, 35.238678, 27.911263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838074, 34.923275, 27.491737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673080, 35.286873, 27.467751>,  <39.574085, 35.505032, 27.453358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673080, 35.286873, 27.467751>,  <39.838074, 34.923275, 27.491737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673080, 35.286873, 27.467751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261577, -0.181238, -0.948014,
		-0.872605, -0.375349, 0.312528,
		-0.412478, 0.908991, -0.059967,
		39.549335, 35.559570, 27.449760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038845, 34.912090, 27.191082>,  <39.838074, 34.923275, 27.491737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038845, 34.912090, 27.191082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238159, 35.255135, 27.140144>,  <39.357746, 35.460960, 27.109581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238159, 35.255135, 27.140144>,  <39.038845, 34.912090, 27.191082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238159, 35.255135, 27.140144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129063, -0.071873, -0.989028,
		-0.857355, 0.509251, 0.074873,
		0.498282, 0.857612, -0.127346,
		39.387646, 35.512417, 27.101940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701736, 35.328972, 26.705528>,  <39.038845, 34.912090, 27.191082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701736, 35.328972, 26.705528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058136, 35.508976, 26.681509>,  <39.271976, 35.616978, 26.667097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058136, 35.508976, 26.681509>,  <38.701736, 35.328972, 26.705528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058136, 35.508976, 26.681509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044726, -0.044613, -0.998003,
		-0.451792, 0.891907, -0.019623,
		0.891001, 0.450012, -0.060048,
		39.325436, 35.643978, 26.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659996, 35.859257, 26.183193>,  <38.701736, 35.328972, 26.705528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659996, 35.859257, 26.183193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052258, 35.789993, 26.219713>,  <39.287613, 35.748436, 26.241625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052258, 35.789993, 26.219713>,  <38.659996, 35.859257, 26.183193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052258, 35.789993, 26.219713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064140, -0.156433, -0.985604,
		0.184952, 0.972391, -0.142299,
		0.980652, -0.173162, 0.091302,
		39.346455, 35.738045, 26.247105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562065, 36.545010, 26.197372>,  <38.659996, 35.859257, 26.183193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562065, 36.545010, 26.197372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.261227, 36.808441, 26.187414>,  <38.080723, 36.966499, 26.181438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.261227, 36.808441, 26.187414>,  <38.562065, 36.545010, 26.197372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261227, 36.808441, 26.187414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272095, -0.275880, 0.921875,
		0.600260, 0.700115, 0.386686,
		-0.752098, 0.658581, -0.024898,
		38.035599, 37.006016, 26.179945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632462, 36.901390, 26.774458>,  <38.562065, 36.545010, 26.197372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632462, 36.901390, 26.774458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244968, 36.949638, 26.687727>,  <38.012474, 36.978588, 26.635689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244968, 36.949638, 26.687727>,  <38.632462, 36.901390, 26.774458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244968, 36.949638, 26.687727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239160, -0.221182, 0.945453,
		0.066085, 0.967744, 0.243113,
		-0.968729, 0.120624, -0.216829,
		37.954350, 36.985825, 26.622679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390686, 37.217999, 27.436651>,  <38.632462, 36.901390, 26.774458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390686, 37.217999, 27.436651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.063728, 37.123055, 27.226686>,  <37.867554, 37.066090, 27.100708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.063728, 37.123055, 27.226686>,  <38.390686, 37.217999, 27.436651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063728, 37.123055, 27.226686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480689, -0.221173, 0.848540,
		-0.317502, 0.945909, 0.066691,
		-0.817392, -0.237355, -0.524911,
		37.818512, 37.051849, 27.069214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858307, 37.550327, 27.818155>,  <38.390686, 37.217999, 27.436651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858307, 37.550327, 27.818155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.678768, 37.260971, 27.608301>,  <37.571045, 37.087357, 27.482388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.678768, 37.260971, 27.608301>,  <37.858307, 37.550327, 27.818155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678768, 37.260971, 27.608301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511207, -0.273682, 0.814719,
		-0.732944, 0.633879, -0.246963,
		-0.448844, -0.723392, -0.524637,
		37.544113, 37.043953, 27.450911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016769, 37.570744, 27.900770>,  <37.858307, 37.550327, 27.818155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016769, 37.570744, 27.900770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118496, 37.197094, 27.800585>,  <37.179531, 36.972904, 27.740473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118496, 37.197094, 27.800585>,  <37.016769, 37.570744, 27.900770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118496, 37.197094, 27.800585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432920, -0.341544, 0.834223,
		-0.864813, -0.103728, -0.491262,
		0.254320, -0.934124, -0.250466,
		37.194794, 36.916855, 27.725445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378551, 37.101452, 27.761919>,  <37.016769, 37.570744, 27.900770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378551, 37.101452, 27.761919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708416, 36.914833, 27.889839>,  <36.906334, 36.802860, 27.966591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708416, 36.914833, 27.889839>,  <36.378551, 37.101452, 27.761919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708416, 36.914833, 27.889839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518553, -0.397754, 0.756898,
		-0.225926, -0.790016, -0.569941,
		0.824658, -0.466547, 0.319802,
		36.955814, 36.774868, 27.985779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100319, 36.793659, 28.416862>,  <36.378551, 37.101452, 27.761919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100319, 36.793659, 28.416862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448872, 36.604080, 28.366165>,  <36.658005, 36.490334, 28.335747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448872, 36.604080, 28.366165>,  <36.100319, 36.793659, 28.416862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448872, 36.604080, 28.366165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234991, -0.629988, 0.740199,
		-0.430665, -0.615212, -0.660335,
		0.871382, -0.473951, -0.126744,
		36.710285, 36.461895, 28.328142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943001, 35.988281, 28.373110>,  <36.100319, 36.793659, 28.416862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943001, 35.988281, 28.373110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.313858, 36.061340, 28.503984>,  <36.536373, 36.105175, 28.582510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.313858, 36.061340, 28.503984>,  <35.943001, 35.988281, 28.373110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313858, 36.061340, 28.503984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154721, -0.608652, 0.778205,
		0.341285, -0.772127, -0.536045,
		0.927139, 0.182652, 0.327188,
		36.591999, 36.116135, 28.602140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349560, 35.452629, 28.365597>,  <35.943001, 35.988281, 28.373110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349560, 35.452629, 28.365597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.553604, 35.659218, 28.640709>,  <36.676029, 35.783173, 28.805777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.553604, 35.659218, 28.640709>,  <36.349560, 35.452629, 28.365597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553604, 35.659218, 28.640709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094632, -0.761087, 0.641709,
		0.854888, -0.392428, -0.339363,
		0.510109, 0.516475, 0.687780,
		36.706638, 35.814159, 28.847044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610157, 34.964497, 28.752598>,  <36.349560, 35.452629, 28.365597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610157, 34.964497, 28.752598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.650383, 35.282536, 28.991833>,  <36.674519, 35.473358, 29.135374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.650383, 35.282536, 28.991833>,  <36.610157, 34.964497, 28.752598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650383, 35.282536, 28.991833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138360, -0.584117, 0.799790,
		0.985263, -0.163183, 0.051267,
		0.100566, 0.795096, 0.598087,
		36.680553, 35.521065, 29.171259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116512, 34.809032, 29.297930>,  <36.610157, 34.964497, 28.752598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116512, 34.809032, 29.297930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.907433, 35.110512, 29.457291>,  <36.781986, 35.291401, 29.552908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.907433, 35.110512, 29.457291>,  <37.116512, 34.809032, 29.297930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907433, 35.110512, 29.457291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064658, -0.501025, 0.863014,
		0.850063, 0.425334, 0.310617,
		-0.522696, 0.753700, 0.398402,
		36.750622, 35.336620, 29.576811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356125, 35.032307, 30.096121>,  <37.116512, 34.809032, 29.297930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356125, 35.032307, 30.096121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970608, 35.120255, 30.035772>,  <36.739296, 35.173023, 29.999563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970608, 35.120255, 30.035772>,  <37.356125, 35.032307, 30.096121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970608, 35.120255, 30.035772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249372, -0.542827, 0.801968,
		0.094428, 0.810554, 0.578001,
		-0.963793, 0.219866, -0.150872,
		36.681469, 35.186214, 29.990511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.593895, 37.464581, 22.812210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207302, 37.553158, 22.760242>,  <38.975346, 37.606304, 22.729061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207302, 37.553158, 22.760242>,  <39.593895, 37.464581, 22.812210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207302, 37.553158, 22.760242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077628, 0.230295, 0.970020,
		0.244724, 0.947590, -0.205385,
		-0.966480, 0.221443, -0.129918,
		38.917358, 37.619591, 22.721268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513325, 38.042538, 23.192146>,  <39.593895, 37.464581, 22.812210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513325, 38.042538, 23.192146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165390, 37.846554, 23.169067>,  <38.956631, 37.728962, 23.155220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165390, 37.846554, 23.169067>,  <39.513325, 38.042538, 23.192146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165390, 37.846554, 23.169067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254700, 0.345826, 0.903068,
		-0.422512, 0.800216, -0.425604,
		-0.869834, -0.489958, -0.057700,
		38.904438, 37.699566, 23.151758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887039, 38.508694, 23.416809>,  <39.513325, 38.042538, 23.192146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887039, 38.508694, 23.416809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763401, 38.129921, 23.452091>,  <38.689217, 37.902657, 23.473261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763401, 38.129921, 23.452091>,  <38.887039, 38.508694, 23.416809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763401, 38.129921, 23.452091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262341, 0.174043, 0.949150,
		-0.914132, 0.270240, -0.302215,
		-0.309097, -0.946932, 0.088203,
		38.670673, 37.845840, 23.478552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333851, 38.596264, 23.876453>,  <38.887039, 38.508694, 23.416809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333851, 38.596264, 23.876453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370140, 38.197975, 23.869467>,  <38.391914, 37.959000, 23.865274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370140, 38.197975, 23.869467>,  <38.333851, 38.596264, 23.876453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370140, 38.197975, 23.869467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458759, -0.057351, 0.886708,
		-0.883918, -0.072428, -0.462000,
		0.090719, -0.995723, -0.017467,
		38.397354, 37.899258, 23.864227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621464, 38.336094, 24.148306>,  <38.333851, 38.596264, 23.876453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621464, 38.336094, 24.148306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894627, 38.049149, 24.203489>,  <38.058525, 37.876984, 24.236599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894627, 38.049149, 24.203489>,  <37.621464, 38.336094, 24.148306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894627, 38.049149, 24.203489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343342, -0.148502, 0.927396,
		-0.644789, -0.680692, -0.347714,
		0.682908, -0.717360, 0.137958,
		38.099499, 37.833942, 24.244877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307755, 37.678345, 24.277836>,  <37.621464, 38.336094, 24.148306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307755, 37.678345, 24.277836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662315, 37.583179, 24.436678>,  <37.875050, 37.526081, 24.531982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662315, 37.583179, 24.436678>,  <37.307755, 37.678345, 24.277836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662315, 37.583179, 24.436678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428330, -0.096152, 0.898492,
		-0.175588, -0.966514, -0.187137,
		0.886398, -0.237921, 0.397104,
		37.928234, 37.511803, 24.555809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216644, 36.984238, 24.709499>,  <37.307755, 37.678345, 24.277836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216644, 36.984238, 24.709499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552372, 37.159492, 24.838230>,  <37.753811, 37.264645, 24.915468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552372, 37.159492, 24.838230>,  <37.216644, 36.984238, 24.709499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552372, 37.159492, 24.838230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196717, -0.307100, 0.931124,
		0.506796, -0.844821, -0.171566,
		0.839321, 0.438140, 0.321828,
		37.804169, 37.290936, 24.934778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577793, 36.497803, 25.021719>,  <37.216644, 36.984238, 24.709499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577793, 36.497803, 25.021719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728935, 36.837620, 25.168964>,  <37.819622, 37.041508, 25.257311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728935, 36.837620, 25.168964>,  <37.577793, 36.497803, 25.021719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728935, 36.837620, 25.168964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203206, -0.311799, 0.928164,
		0.903290, -0.425515, 0.054816,
		0.377856, 0.849540, 0.368112,
		37.842293, 37.092484, 25.279398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162354, 36.348812, 25.531776>,  <37.577793, 36.497803, 25.021719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162354, 36.348812, 25.531776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006508, 36.709408, 25.607159>,  <37.913002, 36.925766, 25.652388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006508, 36.709408, 25.607159>,  <38.162354, 36.348812, 25.531776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006508, 36.709408, 25.607159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292130, -0.315029, 0.903005,
		0.873419, 0.296770, 0.386092,
		-0.389615, 0.901490, 0.188457,
		37.889622, 36.979855, 25.663696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937824, 36.338177, 25.626873>,  <38.162354, 36.348812, 25.531776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937824, 36.338177, 25.626873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209679, 36.060909, 25.722881>,  <39.372791, 35.894550, 25.780487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209679, 36.060909, 25.722881>,  <38.937824, 36.338177, 25.626873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209679, 36.060909, 25.722881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107368, -0.229681, -0.967326,
		0.725649, 0.683200, -0.081675,
		0.679636, -0.693170, 0.240021,
		39.413570, 35.852959, 25.794888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520988, 36.634216, 25.299410>,  <38.937824, 36.338177, 25.626873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520988, 36.634216, 25.299410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594509, 36.246445, 25.364429>,  <39.638622, 36.013783, 25.403442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594509, 36.246445, 25.364429>,  <39.520988, 36.634216, 25.299410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594509, 36.246445, 25.364429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330513, -0.094789, -0.939029,
		0.925731, 0.226320, 0.302987,
		0.183801, -0.969430, 0.162551,
		39.649651, 35.955616, 25.413195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163921, 36.508793, 24.995003>,  <39.520988, 36.634216, 25.299410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163921, 36.508793, 24.995003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000462, 36.146469, 25.039743>,  <39.902386, 35.929073, 25.066587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000462, 36.146469, 25.039743>,  <40.163921, 36.508793, 24.995003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000462, 36.146469, 25.039743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251741, -0.229664, -0.940149,
		0.877288, -0.356031, 0.321882,
		-0.408647, -0.905812, 0.111853,
		39.877869, 35.874725, 25.073299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607296, 36.058807, 24.656126>,  <40.163921, 36.508793, 24.995003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607296, 36.058807, 24.656126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275890, 35.836292, 24.681793>,  <40.077049, 35.702782, 24.697193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275890, 35.836292, 24.681793>,  <40.607296, 36.058807, 24.656126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275890, 35.836292, 24.681793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234789, -0.449122, -0.862069,
		0.508376, -0.699167, 0.502712,
		-0.828510, -0.556286, 0.064166,
		40.027336, 35.669407, 24.701042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729591, 35.375374, 24.524023>,  <40.607296, 36.058807, 24.656126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729591, 35.375374, 24.524023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337509, 35.416225, 24.456188>,  <40.102261, 35.440739, 24.415487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337509, 35.416225, 24.456188>,  <40.729591, 35.375374, 24.524023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337509, 35.416225, 24.456188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090069, -0.532776, -0.841449,
		-0.176291, -0.840071, 0.513033,
		-0.980209, 0.102132, -0.169588,
		40.043446, 35.446865, 24.405312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478325, 34.796371, 24.428389>,  <40.729591, 35.375374, 24.524023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478325, 34.796371, 24.428389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200714, 35.021015, 24.248198>,  <40.034149, 35.155800, 24.140083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200714, 35.021015, 24.248198>,  <40.478325, 34.796371, 24.428389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200714, 35.021015, 24.248198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020444, -0.610076, -0.792079,
		-0.719663, -0.558930, 0.411925,
		-0.694022, 0.561609, -0.450476,
		39.992508, 35.189499, 24.113054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196335, 34.289700, 23.967962>,  <40.478325, 34.796371, 24.428389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196335, 34.289700, 23.967962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061340, 34.635136, 23.818130>,  <39.980343, 34.842400, 23.728231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061340, 34.635136, 23.818130>,  <40.196335, 34.289700, 23.967962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061340, 34.635136, 23.818130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085741, -0.424472, -0.901372,
		-0.937418, -0.272082, 0.217298,
		-0.337485, 0.863594, -0.374579,
		39.960094, 34.894215, 23.705757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556278, 34.160336, 23.603758>,  <40.196335, 34.289700, 23.967962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556278, 34.160336, 23.603758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672394, 34.508133, 23.443903>,  <39.742062, 34.716812, 23.347990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672394, 34.508133, 23.443903>,  <39.556278, 34.160336, 23.603758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672394, 34.508133, 23.443903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006644, -0.419443, -0.907757,
		-0.956917, 0.260854, -0.127535,
		0.290286, 0.869496, -0.399639,
		39.759480, 34.768982, 23.324011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255608, 34.107628, 22.935081>,  <39.556278, 34.160336, 23.603758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255608, 34.107628, 22.935081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507668, 34.415047, 22.890816>,  <39.658905, 34.599499, 22.864256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507668, 34.415047, 22.890816>,  <39.255608, 34.107628, 22.935081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507668, 34.415047, 22.890816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101540, -0.222862, -0.969547,
		-0.769803, 0.599727, -0.218475,
		0.630153, 0.768544, -0.110664,
		39.696712, 34.645611, 22.857616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124271, 34.355579, 22.280153>,  <39.255608, 34.107628, 22.935081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124271, 34.355579, 22.280153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485653, 34.521931, 22.321753>,  <39.702484, 34.621742, 22.346712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485653, 34.521931, 22.321753>,  <39.124271, 34.355579, 22.280153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485653, 34.521931, 22.321753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161775, -0.106100, -0.981107,
		-0.396983, 0.903212, -0.163135,
		0.903456, 0.415874, 0.103997,
		39.756691, 34.646694, 22.352951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183250, 35.019493, 21.839521>,  <39.124271, 34.355579, 22.280153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183250, 35.019493, 21.839521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516457, 34.808907, 21.907541>,  <39.716381, 34.682556, 21.948353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516457, 34.808907, 21.907541>,  <39.183250, 35.019493, 21.839521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516457, 34.808907, 21.907541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173357, -0.043501, -0.983898,
		0.525387, 0.849082, 0.055030,
		0.833016, -0.526467, 0.170049,
		39.766361, 34.650967, 21.958555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617420, 35.434727, 21.603575>,  <39.183250, 35.019493, 21.839521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617420, 35.434727, 21.603575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716110, 35.047318, 21.590334>,  <39.775326, 34.814873, 21.582390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716110, 35.047318, 21.590334>,  <39.617420, 35.434727, 21.603575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716110, 35.047318, 21.590334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221496, 0.089615, -0.971035,
		0.943433, 0.232249, 0.236633,
		0.246728, -0.968519, -0.033104,
		39.790127, 34.756763, 21.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290741, 35.304081, 21.933388>,  <39.617420, 35.434727, 21.603575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290741, 35.304081, 21.933388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655056, 35.309189, 22.098459>,  <40.873646, 35.312252, 22.197502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655056, 35.309189, 22.098459>,  <40.290741, 35.304081, 21.933388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655056, 35.309189, 22.098459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269407, 0.739033, -0.617454,
		-0.312869, 0.673548, 0.669661,
		0.910787, 0.012771, 0.412679,
		40.928291, 35.313019, 22.222263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502254, 35.911255, 22.206045>,  <40.290741, 35.304081, 21.933388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502254, 35.911255, 22.206045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852982, 35.727734, 22.148502>,  <41.063419, 35.617622, 22.113977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852982, 35.727734, 22.148502>,  <40.502254, 35.911255, 22.206045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852982, 35.727734, 22.148502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361557, 0.826354, -0.431759,
		0.316966, 0.326562, 0.890444,
		0.876818, -0.458798, -0.143855,
		41.116028, 35.590096, 22.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.388153, 33.648918, 20.686001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748451, 33.821564, 20.705481>,  <32.964630, 33.925152, 20.717169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748451, 33.821564, 20.705481>,  <32.388153, 33.648918, 20.686001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748451, 33.821564, 20.705481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116878, -0.348831, 0.929869,
		0.418329, -0.831883, -0.364653,
		0.900744, 0.431611, 0.048698,
		33.018673, 33.951046, 20.720089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892212, 33.089615, 20.865595>,  <32.388153, 33.648918, 20.686001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892212, 33.089615, 20.865595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045147, 33.441208, 20.979589>,  <33.136909, 33.652164, 21.047985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045147, 33.441208, 20.979589>,  <32.892212, 33.089615, 20.865595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045147, 33.441208, 20.979589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001869, -0.307681, 0.951488,
		0.924021, -0.364321, -0.115995,
		0.382337, 0.878978, 0.284984,
		33.159847, 33.704903, 21.065084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469856, 32.955463, 21.438225>,  <32.892212, 33.089615, 20.865595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469856, 32.955463, 21.438225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.356392, 33.337353, 21.474072>,  <33.288311, 33.566486, 21.495581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.356392, 33.337353, 21.474072>,  <33.469856, 32.955463, 21.438225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356392, 33.337353, 21.474072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075235, -0.071011, 0.994634,
		0.955968, 0.288884, -0.051686,
		-0.283664, 0.954727, 0.089619,
		33.271294, 33.623772, 21.500957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999626, 33.291397, 21.785219>,  <33.469856, 32.955463, 21.438225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999626, 33.291397, 21.785219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.690895, 33.533974, 21.861656>,  <33.505657, 33.679520, 21.907518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.690895, 33.533974, 21.861656>,  <33.999626, 33.291397, 21.785219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690895, 33.533974, 21.861656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341783, 0.142273, 0.928947,
		0.536165, 0.782295, -0.317081,
		-0.771823, 0.606442, 0.191093,
		33.459347, 33.715908, 21.918983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231602, 33.815426, 22.327942>,  <33.999626, 33.291397, 21.785219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231602, 33.815426, 22.327942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.832687, 33.827423, 22.354849>,  <33.593338, 33.834621, 22.370993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.832687, 33.827423, 22.354849>,  <34.231602, 33.815426, 22.327942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832687, 33.827423, 22.354849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066631, -0.021774, 0.997540,
		0.031380, 0.999313, 0.019716,
		-0.997284, 0.029989, 0.067268,
		33.533501, 33.836418, 22.375029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159981, 34.288029, 22.869963>,  <34.231602, 33.815426, 22.327942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159981, 34.288029, 22.869963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819225, 34.082325, 22.830299>,  <33.614773, 33.958904, 22.806501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819225, 34.082325, 22.830299>,  <34.159981, 34.288029, 22.869963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819225, 34.082325, 22.830299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204049, 0.151529, 0.967162,
		-0.482345, 0.844144, -0.234019,
		-0.851884, -0.514258, -0.099157,
		33.563660, 33.928047, 22.800552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600395, 34.753922, 23.180429>,  <34.159981, 34.288029, 22.869963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600395, 34.753922, 23.180429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422958, 34.395744, 23.165373>,  <33.316498, 34.180840, 23.156338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422958, 34.395744, 23.165373>,  <33.600395, 34.753922, 23.180429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422958, 34.395744, 23.165373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443542, 0.182840, 0.877406,
		-0.778781, 0.405904, -0.478270,
		-0.443590, -0.895439, -0.037643,
		33.289883, 34.127113, 23.154079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023937, 34.909107, 23.426083>,  <33.600395, 34.753922, 23.180429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023937, 34.909107, 23.426083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.052189, 34.513374, 23.477049>,  <33.069141, 34.275936, 23.507629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.052189, 34.513374, 23.477049>,  <33.023937, 34.909107, 23.426083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052189, 34.513374, 23.477049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418810, 0.086520, 0.903942,
		-0.905322, -0.117210, -0.408231,
		0.070631, -0.989331, 0.127417,
		33.073380, 34.216576, 23.515274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429707, 34.615406, 23.854856>,  <33.023937, 34.909107, 23.426083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429707, 34.615406, 23.854856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.711906, 34.334404, 23.892288>,  <32.881226, 34.165802, 23.914747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.711906, 34.334404, 23.892288>,  <32.429707, 34.615406, 23.854856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711906, 34.334404, 23.892288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344270, -0.224293, 0.911686,
		-0.619479, -0.675406, -0.400091,
		0.705495, -0.702510, 0.093578,
		32.923553, 34.123650, 23.920362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149475, 33.940487, 24.093893>,  <32.429707, 34.615406, 23.854856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149475, 33.940487, 24.093893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537170, 33.952492, 24.191605>,  <32.769787, 33.959694, 24.250233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537170, 33.952492, 24.191605>,  <32.149475, 33.940487, 24.093893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537170, 33.952492, 24.191605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234480, -0.189010, 0.953569,
		0.074787, -0.981516, -0.176160,
		0.969240, 0.030009, 0.244281,
		32.827942, 33.961494, 24.264889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252056, 33.389896, 24.548145>,  <32.149475, 33.940487, 24.093893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252056, 33.389896, 24.548145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.580528, 33.606293, 24.620800>,  <32.777611, 33.736130, 24.664392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.580528, 33.606293, 24.620800>,  <32.252056, 33.389896, 24.548145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580528, 33.606293, 24.620800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076024, -0.211743, 0.974364,
		0.565584, -0.813936, -0.132750,
		0.821179, 0.540993, 0.181637,
		32.826881, 33.768589, 24.675291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472137, 33.120338, 25.195879>,  <32.252056, 33.389896, 24.548145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472137, 33.120338, 25.195879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.720951, 33.430687, 25.153742>,  <32.870239, 33.616898, 25.128460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.720951, 33.430687, 25.153742>,  <32.472137, 33.120338, 25.195879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720951, 33.430687, 25.153742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214980, -0.039865, 0.975805,
		0.752901, -0.629628, -0.191594,
		0.622032, 0.775873, -0.105343,
		32.907562, 33.663448, 25.122139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207054, 32.991238, 25.387337>,  <32.472137, 33.120338, 25.195879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207054, 32.991238, 25.387337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.132698, 33.381950, 25.429928>,  <33.088085, 33.616379, 25.455482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.132698, 33.381950, 25.429928>,  <33.207054, 32.991238, 25.387337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132698, 33.381950, 25.429928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293573, -0.048205, 0.954721,
		0.937688, 0.208734, -0.277796,
		-0.185892, 0.976784, 0.106479,
		33.076931, 33.674984, 25.461872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795673, 33.361614, 25.746767>,  <33.207054, 32.991238, 25.387337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795673, 33.361614, 25.746767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470459, 33.588661, 25.798578>,  <33.275330, 33.724892, 25.829664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470459, 33.588661, 25.798578>,  <33.795673, 33.361614, 25.746767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470459, 33.588661, 25.798578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205666, 0.071878, 0.975979,
		0.544677, 0.820146, -0.175180,
		-0.813037, 0.567622, 0.129526,
		33.226547, 33.758949, 25.837437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529819, 33.298920, 26.046341>,  <33.795673, 33.361614, 25.746767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529819, 33.298920, 26.046341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641273, 32.924168, 26.130842>,  <34.708145, 32.699318, 26.181543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641273, 32.924168, 26.130842>,  <34.529819, 33.298920, 26.046341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641273, 32.924168, 26.130842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030848, -0.211122, -0.976973,
		0.959902, 0.278733, -0.029924,
		0.278632, -0.936875, 0.211255,
		34.724865, 32.643105, 26.194220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041740, 33.087330, 25.426897>,  <34.529819, 33.298920, 26.046341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041740, 33.087330, 25.426897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.971569, 32.734459, 25.601702>,  <34.929466, 32.522736, 25.706585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.971569, 32.734459, 25.601702>,  <35.041740, 33.087330, 25.426897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971569, 32.734459, 25.601702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082450, -0.455502, -0.886408,
		0.981033, -0.119469, 0.152644,
		-0.175428, -0.882181, 0.437012,
		34.918941, 32.469803, 25.732805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634220, 32.736462, 25.310839>,  <35.041740, 33.087330, 25.426897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634220, 32.736462, 25.310839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341297, 32.469292, 25.363903>,  <35.165543, 32.308990, 25.395742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341297, 32.469292, 25.363903>,  <35.634220, 32.736462, 25.310839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341297, 32.469292, 25.363903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224139, -0.420376, -0.879230,
		0.643028, -0.614134, 0.457553,
		-0.732310, -0.667925, 0.132662,
		35.121605, 32.268913, 25.403702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912861, 32.110767, 24.992006>,  <35.634220, 32.736462, 25.310839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912861, 32.110767, 24.992006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524048, 32.026237, 25.032980>,  <35.290760, 31.975521, 25.057564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524048, 32.026237, 25.032980>,  <35.912861, 32.110767, 24.992006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524048, 32.026237, 25.032980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014602, -0.380955, -0.924478,
		0.234384, -0.900120, 0.367216,
		-0.972035, -0.211321, 0.102434,
		35.232437, 31.962841, 25.063709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833908, 31.470894, 24.686941>,  <35.912861, 32.110767, 24.992006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833908, 31.470894, 24.686941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467892, 31.632072, 24.679714>,  <35.248280, 31.728779, 24.675379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467892, 31.632072, 24.679714>,  <35.833908, 31.470894, 24.686941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467892, 31.632072, 24.679714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067022, -0.196059, -0.978299,
		-0.397744, -0.893977, 0.206409,
		-0.915045, 0.402947, -0.018065,
		35.193378, 31.752956, 24.674295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444187, 31.010357, 24.304497>,  <35.833908, 31.470894, 24.686941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444187, 31.010357, 24.304497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.253853, 31.361715, 24.286591>,  <35.139652, 31.572531, 24.275846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.253853, 31.361715, 24.286591>,  <35.444187, 31.010357, 24.304497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253853, 31.361715, 24.286591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003973, -0.053045, -0.998584,
		-0.879526, -0.474982, 0.028731,
		-0.475834, 0.878395, -0.044767,
		35.111103, 31.625235, 24.273161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969791, 30.868599, 23.792810>,  <35.444187, 31.010357, 24.304497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969791, 30.868599, 23.792810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.994335, 31.264986, 23.840508>,  <35.009060, 31.502819, 23.869125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.994335, 31.264986, 23.840508>,  <34.969791, 30.868599, 23.792810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994335, 31.264986, 23.840508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232820, 0.130383, -0.963740,
		-0.970582, 0.031373, 0.238717,
		0.061360, 0.990967, 0.119243,
		35.012745, 31.562277, 23.876280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402145, 31.136375, 23.392727>,  <34.969791, 30.868599, 23.792810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402145, 31.136375, 23.392727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653450, 31.441574, 23.453548>,  <34.804234, 31.624693, 23.490042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653450, 31.441574, 23.453548>,  <34.402145, 31.136375, 23.392727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653450, 31.441574, 23.453548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075996, 0.254694, -0.964031,
		-0.774279, 0.594111, 0.218000,
		0.628265, 0.762996, 0.152054,
		34.841930, 31.670473, 23.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207439, 31.663353, 22.889275>,  <34.402145, 31.136375, 23.392727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207439, 31.663353, 22.889275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577324, 31.777336, 22.990240>,  <34.799255, 31.845726, 23.050819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577324, 31.777336, 22.990240>,  <34.207439, 31.663353, 22.889275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577324, 31.777336, 22.990240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168091, 0.289282, -0.942370,
		-0.341556, 0.913846, 0.219602,
		0.924708, 0.284959, 0.252415,
		34.854736, 31.862823, 23.065964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443996, 32.396526, 22.606739>,  <34.207439, 31.663353, 22.889275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443996, 32.396526, 22.606739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.788895, 32.204155, 22.670288>,  <34.995834, 32.088730, 22.708418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.788895, 32.204155, 22.670288>,  <34.443996, 32.396526, 22.606739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788895, 32.204155, 22.670288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329484, 0.294367, -0.897100,
		0.384676, 0.825866, 0.412275,
		0.862244, -0.480930, 0.158874,
		35.047569, 32.059875, 22.717951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994843, 32.824177, 22.458406>,  <34.443996, 32.396526, 22.606739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994843, 32.824177, 22.458406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197189, 32.479187, 22.452337>,  <35.318600, 32.272194, 22.448696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197189, 32.479187, 22.452337>,  <34.994843, 32.824177, 22.458406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197189, 32.479187, 22.452337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270219, 0.175149, -0.946734,
		0.819192, 0.474825, 0.321660,
		0.505871, -0.862476, -0.015174,
		35.348949, 32.220444, 22.447784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669518, 32.977631, 22.275137>,  <34.994843, 32.824177, 22.458406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669518, 32.977631, 22.275137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582607, 32.602974, 22.165234>,  <35.530460, 32.378181, 22.099291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582607, 32.602974, 22.165234>,  <35.669518, 32.977631, 22.275137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582607, 32.602974, 22.165234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367434, 0.182301, -0.912008,
		0.904315, -0.299109, 0.304546,
		-0.217271, -0.936643, -0.274760,
		35.517426, 32.321980, 22.082806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315350, 32.637428, 21.966146>,  <35.669518, 32.977631, 22.275137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315350, 32.637428, 21.966146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995575, 32.449230, 21.816725>,  <35.803711, 32.336311, 21.727072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995575, 32.449230, 21.816725>,  <36.315350, 32.637428, 21.966146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995575, 32.449230, 21.816725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394148, 0.058495, -0.917184,
		0.453379, -0.880463, 0.138680,
		-0.799435, -0.470492, -0.373553,
		35.755745, 32.308083, 21.704659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616722, 32.226341, 21.386971>,  <36.315350, 32.637428, 21.966146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616722, 32.226341, 21.386971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222080, 32.185085, 21.336426>,  <35.985294, 32.160332, 21.306099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222080, 32.185085, 21.336426>,  <36.616722, 32.226341, 21.386971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222080, 32.185085, 21.336426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131611, -0.045748, -0.990245,
		0.096353, -0.993614, 0.058710,
		-0.986608, -0.103140, -0.126363,
		35.926098, 32.154144, 21.298517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025215, 31.664642, 21.409002>,  <36.616722, 32.226341, 21.386971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025215, 31.664642, 21.409002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394547, 31.800861, 21.338024>,  <37.616146, 31.882593, 21.295437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394547, 31.800861, 21.338024>,  <37.025215, 31.664642, 21.409002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394547, 31.800861, 21.338024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260539, -0.216107, 0.940966,
		0.282097, -0.915054, -0.288264,
		0.923331, 0.340548, -0.177444,
		37.671547, 31.903027, 21.284790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420582, 31.127819, 21.614655>,  <37.025215, 31.664642, 21.409002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420582, 31.127819, 21.614655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649849, 31.454554, 21.640776>,  <37.787407, 31.650595, 21.656448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649849, 31.454554, 21.640776>,  <37.420582, 31.127819, 21.614655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649849, 31.454554, 21.640776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228130, -0.235602, 0.944695,
		0.787046, -0.526566, -0.321383,
		0.573163, 0.816835, 0.065304,
		37.821796, 31.699604, 21.660366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103268, 30.883766, 21.939737>,  <37.420582, 31.127819, 21.614655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103268, 30.883766, 21.939737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.052711, 31.276451, 21.996683>,  <38.022377, 31.512062, 22.030851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.052711, 31.276451, 21.996683>,  <38.103268, 30.883766, 21.939737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052711, 31.276451, 21.996683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311371, -0.097002, 0.945325,
		0.941846, 0.163804, -0.293417,
		-0.126386, 0.981712, 0.142365,
		38.014797, 31.570965, 22.039392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598625, 30.993526, 22.467150>,  <38.103268, 30.883766, 21.939737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598625, 30.993526, 22.467150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348251, 31.305292, 22.477938>,  <38.198029, 31.492352, 22.484411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348251, 31.305292, 22.477938>,  <38.598625, 30.993526, 22.467150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348251, 31.305292, 22.477938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094749, 0.041671, 0.994629,
		0.774102, 0.625124, -0.099931,
		-0.625930, 0.779413, 0.026972,
		38.160473, 31.539116, 22.486029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899563, 31.608267, 22.850906>,  <38.598625, 30.993526, 22.467150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899563, 31.608267, 22.850906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509613, 31.690866, 22.884312>,  <38.275642, 31.740425, 22.904356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509613, 31.690866, 22.884312>,  <38.899563, 31.608267, 22.850906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509613, 31.690866, 22.884312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095431, 0.048412, 0.994258,
		0.201269, 0.977248, -0.066902,
		-0.974876, 0.206498, 0.083516,
		38.217152, 31.752815, 22.909367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788074, 32.126648, 23.353985>,  <38.899563, 31.608267, 22.850906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788074, 32.126648, 23.353985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427753, 31.957514, 23.314451>,  <38.211563, 31.856033, 23.290731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.427753, 31.957514, 23.314451>,  <38.788074, 32.126648, 23.353985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427753, 31.957514, 23.314451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087121, -0.046990, 0.995089,
		-0.425403, 0.904988, 0.005490,
		-0.900801, -0.422836, -0.098833,
		38.157513, 31.830664, 23.284801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371193, 32.489285, 23.760498>,  <38.788074, 32.126648, 23.353985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371193, 32.489285, 23.760498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122047, 32.176785, 23.744062>,  <37.972561, 31.989285, 23.734201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122047, 32.176785, 23.744062>,  <38.371193, 32.489285, 23.760498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122047, 32.176785, 23.744062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186000, 0.096865, 0.977763,
		-0.759897, 0.616657, -0.205646,
		-0.622864, -0.781250, -0.041091,
		37.935188, 31.942410, 23.731735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740520, 32.600651, 24.082451>,  <38.371193, 32.489285, 23.760498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740520, 32.600651, 24.082451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762932, 32.201279, 24.081800>,  <37.776379, 31.961657, 24.081409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762932, 32.201279, 24.081800>,  <37.740520, 32.600651, 24.082451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762932, 32.201279, 24.081800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140284, -0.009486, 0.990066,
		-0.988525, -0.055244, -0.140595,
		0.056029, -0.998428, -0.001628,
		37.779739, 31.901751, 24.081312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166237, 32.308918, 24.385696>,  <37.740520, 32.600651, 24.082451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166237, 32.308918, 24.385696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444225, 32.023964, 24.424728>,  <37.611019, 31.852991, 24.448147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.444225, 32.023964, 24.424728>,  <37.166237, 32.308918, 24.385696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444225, 32.023964, 24.424728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349094, -0.215648, 0.911937,
		-0.628609, -0.667834, -0.398559,
		0.694971, -0.712386, 0.097579,
		37.652718, 31.810247, 24.454002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871452, 31.886517, 24.842731>,  <37.166237, 32.308918, 24.385696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871452, 31.886517, 24.842731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258087, 31.786444, 24.865042>,  <37.490070, 31.726400, 24.878428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258087, 31.786444, 24.865042>,  <36.871452, 31.886517, 24.842731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258087, 31.786444, 24.865042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079828, -0.087042, 0.993001,
		-0.243577, -0.964278, -0.104106,
		0.966591, -0.250182, 0.055775,
		37.548065, 31.711390, 24.881775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923595, 31.360638, 25.353868>,  <36.871452, 31.886517, 24.842731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923595, 31.360638, 25.353868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302116, 31.485863, 25.321619>,  <37.529228, 31.560999, 25.302269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302116, 31.485863, 25.321619>,  <36.923595, 31.360638, 25.353868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302116, 31.485863, 25.321619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084533, 0.001091, 0.996420,
		0.312032, -0.949731, -0.025432,
		0.946304, 0.313065, -0.080624,
		37.586006, 31.579782, 25.297432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370163, 30.885838, 25.828293>,  <36.923595, 31.360638, 25.353868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370163, 30.885838, 25.828293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546822, 31.235434, 25.747213>,  <37.652817, 31.445192, 25.698565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546822, 31.235434, 25.747213>,  <37.370163, 30.885838, 25.828293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546822, 31.235434, 25.747213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048285, 0.202447, 0.978102,
		0.895889, -0.441761, 0.047209,
		0.441645, 0.873992, -0.202700,
		37.679314, 31.497631, 25.686403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911430, 30.926001, 26.232462>,  <37.370163, 30.885838, 25.828293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911430, 30.926001, 26.232462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874752, 31.309608, 26.125223>,  <37.852745, 31.539772, 26.060879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874752, 31.309608, 26.125223>,  <37.911430, 30.926001, 26.232462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874752, 31.309608, 26.125223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089168, 0.276059, 0.956996,
		0.991787, 0.063848, -0.110827,
		-0.091697, 0.959018, -0.268099,
		37.847244, 31.597313, 26.044794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456120, 31.256428, 26.417480>,  <37.911430, 30.926001, 26.232462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456120, 31.256428, 26.417480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149368, 31.513067, 26.411232>,  <37.965317, 31.667051, 26.407482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149368, 31.513067, 26.411232>,  <38.456120, 31.256428, 26.417480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149368, 31.513067, 26.411232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230035, 0.297512, 0.926591,
		0.599148, 0.706991, -0.375747,
		-0.766881, 0.641600, -0.015622,
		37.919304, 31.705547, 26.406546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.179985, 34.009293, 20.333565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.795998, 34.077026, 20.422825>,  <40.565605, 34.117664, 20.476381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.795998, 34.077026, 20.422825>,  <41.179985, 34.009293, 20.333565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795998, 34.077026, 20.422825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271798, -0.370287, -0.888264,
		-0.067781, -0.913354, 0.401486,
		-0.959965, 0.169330, 0.223149,
		40.508007, 34.127827, 20.489769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713139, 33.406456, 20.153559>,  <41.179985, 34.009293, 20.333565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713139, 33.406456, 20.153559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.490112, 33.738503, 20.155823>,  <40.356297, 33.937729, 20.157181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.490112, 33.738503, 20.155823>,  <40.713139, 33.406456, 20.153559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490112, 33.738503, 20.155823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514871, -0.340462, -0.786762,
		-0.651174, -0.441586, 0.617231,
		-0.557567, 0.830113, 0.005660,
		40.322842, 33.987537, 20.157520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080971, 33.179783, 19.939371>,  <40.713139, 33.406456, 20.153559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080971, 33.179783, 19.939371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.079735, 33.576477, 19.888054>,  <40.078995, 33.814491, 19.857264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.079735, 33.576477, 19.888054>,  <40.080971, 33.179783, 19.939371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079735, 33.576477, 19.888054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302736, -0.123200, -0.945078,
		-0.953070, 0.035918, 0.300613,
		-0.003090, 0.991732, -0.128292,
		40.078808, 33.873997, 19.849566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397869, 33.315331, 19.630953>,  <40.080971, 33.179783, 19.939371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397869, 33.315331, 19.630953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.645802, 33.622387, 19.565784>,  <39.794559, 33.806622, 19.526684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.645802, 33.622387, 19.565784>,  <39.397869, 33.315331, 19.630953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645802, 33.622387, 19.565784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128419, -0.105593, -0.986082,
		-0.774158, 0.632125, 0.033130,
		0.619829, 0.767638, -0.162923,
		39.831749, 33.852680, 19.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097145, 33.585442, 18.974903>,  <39.397869, 33.315331, 19.630953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097145, 33.585442, 18.974903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463310, 33.744606, 18.999187>,  <39.683010, 33.840103, 19.013758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463310, 33.744606, 18.999187>,  <39.097145, 33.585442, 18.974903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463310, 33.744606, 18.999187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051909, 0.032867, -0.998111,
		-0.399153, 0.916836, 0.009432,
		0.915414, 0.397909, 0.060711,
		39.737934, 33.863979, 19.017401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060585, 34.067181, 18.401720>,  <39.097145, 33.585442, 18.974903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060585, 34.067181, 18.401720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444664, 33.995808, 18.487677>,  <39.675114, 33.952984, 18.539249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444664, 33.995808, 18.487677>,  <39.060585, 34.067181, 18.401720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444664, 33.995808, 18.487677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208701, -0.052987, -0.976543,
		0.185636, 0.982524, -0.013639,
		0.960200, -0.178435, 0.214890,
		39.732723, 33.942276, 18.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362835, 34.433933, 17.939360>,  <39.060585, 34.067181, 18.401720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362835, 34.433933, 17.939360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663658, 34.216457, 18.088387>,  <39.844154, 34.085972, 18.177803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663658, 34.216457, 18.088387>,  <39.362835, 34.433933, 17.939360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663658, 34.216457, 18.088387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353735, -0.144003, -0.924194,
		0.556127, 0.826839, 0.084023,
		0.752060, -0.543691, 0.372566,
		39.889275, 34.053349, 18.200157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079758, 34.802135, 17.696577>,  <39.362835, 34.433933, 17.939360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079758, 34.802135, 17.696577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.136631, 34.411556, 17.761488>,  <40.170757, 34.177208, 17.800434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.136631, 34.411556, 17.761488>,  <40.079758, 34.802135, 17.696577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136631, 34.411556, 17.761488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345561, -0.104661, -0.932542,
		0.927561, 0.188673, 0.322540,
		0.142188, -0.976447, 0.162278,
		40.179287, 34.118622, 17.810171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706844, 34.539082, 17.387535>,  <40.079758, 34.802135, 17.696577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706844, 34.539082, 17.387535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493629, 34.206158, 17.448366>,  <40.365700, 34.006405, 17.484865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493629, 34.206158, 17.448366>,  <40.706844, 34.539082, 17.387535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493629, 34.206158, 17.448366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141274, -0.264773, -0.953906,
		0.834213, -0.486984, 0.258718,
		-0.533039, -0.832311, 0.152078,
		40.333717, 33.956463, 17.493990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125546, 33.873520, 17.389086>,  <40.706844, 34.539082, 17.387535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125546, 33.873520, 17.389086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759075, 33.735386, 17.307724>,  <40.539192, 33.652508, 17.258907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759075, 33.735386, 17.307724>,  <41.125546, 33.873520, 17.389086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759075, 33.735386, 17.307724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309371, -0.286720, -0.906687,
		0.254788, -0.893609, 0.369521,
		-0.916173, -0.345332, -0.203404,
		40.484222, 33.631786, 17.246702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260864, 33.241440, 17.049583>,  <41.125546, 33.873520, 17.389086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260864, 33.241440, 17.049583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.882942, 33.346249, 16.970913>,  <40.656189, 33.409134, 16.923710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.882942, 33.346249, 16.970913>,  <41.260864, 33.241440, 17.049583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882942, 33.346249, 16.970913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144427, -0.205730, -0.967892,
		-0.294078, -0.942876, 0.156531,
		-0.944806, 0.262028, -0.196677,
		40.599499, 33.424858, 16.911909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921032, 32.645943, 16.638166>,  <41.260864, 33.241440, 17.049583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921032, 32.645943, 16.638166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.720982, 32.989182, 16.591616>,  <40.600952, 33.195126, 16.563684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.720982, 32.989182, 16.591616>,  <40.921032, 32.645943, 16.638166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720982, 32.989182, 16.591616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024360, -0.148281, -0.988645,
		-0.865612, -0.491608, 0.095062,
		-0.500122, 0.858099, -0.116379,
		40.570946, 33.246613, 16.556702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342995, 32.488911, 16.369337>,  <40.921032, 32.645943, 16.638166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342995, 32.488911, 16.369337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.426949, 32.864456, 16.260170>,  <40.477322, 33.089783, 16.194670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.426949, 32.864456, 16.260170>,  <40.342995, 32.488911, 16.369337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426949, 32.864456, 16.260170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084644, -0.260641, -0.961718,
		-0.974056, 0.224947, 0.024766,
		0.209880, 0.938864, -0.272919,
		40.489914, 33.146114, 16.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742043, 32.760719, 15.849277>,  <40.342995, 32.488911, 16.369337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742043, 32.760719, 15.849277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124451, 32.877590, 15.839088>,  <40.353897, 32.947712, 15.832974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124451, 32.877590, 15.839088>,  <39.742043, 32.760719, 15.849277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124451, 32.877590, 15.839088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109412, -0.435885, -0.893327,
		-0.272114, 0.851256, -0.448685,
		0.956025, 0.292178, -0.025473,
		40.411259, 32.965244, 15.831447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963028, 32.642212, 15.826659>,  <39.742043, 32.760719, 15.849277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963028, 32.642212, 15.826659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.722580, 32.326519, 15.776426>,  <38.578312, 32.137104, 15.746286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.722580, 32.326519, 15.776426>,  <38.963028, 32.642212, 15.826659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722580, 32.326519, 15.776426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003606, -0.159820, 0.987140,
		-0.799151, 0.592935, 0.098917,
		-0.601119, -0.789231, -0.125582,
		38.542244, 32.089748, 15.738751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311939, 32.772911, 16.055967>,  <38.963028, 32.642212, 15.826659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311939, 32.772911, 16.055967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335415, 32.374317, 16.079885>,  <38.349499, 32.135162, 16.094236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335415, 32.374317, 16.079885>,  <38.311939, 32.772911, 16.055967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335415, 32.374317, 16.079885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003428, 0.059696, 0.998211,
		-0.998271, -0.058784, 0.000088,
		0.058684, -0.996484, 0.059794,
		38.353020, 32.075371, 16.097824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629421, 32.419968, 16.367149>,  <38.311939, 32.772911, 16.055967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629421, 32.419968, 16.367149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949631, 32.186996, 16.423641>,  <38.141754, 32.047215, 16.457537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949631, 32.186996, 16.423641>,  <37.629421, 32.419968, 16.367149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949631, 32.186996, 16.423641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240806, -0.096798, 0.965734,
		-0.548798, -0.807099, -0.217741,
		0.800521, -0.582427, 0.141232,
		38.189789, 32.012268, 16.466011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459522, 32.009827, 16.898521>,  <37.629421, 32.419968, 16.367149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459522, 32.009827, 16.898521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839787, 31.888027, 16.874744>,  <38.067944, 31.814949, 16.860477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839787, 31.888027, 16.874744>,  <37.459522, 32.009827, 16.898521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839787, 31.888027, 16.874744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025125, -0.266536, 0.963498,
		-0.309229, -0.914461, -0.261034,
		0.950656, -0.304500, -0.059445,
		38.124985, 31.796679, 16.856911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486172, 31.438766, 17.397589>,  <37.459522, 32.009827, 16.898521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486172, 31.438766, 17.397589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864277, 31.551060, 17.331045>,  <38.091141, 31.618435, 17.291119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864277, 31.551060, 17.331045>,  <37.486172, 31.438766, 17.397589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864277, 31.551060, 17.331045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248109, -0.287156, 0.925194,
		0.211960, -0.915823, -0.341089,
		0.945259, 0.280731, -0.166358,
		38.147854, 31.635279, 17.281137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937943, 30.851154, 17.548151>,  <37.486172, 31.438766, 17.397589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937943, 30.851154, 17.548151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.151649, 31.186575, 17.590824>,  <38.279877, 31.387827, 17.616428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.151649, 31.186575, 17.590824>,  <37.937943, 30.851154, 17.548151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151649, 31.186575, 17.590824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204942, -0.250934, 0.946060,
		0.820093, -0.483590, -0.305922,
		0.534272, 0.838554, 0.106681,
		38.311932, 31.438141, 17.622829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513706, 30.686369, 18.000292>,  <37.937943, 30.851154, 17.548151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513706, 30.686369, 18.000292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491821, 31.084608, 18.030722>,  <38.478691, 31.323551, 18.048979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491821, 31.084608, 18.030722>,  <38.513706, 30.686369, 18.000292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491821, 31.084608, 18.030722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005596, -0.076491, 0.997055,
		0.998487, 0.054124, 0.009756,
		-0.054710, 0.995600, 0.076073,
		38.475407, 31.383287, 18.053543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880367, 30.870043, 18.554571>,  <38.513706, 30.686369, 18.000292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880367, 30.870043, 18.554571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663910, 31.206377, 18.549589>,  <38.534035, 31.408178, 18.546600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663910, 31.206377, 18.549589>,  <38.880367, 30.870043, 18.554571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663910, 31.206377, 18.549589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139437, 0.104323, 0.984720,
		0.829287, 0.531142, -0.173697,
		-0.541147, 0.840836, -0.012453,
		38.501564, 31.458628, 18.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242458, 31.447535, 18.866419>,  <38.880367, 30.870043, 18.554571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242458, 31.447535, 18.866419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.857067, 31.552046, 18.889914>,  <38.625832, 31.614752, 18.904011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.857067, 31.552046, 18.889914>,  <39.242458, 31.447535, 18.866419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857067, 31.552046, 18.889914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154895, 0.364792, 0.918115,
		0.218457, 0.893678, -0.391939,
		-0.963475, 0.261278, 0.058735,
		38.568024, 31.630428, 18.907534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170330, 32.087532, 19.330757>,  <39.242458, 31.447535, 18.866419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170330, 32.087532, 19.330757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.811871, 31.911718, 19.355167>,  <38.596794, 31.806231, 19.369814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.811871, 31.911718, 19.355167>,  <39.170330, 32.087532, 19.330757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811871, 31.911718, 19.355167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113337, 0.359667, 0.926172,
		-0.429033, 0.823073, -0.372131,
		-0.896150, -0.439534, 0.061025,
		38.543026, 31.779858, 19.373474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761806, 32.574642, 19.726267>,  <39.170330, 32.087532, 19.330757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761806, 32.574642, 19.726267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527107, 32.251091, 19.711063>,  <38.386288, 32.056961, 19.701941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527107, 32.251091, 19.711063>,  <38.761806, 32.574642, 19.726267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527107, 32.251091, 19.711063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420232, 0.264036, 0.868153,
		-0.692195, 0.525357, -0.494839,
		-0.586746, -0.808879, -0.038008,
		38.351082, 32.008427, 19.699661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219627, 32.848309, 20.056450>,  <38.761806, 32.574642, 19.726267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219627, 32.848309, 20.056450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145447, 32.455879, 20.078730>,  <38.100937, 32.220421, 20.092098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145447, 32.455879, 20.078730>,  <38.219627, 32.848309, 20.056450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145447, 32.455879, 20.078730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453152, 0.135682, 0.881047,
		-0.871928, 0.138154, -0.469738,
		-0.185455, -0.981073, 0.055700,
		38.089809, 32.161556, 20.095440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474007, 32.650990, 20.298758>,  <38.219627, 32.848309, 20.056450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474007, 32.650990, 20.298758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732388, 32.356480, 20.379393>,  <37.887417, 32.179771, 20.427774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.732388, 32.356480, 20.379393>,  <37.474007, 32.650990, 20.298758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732388, 32.356480, 20.379393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199028, 0.092506, 0.975618,
		-0.736975, -0.670325, -0.086786,
		0.645953, -0.736279, 0.201588,
		37.926174, 32.135597, 20.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077141, 32.150547, 20.715340>,  <37.474007, 32.650990, 20.298758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077141, 32.150547, 20.715340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465427, 32.082664, 20.783354>,  <37.698399, 32.041935, 20.824163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465427, 32.082664, 20.783354>,  <37.077141, 32.150547, 20.715340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465427, 32.082664, 20.783354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173434, -0.005287, 0.984831,
		-0.166239, -0.985479, -0.034566,
		0.970713, -0.169713, 0.170036,
		37.756641, 32.031750, 20.834364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521317, 31.730209, 20.842291>,  <37.077141, 32.150547, 20.715340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521317, 31.730209, 20.842291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192562, 31.956532, 20.868711>,  <35.995308, 32.092323, 20.884563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192562, 31.956532, 20.868711>,  <36.521317, 31.730209, 20.842291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192562, 31.956532, 20.868711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005050, 0.108709, -0.994061,
		-0.569627, -0.817340, -0.086490,
		-0.821888, 0.565807, 0.066051,
		35.945995, 32.126274, 20.888527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157066, 31.481188, 20.218410>,  <36.521317, 31.730209, 20.842291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157066, 31.481188, 20.218410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971886, 31.814077, 20.340445>,  <35.860775, 32.013809, 20.413666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971886, 31.814077, 20.340445>,  <36.157066, 31.481188, 20.218410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971886, 31.814077, 20.340445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168242, 0.255432, -0.952076,
		-0.870269, -0.492096, 0.021762,
		-0.462954, 0.832224, 0.305086,
		35.833000, 32.063744, 20.431971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608662, 31.586304, 19.754791>,  <36.157066, 31.481188, 20.218410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608662, 31.586304, 19.754791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.612362, 31.952488, 19.915714>,  <35.614582, 32.172199, 20.012268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.612362, 31.952488, 19.915714>,  <35.608662, 31.586304, 19.754791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612362, 31.952488, 19.915714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345372, 0.380490, -0.857873,
		-0.938420, -0.131009, 0.319694,
		0.009251, 0.915458, 0.402306,
		35.615139, 32.227127, 20.036406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900951, 31.896379, 19.658169>,  <35.608662, 31.586304, 19.754791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900951, 31.896379, 19.658169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209839, 32.149609, 19.679707>,  <35.395172, 32.301548, 19.692629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209839, 32.149609, 19.679707>,  <34.900951, 31.896379, 19.658169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209839, 32.149609, 19.679707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278876, 0.413873, -0.866566,
		-0.570887, 0.654159, 0.496149,
		0.772215, 0.633075, 0.053846,
		35.441502, 32.339531, 19.695860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629658, 32.442120, 19.312723>,  <34.900951, 31.896379, 19.658169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629658, 32.442120, 19.312723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019165, 32.532467, 19.323694>,  <35.252869, 32.586674, 19.330276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019165, 32.532467, 19.323694>,  <34.629658, 32.442120, 19.312723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019165, 32.532467, 19.323694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054055, 0.346757, -0.936396,
		-0.221012, 0.910354, 0.349871,
		0.973772, 0.225867, 0.027429,
		35.311298, 32.600227, 19.331923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673344, 33.173664, 18.942997>,  <34.629658, 32.442120, 19.312723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673344, 33.173664, 18.942997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033817, 33.001049, 18.959221>,  <35.250103, 32.897480, 18.968956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033817, 33.001049, 18.959221>,  <34.673344, 33.173664, 18.942997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033817, 33.001049, 18.959221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111789, 0.140995, -0.983679,
		0.418776, 0.891008, 0.175303,
		0.901183, -0.431538, 0.040560,
		35.304173, 32.871586, 18.971388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071228, 33.631783, 18.573153>,  <34.673344, 33.173664, 18.942997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071228, 33.631783, 18.573153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237629, 33.268124, 18.581009>,  <35.337471, 33.049927, 18.585722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237629, 33.268124, 18.581009>,  <35.071228, 33.631783, 18.573153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237629, 33.268124, 18.581009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232947, 0.085665, -0.968709,
		0.879020, 0.407562, 0.247421,
		0.416004, -0.909151, 0.019639,
		35.362431, 32.995377, 18.586901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108894, 34.302307, 18.536249>,  <35.071228, 33.631783, 18.573153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108894, 34.302307, 18.536249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763889, 34.407478, 18.363302>,  <34.556885, 34.470581, 18.259535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763889, 34.407478, 18.363302>,  <35.108894, 34.302307, 18.536249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763889, 34.407478, 18.363302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454943, -0.028771, 0.890056,
		0.221582, 0.964386, 0.144433,
		-0.862513, 0.262929, -0.432365,
		34.505135, 34.486359, 18.233593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901855, 34.461464, 19.072535>,  <35.108894, 34.302307, 18.536249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901855, 34.461464, 19.072535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.576733, 34.474434, 18.839886>,  <34.381657, 34.482216, 18.700296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.576733, 34.474434, 18.839886>,  <34.901855, 34.461464, 19.072535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576733, 34.474434, 18.839886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582179, -0.079746, 0.809141,
		-0.020143, 0.996288, 0.083698,
		-0.812811, 0.032429, -0.581624,
		34.332890, 34.484161, 18.665398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570324, 34.977779, 19.413315>,  <34.901855, 34.461464, 19.072535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570324, 34.977779, 19.413315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.303802, 34.778591, 19.191298>,  <34.143890, 34.659081, 19.058086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.303802, 34.778591, 19.191298>,  <34.570324, 34.977779, 19.413315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303802, 34.778591, 19.191298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601031, -0.081934, 0.795015,
		-0.441368, 0.863317, -0.244701,
		-0.666300, -0.497967, -0.555043,
		34.103912, 34.629200, 19.024784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947170, 35.280552, 19.521914>,  <34.570324, 34.977779, 19.413315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947170, 35.280552, 19.521914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.819191, 34.924408, 19.392365>,  <33.742405, 34.710720, 19.314634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.819191, 34.924408, 19.392365>,  <33.947170, 35.280552, 19.521914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819191, 34.924408, 19.392365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583460, -0.084165, 0.807769,
		-0.746464, 0.447410, -0.492561,
		-0.319947, -0.890360, -0.323872,
		33.723206, 34.657299, 19.295202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247158, 35.300358, 19.649456>,  <33.947170, 35.280552, 19.521914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247158, 35.300358, 19.649456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311756, 34.908279, 19.603617>,  <33.350517, 34.673031, 19.576113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311756, 34.908279, 19.603617>,  <33.247158, 35.300358, 19.649456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311756, 34.908279, 19.603617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529255, -0.184036, 0.828263,
		-0.832951, -0.073109, -0.548495,
		0.161497, -0.980197, -0.114600,
		33.360207, 34.614220, 19.569237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617363, 34.890034, 19.942730>,  <33.247158, 35.300358, 19.649456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617363, 34.890034, 19.942730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923485, 34.634735, 19.909357>,  <33.107159, 34.481556, 19.889334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923485, 34.634735, 19.909357>,  <32.617363, 34.890034, 19.942730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923485, 34.634735, 19.909357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102837, -0.249189, 0.962979,
		-0.635405, -0.728389, -0.256340,
		0.765301, -0.638243, -0.083431,
		33.153076, 34.443264, 19.884329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325848, 34.360077, 20.302219>,  <32.617363, 34.890034, 19.942730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325848, 34.360077, 20.302219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724049, 34.322315, 20.305504>,  <32.962967, 34.299660, 20.307474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724049, 34.322315, 20.305504>,  <32.325848, 34.360077, 20.302219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724049, 34.322315, 20.305504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020021, -0.124836, 0.991975,
		-0.092609, -0.987677, -0.126164,
		0.995501, -0.094391, 0.008214,
		33.022697, 34.293995, 20.307968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.425869, 36.016628, 16.044430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.621227, 35.738964, 16.255939>,  <38.738441, 35.572365, 16.382845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.621227, 35.738964, 16.255939>,  <38.425869, 36.016628, 16.044430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621227, 35.738964, 16.255939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115037, 0.549455, 0.827566,
		-0.865004, -0.465012, 0.188500,
		0.488400, -0.694164, 0.528774,
		38.767746, 35.530716, 16.414572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958431, 35.907703, 16.674341>,  <38.425869, 36.016628, 16.044430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958431, 35.907703, 16.674341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296612, 35.717556, 16.771698>,  <38.499519, 35.603470, 16.830112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296612, 35.717556, 16.771698>,  <37.958431, 35.907703, 16.674341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296612, 35.717556, 16.771698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069771, 0.353525, 0.932819,
		-0.529474, -0.805636, 0.265721,
		0.845452, -0.475364, 0.243393,
		38.550247, 35.574947, 16.844715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812340, 35.453419, 17.283781>,  <37.958431, 35.907703, 16.674341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812340, 35.453419, 17.283781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.210815, 35.488190, 17.286394>,  <38.449902, 35.509052, 17.287962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.210815, 35.488190, 17.286394>,  <37.812340, 35.453419, 17.283781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210815, 35.488190, 17.286394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028693, 0.256211, 0.966195,
		0.082315, -0.962705, 0.257730,
		0.996193, 0.086928, 0.006533,
		38.509674, 35.514267, 17.288355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116959, 35.144985, 17.906363>,  <37.812340, 35.453419, 17.283781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116959, 35.144985, 17.906363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.369644, 35.422314, 17.767662>,  <38.521255, 35.588711, 17.684441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.369644, 35.422314, 17.767662>,  <38.116959, 35.144985, 17.906363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369644, 35.422314, 17.767662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024565, 0.429181, 0.902884,
		0.774809, -0.578886, 0.254090,
		0.631718, 0.693321, -0.346754,
		38.559158, 35.630310, 17.663635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608086, 35.219078, 18.334282>,  <38.116959, 35.144985, 17.906363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608086, 35.219078, 18.334282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634491, 35.570610, 18.145264>,  <38.650333, 35.781528, 18.031853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634491, 35.570610, 18.145264>,  <38.608086, 35.219078, 18.334282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634491, 35.570610, 18.145264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016748, 0.472537, 0.881152,
		0.997678, -0.066081, 0.016475,
		0.066013, 0.878830, -0.472546,
		38.654293, 35.834259, 18.003500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064529, 35.570553, 18.739378>,  <38.608086, 35.219078, 18.334282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064529, 35.570553, 18.739378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914608, 35.862030, 18.510107>,  <38.824654, 36.036915, 18.372545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914608, 35.862030, 18.510107>,  <39.064529, 35.570553, 18.739378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914608, 35.862030, 18.510107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170299, 0.661837, 0.730047,
		0.911328, 0.176014, -0.372156,
		-0.374806, 0.728691, -0.573176,
		38.802166, 36.080639, 18.338154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552105, 36.121132, 18.761799>,  <39.064529, 35.570553, 18.739378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552105, 36.121132, 18.761799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.196293, 36.280998, 18.673252>,  <38.982807, 36.376919, 18.620123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.196293, 36.280998, 18.673252>,  <39.552105, 36.121132, 18.761799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196293, 36.280998, 18.673252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073817, 0.603878, 0.793651,
		0.450878, 0.689635, -0.566669,
		-0.889528, 0.399669, -0.221368,
		38.929436, 36.400898, 18.606842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589146, 36.803986, 18.857962>,  <39.552105, 36.121132, 18.761799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589146, 36.803986, 18.857962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.189949, 36.786381, 18.876205>,  <38.950432, 36.775818, 18.887152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.189949, 36.786381, 18.876205>,  <39.589146, 36.803986, 18.857962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189949, 36.786381, 18.876205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023503, 0.411275, 0.911208,
		-0.058863, 0.910448, -0.409413,
		-0.997989, -0.044014, 0.045607,
		38.890553, 36.773178, 18.889887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248535, 37.425621, 19.041241>,  <39.589146, 36.803986, 18.857962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248535, 37.425621, 19.041241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966927, 37.162506, 19.148329>,  <38.797962, 37.004639, 19.212582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966927, 37.162506, 19.148329>,  <39.248535, 37.425621, 19.041241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966927, 37.162506, 19.148329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058498, 0.429407, 0.901214,
		-0.707766, 0.618812, -0.340791,
		-0.704021, -0.657785, 0.267720,
		38.755722, 36.965172, 19.228645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857445, 37.821308, 19.517904>,  <39.248535, 37.425621, 19.041241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857445, 37.821308, 19.517904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701046, 37.458637, 19.581223>,  <38.607204, 37.241035, 19.619213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701046, 37.458637, 19.581223>,  <38.857445, 37.821308, 19.517904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701046, 37.458637, 19.581223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189804, 0.247721, 0.950057,
		-0.900607, 0.341429, -0.268950,
		-0.391001, -0.906676, 0.158294,
		38.583744, 37.186634, 19.628712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176388, 37.904732, 19.793941>,  <38.857445, 37.821308, 19.517904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176388, 37.904732, 19.793941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.271774, 37.534836, 19.912594>,  <38.329006, 37.312897, 19.983786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.271774, 37.534836, 19.912594>,  <38.176388, 37.904732, 19.793941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271774, 37.534836, 19.912594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272618, 0.229417, 0.934370,
		-0.932101, -0.303684, -0.197392,
		0.238468, -0.924740, 0.296629,
		38.343315, 37.257416, 20.001583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670258, 37.749325, 20.229923>,  <38.176388, 37.904732, 19.793941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670258, 37.749325, 20.229923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.983131, 37.518894, 20.324846>,  <38.170856, 37.380634, 20.381800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.983131, 37.518894, 20.324846>,  <37.670258, 37.749325, 20.229923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983131, 37.518894, 20.324846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125449, 0.227463, 0.965672,
		-0.610282, -0.785107, 0.105650,
		0.782188, -0.576079, 0.237308,
		38.217789, 37.346069, 20.396038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065254, 37.228256, 20.036867>,  <37.670258, 37.749325, 20.229923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065254, 37.228256, 20.036867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.696274, 37.362522, 20.113188>,  <36.474884, 37.443081, 20.158979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.696274, 37.362522, 20.113188>,  <37.065254, 37.228256, 20.036867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696274, 37.362522, 20.113188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320747, -0.391100, -0.862648,
		-0.214939, -0.856953, 0.468436,
		-0.922455, 0.335667, 0.190802,
		36.419537, 37.463223, 20.170429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573563, 36.607910, 19.879593>,  <37.065254, 37.228256, 20.036867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573563, 36.607910, 19.879593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410954, 36.972603, 19.856003>,  <36.313389, 37.191418, 19.841848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410954, 36.972603, 19.856003>,  <36.573563, 36.607910, 19.879593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410954, 36.972603, 19.856003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217836, -0.159412, -0.962879,
		-0.887292, -0.378585, 0.263413,
		-0.406523, 0.911735, -0.058975,
		36.288998, 37.246124, 19.838310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954937, 36.621361, 19.518686>,  <36.573563, 36.607910, 19.879593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954937, 36.621361, 19.518686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.069820, 37.002995, 19.484678>,  <36.138748, 37.231976, 19.464273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.069820, 37.002995, 19.484678>,  <35.954937, 36.621361, 19.518686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069820, 37.002995, 19.484678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250342, -0.010909, -0.968096,
		-0.924576, 0.299327, 0.235716,
		0.287206, 0.954088, -0.085020,
		36.155983, 37.289223, 19.459173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372658, 37.023537, 19.159618>,  <35.954937, 36.621361, 19.518686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372658, 37.023537, 19.159618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.708881, 37.239029, 19.136892>,  <35.910618, 37.368324, 19.123257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.708881, 37.239029, 19.136892>,  <35.372658, 37.023537, 19.159618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708881, 37.239029, 19.136892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273467, 0.331457, -0.902969,
		-0.467624, 0.774537, 0.425935,
		0.840561, 0.538729, -0.056813,
		35.961048, 37.400646, 19.119848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145161, 37.677132, 18.829679>,  <35.372658, 37.023537, 19.159618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145161, 37.677132, 18.829679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.537941, 37.620846, 18.779125>,  <35.773609, 37.587074, 18.748793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.537941, 37.620846, 18.779125>,  <35.145161, 37.677132, 18.829679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537941, 37.620846, 18.779125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091078, 0.233848, -0.967998,
		0.165769, 0.962036, 0.216811,
		0.981950, -0.140717, -0.126385,
		35.832527, 37.578632, 18.741209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236389, 38.160305, 18.249935>,  <35.145161, 37.677132, 18.829679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236389, 38.160305, 18.249935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.555954, 37.919811, 18.256365>,  <35.747692, 37.775513, 18.260223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.555954, 37.919811, 18.256365>,  <35.236389, 38.160305, 18.249935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555954, 37.919811, 18.256365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043704, 0.031374, -0.998552,
		0.599861, 0.798455, 0.051341,
		0.798910, -0.601236, 0.016076,
		35.795628, 37.739441, 18.261189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762409, 38.508575, 18.027641>,  <35.236389, 38.160305, 18.249935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762409, 38.508575, 18.027641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888447, 38.132843, 17.973436>,  <35.964069, 37.907402, 17.940914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888447, 38.132843, 17.973436>,  <35.762409, 38.508575, 18.027641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888447, 38.132843, 17.973436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050432, 0.126010, -0.990746,
		0.947719, 0.319015, -0.007667,
		0.315097, -0.939335, -0.135510,
		35.982975, 37.851044, 17.932783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300514, 38.564651, 17.582363>,  <35.762409, 38.508575, 18.027641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300514, 38.564651, 17.582363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.206589, 38.179932, 17.526083>,  <36.150234, 37.949100, 17.492315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.206589, 38.179932, 17.526083>,  <36.300514, 38.564651, 17.582363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206589, 38.179932, 17.526083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162369, 0.103904, -0.981244,
		0.958384, -0.253254, 0.131770,
		-0.234812, -0.961804, -0.140701,
		36.136147, 37.891392, 17.483873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788197, 38.246014, 17.181377>,  <36.300514, 38.564651, 17.582363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788197, 38.246014, 17.181377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468662, 38.016659, 17.108612>,  <36.276943, 37.879047, 17.064953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468662, 38.016659, 17.108612>,  <36.788197, 38.246014, 17.181377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468662, 38.016659, 17.108612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231626, -0.014094, -0.972703,
		0.555169, -0.819165, 0.144069,
		-0.798835, -0.573384, -0.181915,
		36.229012, 37.844643, 17.054037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961300, 37.897106, 16.583220>,  <36.788197, 38.246014, 17.181377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961300, 37.897106, 16.583220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.581287, 37.772903, 16.570404>,  <36.353279, 37.698383, 16.562716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.581287, 37.772903, 16.570404>,  <36.961300, 37.897106, 16.583220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581287, 37.772903, 16.570404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125495, -0.285943, -0.949993,
		0.285819, -0.906544, 0.310622,
		-0.950031, -0.310508, -0.032039,
		36.296280, 37.679752, 16.560793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941467, 37.184349, 16.261366>,  <36.961300, 37.897106, 16.583220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941467, 37.184349, 16.261366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.579945, 37.348896, 16.214201>,  <36.363029, 37.447624, 16.185902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.579945, 37.348896, 16.214201>,  <36.941467, 37.184349, 16.261366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579945, 37.348896, 16.214201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007890, -0.259474, -0.965718,
		-0.427864, -0.873755, 0.231269,
		-0.903809, 0.411371, -0.117914,
		36.308804, 37.472305, 16.178827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563709, 36.634132, 15.868913>,  <36.941467, 37.184349, 16.261366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563709, 36.634132, 15.868913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.362949, 36.978439, 15.835023>,  <36.242493, 37.185024, 15.814690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.362949, 36.978439, 15.835023>,  <36.563709, 36.634132, 15.868913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362949, 36.978439, 15.835023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183829, -0.201875, -0.962005,
		-0.845166, -0.467253, 0.259555,
		-0.501897, 0.860768, -0.084723,
		36.212379, 37.236671, 15.809606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156891, 36.378311, 15.438764>,  <36.563709, 36.634132, 15.868913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156891, 36.378311, 15.438764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.173840, 36.777466, 15.419091>,  <36.184010, 37.016960, 15.407288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.173840, 36.777466, 15.419091>,  <36.156891, 36.378311, 15.438764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173840, 36.777466, 15.419091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122002, -0.043688, -0.991568,
		-0.991625, 0.048019, 0.119893,
		0.042376, 0.997891, -0.049181,
		36.186554, 37.076832, 15.404337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096001, 36.213726, 16.226366>,  <36.156891, 36.378311, 15.438764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096001, 36.213726, 16.226366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897236, 36.069386, 15.910679>,  <35.777977, 35.982780, 15.721267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897236, 36.069386, 15.910679>,  <36.096001, 36.213726, 16.226366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897236, 36.069386, 15.910679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619318, -0.489596, 0.613792,
		-0.607884, 0.793779, 0.019808,
		-0.496913, -0.360847, -0.789219,
		35.748161, 35.961132, 15.673913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381435, 36.351826, 16.225504>,  <36.096001, 36.213726, 16.226366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381435, 36.351826, 16.225504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430885, 36.003456, 16.035259>,  <35.460556, 35.794434, 15.921113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430885, 36.003456, 16.035259>,  <35.381435, 36.351826, 16.225504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430885, 36.003456, 16.035259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643797, -0.435119, 0.629441,
		-0.755144, 0.228385, -0.614489,
		0.123621, -0.870926, -0.475611,
		35.467972, 35.742180, 15.892576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744736, 36.082802, 16.260143>,  <35.381435, 36.351826, 16.225504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744736, 36.082802, 16.260143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945339, 35.760067, 16.135246>,  <35.065701, 35.566425, 16.060308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945339, 35.760067, 16.135246>,  <34.744736, 36.082802, 16.260143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945339, 35.760067, 16.135246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527051, -0.571137, 0.629301,
		-0.686078, -0.151034, -0.711678,
		0.501512, -0.806840, -0.312242,
		35.095795, 35.518017, 16.041574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231915, 35.600933, 16.085192>,  <34.744736, 36.082802, 16.260143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231915, 35.600933, 16.085192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.569237, 35.415390, 16.193769>,  <34.771629, 35.304066, 16.258915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.569237, 35.415390, 16.193769>,  <34.231915, 35.600933, 16.085192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569237, 35.415390, 16.193769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524557, -0.600463, 0.603559,
		-0.116972, -0.651370, -0.749690,
		0.843302, -0.463855, 0.271443,
		34.822227, 35.276234, 16.275202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080761, 34.869892, 16.228079>,  <34.231915, 35.600933, 16.085192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080761, 34.869892, 16.228079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.417549, 34.914917, 16.439142>,  <34.619621, 34.941933, 16.565781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.417549, 34.914917, 16.439142>,  <34.080761, 34.869892, 16.228079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417549, 34.914917, 16.439142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377803, -0.575193, 0.725546,
		0.385174, -0.810236, -0.441767,
		0.841966, 0.112560, 0.527659,
		34.670139, 34.948685, 16.597441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226406, 34.261543, 16.562437>,  <34.080761, 34.869892, 16.228079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226406, 34.261543, 16.562437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.477909, 34.504368, 16.756813>,  <34.628811, 34.650063, 16.873440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.477909, 34.504368, 16.756813>,  <34.226406, 34.261543, 16.562437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477909, 34.504368, 16.756813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270052, -0.415558, 0.868553,
		0.729203, -0.677338, -0.097347,
		0.628757, 0.607062, 0.485942,
		34.666534, 34.686485, 16.902596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670864, 33.857300, 17.070162>,  <34.226406, 34.261543, 16.562437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670864, 33.857300, 17.070162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660385, 34.238098, 17.192152>,  <34.654099, 34.466579, 17.265347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660385, 34.238098, 17.192152>,  <34.670864, 33.857300, 17.070162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660385, 34.238098, 17.192152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326276, -0.296517, 0.897564,
		0.944911, -0.075990, 0.318383,
		-0.026200, 0.951999, 0.304977,
		34.652527, 34.523697, 17.283646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045273, 33.862923, 17.782873>,  <34.670864, 33.857300, 17.070162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045273, 33.862923, 17.782873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.816898, 34.191166, 17.772827>,  <34.679874, 34.388111, 17.766800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.816898, 34.191166, 17.772827>,  <35.045273, 33.862923, 17.782873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816898, 34.191166, 17.772827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515832, -0.334755, 0.788578,
		0.638709, 0.463182, 0.614421,
		-0.570936, 0.820610, -0.025113,
		34.645618, 34.437347, 17.765293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689266, 33.841625, 18.121490>,  <35.045273, 33.862923, 17.782873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689266, 33.841625, 18.121490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.673721, 33.442432, 18.141582>,  <35.664394, 33.202915, 18.153637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.673721, 33.442432, 18.141582>,  <35.689266, 33.841625, 18.121490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673721, 33.442432, 18.141582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249475, -0.058366, -0.966621,
		0.967601, -0.025031, 0.251239,
		-0.038859, -0.997981, 0.050230,
		35.662064, 33.143040, 18.156652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352360, 33.566505, 17.957987>,  <35.689266, 33.841625, 18.121490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352360, 33.566505, 17.957987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079430, 33.287388, 17.870806>,  <35.915672, 33.119915, 17.818497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079430, 33.287388, 17.870806>,  <36.352360, 33.566505, 17.957987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079430, 33.287388, 17.870806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343548, -0.042902, -0.938155,
		0.645292, -0.715008, 0.269001,
		-0.682329, -0.697798, -0.217955,
		35.874729, 33.078049, 17.805420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768456, 33.063484, 17.627357>,  <36.352360, 33.566505, 17.957987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768456, 33.063484, 17.627357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.385624, 33.002346, 17.528854>,  <36.155926, 32.965664, 17.469751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.385624, 33.002346, 17.528854>,  <36.768456, 33.063484, 17.627357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385624, 33.002346, 17.528854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277149, -0.233967, -0.931906,
		0.084823, -0.960155, 0.266285,
		-0.957076, -0.152847, -0.246260,
		36.098503, 32.956493, 17.454977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891045, 32.537731, 17.195135>,  <36.768456, 33.063484, 17.627357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891045, 32.537731, 17.195135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.528179, 32.680977, 17.106766>,  <36.310459, 32.766926, 17.053745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.528179, 32.680977, 17.106766>,  <36.891045, 32.537731, 17.195135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528179, 32.680977, 17.106766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216873, -0.051989, -0.974815,
		-0.360585, -0.932228, -0.030504,
		-0.907163, 0.358119, -0.220921,
		36.256031, 32.788414, 17.040489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566296, 32.023155, 16.777725>,  <36.891045, 32.537731, 17.195135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566296, 32.023155, 16.777725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.411285, 32.384018, 16.701902>,  <36.318279, 32.600536, 16.656408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.411285, 32.384018, 16.701902>,  <36.566296, 32.023155, 16.777725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411285, 32.384018, 16.701902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128175, -0.150899, -0.980204,
		-0.912905, -0.404150, -0.057158,
		-0.387524, 0.902160, -0.189558,
		36.295029, 32.654667, 16.645035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919006, 31.977587, 16.366951>,  <36.566296, 32.023155, 16.777725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919006, 31.977587, 16.366951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059517, 32.344727, 16.293020>,  <36.143822, 32.565010, 16.248661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059517, 32.344727, 16.293020>,  <35.919006, 31.977587, 16.366951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059517, 32.344727, 16.293020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154593, -0.137838, -0.978316,
		-0.923422, 0.372228, 0.093474,
		0.351273, 0.917849, -0.184827,
		36.164898, 32.620083, 16.237572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792316, 31.899540, 15.716532>,  <35.919006, 31.977587, 16.366951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792316, 31.899540, 15.716532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995007, 32.241398, 15.761794>,  <36.116623, 32.446514, 15.788951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995007, 32.241398, 15.761794>,  <35.792316, 31.899540, 15.716532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995007, 32.241398, 15.761794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116565, 0.062127, -0.991238,
		-0.854188, 0.515479, -0.068141,
		0.506729, 0.854647, 0.113155,
		36.147026, 32.497791, 15.795740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501205, 32.420055, 15.213242>,  <35.792316, 31.899540, 15.716532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501205, 32.420055, 15.213242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.880848, 32.517483, 15.293116>,  <36.108631, 32.575939, 15.341040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.880848, 32.517483, 15.293116>,  <35.501205, 32.420055, 15.213242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880848, 32.517483, 15.293116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208852, -0.012134, -0.977872,
		-0.235758, 0.969807, -0.062387,
		0.949104, 0.243571, 0.199685,
		36.165581, 32.590553, 15.353022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663689, 32.833897, 14.631753>,  <35.501205, 32.420055, 15.213242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663689, 32.833897, 14.631753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.011459, 32.732441, 14.801348>,  <36.220123, 32.671566, 14.903105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.011459, 32.732441, 14.801348>,  <35.663689, 32.833897, 14.631753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011459, 32.732441, 14.801348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421806, -0.065770, -0.904297,
		0.257253, 0.965060, 0.049805,
		0.869425, -0.253641, 0.423988,
		36.272285, 32.656349, 14.928544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.731449, 32.145634, 31.135368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121197, 32.163925, 31.047260>,  <35.355045, 32.174900, 30.994396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121197, 32.163925, 31.047260>,  <34.731449, 32.145634, 31.135368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121197, 32.163925, 31.047260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212470, 0.508830, -0.834235,
		0.073930, 0.859652, 0.505503,
		0.974367, 0.045729, -0.220268,
		35.413506, 32.177643, 30.981180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786098, 32.836834, 30.812902>,  <34.731449, 32.145634, 31.135368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786098, 32.836834, 30.812902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095898, 32.619942, 30.682587>,  <35.281776, 32.489807, 30.604397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095898, 32.619942, 30.682587>,  <34.786098, 32.836834, 30.812902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095898, 32.619942, 30.682587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153107, 0.339025, -0.928235,
		0.613769, 0.768797, 0.179555,
		0.774497, -0.542230, -0.325792,
		35.328247, 32.457272, 30.584848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159061, 33.324421, 30.457592>,  <34.786098, 32.836834, 30.812902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159061, 33.324421, 30.457592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230206, 32.952381, 30.329037>,  <35.272892, 32.729156, 30.251904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230206, 32.952381, 30.329037>,  <35.159061, 33.324421, 30.457592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230206, 32.952381, 30.329037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121692, 0.303298, -0.945093,
		0.976502, 0.207205, -0.059241,
		0.177860, -0.930095, -0.321387,
		35.283562, 32.673351, 30.232620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520782, 33.457764, 29.907579>,  <35.159061, 33.324421, 30.457592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520782, 33.457764, 29.907579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448967, 33.068783, 29.848108>,  <35.405876, 32.835396, 29.812426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448967, 33.068783, 29.848108>,  <35.520782, 33.457764, 29.907579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448967, 33.068783, 29.848108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039761, 0.143835, -0.988803,
		0.982947, -0.183442, 0.012841,
		-0.179541, -0.972451, -0.148676,
		35.395103, 32.777046, 29.803505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042225, 33.167290, 29.363247>,  <35.520782, 33.457764, 29.907579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042225, 33.167290, 29.363247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711880, 32.942123, 29.376385>,  <35.513672, 32.807022, 29.384268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711880, 32.942123, 29.376385>,  <36.042225, 33.167290, 29.363247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711880, 32.942123, 29.376385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085699, 0.067734, -0.994016,
		0.557328, -0.823730, -0.104181,
		-0.825858, -0.562921, 0.032843,
		35.464123, 32.773247, 29.386238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141769, 32.499294, 28.986837>,  <36.042225, 33.167290, 29.363247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141769, 32.499294, 28.986837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744789, 32.542984, 29.009167>,  <35.506603, 32.569199, 29.022564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744789, 32.542984, 29.009167>,  <36.141769, 32.499294, 28.986837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744789, 32.542984, 29.009167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062796, -0.061480, -0.996131,
		-0.105371, -0.992114, 0.067874,
		-0.992448, 0.109225, 0.055823,
		35.447056, 32.575752, 29.025913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864529, 31.935244, 28.532614>,  <36.141769, 32.499294, 28.986837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864529, 31.935244, 28.532614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553799, 32.183300, 28.576370>,  <35.367359, 32.332134, 28.602625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553799, 32.183300, 28.576370>,  <35.864529, 31.935244, 28.532614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553799, 32.183300, 28.576370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334233, -0.258817, -0.906257,
		-0.533697, -0.740564, 0.408328,
		-0.776824, 0.620143, 0.109391,
		35.320751, 32.369343, 28.609188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271675, 31.591875, 28.304354>,  <35.864529, 31.935244, 28.532614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271675, 31.591875, 28.304354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189728, 31.979692, 28.250673>,  <35.140560, 32.212383, 28.218466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189728, 31.979692, 28.250673>,  <35.271675, 31.591875, 28.304354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189728, 31.979692, 28.250673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331467, -0.197731, -0.922514,
		-0.920955, -0.144514, 0.361881,
		-0.204872, 0.969545, -0.134200,
		35.128265, 32.270557, 28.210413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695770, 31.556181, 27.899426>,  <35.271675, 31.591875, 28.304354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695770, 31.556181, 27.899426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796406, 31.942379, 27.872538>,  <34.856789, 32.174099, 27.856405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796406, 31.942379, 27.872538>,  <34.695770, 31.556181, 27.899426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796406, 31.942379, 27.872538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295896, 0.010607, -0.955161,
		-0.921493, 0.260198, 0.288355,
		0.251589, 0.965497, -0.067217,
		34.871883, 32.232029, 27.852373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114429, 31.903746, 27.538837>,  <34.695770, 31.556181, 27.899426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114429, 31.903746, 27.538837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438343, 32.134022, 27.493530>,  <34.632690, 32.272186, 27.466345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438343, 32.134022, 27.493530>,  <34.114429, 31.903746, 27.538837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438343, 32.134022, 27.493530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200745, 0.090449, -0.975459,
		-0.551315, 0.812651, 0.188811,
		0.809786, 0.575688, -0.113269,
		34.681278, 32.306728, 27.459549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918816, 32.475857, 27.136475>,  <34.114429, 31.903746, 27.538837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918816, 32.475857, 27.136475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316605, 32.482758, 27.095037>,  <34.555279, 32.486897, 27.070175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316605, 32.482758, 27.095037>,  <33.918816, 32.475857, 27.136475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316605, 32.482758, 27.095037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104196, 0.038846, -0.993798,
		-0.013120, 0.999096, 0.040428,
		0.994470, 0.017251, -0.103592,
		34.614944, 32.487934, 27.063959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072830, 33.001842, 26.638704>,  <33.918816, 32.475857, 27.136475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072830, 33.001842, 26.638704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377846, 32.743092, 26.634996>,  <34.560856, 32.587841, 26.632771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377846, 32.743092, 26.634996>,  <34.072830, 33.001842, 26.638704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377846, 32.743092, 26.634996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071735, -0.070302, -0.994943,
		0.642955, 0.759347, -0.100011,
		0.762538, -0.646878, -0.009271,
		34.606606, 32.549026, 26.632215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019882, 33.647285, 26.420494>,  <34.072830, 33.001842, 26.638704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019882, 33.647285, 26.420494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633984, 33.729626, 26.354900>,  <33.402447, 33.779030, 26.315544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633984, 33.729626, 26.354900>,  <34.019882, 33.647285, 26.420494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633984, 33.729626, 26.354900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123011, 0.198147, 0.972423,
		0.232672, 0.958312, -0.165839,
		-0.964745, 0.205855, -0.163986,
		33.344559, 33.791382, 26.305704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961777, 34.219009, 26.921152>,  <34.019882, 33.647285, 26.420494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961777, 34.219009, 26.921152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584541, 34.112885, 26.840971>,  <33.358200, 34.049210, 26.792862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584541, 34.112885, 26.840971>,  <33.961777, 34.219009, 26.921152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584541, 34.112885, 26.840971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263169, 0.227029, 0.937657,
		-0.203266, 0.937051, -0.283933,
		-0.943093, -0.265316, -0.200455,
		33.301613, 34.033291, 26.780834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497948, 34.685490, 27.303366>,  <33.961777, 34.219009, 26.921152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497948, 34.685490, 27.303366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287693, 34.358948, 27.207636>,  <33.161541, 34.163021, 27.150198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287693, 34.358948, 27.207636>,  <33.497948, 34.685490, 27.303366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287693, 34.358948, 27.207636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347124, -0.051023, 0.936430,
		-0.776669, 0.575294, -0.256557,
		-0.525633, -0.816354, -0.239326,
		33.130005, 34.114040, 27.135838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860134, 34.859661, 27.490845>,  <33.497948, 34.685490, 27.303366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860134, 34.859661, 27.490845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858280, 34.459774, 27.481533>,  <32.857166, 34.219841, 27.475946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858280, 34.459774, 27.481533>,  <32.860134, 34.859661, 27.490845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858280, 34.459774, 27.481533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195891, -0.021920, 0.980381,
		-0.980615, 0.009107, -0.195735,
		-0.004638, -0.999718, -0.023279,
		32.856888, 34.159859, 27.474550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298443, 34.693710, 27.926357>,  <32.860134, 34.859661, 27.490845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298443, 34.693710, 27.926357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470371, 34.333652, 27.898069>,  <32.573528, 34.117619, 27.881096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470371, 34.333652, 27.898069>,  <32.298443, 34.693710, 27.926357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470371, 34.333652, 27.898069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174903, -0.159844, 0.971524,
		-0.885814, -0.405208, -0.226141,
		0.429817, -0.900143, -0.070719,
		32.599316, 34.063610, 27.876854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883062, 34.150578, 28.314753>,  <32.298443, 34.693710, 27.926357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883062, 34.150578, 28.314753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270397, 34.050747, 28.317114>,  <32.502796, 33.990849, 28.318531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270397, 34.050747, 28.317114>,  <31.883062, 34.150578, 28.314753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270397, 34.050747, 28.317114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050676, -0.173357, 0.983554,
		-0.244455, -0.952710, -0.180516,
		0.968336, -0.249582, 0.005902,
		32.560898, 33.975872, 28.318884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887873, 33.534428, 28.719765>,  <31.883062, 34.150578, 28.314753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887873, 33.534428, 28.719765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256508, 33.686768, 28.689745>,  <32.477688, 33.778172, 28.671732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256508, 33.686768, 28.689745>,  <31.887873, 33.534428, 28.719765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256508, 33.686768, 28.689745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235282, -0.394280, 0.888361,
		0.308738, -0.836361, -0.452970,
		0.921587, 0.380847, -0.075052,
		32.532986, 33.801022, 28.667229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253361, 32.998108, 29.109274>,  <31.887873, 33.534428, 28.719765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253361, 32.998108, 29.109274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502728, 33.309448, 29.079548>,  <32.652348, 33.496254, 29.061712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502728, 33.309448, 29.079548>,  <32.253361, 32.998108, 29.109274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502728, 33.309448, 29.079548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184213, -0.053840, 0.981410,
		0.759880, -0.625517, -0.176947,
		0.623416, 0.778350, -0.074317,
		32.689751, 33.542953, 29.057253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742340, 32.771992, 29.417540>,  <32.253361, 32.998108, 29.109274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742340, 32.771992, 29.417540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797241, 33.168106, 29.426516>,  <32.830181, 33.405773, 29.431902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797241, 33.168106, 29.426516>,  <32.742340, 32.771992, 29.417540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797241, 33.168106, 29.426516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035943, -0.017661, 0.999198,
		0.989884, -0.137949, 0.033169,
		0.137252, 0.990282, 0.022440,
		32.838417, 33.465191, 29.433249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443069, 32.957878, 29.805492>,  <32.742340, 32.771992, 29.417540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443069, 32.957878, 29.805492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190258, 33.267368, 29.822861>,  <33.038570, 33.453064, 29.833282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190258, 33.267368, 29.822861>,  <33.443069, 32.957878, 29.805492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190258, 33.267368, 29.822861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031266, -0.030525, 0.999045,
		0.774313, 0.632784, -0.004898,
		-0.632030, 0.773727, 0.043421,
		33.000648, 33.499485, 29.835886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761368, 33.334667, 30.263533>,  <33.443069, 32.957878, 29.805492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761368, 33.334667, 30.263533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393044, 33.490089, 30.250011>,  <33.172050, 33.583344, 30.241899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393044, 33.490089, 30.250011>,  <33.761368, 33.334667, 30.263533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393044, 33.490089, 30.250011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052861, -0.038461, 0.997861,
		0.386420, 0.920624, 0.055954,
		-0.920807, 0.388552, -0.033803,
		33.116802, 33.606655, 30.239870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807770, 33.822914, 30.724789>,  <33.761368, 33.334667, 30.263533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807770, 33.822914, 30.724789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412197, 33.779163, 30.684694>,  <33.174854, 33.752914, 30.660639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412197, 33.779163, 30.684694>,  <33.807770, 33.822914, 30.724789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412197, 33.779163, 30.684694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090355, -0.091824, 0.991667,
		-0.117668, 0.989750, 0.080925,
		-0.988934, -0.109375, -0.100234,
		33.115517, 33.746349, 30.654625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504620, 34.343475, 31.138544>,  <33.807770, 33.822914, 30.724789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504620, 34.343475, 31.138544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221855, 34.061890, 31.111122>,  <33.052197, 33.892937, 31.094669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221855, 34.061890, 31.111122>,  <33.504620, 34.343475, 31.138544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221855, 34.061890, 31.111122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116931, 0.020728, 0.992924,
		-0.697566, 0.709929, -0.096968,
		-0.706915, -0.703968, -0.068554,
		33.009781, 33.850700, 31.090555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931736, 34.648083, 31.642113>,  <33.504620, 34.343475, 31.138544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931736, 34.648083, 31.642113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867401, 34.260643, 31.566280>,  <32.828800, 34.028179, 31.520781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867401, 34.260643, 31.566280>,  <32.931736, 34.648083, 31.642113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867401, 34.260643, 31.566280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246938, -0.146480, 0.957896,
		-0.955590, 0.200884, -0.215625,
		-0.160841, -0.968602, -0.189581,
		32.819149, 33.970062, 31.509405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820038, 35.214371, 31.082510>,  <32.931736, 34.648083, 31.642113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820038, 35.214371, 31.082510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782585, 35.479195, 31.379940>,  <32.760113, 35.638088, 31.558399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782585, 35.479195, 31.379940>,  <32.820038, 35.214371, 31.082510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782585, 35.479195, 31.379940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751497, 0.442895, -0.488975,
		-0.653058, -0.604582, 0.456066,
		-0.093636, 0.662061, 0.743577,
		32.754494, 35.677814, 31.603014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991852, 35.517212, 30.352352>,  <32.820038, 35.214371, 31.082510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991852, 35.517212, 30.352352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351898, 35.671738, 30.432899>,  <33.567924, 35.764454, 30.481228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351898, 35.671738, 30.432899>,  <32.991852, 35.517212, 30.352352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351898, 35.671738, 30.432899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085523, 0.296541, -0.951183,
		-0.427171, 0.873398, 0.233883,
		0.900117, 0.386315, 0.201370,
		33.621933, 35.787632, 30.493311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955872, 36.072014, 29.838121>,  <32.991852, 35.517212, 30.352352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955872, 36.072014, 29.838121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332989, 36.032906, 29.965605>,  <33.559261, 36.009441, 30.042095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332989, 36.032906, 29.965605>,  <32.955872, 36.072014, 29.838121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332989, 36.032906, 29.965605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332123, 0.358072, -0.872627,
		-0.028804, 0.928561, 0.370061,
		0.942796, -0.097771, 0.318710,
		33.615829, 36.003574, 30.061218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274834, 36.706566, 29.857008>,  <32.955872, 36.072014, 29.838121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274834, 36.706566, 29.857008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560688, 36.428936, 29.822241>,  <33.732201, 36.262360, 29.801380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560688, 36.428936, 29.822241>,  <33.274834, 36.706566, 29.857008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560688, 36.428936, 29.822241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375155, 0.485185, -0.789844,
		0.590381, 0.531846, 0.607117,
		0.714640, -0.694072, -0.086919,
		33.775082, 36.220715, 29.796165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732430, 37.122658, 29.574690>,  <33.274834, 36.706566, 29.857008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732430, 37.122658, 29.574690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867977, 36.757648, 29.483072>,  <33.949306, 36.538643, 29.428101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867977, 36.757648, 29.483072>,  <33.732430, 37.122658, 29.574690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867977, 36.757648, 29.483072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343827, 0.346723, -0.872677,
		0.875758, 0.216970, 0.431245,
		0.338867, -0.912528, -0.229045,
		33.969639, 36.483891, 29.414358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438782, 37.243881, 29.251822>,  <33.732430, 37.122658, 29.574690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438782, 37.243881, 29.251822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316982, 36.874546, 29.158243>,  <34.243904, 36.652946, 29.102097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316982, 36.874546, 29.158243>,  <34.438782, 37.243881, 29.251822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316982, 36.874546, 29.158243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208798, 0.174935, -0.962186,
		0.929348, -0.341828, 0.139524,
		-0.304494, -0.923337, -0.233948,
		34.225636, 36.597546, 29.088058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977867, 36.915409, 28.913157>,  <34.438782, 37.243881, 29.251822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977867, 36.915409, 28.913157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651550, 36.722034, 28.786180>,  <34.455761, 36.606010, 28.709995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651550, 36.722034, 28.786180>,  <34.977867, 36.915409, 28.913157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651550, 36.722034, 28.786180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350401, 0.023510, -0.936305,
		0.460107, -0.875064, 0.150218,
		-0.815794, -0.483437, -0.317441,
		34.406811, 36.577003, 28.690948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145924, 36.481552, 28.410669>,  <34.977867, 36.915409, 28.913157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145924, 36.481552, 28.410669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754803, 36.484173, 28.326893>,  <34.520130, 36.485744, 28.276627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754803, 36.484173, 28.326893>,  <35.145924, 36.481552, 28.410669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754803, 36.484173, 28.326893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208382, -0.074744, -0.975187,
		-0.022043, -0.997181, 0.071719,
		-0.977799, 0.006551, -0.209442,
		34.461464, 36.486137, 28.264061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013374, 35.921440, 27.910023>,  <35.145924, 36.481552, 28.410669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013374, 35.921440, 27.910023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709072, 36.179428, 27.880993>,  <34.526489, 36.334221, 27.863575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709072, 36.179428, 27.880993>,  <35.013374, 35.921440, 27.910023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709072, 36.179428, 27.880993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019614, -0.134612, -0.990704,
		-0.648744, -0.752259, 0.115057,
		-0.760754, 0.644970, -0.072574,
		34.480846, 36.372917, 27.859221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592815, 35.753395, 27.372046>,  <35.013374, 35.921440, 27.910023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592815, 35.753395, 27.372046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458714, 36.126759, 27.423187>,  <34.378254, 36.350777, 27.453873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458714, 36.126759, 27.423187>,  <34.592815, 35.753395, 27.372046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458714, 36.126759, 27.423187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066069, 0.158666, -0.985119,
		-0.939808, -0.321820, -0.114863,
		-0.335256, 0.933411, 0.127853,
		34.358135, 36.406780, 27.461544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108482, 35.778008, 26.795158>,  <34.592815, 35.753395, 27.372046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108482, 35.778008, 26.795158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210762, 36.147774, 26.908344>,  <34.272129, 36.369633, 26.976255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210762, 36.147774, 26.908344>,  <34.108482, 35.778008, 26.795158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210762, 36.147774, 26.908344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009380, 0.295054, -0.955435,
		-0.966710, 0.241651, 0.084116,
		0.255701, 0.924418, 0.282965,
		34.287472, 36.425098, 26.993235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617195, 36.355339, 26.547529>,  <34.108482, 35.778008, 26.795158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617195, 36.355339, 26.547529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986137, 36.506374, 26.580254>,  <34.207500, 36.596996, 26.599888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986137, 36.506374, 26.580254>,  <33.617195, 36.355339, 26.547529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986137, 36.506374, 26.580254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102657, 0.443656, -0.890298,
		-0.372464, 0.812770, 0.447969,
		0.922351, 0.377591, 0.081809,
		34.262844, 36.619652, 26.604795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559776, 37.056393, 26.351547>,  <33.617195, 36.355339, 26.547529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559776, 37.056393, 26.351547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934467, 36.924416, 26.304777>,  <34.159283, 36.845230, 26.276714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934467, 36.924416, 26.304777>,  <33.559776, 37.056393, 26.351547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934467, 36.924416, 26.304777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028766, 0.405453, -0.913663,
		0.348865, 0.852494, 0.389291,
		0.936731, -0.329944, -0.116925,
		34.215488, 36.825432, 26.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730576, 37.510292, 25.853462>,  <33.559776, 37.056393, 26.351547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730576, 37.510292, 25.853462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046547, 37.266872, 25.823318>,  <34.236130, 37.120823, 25.805231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046547, 37.266872, 25.823318>,  <33.730576, 37.510292, 25.853462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046547, 37.266872, 25.823318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103971, 0.254042, -0.961589,
		0.604315, 0.751755, 0.263947,
		0.789933, -0.608545, -0.075361,
		34.283527, 37.084309, 25.800711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222488, 37.958572, 25.572001>,  <33.730576, 37.510292, 25.853462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222488, 37.958572, 25.572001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377907, 37.594021, 25.517721>,  <34.471157, 37.375290, 25.485153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377907, 37.594021, 25.517721>,  <34.222488, 37.958572, 25.572001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377907, 37.594021, 25.517721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229392, 0.238307, -0.943710,
		0.892417, 0.335551, 0.301658,
		0.388551, -0.911381, -0.135697,
		34.494473, 37.320606, 25.477013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962719, 38.099110, 25.386013>,  <34.222488, 37.958572, 25.572001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962719, 38.099110, 25.386013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847290, 37.737240, 25.260603>,  <34.778034, 37.520119, 25.185356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847290, 37.737240, 25.260603>,  <34.962719, 38.099110, 25.386013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847290, 37.737240, 25.260603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230381, 0.252229, -0.939843,
		0.929329, -0.343440, 0.135633,
		-0.288569, -0.904671, -0.313526,
		34.760719, 37.465839, 25.166546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502316, 37.845242, 24.990473>,  <34.962719, 38.099110, 25.386013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502316, 37.845242, 24.990473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183926, 37.631290, 24.877104>,  <34.992893, 37.502918, 24.809082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183926, 37.631290, 24.877104>,  <35.502316, 37.845242, 24.990473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183926, 37.631290, 24.877104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130733, 0.305263, -0.943252,
		0.591045, -0.787857, -0.173054,
		-0.795974, -0.534881, -0.283423,
		34.945133, 37.470825, 24.792076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795010, 37.389309, 24.524097>,  <35.502316, 37.845242, 24.990473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795010, 37.389309, 24.524097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402714, 37.416416, 24.450813>,  <35.167336, 37.432678, 24.406843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402714, 37.416416, 24.450813>,  <35.795010, 37.389309, 24.524097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402714, 37.416416, 24.450813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195343, 0.341037, -0.919530,
		0.000171, -0.937604, -0.347704,
		-0.980735, 0.067764, -0.183213,
		35.108494, 37.436745, 24.395849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789127, 37.145496, 23.868238>,  <35.795010, 37.389309, 24.524097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789127, 37.145496, 23.868238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406162, 37.254150, 23.907391>,  <35.176384, 37.319344, 23.930882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406162, 37.254150, 23.907391>,  <35.789127, 37.145496, 23.868238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406162, 37.254150, 23.907391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076330, 0.088819, -0.993119,
		-0.278458, -0.958293, -0.064302,
		-0.957411, 0.271634, 0.097879,
		35.118938, 37.335640, 23.936754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547890, 36.769646, 23.340569>,  <35.789127, 37.145496, 23.868238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547890, 36.769646, 23.340569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284508, 37.066406, 23.391186>,  <35.126476, 37.244465, 23.421556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284508, 37.066406, 23.391186>,  <35.547890, 36.769646, 23.340569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284508, 37.066406, 23.391186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044765, 0.206448, -0.977433,
		-0.751285, -0.637933, -0.169149,
		-0.658458, 0.741903, 0.126544,
		35.086971, 37.288979, 23.429150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963692, 36.694534, 22.849533>,  <35.547890, 36.769646, 23.340569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963692, 36.694534, 22.849533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987732, 37.077053, 22.963993>,  <35.002155, 37.306564, 23.032669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987732, 37.077053, 22.963993>,  <34.963692, 36.694534, 22.849533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987732, 37.077053, 22.963993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089373, 0.280360, -0.955725,
		-0.994183, 0.083011, -0.068618,
		0.060098, 0.956299, 0.286149,
		35.005760, 37.363941, 23.049837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579636, 37.047550, 22.407154>,  <34.963692, 36.694534, 22.849533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579636, 37.047550, 22.407154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826225, 37.312714, 22.577101>,  <34.974178, 37.471813, 22.679070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826225, 37.312714, 22.577101>,  <34.579636, 37.047550, 22.407154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826225, 37.312714, 22.577101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248070, 0.348595, -0.903849,
		-0.747278, 0.662593, 0.050450,
		0.616471, 0.662911, 0.424867,
		35.011166, 37.511585, 22.704561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493099, 37.666698, 21.946735>,  <34.579636, 37.047550, 22.407154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493099, 37.666698, 21.946735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833046, 37.702667, 22.154444>,  <35.037014, 37.724247, 22.279068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833046, 37.702667, 22.154444>,  <34.493099, 37.666698, 21.946735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833046, 37.702667, 22.154444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508620, 0.117983, -0.852869,
		-0.137956, 0.988936, 0.054534,
		0.849867, 0.089921, 0.519269,
		35.088005, 37.729645, 22.310225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833324, 38.094643, 21.548449>,  <34.493099, 37.666698, 21.946735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833324, 38.094643, 21.548449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124893, 37.964626, 21.789455>,  <35.299835, 37.886616, 21.934059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124893, 37.964626, 21.789455>,  <34.833324, 38.094643, 21.548449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124893, 37.964626, 21.789455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614180, -0.078313, -0.785271,
		0.302428, 0.942453, 0.142548,
		0.728917, -0.325038, 0.602519,
		35.343567, 37.867115, 21.970211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304474, 38.516788, 21.509413>,  <34.833324, 38.094643, 21.548449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304474, 38.516788, 21.509413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530972, 38.220787, 21.654608>,  <35.666870, 38.043186, 21.741724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530972, 38.220787, 21.654608>,  <35.304474, 38.516788, 21.509413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530972, 38.220787, 21.654608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611694, 0.082113, -0.786822,
		0.552446, 0.667570, 0.499153,
		0.566245, -0.740005, 0.362985,
		35.700844, 37.998787, 21.763504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058014, 38.710911, 21.549978>,  <35.304474, 38.516788, 21.509413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058014, 38.710911, 21.549978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039539, 38.314121, 21.502909>,  <36.028454, 38.076046, 21.474667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039539, 38.314121, 21.502909>,  <36.058014, 38.710911, 21.549978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039539, 38.314121, 21.502909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435113, 0.086056, -0.896254,
		0.899190, -0.092599, 0.427648,
		-0.046191, -0.991978, -0.117672,
		36.025681, 38.016529, 21.467607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662868, 38.530590, 21.283894>,  <36.058014, 38.710911, 21.549978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662868, 38.530590, 21.283894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426281, 38.225716, 21.178637>,  <36.284328, 38.042789, 21.115482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426281, 38.225716, 21.178637>,  <36.662868, 38.530590, 21.283894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426281, 38.225716, 21.178637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533082, -0.124768, -0.836813,
		0.604974, -0.635222, 0.480102,
		-0.591464, -0.762184, -0.263144,
		36.248840, 37.997059, 21.099693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109276, 38.054066, 20.818613>,  <36.662868, 38.530590, 21.283894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109276, 38.054066, 20.818613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726055, 37.949299, 20.772068>,  <36.496124, 37.886440, 20.744141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726055, 37.949299, 20.772068>,  <37.109276, 38.054066, 20.818613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726055, 37.949299, 20.772068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181170, -0.238849, -0.954007,
		0.222079, -0.935067, 0.276281,
		-0.958049, -0.261918, -0.116363,
		36.438641, 37.870724, 20.737160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607422, 37.452003, 20.945202>,  <37.109276, 38.054066, 20.818613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607422, 37.452003, 20.945202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998486, 37.379223, 20.903095>,  <38.233124, 37.335552, 20.877832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998486, 37.379223, 20.903095>,  <37.607422, 37.452003, 20.945202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998486, 37.379223, 20.903095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076921, -0.156369, 0.984699,
		-0.195636, -0.970793, -0.138878,
		0.977655, -0.181959, -0.105266,
		38.291782, 37.324638, 20.871515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660942, 36.791550, 21.289097>,  <37.607422, 37.452003, 20.945202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660942, 36.791550, 21.289097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018116, 36.967712, 21.251764>,  <38.232422, 37.073410, 21.229364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018116, 36.967712, 21.251764>,  <37.660942, 36.791550, 21.289097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018116, 36.967712, 21.251764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141772, -0.078328, 0.986795,
		0.427278, -0.894377, -0.132379,
		0.892936, 0.440403, -0.093330,
		38.285995, 37.099834, 21.223764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131992, 36.416943, 21.735657>,  <37.660942, 36.791550, 21.289097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131992, 36.416943, 21.735657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289505, 36.774845, 21.651417>,  <38.384014, 36.989586, 21.600872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289505, 36.774845, 21.651417>,  <38.131992, 36.416943, 21.735657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289505, 36.774845, 21.651417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265161, 0.108802, 0.958046,
		0.880127, -0.433106, -0.194409,
		0.393784, 0.894752, -0.210602,
		38.407639, 37.043270, 21.588236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725185, 36.360062, 22.111099>,  <38.131992, 36.416943, 21.735657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725185, 36.360062, 22.111099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655109, 36.745861, 22.032061>,  <38.613064, 36.977341, 21.984638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655109, 36.745861, 22.032061>,  <38.725185, 36.360062, 22.111099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655109, 36.745861, 22.032061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296556, 0.243076, 0.923563,
		0.938809, 0.103205, -0.328614,
		-0.175194, 0.964501, -0.197596,
		38.602551, 37.035210, 21.972782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310047, 36.851620, 22.403244>,  <38.725185, 36.360062, 22.111099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310047, 36.851620, 22.403244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995724, 37.094635, 22.356936>,  <38.807129, 37.240444, 22.329151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995724, 37.094635, 22.356936>,  <39.310047, 36.851620, 22.403244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995724, 37.094635, 22.356936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165622, 0.387065, 0.907056,
		0.595884, 0.693596, -0.404780,
		-0.785806, 0.607541, -0.115771,
		38.759983, 37.276897, 22.322205>
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
