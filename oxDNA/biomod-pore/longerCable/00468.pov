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
	<24.368677, 35.253326, 35.325897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312088, 35.260742, 34.929989>,  <24.278133, 35.265194, 34.692444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312088, 35.260742, 34.929989>,  <24.368677, 35.253326, 35.325897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312088, 35.260742, 34.929989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181885, -0.982317, -0.044402,
		-0.973089, -0.186306, 0.135600,
		-0.141475, 0.018544, -0.989768,
		24.269646, 35.266304, 34.633057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959602, 34.783321, 35.377319>,  <24.368677, 35.253326, 35.325897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959602, 34.783321, 35.377319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240509, 35.062176, 35.319607>,  <25.409054, 35.229488, 35.284977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240509, 35.062176, 35.319607>,  <24.959602, 34.783321, 35.377319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240509, 35.062176, 35.319607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393372, 0.211069, -0.894823,
		-0.593363, 0.685162, 0.422462,
		0.702267, 0.697139, -0.144283,
		25.451189, 35.271317, 35.276321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225271, 34.527580, 34.737743>,  <24.959602, 34.783321, 35.377319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225271, 34.527580, 34.737743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248943, 34.235836, 34.465118>,  <25.263147, 34.060787, 34.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248943, 34.235836, 34.465118>,  <25.225271, 34.527580, 34.737743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248943, 34.235836, 34.465118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657543, 0.542196, -0.523126,
		0.751089, -0.417197, 0.511675,
		0.059181, -0.729363, -0.681563,
		25.266697, 34.017029, 34.260651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004276, 34.259552, 34.594685>,  <25.225271, 34.527580, 34.737743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004276, 34.259552, 34.594685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752964, 34.262352, 34.283501>,  <25.602177, 34.264034, 34.096790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752964, 34.262352, 34.283501>,  <26.004276, 34.259552, 34.594685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752964, 34.262352, 34.283501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637623, 0.577577, -0.509747,
		0.445759, -0.816307, -0.367346,
		-0.628280, 0.007004, -0.777956,
		25.564480, 34.264454, 34.050114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320658, 34.680973, 34.253498>,  <26.004276, 34.259552, 34.594685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320658, 34.680973, 34.253498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011812, 34.638748, 34.002834>,  <25.826504, 34.613415, 33.852436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011812, 34.638748, 34.002834>,  <26.320658, 34.680973, 34.253498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011812, 34.638748, 34.002834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453976, 0.598416, -0.660154,
		0.444685, -0.794201, -0.414125,
		-0.772115, -0.105558, -0.626655,
		25.780178, 34.607082, 33.814838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791260, 35.314728, 34.323063>,  <26.320658, 34.680973, 34.253498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791260, 35.314728, 34.323063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056210, 35.576462, 34.468998>,  <27.215179, 35.733501, 34.556561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056210, 35.576462, 34.468998>,  <26.791260, 35.314728, 34.323063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056210, 35.576462, 34.468998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730035, 0.454373, 0.510485,
		0.168256, -0.604476, 0.778652,
		0.662374, 0.654335, 0.364837,
		27.254921, 35.772762, 34.578449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749794, 35.405231, 35.057426>,  <26.791260, 35.314728, 34.323063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749794, 35.405231, 35.057426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929668, 35.734013, 34.917610>,  <27.037594, 35.931282, 34.833721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929668, 35.734013, 34.917610>,  <26.749794, 35.405231, 35.057426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929668, 35.734013, 34.917610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620816, 0.568986, 0.539298,
		0.642160, -0.025515, 0.766146,
		0.449687, 0.821951, -0.349540,
		27.064575, 35.980598, 34.812748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925882, 35.835823, 35.625408>,  <26.749794, 35.405231, 35.057426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925882, 35.835823, 35.625408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845461, 36.024559, 35.282024>,  <26.797207, 36.137802, 35.075996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845461, 36.024559, 35.282024>,  <26.925882, 35.835823, 35.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845461, 36.024559, 35.282024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776370, 0.457646, 0.433369,
		0.597349, 0.753610, 0.274310,
		-0.201055, 0.471839, -0.858455,
		26.785145, 36.166111, 35.024487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853693, 36.536053, 35.763409>,  <26.925882, 35.835823, 35.625408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853693, 36.536053, 35.763409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637018, 36.510124, 35.428177>,  <26.507013, 36.494568, 35.227039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637018, 36.510124, 35.428177>,  <26.853693, 36.536053, 35.763409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637018, 36.510124, 35.428177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728898, 0.532813, 0.429906,
		0.418671, 0.843747, -0.335867,
		-0.541686, -0.064824, -0.838078,
		26.474512, 36.490677, 35.176754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642019, 37.161358, 35.640274>,  <26.853693, 36.536053, 35.763409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642019, 37.161358, 35.640274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383947, 36.931084, 35.439342>,  <26.229105, 36.792919, 35.318783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383947, 36.931084, 35.439342>,  <26.642019, 37.161358, 35.640274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383947, 36.931084, 35.439342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763244, 0.515483, 0.389533,
		0.034693, 0.634717, -0.771966,
		-0.645179, -0.575684, -0.502327,
		26.190393, 36.758377, 35.288643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079140, 37.638363, 35.534145>,  <26.642019, 37.161358, 35.640274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079140, 37.638363, 35.534145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957626, 37.267006, 35.448536>,  <25.884718, 37.044193, 35.397171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957626, 37.267006, 35.448536>,  <26.079140, 37.638363, 35.534145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957626, 37.267006, 35.448536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876791, 0.184530, 0.444056,
		-0.372765, 0.322547, -0.870063,
		-0.303782, -0.928392, -0.214020,
		25.866491, 36.988487, 35.384331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471346, 37.627949, 35.052757>,  <26.079140, 37.638363, 35.534145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471346, 37.627949, 35.052757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510857, 37.323345, 35.308990>,  <25.534563, 37.140583, 35.462730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510857, 37.323345, 35.308990>,  <25.471346, 37.627949, 35.052757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510857, 37.323345, 35.308990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862648, 0.255374, 0.436603,
		-0.496066, -0.595724, -0.631689,
		0.098778, -0.761510, 0.640583,
		25.540489, 37.094891, 35.501163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940916, 37.091431, 34.984055>,  <25.471346, 37.627949, 35.052757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940916, 37.091431, 34.984055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094700, 37.122284, 35.352020>,  <25.186970, 37.140797, 35.572800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094700, 37.122284, 35.352020>,  <24.940916, 37.091431, 34.984055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094700, 37.122284, 35.352020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918434, 0.132466, 0.372736,
		-0.093106, -0.988182, 0.121771,
		0.384461, 0.077134, 0.919913,
		25.210039, 37.145424, 35.627995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612791, 36.552120, 35.530685>,  <24.940916, 37.091431, 34.984055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612791, 36.552120, 35.530685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754097, 36.894783, 35.681072>,  <24.838881, 37.100380, 35.771305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754097, 36.894783, 35.681072>,  <24.612791, 36.552120, 35.530685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754097, 36.894783, 35.681072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883367, 0.173135, 0.435530,
		0.308006, -0.485971, 0.817902,
		0.353263, 0.856655, 0.375965,
		24.860075, 37.151779, 35.793861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814011, 36.655720, 36.287876>,  <24.612791, 36.552120, 35.530685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814011, 36.655720, 36.287876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764748, 36.269245, 36.378494>,  <24.735189, 36.037361, 36.432865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764748, 36.269245, 36.378494>,  <24.814011, 36.655720, 36.287876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764748, 36.269245, 36.378494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511976, -0.257418, -0.819523,
		0.850126, 0.015057, 0.526365,
		-0.123156, -0.966183, 0.226546,
		24.727800, 35.979389, 36.446457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197414, 36.021538, 35.997696>,  <24.814011, 36.655720, 36.287876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197414, 36.021538, 35.997696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230568, 36.350170, 35.772083>,  <25.250460, 36.547348, 35.636715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230568, 36.350170, 35.772083>,  <25.197414, 36.021538, 35.997696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230568, 36.350170, 35.772083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695963, -0.452817, -0.557308,
		-0.713278, -0.346354, -0.609321,
		0.082885, 0.821581, -0.564034,
		25.255434, 36.596645, 35.602875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111084, 35.904762, 35.322182>,  <25.197414, 36.021538, 35.997696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111084, 35.904762, 35.322182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328007, 36.239506, 35.292324>,  <25.458160, 36.440353, 35.274410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328007, 36.239506, 35.292324>,  <25.111084, 35.904762, 35.322182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328007, 36.239506, 35.292324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611517, -0.454075, -0.647969,
		-0.576151, 0.305752, -0.758001,
		0.542307, 0.836858, -0.074643,
		25.490700, 36.490562, 35.269932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423544, 35.958729, 34.642593>,  <25.111084, 35.904762, 35.322182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423544, 35.958729, 34.642593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669672, 36.219688, 34.819572>,  <25.817348, 36.376263, 34.925762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669672, 36.219688, 34.819572>,  <25.423544, 35.958729, 34.642593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669672, 36.219688, 34.819572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778987, -0.417322, -0.467998,
		-0.120677, 0.632630, -0.764994,
		0.615319, 0.652397, 0.442449,
		25.854267, 36.415409, 34.952309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825836, 36.304581, 34.091255>,  <25.423544, 35.958729, 34.642593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825836, 36.304581, 34.091255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033129, 36.367851, 34.427448>,  <26.157505, 36.405815, 34.629166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033129, 36.367851, 34.427448>,  <25.825836, 36.304581, 34.091255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033129, 36.367851, 34.427448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854607, -0.058007, -0.516025,
		-0.032869, 0.985705, -0.165240,
		0.518233, 0.158177, 0.840484,
		26.188599, 36.415306, 34.679592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448303, 36.694542, 33.865906>,  <25.825836, 36.304581, 34.091255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448303, 36.694542, 33.865906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535969, 36.516758, 34.213337>,  <26.588568, 36.410088, 34.421795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535969, 36.516758, 34.213337>,  <26.448303, 36.694542, 33.865906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535969, 36.516758, 34.213337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972059, 0.022755, -0.233632,
		0.084077, 0.895508, 0.437031,
		0.219164, -0.444463, 0.868573,
		26.601717, 36.383419, 34.473907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835430, 37.221336, 34.235100>,  <26.448303, 36.694542, 33.865906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835430, 37.221336, 34.235100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903078, 36.851589, 34.371891>,  <26.943666, 36.629742, 34.453968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903078, 36.851589, 34.371891>,  <26.835430, 37.221336, 34.235100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903078, 36.851589, 34.371891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954864, 0.067695, -0.289228,
		0.244202, 0.375458, 0.894090,
		0.169118, -0.924364, 0.341980,
		26.953814, 36.574280, 34.474483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153831, 37.097496, 34.797897>,  <26.835430, 37.221336, 34.235100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153831, 37.097496, 34.797897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275795, 36.824615, 34.532078>,  <27.348972, 36.660885, 34.372585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275795, 36.824615, 34.532078>,  <27.153831, 37.097496, 34.797897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275795, 36.824615, 34.532078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841567, 0.519668, -0.147346,
		0.445866, -0.514337, 0.732572,
		0.304908, -0.682205, -0.664551,
		27.367268, 36.619953, 34.332714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959183, 36.888111, 34.798164>,  <27.153831, 37.097496, 34.797897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959183, 36.888111, 34.798164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799168, 36.852589, 34.433289>,  <27.703159, 36.831276, 34.214363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799168, 36.852589, 34.433289>,  <27.959183, 36.888111, 34.798164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799168, 36.852589, 34.433289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870976, 0.272946, -0.408536,
		0.285258, -0.957922, -0.031841,
		-0.400036, -0.088805, -0.912187,
		27.679157, 36.825947, 34.159634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199192, 36.255619, 34.429546>,  <27.959183, 36.888111, 34.798164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199192, 36.255619, 34.429546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125181, 36.593750, 34.229073>,  <28.080774, 36.796631, 34.108788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125181, 36.593750, 34.229073>,  <28.199192, 36.255619, 34.429546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125181, 36.593750, 34.229073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938808, 0.001274, -0.344439,
		-0.290526, -0.534241, -0.793839,
		-0.185025, 0.845331, -0.501180,
		28.069674, 36.847351, 34.078720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511351, 36.228046, 33.701809>,  <28.199192, 36.255619, 34.429546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511351, 36.228046, 33.701809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554142, 36.603016, 33.834347>,  <28.579817, 36.827999, 33.913868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554142, 36.603016, 33.834347>,  <28.511351, 36.228046, 33.701809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554142, 36.603016, 33.834347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976582, -0.036506, -0.212026,
		-0.186662, 0.346266, -0.919379,
		0.106980, 0.937426, 0.331343,
		28.586237, 36.884243, 33.933750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864170, 36.480663, 33.209072>,  <28.511351, 36.228046, 33.701809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864170, 36.480663, 33.209072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931576, 36.692451, 33.541641>,  <28.972019, 36.819523, 33.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931576, 36.692451, 33.541641>,  <28.864170, 36.480663, 33.209072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931576, 36.692451, 33.541641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985685, -0.095076, -0.139232,
		0.005329, 0.842983, -0.537914,
		0.168513, 0.529471, 0.831423,
		28.982130, 36.851292, 33.791069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393312, 37.105000, 33.135414>,  <28.864170, 36.480663, 33.209072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393312, 37.105000, 33.135414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380314, 36.912666, 33.485897>,  <29.372515, 36.797264, 33.696186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380314, 36.912666, 33.485897>,  <29.393312, 37.105000, 33.135414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380314, 36.912666, 33.485897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969420, -0.228524, -0.089453,
		0.243247, 0.846507, 0.473558,
		-0.032497, -0.480836, 0.876208,
		29.370565, 36.768417, 33.748760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060690, 37.251675, 33.478317>,  <29.393312, 37.105000, 33.135414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060690, 37.251675, 33.478317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935286, 36.920544, 33.664402>,  <29.860043, 36.721867, 33.776051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935286, 36.920544, 33.664402>,  <30.060690, 37.251675, 33.478317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935286, 36.920544, 33.664402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914834, -0.394630, -0.085715,
		0.254542, 0.398717, 0.881041,
		-0.313509, -0.827824, 0.465209,
		29.841232, 36.672195, 33.803967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527504, 37.728058, 33.510899>,  <30.060690, 37.251675, 33.478317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527504, 37.728058, 33.510899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201077, 37.871830, 33.329865>,  <29.005220, 37.958096, 33.221245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201077, 37.871830, 33.329865>,  <29.527504, 37.728058, 33.510899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201077, 37.871830, 33.329865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085145, 0.699775, 0.709271,
		0.571647, 0.617350, -0.540461,
		-0.816070, 0.359435, -0.452589,
		28.956255, 37.979660, 33.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680822, 38.469658, 33.352451>,  <29.527504, 37.728058, 33.510899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680822, 38.469658, 33.352451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300396, 38.357754, 33.404915>,  <29.072140, 38.290611, 33.436394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300396, 38.357754, 33.404915>,  <29.680822, 38.469658, 33.352451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300396, 38.357754, 33.404915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110874, 0.705226, 0.700259,
		-0.288406, 0.651451, -0.701736,
		-0.951067, -0.279764, 0.131163,
		29.015076, 38.273823, 33.444263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170483, 39.039303, 33.232048>,  <29.680822, 38.469658, 33.352451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170483, 39.039303, 33.232048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022860, 38.765739, 33.483780>,  <28.934286, 38.601601, 33.634819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022860, 38.765739, 33.483780>,  <29.170483, 39.039303, 33.232048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022860, 38.765739, 33.483780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060465, 0.693369, 0.718041,
		-0.927437, 0.226947, -0.297247,
		-0.369059, -0.683911, 0.629334,
		28.912142, 38.560566, 33.672581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440149, 39.190315, 33.590927>,  <29.170483, 39.039303, 33.232048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440149, 39.190315, 33.590927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661434, 38.946426, 33.817974>,  <28.794205, 38.800091, 33.954201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661434, 38.946426, 33.817974>,  <28.440149, 39.190315, 33.590927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661434, 38.946426, 33.817974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041380, 0.700654, 0.712301,
		-0.832013, -0.370564, 0.412840,
		0.553211, -0.609727, 0.567619,
		28.827398, 38.763508, 33.988258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302551, 39.404919, 34.233589>,  <28.440149, 39.190315, 33.590927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302551, 39.404919, 34.233589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621962, 39.172806, 34.297630>,  <28.813608, 39.033539, 34.336056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621962, 39.172806, 34.297630>,  <28.302551, 39.404919, 34.233589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621962, 39.172806, 34.297630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405227, 0.714868, 0.569873,
		-0.445137, -0.390180, 0.805985,
		0.798526, -0.580279, 0.160103,
		28.861519, 38.998722, 34.345661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381506, 39.399319, 34.917763>,  <28.302551, 39.404919, 34.233589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381506, 39.399319, 34.917763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737988, 39.305767, 34.762299>,  <28.951876, 39.249634, 34.669022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737988, 39.305767, 34.762299>,  <28.381506, 39.399319, 34.917763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737988, 39.305767, 34.762299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423308, 0.736700, 0.527336,
		0.162989, -0.634485, 0.755554,
		0.891204, -0.233883, -0.388657,
		29.005348, 39.235603, 34.645702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824394, 39.418240, 35.429668>,  <28.381506, 39.399319, 34.917763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824394, 39.418240, 35.429668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029385, 39.467464, 35.089733>,  <29.152378, 39.497002, 34.885773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029385, 39.467464, 35.089733>,  <28.824394, 39.418240, 35.429668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029385, 39.467464, 35.089733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546762, 0.716361, 0.433449,
		0.662133, -0.686791, 0.299829,
		0.512475, 0.123066, -0.849838,
		29.183126, 39.504383, 34.834782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538397, 39.487717, 35.701122>,  <28.824394, 39.418240, 35.429668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538397, 39.487717, 35.701122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490871, 39.663509, 35.344978>,  <29.462357, 39.768986, 35.131290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490871, 39.663509, 35.344978>,  <29.538397, 39.487717, 35.701122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490871, 39.663509, 35.344978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556978, 0.771842, 0.306654,
		0.821985, -0.459475, -0.336487,
		-0.118815, 0.439481, -0.890359,
		29.455227, 39.795353, 35.077869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129578, 39.039406, 35.699638>,  <29.538397, 39.487717, 35.701122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129578, 39.039406, 35.699638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993509, 39.265141, 35.398758>,  <29.911867, 39.400581, 35.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993509, 39.265141, 35.398758>,  <30.129578, 39.039406, 35.699638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993509, 39.265141, 35.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464517, 0.796339, 0.387386,
		0.817622, -0.217631, -0.533039,
		-0.340172, 0.564342, -0.752198,
		29.891459, 39.434444, 35.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693027, 39.325935, 35.432133>,  <30.129578, 39.039406, 35.699638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693027, 39.325935, 35.432133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383547, 39.562859, 35.342197>,  <30.197859, 39.705013, 35.288235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383547, 39.562859, 35.342197>,  <30.693027, 39.325935, 35.432133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383547, 39.562859, 35.342197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566950, 0.805694, 0.171534,
		0.282755, 0.005242, -0.959178,
		-0.773703, 0.592308, -0.224842,
		30.151436, 39.740551, 35.274746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908356, 39.762962, 34.849228>,  <30.693027, 39.325935, 35.432133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908356, 39.762962, 34.849228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615402, 39.892853, 35.088615>,  <30.439631, 39.970787, 35.232250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615402, 39.892853, 35.088615>,  <30.908356, 39.762962, 34.849228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615402, 39.892853, 35.088615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569341, 0.774140, 0.276693,
		-0.373452, 0.543380, -0.751846,
		-0.732383, 0.324725, 0.598472,
		30.395687, 39.990269, 35.268158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317780, 40.255764, 35.261528>,  <30.908356, 39.762962, 34.849228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317780, 40.255764, 35.261528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191824, 40.624851, 35.350471>,  <31.116251, 40.846302, 35.403839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191824, 40.624851, 35.350471>,  <31.317780, 40.255764, 35.261528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191824, 40.624851, 35.350471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908938, -0.360613, 0.209260,
		0.273272, -0.136216, 0.952243,
		-0.314887, 0.922715, 0.222357,
		31.097359, 40.901665, 35.417179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901033, 40.271027, 35.861050>,  <31.317780, 40.255764, 35.261528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901033, 40.271027, 35.861050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767633, 40.572002, 35.633854>,  <30.687593, 40.752586, 35.497536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767633, 40.572002, 35.633854>,  <30.901033, 40.271027, 35.861050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767633, 40.572002, 35.633854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900875, -0.431921, -0.043228,
		-0.277853, 0.497271, 0.821900,
		-0.333500, 0.752440, -0.567989,
		30.667583, 40.797733, 35.463455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164219, 40.517483, 35.923004>,  <30.901033, 40.271027, 35.861050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164219, 40.517483, 35.923004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248171, 40.581024, 35.537109>,  <30.298542, 40.619148, 35.305573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248171, 40.581024, 35.537109>,  <30.164219, 40.517483, 35.923004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248171, 40.581024, 35.537109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754070, -0.601777, -0.263139,
		-0.622357, 0.782707, -0.006515,
		0.209881, 0.158853, -0.964736,
		30.311134, 40.628681, 35.247688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558413, 40.608433, 35.591450>,  <30.164219, 40.517483, 35.923004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558413, 40.608433, 35.591450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846754, 40.487911, 35.341782>,  <30.019758, 40.415596, 35.191982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846754, 40.487911, 35.341782>,  <29.558413, 40.608433, 35.591450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846754, 40.487911, 35.341782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579727, -0.755681, -0.304734,
		-0.379854, 0.581516, -0.719409,
		0.720852, -0.301306, -0.624169,
		30.063009, 40.397518, 35.154530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239746, 40.481506, 34.858768>,  <29.558413, 40.608433, 35.591450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239746, 40.481506, 34.858768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566864, 40.264740, 34.936268>,  <29.763136, 40.134682, 34.982769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566864, 40.264740, 34.936268>,  <29.239746, 40.481506, 34.858768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566864, 40.264740, 34.936268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450484, -0.812284, -0.370484,
		0.358151, 0.215698, -0.908406,
		0.817796, -0.541912, 0.193752,
		29.812202, 40.102165, 34.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385073, 40.096390, 34.222294>,  <29.239746, 40.481506, 34.858768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385073, 40.096390, 34.222294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583542, 39.903320, 34.510971>,  <29.702623, 39.787479, 34.684177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583542, 39.903320, 34.510971>,  <29.385073, 40.096390, 34.222294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583542, 39.903320, 34.510971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307875, -0.875025, -0.373558,
		0.811803, -0.036840, -0.582768,
		0.496174, -0.482675, 0.721690,
		29.732393, 39.758518, 34.727478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896109, 39.648796, 33.935776>,  <29.385073, 40.096390, 34.222294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896109, 39.648796, 33.935776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783060, 39.520424, 34.297356>,  <29.715231, 39.443401, 34.514305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783060, 39.520424, 34.297356>,  <29.896109, 39.648796, 33.935776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783060, 39.520424, 34.297356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388511, -0.823319, -0.413768,
		0.877032, -0.468135, 0.108003,
		-0.282620, -0.320927, 0.903953,
		29.698275, 39.424145, 34.568542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177723, 39.006111, 34.079235>,  <29.896109, 39.648796, 33.935776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177723, 39.006111, 34.079235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839050, 39.052662, 34.286922>,  <29.635847, 39.080593, 34.411533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839050, 39.052662, 34.286922>,  <30.177723, 39.006111, 34.079235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839050, 39.052662, 34.286922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381381, -0.813177, -0.439650,
		0.371052, -0.570263, 0.732885,
		-0.846681, 0.116375, 0.519218,
		29.585047, 39.087574, 34.442688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935818, 38.359570, 34.562149>,  <30.177723, 39.006111, 34.079235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935818, 38.359570, 34.562149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605419, 38.557415, 34.454006>,  <29.407181, 38.676121, 34.389122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605419, 38.557415, 34.454006>,  <29.935818, 38.359570, 34.562149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605419, 38.557415, 34.454006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392386, -0.848875, -0.354182,
		-0.404679, -0.186470, 0.895245,
		-0.825995, 0.494612, -0.270354,
		29.357620, 38.705799, 34.372898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423729, 37.920868, 34.722656>,  <29.935818, 38.359570, 34.562149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423729, 37.920868, 34.722656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246542, 38.161564, 34.456818>,  <29.140230, 38.305981, 34.297314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246542, 38.161564, 34.456818>,  <29.423729, 37.920868, 34.722656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246542, 38.161564, 34.456818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458211, -0.789117, -0.409069,
		-0.770600, 0.123325, 0.625273,
		-0.442965, 0.601735, -0.664602,
		29.113651, 38.342083, 34.257439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930912, 37.490288, 34.439957>,  <29.423729, 37.920868, 34.722656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930912, 37.490288, 34.439957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273964, 37.512146, 34.644501>,  <30.479795, 37.525261, 34.767227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273964, 37.512146, 34.644501>,  <29.930912, 37.490288, 34.439957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273964, 37.512146, 34.644501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483343, -0.253966, 0.837784,
		0.175648, -0.965668, -0.191397,
		0.857629, 0.054645, 0.511357,
		30.531252, 37.528538, 34.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989071, 36.819977, 34.885635>,  <29.930912, 37.490288, 34.439957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989071, 36.819977, 34.885635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191111, 37.146362, 34.998123>,  <30.312334, 37.342194, 35.065617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191111, 37.146362, 34.998123>,  <29.989071, 36.819977, 34.885635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191111, 37.146362, 34.998123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408827, -0.060762, 0.910587,
		0.760090, -0.574907, 0.302895,
		0.505098, 0.815960, 0.281222,
		30.342640, 37.391151, 35.082489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911196, 36.695412, 35.648399>,  <29.989071, 36.819977, 34.885635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911196, 36.695412, 35.648399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723129, 36.949257, 35.893742>,  <29.610289, 37.101566, 36.040947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723129, 36.949257, 35.893742>,  <29.911196, 36.695412, 35.648399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723129, 36.949257, 35.893742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582903, -0.745104, 0.324106,
		0.662696, -0.205144, 0.720243,
		-0.470167, 0.634615, 0.613356,
		29.582079, 37.139641, 36.077747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627451, 36.294319, 36.106590>,  <29.911196, 36.695412, 35.648399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627451, 36.294319, 36.106590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801491, 36.192524, 36.452057>,  <29.905914, 36.131447, 36.659336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801491, 36.192524, 36.452057>,  <29.627451, 36.294319, 36.106590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801491, 36.192524, 36.452057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751877, -0.630415, 0.193023,
		0.495347, -0.733356, -0.465639,
		0.435101, -0.254489, 0.863668,
		29.932020, 36.116177, 36.711159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892340, 35.531456, 36.139229>,  <29.627451, 36.294319, 36.106590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892340, 35.531456, 36.139229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756031, 35.666843, 36.490070>,  <29.674246, 35.748077, 36.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756031, 35.666843, 36.490070>,  <29.892340, 35.531456, 36.139229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756031, 35.666843, 36.490070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502581, -0.854035, 0.134304,
		0.794535, -0.395049, 0.461140,
		-0.340773, 0.338469, 0.877104,
		29.653799, 35.768383, 36.753201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124882, 35.112713, 36.722515>,  <29.892340, 35.531456, 36.139229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124882, 35.112713, 36.722515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794912, 35.300739, 36.848076>,  <29.596930, 35.413555, 36.923412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794912, 35.300739, 36.848076>,  <30.124882, 35.112713, 36.722515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794912, 35.300739, 36.848076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421970, -0.881638, 0.211320,
		0.376084, 0.041865, 0.925639,
		-0.824926, 0.470066, 0.313904,
		29.547434, 35.441757, 36.942245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029428, 34.898201, 37.361305>,  <30.124882, 35.112713, 36.722515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029428, 34.898201, 37.361305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690435, 34.999660, 37.174782>,  <29.487040, 35.060535, 37.062870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690435, 34.999660, 37.174782>,  <30.029428, 34.898201, 37.361305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690435, 34.999660, 37.174782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383891, -0.899558, 0.208385,
		-0.366612, 0.355612, 0.859730,
		-0.847481, 0.253646, -0.466305,
		29.436192, 35.075756, 37.034889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445942, 34.766964, 37.727264>,  <30.029428, 34.898201, 37.361305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445942, 34.766964, 37.727264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385683, 34.736580, 37.333000>,  <29.349527, 34.718349, 37.096439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385683, 34.736580, 37.333000>,  <29.445942, 34.766964, 37.727264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385683, 34.736580, 37.333000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271534, -0.955517, 0.115136,
		-0.950565, 0.284986, 0.123322,
		-0.150648, -0.075958, -0.985665,
		29.340488, 34.713791, 37.037300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133255, 34.497944, 38.258904>,  <29.445942, 34.766964, 37.727264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133255, 34.497944, 38.258904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797903, 34.310181, 38.148071>,  <28.596693, 34.197521, 38.081570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797903, 34.310181, 38.148071>,  <29.133255, 34.497944, 38.258904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797903, 34.310181, 38.148071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519685, -0.841709, -0.146471,
		-0.164468, -0.266794, 0.949616,
		-0.838378, -0.469411, -0.277083,
		28.546391, 34.169357, 38.064945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189930, 33.795300, 38.533020>,  <29.133255, 34.497944, 38.258904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189930, 33.795300, 38.533020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946644, 33.809074, 38.215809>,  <28.800673, 33.817341, 38.025482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946644, 33.809074, 38.215809>,  <29.189930, 33.795300, 38.533020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946644, 33.809074, 38.215809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452049, -0.806195, -0.381708,
		-0.652478, -0.590647, 0.474772,
		-0.608214, 0.034436, -0.793026,
		28.764179, 33.819405, 37.977901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825846, 33.136272, 38.403835>,  <29.189930, 33.795300, 38.533020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825846, 33.136272, 38.403835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917553, 33.371376, 38.093487>,  <28.972578, 33.512440, 37.907280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917553, 33.371376, 38.093487>,  <28.825846, 33.136272, 38.403835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917553, 33.371376, 38.093487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508893, -0.751863, -0.419201,
		-0.829737, -0.298725, -0.471487,
		0.229268, 0.587763, -0.775868,
		28.986334, 33.547707, 37.860725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730814, 32.733150, 37.758942>,  <28.825846, 33.136272, 38.403835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730814, 32.733150, 37.758942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986797, 33.032085, 37.687454>,  <29.140388, 33.211445, 37.644562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986797, 33.032085, 37.687454>,  <28.730814, 32.733150, 37.758942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986797, 33.032085, 37.687454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633659, -0.644828, -0.427403,
		-0.434658, 0.160273, -0.886220,
		0.639960, 0.747335, -0.178722,
		29.178785, 33.256287, 37.633839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858534, 32.922832, 37.072102>,  <28.730814, 32.733150, 37.758942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858534, 32.922832, 37.072102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189299, 32.978771, 37.289967>,  <29.387756, 33.012337, 37.420685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189299, 32.978771, 37.289967>,  <28.858534, 32.922832, 37.072102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189299, 32.978771, 37.289967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518592, -0.564186, -0.642461,
		0.217445, 0.813717, -0.539056,
		0.826910, 0.139851, 0.544667,
		29.437372, 33.020725, 37.453365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300430, 33.129013, 36.595669>,  <28.858534, 32.922832, 37.072102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300430, 33.129013, 36.595669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499249, 32.946644, 36.890987>,  <29.618540, 32.837223, 37.068176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499249, 32.946644, 36.890987>,  <29.300430, 33.129013, 36.595669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499249, 32.946644, 36.890987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332689, -0.685687, -0.647419,
		0.801414, 0.567419, -0.189135,
		0.497046, -0.455927, 0.738293,
		29.648361, 32.809864, 37.112476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023863, 33.198158, 36.370422>,  <29.300430, 33.129013, 36.595669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023863, 33.198158, 36.370422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935909, 32.891941, 36.612278>,  <29.883137, 32.708210, 36.757393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935909, 32.891941, 36.612278>,  <30.023863, 33.198158, 36.370422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935909, 32.891941, 36.612278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311561, -0.642457, -0.700128,
		0.924436, 0.034436, 0.379780,
		-0.219882, -0.765548, 0.604639,
		29.869944, 32.662277, 36.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570452, 32.943146, 36.348949>,  <30.023863, 33.198158, 36.370422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570452, 32.943146, 36.348949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315556, 32.650021, 36.444370>,  <30.162619, 32.474144, 36.501621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315556, 32.650021, 36.444370>,  <30.570452, 32.943146, 36.348949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315556, 32.650021, 36.444370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364923, -0.559561, -0.744125,
		0.678789, -0.387134, 0.623997,
		-0.637241, -0.732815, 0.238550,
		30.124384, 32.430176, 36.515934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921076, 32.344524, 36.679974>,  <30.570452, 32.943146, 36.348949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921076, 32.344524, 36.679974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601801, 32.299759, 36.443203>,  <30.410236, 32.272900, 36.301140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601801, 32.299759, 36.443203>,  <30.921076, 32.344524, 36.679974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601801, 32.299759, 36.443203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546332, -0.548477, -0.633004,
		-0.253813, -0.828642, 0.498930,
		-0.798185, -0.111917, -0.591924,
		30.362345, 32.266182, 36.265625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864456, 31.541613, 36.521095>,  <30.921076, 32.344524, 36.679974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864456, 31.541613, 36.521095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703621, 31.800581, 36.262123>,  <30.607119, 31.955963, 36.106739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703621, 31.800581, 36.262123>,  <30.864456, 31.541613, 36.521095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703621, 31.800581, 36.262123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499095, -0.437840, -0.747796,
		-0.767612, -0.623812, -0.147074,
		-0.402089, 0.647422, -0.647433,
		30.582994, 31.994808, 36.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590668, 31.202820, 35.900040>,  <30.864456, 31.541613, 36.521095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590668, 31.202820, 35.900040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685995, 31.582815, 35.819321>,  <30.743193, 31.810812, 35.770889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685995, 31.582815, 35.819321>,  <30.590668, 31.202820, 35.900040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685995, 31.582815, 35.819321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394188, -0.284521, -0.873878,
		-0.887592, 0.128715, -0.442281,
		0.238320, 0.949989, -0.201801,
		30.757490, 31.867811, 35.758781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612947, 31.105488, 35.166569>,  <30.590668, 31.202820, 35.900040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612947, 31.105488, 35.166569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802097, 31.447348, 35.252323>,  <30.915588, 31.652464, 35.303776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802097, 31.447348, 35.252323>,  <30.612947, 31.105488, 35.166569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802097, 31.447348, 35.252323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739048, -0.252220, -0.624654,
		-0.479787, 0.453827, -0.750896,
		0.472876, 0.854649, 0.214388,
		30.943960, 31.703743, 35.316639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764811, 31.541311, 34.512943>,  <30.612947, 31.105488, 35.166569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764811, 31.541311, 34.512943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030312, 31.622715, 34.800838>,  <31.189611, 31.671556, 34.973576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030312, 31.622715, 34.800838>,  <30.764811, 31.541311, 34.512943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030312, 31.622715, 34.800838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741666, -0.054560, -0.668547,
		-0.096785, 0.977552, -0.187149,
		0.663750, 0.203508, 0.719736,
		31.229437, 31.683767, 35.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099577, 32.017681, 34.215961>,  <30.764811, 31.541311, 34.512943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099577, 32.017681, 34.215961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352308, 31.884548, 34.495964>,  <31.503946, 31.804668, 34.663967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352308, 31.884548, 34.495964>,  <31.099577, 32.017681, 34.215961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352308, 31.884548, 34.495964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658054, -0.246886, -0.711345,
		0.409582, 0.910093, 0.063033,
		0.631829, -0.332833, 0.700010,
		31.541857, 31.784698, 34.705967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738422, 32.311977, 34.220657>,  <31.099577, 32.017681, 34.215961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738422, 32.311977, 34.220657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814470, 31.959251, 34.393284>,  <31.860100, 31.747616, 34.496861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814470, 31.959251, 34.393284>,  <31.738422, 32.311977, 34.220657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814470, 31.959251, 34.393284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793266, -0.121014, -0.596728,
		0.578432, 0.455797, 0.676510,
		0.190120, -0.881819, 0.431567,
		31.871506, 31.694706, 34.522755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460114, 32.282856, 34.068592>,  <31.738422, 32.311977, 34.220657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460114, 32.282856, 34.068592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412170, 31.909742, 34.204559>,  <32.383404, 31.685873, 34.286140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412170, 31.909742, 34.204559>,  <32.460114, 32.282856, 34.068592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412170, 31.909742, 34.204559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515940, -0.351040, -0.781394,
		0.848198, 0.081721, 0.523337,
		-0.119856, -0.932787, 0.339914,
		32.376213, 31.629906, 34.306534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106369, 31.914625, 34.139809>,  <32.460114, 32.282856, 34.068592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106369, 31.914625, 34.139809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850983, 31.611359, 34.086826>,  <32.697750, 31.429398, 34.055038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850983, 31.611359, 34.086826>,  <33.106369, 31.914625, 34.139809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850983, 31.611359, 34.086826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605003, -0.388017, -0.695280,
		0.475745, -0.524047, 0.706429,
		-0.638466, -0.758167, -0.132453,
		32.659443, 31.383909, 34.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568890, 31.312450, 34.108063>,  <33.106369, 31.914625, 34.139809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568890, 31.312450, 34.108063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218204, 31.247353, 33.927006>,  <33.007793, 31.208294, 33.818371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218204, 31.247353, 33.927006>,  <33.568890, 31.312450, 34.108063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218204, 31.247353, 33.927006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480792, -0.268211, -0.834807,
		0.014457, -0.949514, 0.313392,
		-0.876716, -0.162745, -0.452641,
		32.955189, 31.198528, 33.791214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659927, 30.812622, 33.596180>,  <33.568890, 31.312450, 34.108063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659927, 30.812622, 33.596180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296589, 30.930651, 33.477623>,  <33.078587, 31.001469, 33.406490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296589, 30.930651, 33.477623>,  <33.659927, 30.812622, 33.596180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296589, 30.930651, 33.477623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242257, -0.206467, -0.947989,
		-0.340921, -0.932900, 0.116059,
		-0.908342, 0.295073, -0.296390,
		33.024086, 31.019173, 33.388706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368687, 30.243393, 33.120388>,  <33.659927, 30.812622, 33.596180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368687, 30.243393, 33.120388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179256, 30.586884, 33.042095>,  <33.065598, 30.792978, 32.995121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179256, 30.586884, 33.042095>,  <33.368687, 30.243393, 33.120388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179256, 30.586884, 33.042095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071647, -0.183932, -0.980324,
		-0.877833, -0.478283, 0.025581,
		-0.473577, 0.858729, -0.195729,
		33.037182, 30.844501, 32.983376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084038, 29.992464, 32.545174>,  <33.368687, 30.243393, 33.120388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084038, 29.992464, 32.545174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034824, 30.389416, 32.547943>,  <33.005295, 30.627586, 32.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034824, 30.389416, 32.547943>,  <33.084038, 29.992464, 32.545174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034824, 30.389416, 32.547943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014833, 0.005137, -0.999877,
		-0.992292, -0.123121, 0.014087,
		-0.123033, 0.992378, 0.006924,
		32.997913, 30.687130, 32.550022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569424, 30.098598, 32.102375>,  <33.084038, 29.992464, 32.545174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569424, 30.098598, 32.102375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796761, 30.427378, 32.117298>,  <32.933163, 30.624645, 32.126251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796761, 30.427378, 32.117298>,  <32.569424, 30.098598, 32.102375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796761, 30.427378, 32.117298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025465, 0.062896, -0.997695,
		-0.822400, 0.566079, 0.056678,
		0.568340, 0.821948, 0.037311,
		32.967262, 30.673962, 32.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228970, 30.753994, 31.769623>,  <32.569424, 30.098598, 32.102375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228970, 30.753994, 31.769623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625656, 30.800890, 31.748632>,  <32.863667, 30.829027, 31.736038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625656, 30.800890, 31.748632>,  <32.228970, 30.753994, 31.769623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625656, 30.800890, 31.748632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089059, 0.333208, -0.938638,
		-0.092559, 0.935536, 0.340889,
		0.991716, 0.117239, -0.052477,
		32.923172, 30.836061, 31.732889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309353, 31.407349, 31.345974>,  <32.228970, 30.753994, 31.769623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309353, 31.407349, 31.345974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675686, 31.246750, 31.343103>,  <32.895485, 31.150391, 31.341381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675686, 31.246750, 31.343103>,  <32.309353, 31.407349, 31.345974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675686, 31.246750, 31.343103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176037, 0.417480, -0.891472,
		0.360917, 0.815176, 0.453019,
		0.915833, -0.401496, -0.007175,
		32.950436, 31.126301, 31.340952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599766, 31.837229, 30.864738>,  <32.309353, 31.407349, 31.345974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599766, 31.837229, 30.864738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884701, 31.557779, 30.891588>,  <33.055660, 31.390110, 30.907698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884701, 31.557779, 30.891588>,  <32.599766, 31.837229, 30.864738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884701, 31.557779, 30.891588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284521, 0.200023, -0.937571,
		0.641581, 0.686963, 0.341256,
		0.712335, -0.698622, 0.067125,
		33.098400, 31.348192, 30.911726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193077, 32.206074, 30.692497>,  <32.599766, 31.837229, 30.864738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193077, 32.206074, 30.692497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200993, 31.816580, 30.601770>,  <33.205742, 31.582884, 30.547335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200993, 31.816580, 30.601770>,  <33.193077, 32.206074, 30.692497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200993, 31.816580, 30.601770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126228, 0.227481, -0.965567,
		0.991804, -0.009524, 0.127414,
		0.019788, -0.973736, -0.226818,
		33.206928, 31.524460, 30.533726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679234, 32.187626, 30.174719>,  <33.193077, 32.206074, 30.692497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679234, 32.187626, 30.174719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523273, 31.821663, 30.132923>,  <33.429699, 31.602085, 30.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523273, 31.821663, 30.132923>,  <33.679234, 32.187626, 30.174719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523273, 31.821663, 30.132923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114201, 0.064553, -0.991358,
		0.913750, -0.398460, 0.079315,
		-0.389896, -0.914911, -0.104489,
		33.406303, 31.547190, 30.101576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171089, 31.764727, 29.709944>,  <33.679234, 32.187626, 30.174719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171089, 31.764727, 29.709944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797054, 31.626675, 29.677689>,  <33.572636, 31.543844, 29.658335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797054, 31.626675, 29.677689>,  <34.171089, 31.764727, 29.709944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797054, 31.626675, 29.677689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051972, 0.091535, -0.994445,
		0.350593, -0.934081, -0.067656,
		-0.935085, -0.345129, -0.080638,
		33.516529, 31.523136, 29.653498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260883, 31.253544, 29.290478>,  <34.171089, 31.764727, 29.709944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260883, 31.253544, 29.290478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874130, 31.354755, 29.277102>,  <33.642078, 31.415482, 29.269075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874130, 31.354755, 29.277102>,  <34.260883, 31.253544, 29.290478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874130, 31.354755, 29.277102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066308, 0.122513, -0.990250,
		-0.246465, -0.959670, -0.135233,
		-0.966881, 0.253029, -0.033439,
		33.584064, 31.430664, 29.267071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987312, 30.844492, 28.675098>,  <34.260883, 31.253544, 29.290478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987312, 30.844492, 28.675098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742458, 31.149141, 28.760155>,  <33.595547, 31.331932, 28.811188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742458, 31.149141, 28.760155>,  <33.987312, 30.844492, 28.675098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742458, 31.149141, 28.760155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250788, 0.068038, -0.965648,
		-0.749929, -0.644437, 0.149357,
		-0.612137, 0.761625, 0.212640,
		33.558819, 31.377628, 28.823946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369656, 30.733095, 28.488621>,  <33.987312, 30.844492, 28.675098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369656, 30.733095, 28.488621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362537, 31.133032, 28.487844>,  <33.358269, 31.372993, 28.487379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362537, 31.133032, 28.487844>,  <33.369656, 30.733095, 28.488621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362537, 31.133032, 28.487844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111383, -0.003912, -0.993770,
		-0.993618, -0.017466, 0.111434,
		-0.017793, 0.999840, -0.001941,
		33.357201, 31.432983, 28.487263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889709, 30.930527, 27.914333>,  <33.369656, 30.733095, 28.488621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889709, 30.930527, 27.914333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104473, 31.252085, 28.016695>,  <33.233330, 31.445019, 28.078112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104473, 31.252085, 28.016695>,  <32.889709, 30.930527, 27.914333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104473, 31.252085, 28.016695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147337, 0.209321, -0.966683,
		-0.830677, 0.556722, -0.006058,
		0.536906, 0.803894, 0.255904,
		33.265545, 31.493254, 28.093466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536972, 31.517496, 27.566891>,  <32.889709, 30.930527, 27.914333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536972, 31.517496, 27.566891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909241, 31.626118, 27.664955>,  <33.132603, 31.691290, 27.723793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909241, 31.626118, 27.664955>,  <32.536972, 31.517496, 27.566891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909241, 31.626118, 27.664955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202207, 0.176650, -0.963279,
		-0.304888, 0.946073, 0.109494,
		0.930675, 0.271552, 0.245161,
		33.188442, 31.707582, 27.738504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641239, 32.133270, 27.329372>,  <32.536972, 31.517496, 27.566891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641239, 32.133270, 27.329372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021252, 32.009338, 27.344637>,  <33.249260, 31.934980, 27.353796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021252, 32.009338, 27.344637>,  <32.641239, 32.133270, 27.329372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021252, 32.009338, 27.344637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148561, 0.341206, -0.928174,
		0.274552, 0.887460, 0.370183,
		0.950027, -0.309827, 0.038163,
		33.306259, 31.916389, 27.356087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935291, 32.703949, 27.087547>,  <32.641239, 32.133270, 27.329372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935291, 32.703949, 27.087547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206829, 32.413399, 27.044556>,  <33.369751, 32.239067, 27.018761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206829, 32.413399, 27.044556>,  <32.935291, 32.703949, 27.087547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206829, 32.413399, 27.044556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204855, 0.327906, -0.922232,
		0.705130, 0.604032, 0.371398,
		0.678841, -0.726377, -0.107478,
		33.410480, 32.195484, 27.012312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493717, 33.086567, 26.923496>,  <32.935291, 32.703949, 27.087547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493717, 33.086567, 26.923496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539444, 32.706490, 26.807516>,  <33.566879, 32.478443, 26.737928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539444, 32.706490, 26.807516>,  <33.493717, 33.086567, 26.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539444, 32.706490, 26.807516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312286, 0.311440, -0.897486,
		0.943085, 0.012047, 0.332333,
		0.114314, -0.950189, -0.289952,
		33.573738, 32.421432, 26.720530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963600, 33.157104, 26.419193>,  <33.493717, 33.086567, 26.923496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963600, 33.157104, 26.419193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866554, 32.779026, 26.331797>,  <33.808327, 32.552177, 26.279360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866554, 32.779026, 26.331797>,  <33.963600, 33.157104, 26.419193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866554, 32.779026, 26.331797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417445, 0.101587, -0.903006,
		0.875715, -0.310290, 0.369922,
		-0.242615, -0.945198, -0.218490,
		33.793770, 32.495468, 26.266249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596107, 32.765987, 26.152540>,  <33.963600, 33.157104, 26.419193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596107, 32.765987, 26.152540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252579, 32.616058, 26.012867>,  <34.046463, 32.526100, 25.929062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252579, 32.616058, 26.012867>,  <34.596107, 32.765987, 26.152540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252579, 32.616058, 26.012867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278372, 0.230742, -0.932345,
		0.430040, -0.897921, -0.093824,
		-0.858821, -0.374828, -0.349184,
		33.994930, 32.503609, 25.908112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679504, 32.177155, 25.828068>,  <34.596107, 32.765987, 26.152540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679504, 32.177155, 25.828068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361298, 32.376003, 25.689495>,  <34.170372, 32.495312, 25.606352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361298, 32.376003, 25.689495>,  <34.679504, 32.177155, 25.828068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361298, 32.376003, 25.689495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477117, 0.161491, -0.863875,
		-0.373509, -0.852518, -0.365656,
		-0.795519, 0.497126, -0.346432,
		34.122643, 32.525143, 25.585566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397823, 31.826290, 25.130390>,  <34.679504, 32.177155, 25.828068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397823, 31.826290, 25.130390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297779, 32.213085, 25.149876>,  <34.237751, 32.445164, 25.161568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297779, 32.213085, 25.149876>,  <34.397823, 31.826290, 25.130390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297779, 32.213085, 25.149876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477135, 0.166881, -0.862840,
		-0.842487, -0.192564, -0.503124,
		-0.250114, 0.966990, 0.048716,
		34.222744, 32.503181, 25.164490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037071, 31.938108, 24.490362>,  <34.397823, 31.826290, 25.130390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037071, 31.938108, 24.490362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174332, 32.288013, 24.627205>,  <34.256687, 32.497955, 24.709311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174332, 32.288013, 24.627205>,  <34.037071, 31.938108, 24.490362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174332, 32.288013, 24.627205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444617, 0.169555, -0.879527,
		-0.827384, 0.453914, -0.330752,
		0.343149, 0.874765, 0.342105,
		34.277275, 32.550442, 24.729836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934589, 32.484730, 23.988916>,  <34.037071, 31.938108, 24.490362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934589, 32.484730, 23.988916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199917, 32.643631, 24.242594>,  <34.359112, 32.738972, 24.394800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199917, 32.643631, 24.242594>,  <33.934589, 32.484730, 23.988916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199917, 32.643631, 24.242594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466537, 0.443092, -0.765514,
		-0.585111, 0.803652, 0.108576,
		0.663316, 0.397256, 0.634192,
		34.398911, 32.762806, 24.432852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057964, 32.956787, 23.500006>,  <33.934589, 32.484730, 23.988916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057964, 32.956787, 23.500006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321682, 32.983898, 23.799536>,  <34.479912, 33.000164, 23.979254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321682, 32.983898, 23.799536>,  <34.057964, 32.956787, 23.500006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321682, 32.983898, 23.799536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653300, 0.441373, -0.615133,
		-0.372203, 0.894760, 0.246716,
		0.659291, 0.067775, 0.748827,
		34.519470, 33.004230, 24.024183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308968, 33.653229, 23.591934>,  <34.057964, 32.956787, 23.500006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308968, 33.653229, 23.591934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593395, 33.407616, 23.728952>,  <34.764053, 33.260246, 23.811163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593395, 33.407616, 23.728952>,  <34.308968, 33.653229, 23.591934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593395, 33.407616, 23.728952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677919, 0.469469, -0.565707,
		0.186548, 0.634478, 0.750092,
		0.711073, -0.614033, 0.342546,
		34.806717, 33.223404, 23.831717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796928, 34.101883, 23.800081>,  <34.308968, 33.653229, 23.591934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796928, 34.101883, 23.800081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960644, 33.744732, 23.724974>,  <35.058872, 33.530441, 23.679909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960644, 33.744732, 23.724974>,  <34.796928, 34.101883, 23.800081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960644, 33.744732, 23.724974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591999, 0.416470, -0.689993,
		0.694278, 0.171245, 0.699037,
		0.409286, -0.892876, -0.187769,
		35.083431, 33.476868, 23.668642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440041, 34.141254, 23.920916>,  <34.796928, 34.101883, 23.800081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440041, 34.141254, 23.920916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422794, 33.838387, 23.660198>,  <35.412449, 33.656666, 23.503767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422794, 33.838387, 23.660198>,  <35.440041, 34.141254, 23.920916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422794, 33.838387, 23.660198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642283, 0.478714, -0.598587,
		0.765254, -0.444443, 0.465679,
		-0.043111, -0.757168, -0.651796,
		35.409863, 33.611237, 23.464659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115662, 34.108879, 23.704645>,  <35.440041, 34.141254, 23.920916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115662, 34.108879, 23.704645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869762, 33.929298, 23.445253>,  <35.722221, 33.821548, 23.289618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869762, 33.929298, 23.445253>,  <36.115662, 34.108879, 23.704645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869762, 33.929298, 23.445253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426866, 0.501984, -0.752195,
		0.663227, -0.739225, -0.116951,
		-0.614748, -0.448953, -0.648479,
		35.685337, 33.794613, 23.250710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485817, 34.123508, 23.072165>,  <36.115662, 34.108879, 23.704645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485817, 34.123508, 23.072165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116444, 34.027325, 22.952530>,  <35.894821, 33.969612, 22.880749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116444, 34.027325, 22.952530>,  <36.485817, 34.123508, 23.072165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116444, 34.027325, 22.952530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165650, 0.453248, -0.875857,
		0.346171, -0.858338, -0.378711,
		-0.923432, -0.240462, -0.299085,
		35.839413, 33.955185, 22.862804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572685, 33.807220, 22.353634>,  <36.485817, 34.123508, 23.072165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572685, 33.807220, 22.353634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196259, 33.937450, 22.390274>,  <35.970402, 34.015591, 22.412258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196259, 33.937450, 22.390274>,  <36.572685, 33.807220, 22.353634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196259, 33.937450, 22.390274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065124, 0.440198, -0.895536,
		-0.331889, -0.836795, -0.435459,
		-0.941068, 0.325578, 0.091602,
		35.913937, 34.035122, 22.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423382, 33.749825, 21.713478>,  <36.572685, 33.807220, 22.353634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423382, 33.749825, 21.713478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140312, 33.997963, 21.848751>,  <35.970470, 34.146847, 21.929914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140312, 33.997963, 21.848751>,  <36.423382, 33.749825, 21.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140312, 33.997963, 21.848751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099840, 0.386043, -0.917062,
		-0.699447, -0.682747, -0.211258,
		-0.707676, 0.620344, 0.338182,
		35.928009, 34.184067, 21.950205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067947, 33.911613, 21.117081>,  <36.423382, 33.749825, 21.713478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067947, 33.911613, 21.117081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959309, 34.194000, 21.378721>,  <35.894127, 34.363434, 21.535706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959309, 34.194000, 21.378721>,  <36.067947, 33.911613, 21.117081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959309, 34.194000, 21.378721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045012, 0.669587, -0.741369,
		-0.961359, -0.230793, -0.150079,
		-0.271594, 0.705966, 0.654101,
		35.877831, 34.405788, 21.574951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581734, 34.355034, 20.790939>,  <36.067947, 33.911613, 21.117081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581734, 34.355034, 20.790939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689186, 34.587196, 21.098436>,  <35.753658, 34.726494, 21.282934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689186, 34.587196, 21.098436>,  <35.581734, 34.355034, 20.790939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689186, 34.587196, 21.098436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047431, 0.789138, -0.612382,
		-0.962074, 0.200968, 0.184459,
		0.268632, 0.580407, 0.768742,
		35.769775, 34.761318, 21.329060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302040, 34.952682, 20.750673>,  <35.581734, 34.355034, 20.790939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302040, 34.952682, 20.750673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627274, 35.044010, 20.964876>,  <35.822414, 35.098804, 21.093397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627274, 35.044010, 20.964876>,  <35.302040, 34.952682, 20.750673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627274, 35.044010, 20.964876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186874, 0.768832, -0.611535,
		-0.551337, 0.597302, 0.582459,
		0.813084, 0.228315, 0.535506,
		35.871201, 35.112503, 21.125528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389088, 35.744637, 21.073458>,  <35.302040, 34.952682, 20.750673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389088, 35.744637, 21.073458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747818, 35.625473, 20.942642>,  <35.963055, 35.553974, 20.864153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747818, 35.625473, 20.942642>,  <35.389088, 35.744637, 21.073458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747818, 35.625473, 20.942642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037370, 0.787644, -0.614996,
		0.440802, 0.539323, 0.717513,
		0.896826, -0.297905, -0.327041,
		36.016865, 35.536102, 20.844530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868057, 36.369011, 21.015528>,  <35.389088, 35.744637, 21.073458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868057, 36.369011, 21.015528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977966, 36.073986, 20.768789>,  <36.043911, 35.896973, 20.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977966, 36.073986, 20.768789>,  <35.868057, 36.369011, 21.015528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977966, 36.073986, 20.768789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002804, 0.642155, -0.766570,
		0.961504, 0.208906, 0.178517,
		0.274777, -0.737561, -0.616848,
		36.060398, 35.852718, 20.583735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241032, 36.716190, 20.580135>,  <35.868057, 36.369011, 21.015528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241032, 36.716190, 20.580135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151154, 36.366505, 20.407963>,  <36.097229, 36.156693, 20.304659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151154, 36.366505, 20.407963>,  <36.241032, 36.716190, 20.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151154, 36.366505, 20.407963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261874, 0.479649, -0.837472,
		0.938582, -0.075454, -0.336706,
		-0.224691, -0.874210, -0.430430,
		36.083748, 36.104240, 20.278833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731464, 36.725178, 19.995016>,  <36.241032, 36.716190, 20.580135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731464, 36.725178, 19.995016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403221, 36.497833, 19.971157>,  <36.206276, 36.361427, 19.956842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403221, 36.497833, 19.971157>,  <36.731464, 36.725178, 19.995016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403221, 36.497833, 19.971157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130936, 0.288585, -0.948459,
		0.556283, -0.770507, -0.311235,
		-0.820613, -0.568364, -0.059648,
		36.157036, 36.327324, 19.953262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628025, 36.194221, 19.439939>,  <36.731464, 36.725178, 19.995016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628025, 36.194221, 19.439939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330936, 36.437561, 19.551851>,  <36.152683, 36.583565, 19.618999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330936, 36.437561, 19.551851>,  <36.628025, 36.194221, 19.439939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330936, 36.437561, 19.551851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022212, 0.395221, -0.918317,
		-0.669229, -0.688271, -0.280028,
		-0.742724, 0.608345, 0.279781,
		36.108120, 36.620064, 19.635786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241859, 35.864342, 19.733885>,  <36.628025, 36.194221, 19.439939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241859, 35.864342, 19.733885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434696, 36.212692, 19.695576>,  <37.550396, 36.421703, 19.672590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434696, 36.212692, 19.695576>,  <37.241859, 35.864342, 19.733885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434696, 36.212692, 19.695576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207654, 0.219775, 0.953194,
		0.851159, -0.439636, 0.286791,
		0.482088, 0.870873, -0.095772,
		37.579323, 36.473953, 19.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584312, 35.979858, 20.348606>,  <37.241859, 35.864342, 19.733885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584312, 35.979858, 20.348606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578491, 36.338989, 20.172560>,  <37.574997, 36.554466, 20.066933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578491, 36.338989, 20.172560>,  <37.584312, 35.979858, 20.348606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578491, 36.338989, 20.172560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216209, 0.426922, 0.878061,
		0.976239, 0.107938, 0.187904,
		-0.014556, 0.897823, -0.440115,
		37.574123, 36.608337, 20.040525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954216, 36.404396, 20.727758>,  <37.584312, 35.979858, 20.348606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954216, 36.404396, 20.727758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678432, 36.625397, 20.540401>,  <37.512962, 36.757996, 20.427988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678432, 36.625397, 20.540401>,  <37.954216, 36.404396, 20.727758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678432, 36.625397, 20.540401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292550, 0.379160, 0.877868,
		0.662616, 0.742283, -0.099783,
		-0.689460, 0.552498, -0.468392,
		37.471596, 36.791145, 20.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998543, 37.111187, 20.983992>,  <37.954216, 36.404396, 20.727758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998543, 37.111187, 20.983992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628170, 37.025986, 20.859228>,  <37.405949, 36.974865, 20.784370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628170, 37.025986, 20.859228>,  <37.998543, 37.111187, 20.983992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628170, 37.025986, 20.859228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375994, 0.441448, 0.814710,
		-0.035842, 0.871639, -0.488836,
		-0.925929, -0.213000, -0.311909,
		37.350391, 36.962086, 20.765656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615688, 37.652122, 21.228928>,  <37.998543, 37.111187, 20.983992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615688, 37.652122, 21.228928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330563, 37.387653, 21.135340>,  <37.159489, 37.228970, 21.079187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330563, 37.387653, 21.135340>,  <37.615688, 37.652122, 21.228928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330563, 37.387653, 21.135340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521163, 0.276094, 0.807565,
		-0.469343, 0.697582, -0.541384,
		-0.712816, -0.661174, -0.233971,
		37.116718, 37.189301, 21.065149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953812, 37.986919, 21.182158>,  <37.615688, 37.652122, 21.228928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953812, 37.986919, 21.182158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909241, 37.599022, 21.269051>,  <36.882500, 37.366283, 21.321186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909241, 37.599022, 21.269051>,  <36.953812, 37.986919, 21.182158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909241, 37.599022, 21.269051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470859, 0.244019, 0.847790,
		-0.875143, -0.007817, -0.483801,
		-0.111429, -0.969739, 0.217232,
		36.875813, 37.308102, 21.334221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226036, 37.798809, 21.330677>,  <36.953812, 37.986919, 21.182158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226036, 37.798809, 21.330677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468887, 37.546421, 21.523869>,  <36.614597, 37.394989, 21.639784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468887, 37.546421, 21.523869>,  <36.226036, 37.798809, 21.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468887, 37.546421, 21.523869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449605, 0.228380, 0.863538,
		-0.655169, -0.741430, -0.145031,
		0.607131, -0.630970, 0.482978,
		36.651028, 37.357128, 21.668762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825588, 37.442787, 21.764513>,  <36.226036, 37.798809, 21.330677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825588, 37.442787, 21.764513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187733, 37.369846, 21.917912>,  <36.405018, 37.326080, 22.009951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187733, 37.369846, 21.917912>,  <35.825588, 37.442787, 21.764513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187733, 37.369846, 21.917912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385958, 0.023237, 0.922224,
		-0.177085, -0.982958, -0.049344,
		0.905360, -0.182357, 0.383496,
		36.459339, 37.315140, 22.032961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744808, 36.886143, 22.314810>,  <35.825588, 37.442787, 21.764513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744808, 36.886143, 22.314810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111835, 37.029385, 22.383884>,  <36.332054, 37.115330, 22.425329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111835, 37.029385, 22.383884>,  <35.744808, 36.886143, 22.314810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111835, 37.029385, 22.383884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084413, -0.248970, 0.964825,
		0.388506, -0.899873, -0.198219,
		0.917571, 0.358108, 0.172688,
		36.387108, 37.136818, 22.435690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974274, 36.402157, 22.795902>,  <35.744808, 36.886143, 22.314810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974274, 36.402157, 22.795902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151756, 36.758648, 22.833519>,  <36.258247, 36.972542, 22.856089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151756, 36.758648, 22.833519>,  <35.974274, 36.402157, 22.795902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151756, 36.758648, 22.833519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132133, -0.038731, 0.990475,
		0.886377, -0.451907, 0.100575,
		0.443707, 0.891224, 0.094042,
		36.284870, 37.026016, 22.861732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376335, 36.249607, 23.368652>,  <35.974274, 36.402157, 22.795902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376335, 36.249607, 23.368652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339462, 36.645988, 23.329626>,  <36.317337, 36.883816, 23.306211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339462, 36.645988, 23.329626>,  <36.376335, 36.249607, 23.368652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339462, 36.645988, 23.329626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123563, 0.085841, 0.988617,
		0.988046, 0.103189, 0.114531,
		-0.092183, 0.990951, -0.097565,
		36.311806, 36.943275, 23.300356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819923, 36.610806, 23.832699>,  <36.376335, 36.249607, 23.368652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819923, 36.610806, 23.832699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529400, 36.874943, 23.756363>,  <36.355087, 37.033424, 23.710562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529400, 36.874943, 23.756363>,  <36.819923, 36.610806, 23.832699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529400, 36.874943, 23.756363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210729, 0.050358, 0.976246,
		0.654271, 0.749271, 0.102579,
		-0.726308, 0.660346, -0.190841,
		36.311508, 37.073048, 23.699110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810482, 36.963661, 24.436007>,  <36.819923, 36.610806, 23.832699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810482, 36.963661, 24.436007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480854, 37.095127, 24.251448>,  <36.283077, 37.174007, 24.140713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480854, 37.095127, 24.251448>,  <36.810482, 36.963661, 24.436007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480854, 37.095127, 24.251448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473932, 0.046181, 0.879349,
		0.310320, 0.943316, 0.117710,
		-0.824069, 0.328666, -0.461399,
		36.233635, 37.193726, 24.113028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647789, 37.633480, 24.744860>,  <36.810482, 36.963661, 24.436007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647789, 37.633480, 24.744860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312485, 37.463692, 24.607950>,  <36.111301, 37.361820, 24.525805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312485, 37.463692, 24.607950>,  <36.647789, 37.633480, 24.744860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312485, 37.463692, 24.607950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323681, -0.117794, 0.938805,
		-0.438814, 0.897746, -0.038651,
		-0.838256, -0.424472, -0.342273,
		36.061008, 37.336349, 24.505268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262196, 37.765381, 25.223194>,  <36.647789, 37.633480, 24.744860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262196, 37.765381, 25.223194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019855, 37.499981, 25.047598>,  <35.874451, 37.340740, 24.942240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019855, 37.499981, 25.047598>,  <36.262196, 37.765381, 25.223194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019855, 37.499981, 25.047598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391708, -0.231501, 0.890490,
		-0.692465, 0.711462, -0.119641,
		-0.605853, -0.663497, -0.438992,
		35.838100, 37.300930, 24.915901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572731, 37.833729, 25.574919>,  <36.262196, 37.765381, 25.223194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572731, 37.833729, 25.574919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603939, 37.474064, 25.402676>,  <35.622665, 37.258266, 25.299330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603939, 37.474064, 25.402676>,  <35.572731, 37.833729, 25.574919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603939, 37.474064, 25.402676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390838, -0.424936, 0.816502,
		-0.917147, 0.104592, -0.384580,
		0.078022, -0.899161, -0.430607,
		35.627346, 37.204315, 25.273493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988499, 37.591991, 25.639538>,  <35.572731, 37.833729, 25.574919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988499, 37.591991, 25.639538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168095, 37.248631, 25.540293>,  <35.275852, 37.042614, 25.480745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168095, 37.248631, 25.540293>,  <34.988499, 37.591991, 25.639538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168095, 37.248631, 25.540293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510812, -0.474405, 0.716945,
		-0.733132, -0.195159, -0.651483,
		0.448985, -0.858401, -0.248112,
		35.302792, 36.991112, 25.465858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436722, 37.019379, 25.602201>,  <34.988499, 37.591991, 25.639538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436722, 37.019379, 25.602201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799145, 36.866764, 25.675413>,  <35.016598, 36.775196, 25.719339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799145, 36.866764, 25.675413>,  <34.436722, 37.019379, 25.602201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799145, 36.866764, 25.675413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393279, -0.599576, 0.697022,
		-0.156198, -0.703520, -0.693298,
		0.906054, -0.381533, 0.183027,
		35.070961, 36.752304, 25.730322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277779, 36.344852, 25.763769>,  <34.436722, 37.019379, 25.602201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277779, 36.344852, 25.763769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649792, 36.384575, 25.905293>,  <34.872997, 36.408409, 25.990208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649792, 36.384575, 25.905293>,  <34.277779, 36.344852, 25.763769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649792, 36.384575, 25.905293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245208, -0.549412, 0.798761,
		0.273709, -0.829629, -0.486620,
		0.930031, 0.099305, 0.353811,
		34.928802, 36.414368, 26.011436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503231, 35.599159, 26.044815>,  <34.277779, 36.344852, 25.763769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503231, 35.599159, 26.044815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737324, 35.879925, 26.207207>,  <34.877777, 36.048386, 26.304642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737324, 35.879925, 26.207207>,  <34.503231, 35.599159, 26.044815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737324, 35.879925, 26.207207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157455, -0.392773, 0.906056,
		0.795433, -0.594175, -0.119343,
		0.585230, 0.701916, 0.405981,
		34.912891, 36.090500, 26.329000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949284, 35.196465, 26.483488>,  <34.503231, 35.599159, 26.044815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949284, 35.196465, 26.483488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969799, 35.579189, 26.597948>,  <34.982109, 35.808823, 26.666624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969799, 35.579189, 26.597948>,  <34.949284, 35.196465, 26.483488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969799, 35.579189, 26.597948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190056, -0.271940, 0.943359,
		0.980433, -0.102768, 0.167901,
		0.051288, 0.956811, 0.286151,
		34.985184, 35.866234, 26.683794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414371, 35.266678, 27.097284>,  <34.949284, 35.196465, 26.483488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414371, 35.266678, 27.097284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179688, 35.590496, 27.105370>,  <35.038876, 35.784786, 27.110220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179688, 35.590496, 27.105370>,  <35.414371, 35.266678, 27.097284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179688, 35.590496, 27.105370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066437, -0.072996, 0.995117,
		0.807067, 0.582502, 0.096612,
		-0.586710, 0.809545, 0.020213,
		35.003674, 35.833359, 27.111433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595329, 35.699329, 27.556278>,  <35.414371, 35.266678, 27.097284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595329, 35.699329, 27.556278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230492, 35.859650, 27.521772>,  <35.011589, 35.955841, 27.501068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230492, 35.859650, 27.521772>,  <35.595329, 35.699329, 27.556278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230492, 35.859650, 27.521772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046646, 0.107593, 0.993100,
		0.407321, 0.909824, -0.079439,
		-0.912093, 0.400805, -0.086264,
		34.956863, 35.979893, 27.495893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578388, 36.154522, 28.058527>,  <35.595329, 35.699329, 27.556278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578388, 36.154522, 28.058527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196232, 36.080456, 27.966488>,  <34.966938, 36.036015, 27.911264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196232, 36.080456, 27.966488>,  <35.578388, 36.154522, 28.058527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196232, 36.080456, 27.966488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203174, -0.153411, 0.967050,
		-0.214363, 0.970659, 0.108947,
		-0.955389, -0.185164, -0.230098,
		34.909615, 36.024906, 27.897459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111176, 36.682144, 28.443817>,  <35.578388, 36.154522, 28.058527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111176, 36.682144, 28.443817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890144, 36.355076, 28.379223>,  <34.757526, 36.158836, 28.340467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890144, 36.355076, 28.379223>,  <35.111176, 36.682144, 28.443817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890144, 36.355076, 28.379223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041245, -0.166687, 0.985147,
		-0.832440, 0.551031, 0.058382,
		-0.552578, -0.817668, -0.161484,
		34.724373, 36.109776, 28.330778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608425, 36.718975, 28.914694>,  <35.111176, 36.682144, 28.443817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608425, 36.718975, 28.914694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615093, 36.337772, 28.793703>,  <34.619095, 36.109051, 28.721109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615093, 36.337772, 28.793703>,  <34.608425, 36.718975, 28.914694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615093, 36.337772, 28.793703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242953, -0.297314, 0.923352,
		-0.969895, 0.058091, -0.236495,
		0.016674, -0.953011, -0.302477,
		34.620094, 36.051868, 28.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915424, 36.402428, 29.075888>,  <34.608425, 36.718975, 28.914694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915424, 36.402428, 29.075888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179539, 36.103535, 29.045767>,  <34.338009, 35.924198, 29.027695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179539, 36.103535, 29.045767>,  <33.915424, 36.402428, 29.075888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179539, 36.103535, 29.045767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241243, -0.305986, 0.920964,
		-0.711213, -0.589933, -0.382302,
		0.660287, -0.747229, -0.075304,
		34.377625, 35.879368, 29.023176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450302, 35.860565, 29.246830>,  <33.915424, 36.402428, 29.075888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450302, 35.860565, 29.246830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828930, 35.732265, 29.260214>,  <34.056107, 35.655285, 29.268244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828930, 35.732265, 29.260214>,  <33.450302, 35.860565, 29.246830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828930, 35.732265, 29.260214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206344, -0.522669, 0.827187,
		-0.247830, -0.789898, -0.560929,
		0.946574, -0.320747, 0.033458,
		34.112904, 35.636040, 29.270250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478115, 35.109680, 29.295334>,  <33.450302, 35.860565, 29.246830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478115, 35.109680, 29.295334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825146, 35.222111, 29.459435>,  <34.033363, 35.289570, 29.557896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825146, 35.222111, 29.459435>,  <33.478115, 35.109680, 29.295334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825146, 35.222111, 29.459435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184699, -0.583832, 0.790586,
		0.461733, -0.761667, -0.454605,
		0.867577, 0.281075, 0.410254,
		34.085419, 35.306435, 29.582510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648609, 34.600296, 29.742781>,  <33.478115, 35.109680, 29.295334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648609, 34.600296, 29.742781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896606, 34.871933, 29.899979>,  <34.045403, 35.034916, 29.994297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896606, 34.871933, 29.899979>,  <33.648609, 34.600296, 29.742781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896606, 34.871933, 29.899979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194678, -0.352069, 0.915504,
		0.760074, -0.644111, -0.086075,
		0.619991, 0.679094, 0.392993,
		34.082603, 35.075661, 30.017876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036198, 34.201061, 30.203974>,  <33.648609, 34.600296, 29.742781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036198, 34.201061, 30.203974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089493, 34.578144, 30.326317>,  <34.121471, 34.804394, 30.399723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089493, 34.578144, 30.326317>,  <34.036198, 34.201061, 30.203974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089493, 34.578144, 30.326317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100826, -0.294113, 0.950438,
		0.985942, -0.157471, 0.055863,
		0.133236, 0.942709, 0.305856,
		34.129463, 34.860958, 30.418074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544521, 34.152615, 30.737194>,  <34.036198, 34.201061, 30.203974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544521, 34.152615, 30.737194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346832, 34.494244, 30.802069>,  <34.228218, 34.699223, 30.840994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346832, 34.494244, 30.802069>,  <34.544521, 34.152615, 30.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346832, 34.494244, 30.802069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070170, -0.225148, 0.971794,
		0.866498, 0.468903, 0.171203,
		-0.494224, 0.854072, 0.162187,
		34.198566, 34.750465, 30.850725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707893, 34.352871, 31.428825>,  <34.544521, 34.152615, 30.737194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707893, 34.352871, 31.428825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365864, 34.551872, 31.370394>,  <34.160645, 34.671272, 31.335335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365864, 34.551872, 31.370394>,  <34.707893, 34.352871, 31.428825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365864, 34.551872, 31.370394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247403, -0.143878, 0.958171,
		0.455676, 0.855446, 0.246110,
		-0.855074, 0.497504, -0.146078,
		34.109341, 34.701122, 31.326571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500675, 34.610222, 32.123970>,  <34.707893, 34.352871, 31.428825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500675, 34.610222, 32.123970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153633, 34.682816, 31.938786>,  <33.945408, 34.726372, 31.827675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153633, 34.682816, 31.938786>,  <34.500675, 34.610222, 32.123970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153633, 34.682816, 31.938786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492150, -0.180260, 0.851642,
		0.071104, 0.966732, 0.245710,
		-0.867601, 0.181482, -0.462960,
		33.893353, 34.737259, 31.799898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104233, 35.034100, 32.615559>,  <34.500675, 34.610222, 32.123970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104233, 35.034100, 32.615559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858402, 34.844898, 32.363029>,  <33.710903, 34.731377, 32.211514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858402, 34.844898, 32.363029>,  <34.104233, 35.034100, 32.615559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858402, 34.844898, 32.363029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611428, -0.220061, 0.760085,
		-0.498453, 0.853135, -0.153965,
		-0.614573, -0.473005, -0.631321,
		33.674030, 34.702995, 32.173634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461361, 35.289177, 32.787624>,  <34.104233, 35.034100, 32.615559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461361, 35.289177, 32.787624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320042, 34.963894, 32.602642>,  <33.235249, 34.768723, 32.491653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320042, 34.963894, 32.602642>,  <33.461361, 35.289177, 32.787624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320042, 34.963894, 32.602642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763267, -0.035264, 0.645120,
		-0.540928, 0.580898, -0.608239,
		-0.353299, -0.813212, -0.462456,
		33.214050, 34.719929, 32.463905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740658, 35.435722, 32.694321>,  <33.461361, 35.289177, 32.787624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740658, 35.435722, 32.694321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804417, 35.042351, 32.659767>,  <32.842674, 34.806328, 32.639034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804417, 35.042351, 32.659767>,  <32.740658, 35.435722, 32.694321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804417, 35.042351, 32.659767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669178, -0.171970, 0.722930,
		-0.725805, -0.057425, -0.685499,
		0.159399, -0.983427, -0.086389,
		32.852238, 34.747322, 32.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092621, 35.147144, 32.445053>,  <32.740658, 35.435722, 32.694321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092621, 35.147144, 32.445053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292473, 34.859299, 32.637936>,  <32.412384, 34.686592, 32.753666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292473, 34.859299, 32.637936>,  <32.092621, 35.147144, 32.445053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292473, 34.859299, 32.637936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659284, 0.045189, 0.750535,
		-0.561886, -0.692901, -0.451854,
		0.499627, -0.719615, 0.482210,
		32.442360, 34.643414, 32.782600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536556, 34.710217, 32.837929>,  <32.092621, 35.147144, 32.445053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536556, 34.710217, 32.837929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879204, 34.606796, 33.016529>,  <32.084793, 34.544746, 33.123688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879204, 34.606796, 33.016529>,  <31.536556, 34.710217, 32.837929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879204, 34.606796, 33.016529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491428, -0.145230, 0.858724,
		-0.157197, -0.955013, -0.251475,
		0.856614, -0.258571, 0.446491,
		32.136189, 34.529232, 33.150478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311407, 34.148254, 33.286942>,  <31.536556, 34.710217, 32.837929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311407, 34.148254, 33.286942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660101, 34.299320, 33.411808>,  <31.869318, 34.389957, 33.486729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660101, 34.299320, 33.411808>,  <31.311407, 34.148254, 33.286942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660101, 34.299320, 33.411808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363142, 0.070254, 0.929081,
		0.328948, -0.923274, 0.198388,
		0.871734, 0.377662, 0.312170,
		31.921621, 34.412621, 33.505459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441177, 33.689964, 33.844406>,  <31.311407, 34.148254, 33.286942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441177, 33.689964, 33.844406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686573, 34.001339, 33.897572>,  <31.833811, 34.188164, 33.929470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686573, 34.001339, 33.897572>,  <31.441177, 33.689964, 33.844406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686573, 34.001339, 33.897572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177429, -0.028132, 0.983732,
		0.769511, -0.627093, 0.120859,
		0.613491, 0.778437, 0.132912,
		31.870621, 34.234871, 33.937447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834637, 33.443329, 34.387741>,  <31.441177, 33.689964, 33.844406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834637, 33.443329, 34.387741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870752, 33.841427, 34.402393>,  <31.892422, 34.080284, 34.411182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870752, 33.841427, 34.402393>,  <31.834637, 33.443329, 34.387741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870752, 33.841427, 34.402393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121145, -0.025530, 0.992306,
		0.988520, -0.094034, 0.118263,
		0.090291, 0.995242, 0.036629,
		31.897840, 34.139999, 34.413383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281898, 33.640457, 34.827900>,  <31.834637, 33.443329, 34.387741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281898, 33.640457, 34.827900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077164, 33.983189, 34.803043>,  <31.954323, 34.188828, 34.788132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077164, 33.983189, 34.803043>,  <32.281898, 33.640457, 34.827900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077164, 33.983189, 34.803043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076330, 0.026688, 0.996725,
		0.855683, 0.514907, 0.051742,
		-0.511840, 0.856831, -0.062139,
		31.923613, 34.240238, 34.784401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559601, 34.193199, 35.295715>,  <32.281898, 33.640457, 34.827900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559601, 34.193199, 35.295715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178505, 34.297089, 35.232674>,  <31.949848, 34.359421, 35.194847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178505, 34.297089, 35.232674>,  <32.559601, 34.193199, 35.295715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178505, 34.297089, 35.232674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118991, 0.158301, 0.980195,
		0.279529, 0.952620, -0.119914,
		-0.952735, 0.259724, -0.157603,
		31.892685, 34.375008, 35.185394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367043, 34.180489, 35.213757>,  <32.559601, 34.193199, 35.295715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367043, 34.180489, 35.213757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674335, 33.997662, 35.393047>,  <33.858711, 33.887966, 35.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674335, 33.997662, 35.393047>,  <33.367043, 34.180489, 35.213757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674335, 33.997662, 35.393047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604790, 0.288647, -0.742234,
		0.209875, 0.841291, 0.498179,
		0.768233, -0.457070, 0.448225,
		33.904804, 33.860542, 35.527515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890266, 34.652012, 35.280205>,  <33.367043, 34.180489, 35.213757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890266, 34.652012, 35.280205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058369, 34.289101, 35.286224>,  <34.159229, 34.071354, 35.289837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058369, 34.289101, 35.286224>,  <33.890266, 34.652012, 35.280205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058369, 34.289101, 35.286224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686195, 0.306903, -0.659505,
		0.593737, 0.287489, 0.751549,
		0.420253, -0.907282, 0.015053,
		34.184444, 34.016914, 35.290741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628242, 34.627247, 35.436977>,  <33.890266, 34.652012, 35.280205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628242, 34.627247, 35.436977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569160, 34.278175, 35.250805>,  <34.533710, 34.068733, 35.139103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569160, 34.278175, 35.250805>,  <34.628242, 34.627247, 35.436977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569160, 34.278175, 35.250805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665543, 0.260399, -0.699460,
		0.731598, -0.413075, 0.542341,
		-0.147704, -0.872675, -0.465427,
		34.524849, 34.016373, 35.111176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217075, 34.697998, 35.060051>,  <34.628242, 34.627247, 35.436977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217075, 34.697998, 35.060051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059307, 34.369389, 34.895359>,  <34.964645, 34.172222, 34.796543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059307, 34.369389, 34.895359>,  <35.217075, 34.697998, 35.060051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059307, 34.369389, 34.895359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529823, 0.162774, -0.832341,
		0.750811, -0.546439, 0.371063,
		-0.394424, -0.821528, -0.411729,
		34.940979, 34.122929, 34.771839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779938, 34.220879, 34.902260>,  <35.217075, 34.697998, 35.060051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779938, 34.220879, 34.902260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459274, 34.154976, 34.672409>,  <35.266876, 34.115437, 34.534500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459274, 34.154976, 34.672409>,  <35.779938, 34.220879, 34.902260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459274, 34.154976, 34.672409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580318, 0.016133, -0.814230,
		0.143420, -0.986203, 0.082677,
		-0.801662, -0.164756, -0.574625,
		35.218777, 34.105549, 34.500023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927414, 33.701572, 34.462830>,  <35.779938, 34.220879, 34.902260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927414, 33.701572, 34.462830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615341, 33.848434, 34.260239>,  <35.428097, 33.936550, 34.138683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615341, 33.848434, 34.260239>,  <35.927414, 33.701572, 34.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615341, 33.848434, 34.260239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526821, -0.050937, -0.848449,
		-0.337311, -0.928764, -0.153685,
		-0.780180, 0.367156, -0.506474,
		35.381287, 33.958580, 34.108295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033291, 33.454472, 33.822102>,  <35.927414, 33.701572, 34.462830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033291, 33.454472, 33.822102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737373, 33.711433, 33.742073>,  <35.559822, 33.865608, 33.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737373, 33.711433, 33.742073>,  <36.033291, 33.454472, 33.822102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737373, 33.711433, 33.742073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389323, 0.166189, -0.905985,
		-0.548757, -0.748132, -0.373047,
		-0.739792, 0.642402, -0.200067,
		35.515434, 33.904156, 33.682053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776245, 33.175896, 33.268749>,  <36.033291, 33.454472, 33.822102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776245, 33.175896, 33.268749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684753, 33.564800, 33.288342>,  <35.629860, 33.798141, 33.300098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684753, 33.564800, 33.288342>,  <35.776245, 33.175896, 33.268749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684753, 33.564800, 33.288342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517258, 0.164006, -0.839968,
		-0.824699, -0.166788, -0.540421,
		-0.228729, 0.972257, 0.048983,
		35.616135, 33.856476, 33.303036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479782, 33.363884, 32.612011>,  <35.776245, 33.175896, 33.268749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479782, 33.363884, 32.612011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626076, 33.695644, 32.780926>,  <35.713852, 33.894703, 32.882275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626076, 33.695644, 32.780926>,  <35.479782, 33.363884, 32.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626076, 33.695644, 32.780926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427290, 0.253446, -0.867864,
		-0.826836, 0.497849, -0.261701,
		0.365739, 0.829404, 0.422284,
		35.735798, 33.944466, 32.907612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456532, 33.918968, 32.063457>,  <35.479782, 33.363884, 32.612011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456532, 33.918968, 32.063457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693031, 34.104046, 32.327682>,  <35.834930, 34.215092, 32.486217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693031, 34.104046, 32.327682>,  <35.456532, 33.918968, 32.063457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693031, 34.104046, 32.327682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515387, 0.413218, -0.750751,
		-0.620320, 0.784327, 0.005852,
		0.591252, 0.462690, 0.660559,
		35.870407, 34.242851, 32.525848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390564, 34.580769, 32.024696>,  <35.456532, 33.918968, 32.063457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390564, 34.580769, 32.024696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769192, 34.522194, 32.139629>,  <35.996368, 34.487049, 32.208591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769192, 34.522194, 32.139629>,  <35.390564, 34.580769, 32.024696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769192, 34.522194, 32.139629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321463, 0.499729, -0.804321,
		-0.025811, 0.853714, 0.520102,
		0.946570, -0.146433, 0.287336,
		36.053162, 34.478264, 32.225830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795105, 35.182713, 31.901451>,  <35.390564, 34.580769, 32.024696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795105, 35.182713, 31.901451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095528, 34.922443, 31.946238>,  <36.275784, 34.766281, 31.973110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095528, 34.922443, 31.946238>,  <35.795105, 35.182713, 31.901451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095528, 34.922443, 31.946238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521637, 0.480842, -0.704759,
		0.404728, 0.587722, 0.700555,
		0.751059, -0.650671, 0.111967,
		36.320847, 34.727242, 31.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451801, 35.632706, 31.911787>,  <35.795105, 35.182713, 31.901451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451801, 35.632706, 31.911787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590088, 35.264076, 31.841148>,  <36.673061, 35.042900, 31.798765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590088, 35.264076, 31.841148>,  <36.451801, 35.632706, 31.911787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590088, 35.264076, 31.841148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650004, 0.370939, -0.663249,
		0.676738, 0.114507, 0.727264,
		0.345717, -0.921571, -0.176599,
		36.693802, 34.987606, 31.788168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125206, 35.604496, 31.889393>,  <36.451801, 35.632706, 31.911787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125206, 35.604496, 31.889393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062477, 35.254097, 31.706953>,  <37.024841, 35.043858, 31.597488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062477, 35.254097, 31.706953>,  <37.125206, 35.604496, 31.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062477, 35.254097, 31.706953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609836, 0.277372, -0.742405,
		0.776858, -0.394569, 0.490720,
		-0.156818, -0.876002, -0.456101,
		37.015430, 34.991295, 31.570122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803581, 35.424038, 31.571268>,  <37.125206, 35.604496, 31.889393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803581, 35.424038, 31.571268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528141, 35.227905, 31.357574>,  <37.362877, 35.110226, 31.229359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528141, 35.227905, 31.357574>,  <37.803581, 35.424038, 31.571268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528141, 35.227905, 31.357574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414555, 0.338274, -0.844816,
		0.594956, -0.803211, -0.029667,
		-0.688601, -0.490330, -0.534233,
		37.321560, 35.080807, 31.197304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158646, 35.144390, 30.998632>,  <37.803581, 35.424038, 31.571268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158646, 35.144390, 30.998632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771828, 35.177536, 30.902336>,  <37.539738, 35.197422, 30.844559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771828, 35.177536, 30.902336>,  <38.158646, 35.144390, 30.998632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771828, 35.177536, 30.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254592, 0.306484, -0.917197,
		-0.002217, -0.948262, -0.317481,
		-0.967046, 0.082862, -0.240740,
		37.481712, 35.202393, 30.830114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252850, 35.148411, 30.310589>,  <38.158646, 35.144390, 30.998632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252850, 35.148411, 30.310589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857792, 35.209911, 30.322670>,  <37.620758, 35.246811, 30.329920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857792, 35.209911, 30.322670>,  <38.252850, 35.148411, 30.310589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857792, 35.209911, 30.322670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030274, 0.376368, -0.925975,
		-0.153742, -0.913622, -0.376374,
		-0.987647, 0.153756, 0.030204,
		37.561497, 35.256039, 30.331732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917019, 34.825764, 29.661856>,  <38.252850, 35.148411, 30.310589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917019, 34.825764, 29.661856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699673, 35.130905, 29.802032>,  <37.569267, 35.313992, 29.886139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699673, 35.130905, 29.802032>,  <37.917019, 34.825764, 29.661856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699673, 35.130905, 29.802032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101356, 0.354778, -0.929441,
		-0.833358, -0.540541, -0.115453,
		-0.543361, 0.762855, 0.350444,
		37.536663, 35.359760, 29.907166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244450, 34.818771, 29.373060>,  <37.917019, 34.825764, 29.661856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244450, 34.818771, 29.373060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281239, 35.202709, 29.479071>,  <37.303314, 35.433071, 29.542677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281239, 35.202709, 29.479071>,  <37.244450, 34.818771, 29.373060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281239, 35.202709, 29.479071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271366, 0.280241, -0.920775,
		-0.958072, 0.012771, 0.286245,
		0.091976, 0.959845, 0.265025,
		37.308830, 35.490662, 29.558578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669785, 35.094448, 29.128168>,  <37.244450, 34.818771, 29.373060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669785, 35.094448, 29.128168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909878, 35.406689, 29.197886>,  <37.053936, 35.594032, 29.239716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909878, 35.406689, 29.197886>,  <36.669785, 35.094448, 29.128168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909878, 35.406689, 29.197886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187335, 0.349066, -0.918182,
		-0.777573, 0.518476, 0.355757,
		0.600238, 0.780600, 0.174296,
		37.089951, 35.640869, 29.250174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291092, 35.674152, 28.883257>,  <36.669785, 35.094448, 29.128168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291092, 35.674152, 28.883257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665878, 35.813030, 28.898989>,  <36.890751, 35.896355, 28.908428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665878, 35.813030, 28.898989>,  <36.291092, 35.674152, 28.883257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665878, 35.813030, 28.898989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169625, 0.550377, -0.817504,
		-0.305478, 0.759304, 0.574578,
		0.936969, 0.347192, 0.039331,
		36.946968, 35.917187, 28.910788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265118, 36.448505, 28.876726>,  <36.291092, 35.674152, 28.883257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265118, 36.448505, 28.876726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614635, 36.313759, 28.736437>,  <36.824345, 36.232910, 28.652264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614635, 36.313759, 28.736437>,  <36.265118, 36.448505, 28.876726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614635, 36.313759, 28.736437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127398, 0.537449, -0.833618,
		0.469318, 0.773089, 0.426701,
		0.873791, -0.336871, -0.350724,
		36.876774, 36.212696, 28.631220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425922, 36.943737, 28.311493>,  <36.265118, 36.448505, 28.876726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425922, 36.943737, 28.311493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661232, 36.627678, 28.242672>,  <36.802418, 36.438042, 28.201380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661232, 36.627678, 28.242672>,  <36.425922, 36.943737, 28.311493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661232, 36.627678, 28.242672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036672, 0.238609, -0.970423,
		0.807829, 0.564566, 0.169343,
		0.588274, -0.790147, -0.172051,
		36.837715, 36.390633, 28.191057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970566, 37.182083, 27.784971>,  <36.425922, 36.943737, 28.311493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970566, 37.182083, 27.784971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007511, 36.784031, 27.771259>,  <37.029678, 36.545200, 27.763033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007511, 36.784031, 27.771259>,  <36.970566, 37.182083, 27.784971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007511, 36.784031, 27.771259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207895, 0.052941, -0.976717,
		0.973780, 0.083089, 0.211774,
		0.092366, -0.995135, -0.034279,
		37.035221, 36.485489, 27.760975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669804, 36.976082, 27.409094>,  <36.970566, 37.182083, 27.784971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669804, 36.976082, 27.409094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439522, 36.650120, 27.382288>,  <37.301353, 36.454544, 27.366205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439522, 36.650120, 27.382288>,  <37.669804, 36.976082, 27.409094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439522, 36.650120, 27.382288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422470, -0.226287, -0.877675,
		0.700059, -0.533593, 0.474549,
		-0.575705, -0.814907, -0.067013,
		37.266811, 36.405647, 27.362185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152916, 36.421185, 27.217249>,  <37.669804, 36.976082, 27.409094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152916, 36.421185, 27.217249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785500, 36.313274, 27.101664>,  <37.565048, 36.248528, 27.032312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785500, 36.313274, 27.101664>,  <38.152916, 36.421185, 27.217249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785500, 36.313274, 27.101664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373890, -0.355439, -0.856662,
		0.128397, -0.894921, 0.427352,
		-0.918542, -0.269776, -0.288965,
		37.509937, 36.232342, 27.014975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196201, 35.732239, 27.076908>,  <38.152916, 36.421185, 27.217249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196201, 35.732239, 27.076908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917301, 35.899776, 26.844215>,  <37.749962, 36.000298, 26.704599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917301, 35.899776, 26.844215>,  <38.196201, 35.732239, 27.076908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917301, 35.899776, 26.844215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424398, -0.412813, -0.805898,
		-0.577690, -0.808800, 0.110079,
		-0.697252, 0.418842, -0.581731,
		37.708126, 36.025429, 26.669697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865627, 35.152874, 26.618748>,  <38.196201, 35.732239, 27.076908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865627, 35.152874, 26.618748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830521, 35.513023, 26.448278>,  <37.809456, 35.729115, 26.345997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830521, 35.513023, 26.448278>,  <37.865627, 35.152874, 26.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830521, 35.513023, 26.448278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326684, -0.378147, -0.866188,
		-0.941050, -0.215246, -0.260950,
		-0.087766, 0.900374, -0.426173,
		37.804192, 35.783134, 26.320427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467266, 35.045811, 25.978497>,  <37.865627, 35.152874, 26.618748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467266, 35.045811, 25.978497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659187, 35.393917, 25.933914>,  <37.774342, 35.602779, 25.907164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659187, 35.393917, 25.933914>,  <37.467266, 35.045811, 25.978497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659187, 35.393917, 25.933914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338596, -0.300861, -0.891536,
		-0.809407, 0.390025, -0.439023,
		0.479806, 0.870266, -0.111458,
		37.803127, 35.654999, 25.900476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243538, 35.250179, 25.288517>,  <37.467266, 35.045811, 25.978497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243538, 35.250179, 25.288517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573868, 35.456532, 25.379623>,  <37.772068, 35.580341, 25.434288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573868, 35.456532, 25.379623>,  <37.243538, 35.250179, 25.288517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573868, 35.456532, 25.379623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408223, -0.268232, -0.872585,
		-0.389055, 0.813584, -0.432108,
		0.825827, 0.515880, 0.227767,
		37.821617, 35.611294, 25.447954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362331, 35.772457, 24.779675>,  <37.243538, 35.250179, 25.288517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362331, 35.772457, 24.779675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725845, 35.690559, 24.925110>,  <37.943954, 35.641422, 25.012371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725845, 35.690559, 24.925110>,  <37.362331, 35.772457, 24.779675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725845, 35.690559, 24.925110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360344, -0.054278, -0.931239,
		0.210401, 0.977309, 0.024452,
		0.908781, -0.204745, 0.363587,
		37.998478, 35.629135, 25.034185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771816, 36.064388, 24.382504>,  <37.362331, 35.772457, 24.779675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771816, 36.064388, 24.382504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091675, 35.917953, 24.572889>,  <38.283592, 35.830093, 24.687120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091675, 35.917953, 24.572889>,  <37.771816, 36.064388, 24.382504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091675, 35.917953, 24.572889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511626, 0.000456, -0.859208,
		0.314326, 0.930582, 0.187663,
		0.799649, -0.366084, 0.475967,
		38.331570, 35.808128, 24.715679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246723, 36.402576, 24.024391>,  <37.771816, 36.064388, 24.382504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246723, 36.402576, 24.024391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386753, 36.071960, 24.200701>,  <38.470772, 35.873592, 24.306486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386753, 36.071960, 24.200701>,  <38.246723, 36.402576, 24.024391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386753, 36.071960, 24.200701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442494, -0.268819, -0.855532,
		0.825620, 0.494536, 0.271634,
		0.350071, -0.826541, 0.440772,
		38.491776, 35.823997, 24.332932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986973, 36.399136, 23.904289>,  <38.246723, 36.402576, 24.024391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986973, 36.399136, 23.904289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890263, 36.019413, 23.984644>,  <38.832237, 35.791580, 24.032856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890263, 36.019413, 23.984644>,  <38.986973, 36.399136, 23.904289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890263, 36.019413, 23.984644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432356, -0.290736, -0.853546,
		0.868685, -0.119512, 0.480733,
		-0.241775, -0.949310, 0.200887,
		38.817730, 35.734619, 24.044910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638836, 36.143955, 23.767502>,  <38.986973, 36.399136, 23.904289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638836, 36.143955, 23.767502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415161, 35.812428, 23.759737>,  <39.280956, 35.613510, 23.755079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415161, 35.812428, 23.759737>,  <39.638836, 36.143955, 23.767502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415161, 35.812428, 23.759737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426207, -0.267312, -0.864229,
		0.711098, -0.491536, 0.502724,
		-0.559184, -0.828816, -0.019411,
		39.247406, 35.563782, 23.753914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058689, 35.570354, 23.663893>,  <39.638836, 36.143955, 23.767502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058689, 35.570354, 23.663893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694016, 35.464310, 23.538319>,  <39.475212, 35.400681, 23.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694016, 35.464310, 23.538319>,  <40.058689, 35.570354, 23.663893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694016, 35.464310, 23.538319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385630, -0.288239, -0.876475,
		0.141878, -0.920126, 0.365018,
		-0.911680, -0.265115, -0.313934,
		39.420513, 35.384777, 23.444138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174820, 34.900970, 23.378380>,  <40.058689, 35.570354, 23.663893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174820, 34.900970, 23.378380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818920, 35.027042, 23.246317>,  <39.605381, 35.102684, 23.167078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818920, 35.027042, 23.246317>,  <40.174820, 34.900970, 23.378380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818920, 35.027042, 23.246317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249158, -0.270688, -0.929864,
		-0.382443, -0.909610, 0.162316,
		-0.889752, 0.315178, -0.330160,
		39.551994, 35.121597, 23.147268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802914, 34.295036, 23.251423>,  <40.174820, 34.900970, 23.378380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802914, 34.295036, 23.251423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762314, 34.623604, 23.026934>,  <39.737953, 34.820744, 22.892241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762314, 34.623604, 23.026934>,  <39.802914, 34.295036, 23.251423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762314, 34.623604, 23.026934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520699, -0.436826, -0.733523,
		-0.847685, -0.366681, -0.383374,
		-0.101501, 0.821418, -0.561221,
		39.731865, 34.870029, 22.858568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412056, 34.332867, 22.475723>,  <39.802914, 34.295036, 23.251423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412056, 34.332867, 22.475723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716831, 34.076721, 22.436983>,  <39.899696, 33.923035, 22.413738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716831, 34.076721, 22.436983>,  <39.412056, 34.332867, 22.475723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716831, 34.076721, 22.436983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214060, -0.390146, 0.895525,
		-0.611247, -0.661605, -0.434344,
		0.761942, -0.640363, -0.096852,
		39.945415, 33.884613, 22.407928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198502, 33.693027, 22.859388>,  <39.412056, 34.332867, 22.475723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198502, 33.693027, 22.859388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585545, 33.607807, 22.805214>,  <39.817772, 33.556675, 22.772709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585545, 33.607807, 22.805214>,  <39.198502, 33.693027, 22.859388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585545, 33.607807, 22.805214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023818, -0.611119, 0.791180,
		-0.251328, -0.762327, -0.596398,
		0.967608, -0.213051, -0.135435,
		39.875828, 33.543892, 22.764584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249767, 33.046074, 22.889332>,  <39.198502, 33.693027, 22.859388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249767, 33.046074, 22.889332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618137, 33.174927, 22.977093>,  <39.839157, 33.252239, 23.029749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618137, 33.174927, 22.977093>,  <39.249767, 33.046074, 22.889332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618137, 33.174927, 22.977093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011818, -0.539592, 0.841843,
		0.389570, -0.777864, -0.493115,
		0.920921, 0.322130, 0.219402,
		39.894413, 33.271564, 23.042913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643845, 32.482071, 23.209936>,  <39.249767, 33.046074, 22.889332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643845, 32.482071, 23.209936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847660, 32.801102, 23.339085>,  <39.969948, 32.992519, 23.416574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847660, 32.801102, 23.339085>,  <39.643845, 32.482071, 23.209936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847660, 32.801102, 23.339085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081445, -0.418258, 0.904670,
		0.856586, -0.434666, -0.278076,
		0.509536, 0.797575, 0.322873,
		40.000523, 33.040375, 23.435946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290440, 32.239082, 23.544142>,  <39.643845, 32.482071, 23.209936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290440, 32.239082, 23.544142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228363, 32.606270, 23.690151>,  <40.191116, 32.826584, 23.777758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228363, 32.606270, 23.690151>,  <40.290440, 32.239082, 23.544142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228363, 32.606270, 23.690151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277993, -0.313989, 0.907817,
		0.947964, 0.242362, -0.206460,
		-0.155194, 0.917971, 0.365025,
		40.181805, 32.881660, 23.799660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790695, 32.385719, 23.991884>,  <40.290440, 32.239082, 23.544142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790695, 32.385719, 23.991884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519714, 32.656185, 24.107721>,  <40.357124, 32.818462, 24.177223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519714, 32.656185, 24.107721>,  <40.790695, 32.385719, 23.991884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519714, 32.656185, 24.107721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377099, -0.018769, 0.925983,
		0.631548, 0.736516, -0.242264,
		-0.677454, 0.676160, 0.289593,
		40.316479, 32.859032, 24.194599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160572, 32.928719, 24.292297>,  <40.790695, 32.385719, 23.991884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160572, 32.928719, 24.292297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790699, 32.962830, 24.440720>,  <40.568775, 32.983295, 24.529774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790699, 32.962830, 24.440720>,  <41.160572, 32.928719, 24.292297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790699, 32.962830, 24.440720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374536, 0.028683, 0.926769,
		0.068392, 0.995944, -0.058464,
		-0.924687, 0.085281, 0.371055,
		40.513294, 32.988415, 24.552036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155884, 33.498512, 24.793385>,  <41.160572, 32.928719, 24.292297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155884, 33.498512, 24.793385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840839, 33.266155, 24.875582>,  <40.651814, 33.126740, 24.924900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840839, 33.266155, 24.875582>,  <41.155884, 33.498512, 24.793385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840839, 33.266155, 24.875582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066140, 0.251872, 0.965498,
		-0.612609, 0.774031, -0.159957,
		-0.787614, -0.580893, 0.205493,
		40.604557, 33.091888, 24.937229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775986, 33.968044, 25.195009>,  <41.155884, 33.498512, 24.793385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775986, 33.968044, 25.195009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650517, 33.593796, 25.259789>,  <40.575233, 33.369247, 25.298656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650517, 33.593796, 25.259789>,  <40.775986, 33.968044, 25.195009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650517, 33.593796, 25.259789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118586, 0.207819, 0.970952,
		-0.942097, 0.285357, -0.176138,
		-0.313673, -0.935619, 0.161946,
		40.556416, 33.313110, 25.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090012, 34.098331, 25.429832>,  <40.775986, 33.968044, 25.195009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090012, 34.098331, 25.429832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212852, 33.736118, 25.546930>,  <40.286556, 33.518791, 25.617189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212852, 33.736118, 25.546930>,  <40.090012, 34.098331, 25.429832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212852, 33.736118, 25.546930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359523, 0.174423, 0.916690,
		-0.881152, -0.386770, -0.271992,
		0.307106, -0.905531, 0.292746,
		40.304985, 33.464458, 25.634754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604462, 33.864120, 25.855213>,  <40.090012, 34.098331, 25.429832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604462, 33.864120, 25.855213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900936, 33.613674, 25.952063>,  <40.078819, 33.463406, 26.010172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900936, 33.613674, 25.952063>,  <39.604462, 33.864120, 25.855213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900936, 33.613674, 25.952063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233660, 0.097508, 0.967417,
		-0.629324, -0.773610, -0.074027,
		0.741185, -0.626116, 0.242126,
		40.123291, 33.425838, 26.024700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314922, 33.318832, 26.252832>,  <39.604462, 33.864120, 25.855213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314922, 33.318832, 26.252832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700504, 33.365978, 26.348251>,  <39.931854, 33.394268, 26.405502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700504, 33.365978, 26.348251>,  <39.314922, 33.318832, 26.252832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700504, 33.365978, 26.348251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254063, 0.141332, 0.956806,
		0.079062, -0.982920, 0.166182,
		0.963951, 0.117867, 0.238550,
		39.989689, 33.401340, 26.419817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498474, 32.774986, 26.679800>,  <39.314922, 33.318832, 26.252832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498474, 32.774986, 26.679800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710011, 33.110798, 26.729635>,  <39.836933, 33.312286, 26.759537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710011, 33.110798, 26.729635>,  <39.498474, 32.774986, 26.679800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710011, 33.110798, 26.729635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213612, -0.010407, 0.976863,
		0.821401, -0.543216, 0.173829,
		0.528839, 0.839528, 0.124586,
		39.868664, 33.362656, 26.767012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058346, 32.551456, 27.202320>,  <39.498474, 32.774986, 26.679800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058346, 32.551456, 27.202320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004295, 32.945667, 27.243261>,  <39.971863, 33.182194, 27.267826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004295, 32.945667, 27.243261>,  <40.058346, 32.551456, 27.202320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004295, 32.945667, 27.243261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121930, -0.119055, 0.985373,
		0.983297, 0.120674, 0.136253,
		-0.135131, 0.985527, 0.102352,
		39.963757, 33.241325, 27.273968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422874, 32.721107, 27.837248>,  <40.058346, 32.551456, 27.202320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422874, 32.721107, 27.837248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204708, 33.050488, 27.774693>,  <40.073811, 33.248116, 27.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204708, 33.050488, 27.774693>,  <40.422874, 32.721107, 27.837248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204708, 33.050488, 27.774693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189002, 0.060948, 0.980083,
		0.816580, 0.564107, 0.122392,
		-0.545413, 0.823449, -0.156387,
		40.041084, 33.297523, 27.727777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587353, 33.196781, 28.421368>,  <40.422874, 32.721107, 27.837248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587353, 33.196781, 28.421368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245213, 33.348305, 28.280016>,  <40.039928, 33.439220, 28.195206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245213, 33.348305, 28.280016>,  <40.587353, 33.196781, 28.421368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245213, 33.348305, 28.280016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369507, 0.031986, 0.928677,
		0.363098, 0.924920, 0.112615,
		-0.855351, 0.378813, -0.353378,
		39.988605, 33.461948, 28.174002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446915, 33.815403, 28.665426>,  <40.587353, 33.196781, 28.421368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446915, 33.815403, 28.665426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079414, 33.696648, 28.561312>,  <39.858913, 33.625393, 28.498842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079414, 33.696648, 28.561312>,  <40.446915, 33.815403, 28.665426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079414, 33.696648, 28.561312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310428, 0.135792, 0.940848,
		-0.243984, 0.945207, -0.216923,
		-0.918752, -0.296891, -0.260288,
		39.803787, 33.607582, 28.483225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108593, 34.182625, 29.056019>,  <40.446915, 33.815403, 28.665426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108593, 34.182625, 29.056019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838833, 33.909088, 28.944632>,  <39.676975, 33.744965, 28.877800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838833, 33.909088, 28.944632>,  <40.108593, 34.182625, 29.056019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838833, 33.909088, 28.944632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446890, 0.077814, 0.891199,
		-0.587769, 0.725471, -0.358079,
		-0.674402, -0.683840, -0.278469,
		39.636513, 33.703938, 28.861092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491394, 34.419235, 29.219099>,  <40.108593, 34.182625, 29.056019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491394, 34.419235, 29.219099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428749, 34.024540, 29.202066>,  <39.391163, 33.787724, 29.191847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428749, 34.024540, 29.202066>,  <39.491394, 34.419235, 29.219099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428749, 34.024540, 29.202066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370352, 0.018704, 0.928703,
		-0.915594, 0.161214, -0.368371,
		-0.156610, -0.986742, -0.042581,
		39.381767, 33.728516, 29.189293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910873, 34.404987, 29.577801>,  <39.491394, 34.419235, 29.219099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910873, 34.404987, 29.577801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062500, 34.035389, 29.557644>,  <39.153477, 33.813629, 29.545549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062500, 34.035389, 29.557644>,  <38.910873, 34.404987, 29.577801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062500, 34.035389, 29.557644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438689, -0.227382, 0.869396,
		-0.814778, -0.307451, -0.491540,
		0.379064, -0.923998, -0.050391,
		39.176220, 33.758190, 29.542526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308781, 33.927250, 29.870182>,  <38.910873, 34.404987, 29.577801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308781, 33.927250, 29.870182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671963, 33.761459, 29.894936>,  <38.889870, 33.661983, 29.909788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671963, 33.761459, 29.894936>,  <38.308781, 33.927250, 29.870182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671963, 33.761459, 29.894936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202322, -0.304224, 0.930867,
		-0.367000, -0.857702, -0.360080,
		0.907952, -0.414480, 0.061881,
		38.944347, 33.637115, 29.913500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128796, 33.304783, 30.233753>,  <38.308781, 33.927250, 29.870182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128796, 33.304783, 30.233753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527966, 33.303337, 30.259495>,  <38.767467, 33.302471, 30.274940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527966, 33.303337, 30.259495>,  <38.128796, 33.304783, 30.233753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527966, 33.303337, 30.259495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064266, -0.132228, 0.989134,
		0.004933, -0.991213, -0.132186,
		0.997921, -0.003616, 0.064354,
		38.827343, 33.302254, 30.278801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327354, 32.634079, 30.450872>,  <38.128796, 33.304783, 30.233753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327354, 32.634079, 30.450872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615681, 32.892105, 30.552315>,  <38.788677, 33.046921, 30.613180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615681, 32.892105, 30.552315>,  <38.327354, 32.634079, 30.450872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615681, 32.892105, 30.552315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166195, -0.194365, 0.966748,
		0.672906, -0.738996, -0.032896,
		0.720817, 0.645063, 0.253607,
		38.831924, 33.085625, 30.628397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739193, 32.344833, 31.105291>,  <38.327354, 32.634079, 30.450872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739193, 32.344833, 31.105291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828915, 32.734501, 31.094843>,  <38.882748, 32.968300, 31.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828915, 32.734501, 31.094843>,  <38.739193, 32.344833, 31.105291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828915, 32.734501, 31.094843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051707, 0.014869, 0.998551,
		0.973145, -0.225334, -0.047036,
		0.224308, 0.974168, -0.026121,
		38.896206, 33.026752, 31.087008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315758, 32.466885, 31.563982>,  <38.739193, 32.344833, 31.105291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315758, 32.466885, 31.563982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147575, 32.826885, 31.517994>,  <39.046665, 33.042885, 31.490402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147575, 32.826885, 31.517994>,  <39.315758, 32.466885, 31.563982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147575, 32.826885, 31.517994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091372, 0.168070, 0.981531,
		0.902700, 0.402186, -0.152901,
		-0.420456, 0.899999, -0.114969,
		39.021439, 33.096886, 31.483503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674511, 32.924305, 31.922722>,  <39.315758, 32.466885, 31.563982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674511, 32.924305, 31.922722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329254, 33.121750, 31.880154>,  <39.122101, 33.240215, 31.854612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329254, 33.121750, 31.880154>,  <39.674511, 32.924305, 31.922722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329254, 33.121750, 31.880154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014821, 0.235430, 0.971778,
		0.504738, 0.837209, -0.210526,
		-0.863145, 0.493613, -0.106423,
		39.070309, 33.269833, 31.848227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768627, 33.472553, 32.386616>,  <39.674511, 32.924305, 31.922722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768627, 33.472553, 32.386616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378132, 33.436111, 32.307972>,  <39.143833, 33.414246, 32.260784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378132, 33.436111, 32.307972>,  <39.768627, 33.472553, 32.386616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378132, 33.436111, 32.307972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204840, 0.091981, 0.974464,
		-0.070693, 0.991584, -0.108457,
		-0.976239, -0.091105, -0.196614,
		39.085258, 33.408779, 32.248989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460606, 34.047821, 32.629261>,  <39.768627, 33.472553, 32.386616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460606, 34.047821, 32.629261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183300, 33.759693, 32.638428>,  <39.016918, 33.586815, 32.643929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183300, 33.759693, 32.638428>,  <39.460606, 34.047821, 32.629261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183300, 33.759693, 32.638428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205362, 0.227924, 0.951776,
		-0.690805, 0.655126, -0.305938,
		-0.693264, -0.720320, 0.022913,
		38.975323, 33.543598, 32.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017117, 34.279652, 33.206558>,  <39.460606, 34.047821, 32.629261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017117, 34.279652, 33.206558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855854, 33.917645, 33.152283>,  <38.759094, 33.700439, 33.119717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855854, 33.917645, 33.152283>,  <39.017117, 34.279652, 33.206558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855854, 33.917645, 33.152283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324212, 0.002594, 0.945981,
		-0.855773, 0.425376, -0.294462,
		-0.403161, -0.905013, -0.135692,
		38.734905, 33.646141, 33.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378723, 34.324329, 33.389496>,  <39.017117, 34.279652, 33.206558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378723, 34.324329, 33.389496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466213, 33.937305, 33.440075>,  <38.518707, 33.705090, 33.470421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466213, 33.937305, 33.440075>,  <38.378723, 34.324329, 33.389496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466213, 33.937305, 33.440075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386852, 0.032984, 0.921552,
		-0.895826, -0.250483, -0.367088,
		0.218725, -0.967559, 0.126447,
		38.531830, 33.647038, 33.478008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745464, 33.972309, 33.550385>,  <38.378723, 34.324329, 33.389496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745464, 33.972309, 33.550385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000484, 33.692612, 33.679749>,  <38.153496, 33.524796, 33.757366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000484, 33.692612, 33.679749>,  <37.745464, 33.972309, 33.550385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000484, 33.692612, 33.679749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495745, -0.051020, 0.866968,
		-0.589719, -0.713063, -0.379173,
		0.637548, -0.699241, 0.323410,
		38.191750, 33.482838, 33.776772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324966, 33.580650, 33.865154>,  <37.745464, 33.972309, 33.550385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324966, 33.580650, 33.865154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672684, 33.450844, 34.014297>,  <37.881313, 33.372959, 34.103783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672684, 33.450844, 34.014297>,  <37.324966, 33.580650, 33.865154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672684, 33.450844, 34.014297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465565, -0.284083, 0.838180,
		-0.166080, -0.902212, -0.398034,
		0.869291, -0.324516, 0.372858,
		37.933472, 33.353489, 34.126156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187057, 32.935860, 34.183754>,  <37.324966, 33.580650, 33.865154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187057, 32.935860, 34.183754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525307, 33.075920, 34.344906>,  <37.728256, 33.159954, 34.441597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525307, 33.075920, 34.344906>,  <37.187057, 32.935860, 34.183754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525307, 33.075920, 34.344906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295743, -0.320994, 0.899722,
		0.444358, -0.879977, -0.167888,
		0.845625, 0.350146, 0.402883,
		37.778996, 33.180965, 34.465771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484451, 32.364243, 34.614414>,  <37.187057, 32.935860, 34.183754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484451, 32.364243, 34.614414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649242, 32.709106, 34.732365>,  <37.748119, 32.916023, 34.803135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649242, 32.709106, 34.732365>,  <37.484451, 32.364243, 34.614414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649242, 32.709106, 34.732365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007909, -0.326984, 0.944997,
		0.911159, -0.386987, -0.141529,
		0.411979, 0.862161, 0.294874,
		37.772835, 32.967754, 34.820827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047718, 32.170376, 35.163887>,  <37.484451, 32.364243, 34.614414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047718, 32.170376, 35.163887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970421, 32.558044, 35.225018>,  <37.924042, 32.790646, 35.261696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970421, 32.558044, 35.225018>,  <38.047718, 32.170376, 35.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970421, 32.558044, 35.225018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006872, -0.157100, 0.987559,
		0.981128, 0.189785, 0.037018,
		-0.193239, 0.969176, 0.152831,
		37.912449, 32.848797, 35.270866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363522, 32.355942, 35.874706>,  <38.047718, 32.170376, 35.163887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363522, 32.355942, 35.874706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110790, 32.660427, 35.816250>,  <37.959152, 32.843117, 35.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110790, 32.660427, 35.816250>,  <38.363522, 32.355942, 35.874706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110790, 32.660427, 35.816250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237296, -0.010465, 0.971381,
		0.737894, 0.648423, 0.187244,
		-0.631825, 0.761209, -0.146146,
		37.921242, 32.888790, 35.772408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400726, 32.672123, 36.438671>,  <38.363522, 32.355942, 35.874706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400726, 32.672123, 36.438671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046680, 32.795025, 36.298866>,  <37.834251, 32.868767, 36.214985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046680, 32.795025, 36.298866>,  <38.400726, 32.672123, 36.438671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046680, 32.795025, 36.298866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386435, -0.066807, 0.919894,
		0.259293, 0.949279, 0.177866,
		-0.885119, 0.307256, -0.349512,
		37.781143, 32.887203, 36.194012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201962, 33.247643, 36.784424>,  <38.400726, 32.672123, 36.438671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201962, 33.247643, 36.784424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846203, 33.144173, 36.633663>,  <37.632748, 33.082092, 36.543205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846203, 33.144173, 36.633663>,  <38.201962, 33.247643, 36.784424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846203, 33.144173, 36.633663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390763, 0.002366, 0.920488,
		-0.237215, 0.965962, -0.103185,
		-0.889401, -0.258674, -0.376900,
		37.579384, 33.066570, 36.520592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650585, 33.631573, 37.097023>,  <38.201962, 33.247643, 36.784424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650585, 33.631573, 37.097023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446335, 33.313046, 36.967316>,  <37.323784, 33.121929, 36.889492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446335, 33.313046, 36.967316>,  <37.650585, 33.631573, 37.097023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446335, 33.313046, 36.967316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430785, -0.089444, 0.898011,
		-0.744103, 0.598233, -0.297368,
		-0.510622, -0.796314, -0.324265,
		37.293148, 33.074150, 36.870037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914791, 33.649837, 37.319595>,  <37.650585, 33.631573, 37.097023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914791, 33.649837, 37.319595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970829, 33.265266, 37.224911>,  <37.004452, 33.034523, 37.168098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970829, 33.265266, 37.224911>,  <36.914791, 33.649837, 37.319595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970829, 33.265266, 37.224911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371713, -0.272652, 0.887407,
		-0.917717, -0.036330, -0.395571,
		0.140093, -0.961427, -0.236712,
		37.012856, 32.976837, 37.153896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261059, 33.166290, 37.343544>,  <36.914791, 33.649837, 37.319595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261059, 33.166290, 37.343544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611237, 32.991467, 37.426086>,  <36.821342, 32.886574, 37.475613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611237, 32.991467, 37.426086>,  <36.261059, 33.166290, 37.343544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611237, 32.991467, 37.426086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374867, -0.344499, 0.860694,
		-0.305082, -0.830845, -0.465427,
		0.875443, -0.437056, 0.206356,
		36.873867, 32.860348, 37.487991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137177, 32.536282, 37.578751>,  <36.261059, 33.166290, 37.343544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137177, 32.536282, 37.578751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501286, 32.630394, 37.715015>,  <36.719749, 32.686863, 37.796772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501286, 32.630394, 37.715015>,  <36.137177, 32.536282, 37.578751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501286, 32.630394, 37.715015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295763, -0.206214, 0.932738,
		0.289707, -0.949798, -0.118122,
		0.910271, 0.235285, 0.340658,
		36.774368, 32.700981, 37.817211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485119, 32.075554, 37.893822>,  <36.137177, 32.536282, 37.578751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485119, 32.075554, 37.893822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603619, 32.413120, 38.072723>,  <36.674717, 32.615662, 38.180065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603619, 32.413120, 38.072723>,  <36.485119, 32.075554, 37.893822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603619, 32.413120, 38.072723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146647, -0.422533, 0.894405,
		0.943786, -0.330554, -0.001416,
		0.296248, 0.843919, 0.447255,
		36.692493, 32.666298, 38.206902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792645, 31.818953, 38.534142>,  <36.485119, 32.075554, 37.893822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792645, 31.818953, 38.534142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788570, 32.214012, 38.596680>,  <36.786125, 32.451050, 38.634201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788570, 32.214012, 38.596680>,  <36.792645, 31.818953, 38.534142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788570, 32.214012, 38.596680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035769, -0.156615, 0.987012,
		0.999308, 0.004465, 0.036923,
		-0.010190, 0.987650, 0.156347,
		36.785515, 32.510307, 38.643585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311687, 32.125916, 39.082455>,  <36.792645, 31.818953, 38.534142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311687, 32.125916, 39.082455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006519, 32.383446, 39.058990>,  <36.823418, 32.537964, 39.044914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006519, 32.383446, 39.058990>,  <37.311687, 32.125916, 39.082455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006519, 32.383446, 39.058990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046378, 0.035993, 0.998275,
		0.644831, 0.764322, 0.002399,
		-0.762917, 0.643830, -0.058657,
		36.777645, 32.576595, 39.041393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386799, 32.826473, 39.190498>,  <37.311687, 32.125916, 39.082455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386799, 32.826473, 39.190498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000557, 32.786198, 39.286385>,  <36.768810, 32.762032, 39.343918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000557, 32.786198, 39.286385>,  <37.386799, 32.826473, 39.190498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000557, 32.786198, 39.286385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187732, 0.367874, 0.910728,
		-0.179884, 0.924408, -0.336319,
		-0.965608, -0.100688, 0.239716,
		36.710876, 32.755993, 39.358299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106121, 33.480854, 39.402012>,  <37.386799, 32.826473, 39.190498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106121, 33.480854, 39.402012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937019, 33.166405, 39.582367>,  <36.835560, 32.977737, 39.690578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937019, 33.166405, 39.582367>,  <37.106121, 33.480854, 39.402012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937019, 33.166405, 39.582367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377897, 0.299296, 0.876137,
		-0.823697, 0.540776, 0.170544,
		-0.422750, -0.786119, 0.450887,
		36.810196, 32.930569, 39.717632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665306, 33.618732, 40.098442>,  <37.106121, 33.480854, 39.402012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665306, 33.618732, 40.098442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837982, 33.257927, 40.097191>,  <36.941589, 33.041443, 40.096439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837982, 33.257927, 40.097191>,  <36.665306, 33.618732, 40.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837982, 33.257927, 40.097191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519826, 0.245945, 0.818103,
		-0.737174, -0.354790, 0.575064,
		0.431689, -0.902017, -0.003125,
		36.967487, 32.987320, 40.096252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586685, 33.371750, 40.769588>,  <36.665306, 33.618732, 40.098442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586685, 33.371750, 40.769588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892887, 33.179729, 40.598217>,  <37.076611, 33.064518, 40.495396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892887, 33.179729, 40.598217>,  <36.586685, 33.371750, 40.769588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892887, 33.179729, 40.598217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602347, 0.300562, 0.739487,
		-0.226225, -0.824143, 0.519241,
		0.765507, -0.480053, -0.428425,
		37.122540, 33.035713, 40.469688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873798, 33.132622, 41.294308>,  <36.586685, 33.371750, 40.769588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873798, 33.132622, 41.294308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152264, 33.173309, 41.010052>,  <37.319344, 33.197723, 40.839497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152264, 33.173309, 41.010052>,  <36.873798, 33.132622, 41.294308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152264, 33.173309, 41.010052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563862, 0.535206, 0.628979,
		0.444318, -0.838575, 0.315235,
		0.696162, 0.101717, -0.710642,
		37.361111, 33.203823, 40.796860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495373, 33.065769, 41.745850>,  <36.873798, 33.132622, 41.294308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495373, 33.065769, 41.745850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524445, 33.279114, 41.408749>,  <37.541889, 33.407120, 41.206486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524445, 33.279114, 41.408749>,  <37.495373, 33.065769, 41.745850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524445, 33.279114, 41.408749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757006, 0.520651, 0.394796,
		0.649353, -0.666666, -0.365919,
		0.072681, 0.533365, -0.842757,
		37.546249, 33.439125, 41.155922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102406, 33.143299, 41.578957>,  <37.495373, 33.065769, 41.745850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102406, 33.143299, 41.578957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996418, 33.483707, 41.397602>,  <37.932823, 33.687950, 41.288788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996418, 33.483707, 41.397602>,  <38.102406, 33.143299, 41.578957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996418, 33.483707, 41.397602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880912, 0.404865, 0.245111,
		0.392154, -0.334446, -0.856949,
		-0.264973, 0.851017, -0.453387,
		37.916927, 33.739014, 41.261585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835011, 32.439655, 41.654949>,  <38.102406, 33.143299, 41.578957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835011, 32.439655, 41.654949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851582, 32.294628, 42.027363>,  <37.861526, 32.207611, 42.250813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851582, 32.294628, 42.027363>,  <37.835011, 32.439655, 41.654949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851582, 32.294628, 42.027363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979595, 0.168678, 0.109279,
		-0.196666, -0.916566, -0.348180,
		0.041431, -0.362567, 0.931037,
		37.864010, 32.185860, 42.306675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317066, 32.028568, 41.708271>,  <37.835011, 32.439655, 41.654949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317066, 32.028568, 41.708271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416500, 32.177128, 42.066101>,  <37.476162, 32.266266, 42.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416500, 32.177128, 42.066101>,  <37.317066, 32.028568, 41.708271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416500, 32.177128, 42.066101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956975, 0.236893, 0.167576,
		-0.149681, -0.897742, 0.414312,
		0.248587, 0.371403, 0.894575,
		37.491077, 32.288548, 42.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939159, 31.628754, 42.347313>,  <37.317066, 32.028568, 41.708271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939159, 31.628754, 42.347313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039528, 31.986422, 42.495636>,  <37.099751, 32.201023, 42.584629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039528, 31.986422, 42.495636>,  <36.939159, 31.628754, 42.347313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039528, 31.986422, 42.495636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922617, 0.104992, 0.371152,
		0.292942, -0.435240, 0.851323,
		0.250922, 0.894171, 0.370803,
		37.114803, 32.254673, 42.606876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370754, 31.661613, 42.677681>,  <36.939159, 31.628754, 42.347313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370754, 31.661613, 42.677681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521313, 32.029568, 42.721752>,  <36.611649, 32.250340, 42.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521313, 32.029568, 42.721752>,  <36.370754, 31.661613, 42.677681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521313, 32.029568, 42.721752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908917, 0.343612, 0.236221,
		0.179436, -0.189058, 0.965432,
		0.376393, 0.919885, 0.110182,
		36.634232, 32.305534, 42.754807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181801, 31.916723, 43.358517>,  <36.370754, 31.661613, 42.677681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181801, 31.916723, 43.358517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242596, 32.239422, 43.130108>,  <36.279072, 32.433041, 42.993065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242596, 32.239422, 43.130108>,  <36.181801, 31.916723, 43.358517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242596, 32.239422, 43.130108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903057, 0.348166, 0.251535,
		0.401734, 0.477433, 0.781453,
		0.151984, 0.806746, -0.571019,
		36.288193, 32.481445, 42.958801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932823, 32.516384, 43.745617>,  <36.181801, 31.916723, 43.358517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932823, 32.516384, 43.745617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899338, 32.611408, 43.358513>,  <35.879246, 32.668423, 43.126251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899338, 32.611408, 43.358513>,  <35.932823, 32.516384, 43.745617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899338, 32.611408, 43.358513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946377, 0.285151, 0.151856,
		0.312032, 0.928577, 0.200951,
		-0.083709, 0.237559, -0.967760,
		35.874226, 32.682674, 43.068184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461926, 33.107613, 43.737762>,  <35.932823, 32.516384, 43.745617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461926, 33.107613, 43.737762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474716, 32.959305, 43.366493>,  <35.482391, 32.870319, 43.143730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474716, 32.959305, 43.366493>,  <35.461926, 33.107613, 43.737762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474716, 32.959305, 43.366493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997180, 0.051246, -0.054823,
		0.067892, 0.927309, -0.368088,
		0.031975, -0.370772, -0.928173,
		35.484310, 32.848072, 43.088039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141224, 33.572941, 43.323891>,  <35.461926, 33.107613, 43.737762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141224, 33.572941, 43.323891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117012, 33.223579, 43.130604>,  <35.102486, 33.013962, 43.014633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117012, 33.223579, 43.130604>,  <35.141224, 33.572941, 43.323891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117012, 33.223579, 43.130604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989471, 0.116264, -0.086197,
		0.131466, 0.472912, -0.871247,
		-0.060531, -0.873405, -0.483217,
		35.098854, 32.961559, 42.985638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985470, 33.633080, 42.469299>,  <35.141224, 33.572941, 43.323891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985470, 33.633080, 42.469299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859447, 33.353817, 42.726456>,  <34.783833, 33.186260, 42.880749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859447, 33.353817, 42.726456>,  <34.985470, 33.633080, 42.469299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859447, 33.353817, 42.726456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947011, 0.186647, -0.261406,
		0.062509, -0.691184, -0.719970,
		-0.315060, -0.698160, 0.642892,
		34.764931, 33.144367, 42.919323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592964, 32.986912, 42.117054>,  <34.985470, 33.633080, 42.469299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592964, 32.986912, 42.117054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509407, 33.139404, 42.477283>,  <34.459274, 33.230900, 42.693420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509407, 33.139404, 42.477283>,  <34.592964, 32.986912, 42.117054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509407, 33.139404, 42.477283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834467, 0.410697, -0.367415,
		-0.509931, -0.828247, 0.232330,
		-0.208893, 0.381228, 0.900571,
		34.446739, 33.253773, 42.747456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995621, 32.720146, 42.421535>,  <34.592964, 32.986912, 42.117054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995621, 32.720146, 42.421535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051685, 33.097305, 42.542404>,  <34.085323, 33.323601, 42.614925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051685, 33.097305, 42.542404>,  <33.995621, 32.720146, 42.421535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051685, 33.097305, 42.542404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843634, 0.273478, -0.462051,
		-0.518302, -0.190161, 0.833788,
		0.140159, 0.942894, 0.302170,
		34.093735, 33.380173, 42.633057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579369, 32.331207, 42.637268>,  <33.995621, 32.720146, 42.421535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579369, 32.331207, 42.637268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394321, 31.977011, 42.619904>,  <34.283291, 31.764492, 42.609486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394321, 31.977011, 42.619904>,  <34.579369, 32.331207, 42.637268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394321, 31.977011, 42.619904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732607, -0.354253, -0.581200,
		0.499270, -0.300677, 0.812603,
		-0.462620, -0.885493, -0.043410,
		34.255535, 31.711363, 42.606880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973679, 31.737282, 42.987076>,  <34.579369, 32.331207, 42.637268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973679, 31.737282, 42.987076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747414, 31.631149, 42.674763>,  <34.611652, 31.567471, 42.487373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747414, 31.631149, 42.674763>,  <34.973679, 31.737282, 42.987076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747414, 31.631149, 42.674763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824584, -0.192500, -0.531982,
		-0.009151, -0.944745, 0.327678,
		-0.565665, -0.265330, -0.780783,
		34.577713, 31.551550, 42.440529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263435, 32.011017, 42.257580>,  <34.973679, 31.737282, 42.987076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263435, 32.011017, 42.257580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240868, 32.381332, 42.407101>,  <35.227325, 32.603523, 42.496815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240868, 32.381332, 42.407101>,  <35.263435, 32.011017, 42.257580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240868, 32.381332, 42.407101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985289, -0.008860, 0.170665,
		0.161312, 0.377931, -0.911672,
		-0.056422, 0.925791, 0.373801,
		35.223942, 32.659069, 42.519241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591492, 32.594959, 41.841091>,  <35.263435, 32.011017, 42.257580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591492, 32.594959, 41.841091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578651, 32.703537, 42.225861>,  <35.570950, 32.768684, 42.456722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578651, 32.703537, 42.225861>,  <35.591492, 32.594959, 41.841091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578651, 32.703537, 42.225861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997629, -0.049921, 0.047377,
		0.060880, 0.961160, -0.269194,
		-0.032098, 0.271440, 0.961920,
		35.569023, 32.784969, 42.514435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073086, 33.083691, 41.809669>,  <35.591492, 32.594959, 41.841091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073086, 33.083691, 41.809669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997532, 32.945812, 42.177475>,  <35.952202, 32.863087, 42.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997532, 32.945812, 42.177475>,  <36.073086, 33.083691, 41.809669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997532, 32.945812, 42.177475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981773, -0.086416, 0.169276,
		0.021113, 0.934729, 0.354733,
		-0.188882, -0.344694, 0.919516,
		35.940868, 32.842403, 42.453331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499420, 33.582008, 42.273899>,  <36.073086, 33.083691, 41.809669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499420, 33.582008, 42.273899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417019, 33.245041, 42.473057>,  <36.367577, 33.042862, 42.592552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417019, 33.245041, 42.473057>,  <36.499420, 33.582008, 42.273899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417019, 33.245041, 42.473057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972607, -0.120279, 0.198917,
		-0.107685, 0.525234, 0.844117,
		-0.206007, -0.842415, 0.497894,
		36.355217, 32.992317, 42.622425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053398, 33.574997, 42.714775>,  <36.499420, 33.582008, 42.273899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053398, 33.574997, 42.714775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920612, 33.198215, 42.734856>,  <36.840942, 32.972145, 42.746906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920612, 33.198215, 42.734856>,  <37.053398, 33.574997, 42.714775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920612, 33.198215, 42.734856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938962, -0.324881, 0.113146,
		-0.090268, 0.084700, 0.992309,
		-0.331966, -0.941954, 0.050204,
		36.821022, 32.915630, 42.749916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471840, 33.370762, 43.180183>,  <37.053398, 33.574997, 42.714775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471840, 33.370762, 43.180183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367310, 33.029942, 42.998760>,  <37.304592, 32.825447, 42.889908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367310, 33.029942, 42.998760>,  <37.471840, 33.370762, 43.180183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367310, 33.029942, 42.998760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960311, -0.276974, -0.032984,
		-0.097518, -0.444172, 0.890618,
		-0.261328, -0.852054, -0.453554,
		37.288910, 32.774326, 42.862694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792114, 32.821201, 43.518261>,  <37.471840, 33.370762, 43.180183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792114, 32.821201, 43.518261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719898, 32.705322, 43.142284>,  <37.676571, 32.635796, 42.916698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719898, 32.705322, 43.142284>,  <37.792114, 32.821201, 43.518261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719898, 32.705322, 43.142284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976313, -0.168641, -0.135546,
		-0.119245, -0.942145, 0.313277,
		-0.180536, -0.289693, -0.939939,
		37.665737, 32.618416, 42.860302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882889, 32.174793, 43.515930>,  <37.792114, 32.821201, 43.518261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882889, 32.174793, 43.515930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966087, 32.329781, 43.156685>,  <38.016006, 32.422771, 42.941139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966087, 32.329781, 43.156685>,  <37.882889, 32.174793, 43.515930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966087, 32.329781, 43.156685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966917, -0.220080, 0.128980,
		-0.147681, -0.895229, -0.420424,
		0.207994, 0.387467, -0.898114,
		38.028484, 32.446022, 42.887249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516098, 31.732988, 43.306713>,  <37.882889, 32.174793, 43.515930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516098, 31.732988, 43.306713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488529, 32.054142, 43.069859>,  <38.471989, 32.246834, 42.927746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488529, 32.054142, 43.069859>,  <38.516098, 31.732988, 43.306713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488529, 32.054142, 43.069859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953404, -0.121746, -0.276042,
		-0.293720, -0.583569, -0.757084,
		-0.068918, 0.802885, -0.592136,
		38.467854, 32.295006, 42.892216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747490, 31.447617, 42.772526>,  <38.516098, 31.732988, 43.306713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747490, 31.447617, 42.772526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798687, 31.836233, 42.692806>,  <38.829407, 32.069405, 42.644974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798687, 31.836233, 42.692806>,  <38.747490, 31.447617, 42.772526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798687, 31.836233, 42.692806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967460, -0.166535, -0.190488,
		-0.218258, -0.168431, -0.961246,
		0.127997, 0.971544, -0.199298,
		38.837086, 32.127697, 42.633018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939426, 31.375504, 42.142365>,  <38.747490, 31.447617, 42.772526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939426, 31.375504, 42.142365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045628, 31.727936, 42.298927>,  <39.109348, 31.939396, 42.392864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045628, 31.727936, 42.298927>,  <38.939426, 31.375504, 42.142365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045628, 31.727936, 42.298927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956437, -0.189590, -0.221999,
		-0.121391, 0.433302, -0.893036,
		0.265503, 0.881082, 0.391412,
		39.125278, 31.992260, 42.416351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308308, 31.838320, 41.645531>,  <38.939426, 31.375504, 42.142365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308308, 31.838320, 41.645531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408966, 31.862123, 42.031925>,  <39.469360, 31.876406, 42.263763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408966, 31.862123, 42.031925>,  <39.308308, 31.838320, 41.645531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408966, 31.862123, 42.031925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954177, -0.182251, -0.237343,
		0.161929, 0.981450, -0.102644,
		0.251647, 0.059508, 0.965988,
		39.484459, 31.879976, 42.321720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975727, 32.178898, 41.730698>,  <39.308308, 31.838320, 41.645531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975727, 32.178898, 41.730698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911480, 31.935886, 42.041855>,  <39.872932, 31.790079, 42.228550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911480, 31.935886, 42.041855>,  <39.975727, 32.178898, 41.730698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911480, 31.935886, 42.041855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960997, -0.276026, -0.017146,
		0.225134, 0.744795, 0.628168,
		-0.160621, -0.607527, 0.777889,
		39.863293, 31.753628, 42.275223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583214, 32.625660, 41.296070>,  <39.975727, 32.178898, 41.730698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583214, 32.625660, 41.296070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913345, 32.709045, 41.505978>,  <40.111423, 32.759079, 41.631920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913345, 32.709045, 41.505978>,  <39.583214, 32.625660, 41.296070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913345, 32.709045, 41.505978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284047, 0.649926, -0.704920,
		-0.488012, 0.730847, 0.477187,
		0.825325, 0.208466, 0.524767,
		40.160942, 32.771584, 41.663406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681904, 33.351509, 41.475864>,  <39.583214, 32.625660, 41.296070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681904, 33.351509, 41.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047043, 33.190258, 41.449951>,  <40.266125, 33.093506, 41.434402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047043, 33.190258, 41.449951>,  <39.681904, 33.351509, 41.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047043, 33.190258, 41.449951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251225, 0.679629, -0.689196,
		0.321868, 0.612854, 0.721673,
		0.912846, -0.403132, -0.064787,
		40.320896, 33.069317, 41.430515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047127, 33.968327, 41.418217>,  <39.681904, 33.351509, 41.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047127, 33.968327, 41.418217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249821, 33.673141, 41.239944>,  <40.371437, 33.496029, 41.132980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249821, 33.673141, 41.239944>,  <40.047127, 33.968327, 41.418217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249821, 33.673141, 41.239944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201681, 0.604099, -0.770966,
		0.838177, 0.300794, 0.454953,
		0.506739, -0.737962, -0.445678,
		40.401844, 33.451752, 41.106239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797218, 34.077641, 41.147781>,  <40.047127, 33.968327, 41.418217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797218, 34.077641, 41.147781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606365, 33.812401, 40.917084>,  <40.491852, 33.653255, 40.778664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606365, 33.812401, 40.917084>,  <40.797218, 34.077641, 41.147781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606365, 33.812401, 40.917084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005838, 0.653862, -0.756592,
		0.878811, -0.364363, -0.308110,
		-0.477135, -0.663102, -0.576748,
		40.463226, 33.613472, 40.744061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117580, 33.942337, 40.598480>,  <40.797218, 34.077641, 41.147781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117580, 33.942337, 40.598480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750084, 33.882420, 40.452347>,  <40.529587, 33.846470, 40.364666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750084, 33.882420, 40.452347>,  <41.117580, 33.942337, 40.598480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750084, 33.882420, 40.452347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189188, 0.645129, -0.740281,
		0.346581, -0.749246, -0.564368,
		-0.918743, -0.149796, -0.365338,
		40.474461, 33.837482, 40.342747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287270, 33.796268, 39.870403>,  <41.117580, 33.942337, 40.598480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287270, 33.796268, 39.870403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911991, 33.917427, 39.937374>,  <40.686825, 33.990124, 39.977558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911991, 33.917427, 39.937374>,  <41.287270, 33.796268, 39.870403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911991, 33.917427, 39.937374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108593, 0.716978, -0.688585,
		-0.328614, -0.627849, -0.705562,
		-0.938201, 0.302898, 0.167429,
		40.630531, 34.008297, 39.987602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808746, 34.292885, 39.612709>,  <41.287270, 33.796268, 39.870403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808746, 34.292885, 39.612709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504967, 34.437790, 39.828857>,  <40.322701, 34.524734, 39.958546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504967, 34.437790, 39.828857>,  <40.808746, 34.292885, 39.612709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504967, 34.437790, 39.828857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028893, 0.811016, -0.584310,
		-0.649927, -0.459366, -0.605457,
		-0.759447, 0.362265, 0.540374,
		40.277134, 34.546471, 39.990971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166389, 34.522087, 39.238560>,  <40.808746, 34.292885, 39.612709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166389, 34.522087, 39.238560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223713, 34.746128, 39.564934>,  <40.258106, 34.880550, 39.760757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223713, 34.746128, 39.564934>,  <40.166389, 34.522087, 39.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223713, 34.746128, 39.564934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070704, 0.816544, -0.572937,
		-0.987149, 0.139799, 0.077419,
		0.143312, 0.560100, 0.815935,
		40.266708, 34.914158, 39.809715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997986, 35.173424, 39.049397>,  <40.166389, 34.522087, 39.238560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997986, 35.173424, 39.049397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159122, 35.249523, 39.407509>,  <40.255802, 35.295181, 39.622375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159122, 35.249523, 39.407509>,  <39.997986, 35.173424, 39.049397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159122, 35.249523, 39.407509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358441, 0.867238, -0.345570,
		-0.842165, 0.460114, 0.281165,
		0.402838, 0.190246, 0.895281,
		40.279972, 35.306599, 39.676094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294880, 35.592167, 38.529778>,  <39.997986, 35.173424, 39.049397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294880, 35.592167, 38.529778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673645, 35.709064, 38.476192>,  <40.900906, 35.779205, 38.444042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673645, 35.709064, 38.476192>,  <40.294880, 35.592167, 38.529778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673645, 35.709064, 38.476192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096141, -0.655041, -0.749452,
		-0.306774, 0.696788, -0.648365,
		0.946914, 0.292246, -0.133960,
		40.957718, 35.796738, 38.436005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377743, 35.656837, 37.842533>,  <40.294880, 35.592167, 38.529778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377743, 35.656837, 37.842533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746582, 35.619400, 37.992718>,  <40.967884, 35.596939, 38.082829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746582, 35.619400, 37.992718>,  <40.377743, 35.656837, 37.842533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746582, 35.619400, 37.992718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279670, -0.509397, -0.813818,
		0.267427, 0.855427, -0.443539,
		0.922099, -0.093593, 0.375464,
		41.023212, 35.591324, 38.105358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013512, 35.936401, 37.584881>,  <40.377743, 35.656837, 37.842533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013512, 35.936401, 37.584881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199638, 35.614769, 37.732903>,  <41.311314, 35.421791, 37.821716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199638, 35.614769, 37.732903>,  <41.013512, 35.936401, 37.584881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199638, 35.614769, 37.732903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192904, -0.315898, -0.928976,
		0.863868, 0.503654, 0.008116,
		0.465318, -0.804078, 0.370051,
		41.339233, 35.373547, 37.843918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711670, 35.916203, 37.444801>,  <41.013512, 35.936401, 37.584881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711670, 35.916203, 37.444801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608711, 35.529766, 37.436626>,  <41.546936, 35.297905, 37.431721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608711, 35.529766, 37.436626>,  <41.711670, 35.916203, 37.444801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608711, 35.529766, 37.436626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394460, -0.085737, -0.914904,
		0.882128, -0.243555, 0.403152,
		-0.257395, -0.966090, -0.020442,
		41.531494, 35.239941, 37.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327972, 35.537388, 37.288380>,  <41.711670, 35.916203, 37.444801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327972, 35.537388, 37.288380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996002, 35.337246, 37.189690>,  <41.796822, 35.217159, 37.130474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996002, 35.337246, 37.189690>,  <42.327972, 35.537388, 37.288380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996002, 35.337246, 37.189690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286612, -0.002981, -0.958042,
		0.478626, -0.865815, 0.145882,
		-0.829922, -0.500356, -0.246726,
		41.747025, 35.187138, 37.115673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513298, 34.862690, 36.956272>,  <42.327972, 35.537388, 37.288380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513298, 34.862690, 36.956272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148170, 34.965637, 36.829453>,  <41.929092, 35.027405, 36.753361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148170, 34.965637, 36.829453>,  <42.513298, 34.862690, 36.956272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148170, 34.965637, 36.829453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303918, -0.090405, -0.948399,
		-0.272750, -0.962075, 0.004304,
		-0.912820, 0.257367, -0.317050,
		41.874325, 35.042847, 36.734337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793625, 34.467293, 36.290024>,  <42.513298, 34.862690, 36.956272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793625, 34.467293, 36.290024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769932, 34.140053, 36.518833>,  <42.755714, 33.943710, 36.656116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769932, 34.140053, 36.518833>,  <42.793625, 34.467293, 36.290024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769932, 34.140053, 36.518833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184859, -0.572104, -0.799077,
		0.980978, 0.058411, 0.185120,
		-0.059233, -0.818098, 0.572020,
		42.752163, 33.894623, 36.690437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208282, 34.513226, 36.869991>,  <42.793625, 34.467293, 36.290024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208282, 34.513226, 36.869991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276165, 34.768593, 36.569691>,  <43.316895, 34.921814, 36.389511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276165, 34.768593, 36.569691>,  <43.208282, 34.513226, 36.869991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276165, 34.768593, 36.569691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974913, -0.220092, 0.033220,
		-0.144025, -0.737551, -0.659754,
		0.169708, 0.638418, -0.750747,
		43.327076, 34.960117, 36.344467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481262, 34.159344, 36.221405>,  <43.208282, 34.513226, 36.869991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481262, 34.159344, 36.221405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611496, 34.529476, 36.299141>,  <43.689636, 34.751556, 36.345783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611496, 34.529476, 36.299141>,  <43.481262, 34.159344, 36.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611496, 34.529476, 36.299141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945512, -0.318304, -0.068479,
		-0.001508, 0.206042, -0.978542,
		0.325583, 0.925327, 0.194335,
		43.709171, 34.807076, 36.357441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049858, 34.176743, 35.854298>,  <43.481262, 34.159344, 36.221405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049858, 34.176743, 35.854298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125610, 34.458496, 36.127934>,  <44.171062, 34.627548, 36.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125610, 34.458496, 36.127934>,  <44.049858, 34.176743, 35.854298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125610, 34.458496, 36.127934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977737, -0.199397, -0.065358,
		0.090368, 0.681235, -0.726466,
		0.189379, 0.704386, 0.684087,
		44.182423, 34.669811, 36.333160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604267, 34.681419, 35.609154>,  <44.049858, 34.176743, 35.854298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604267, 34.681419, 35.609154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600037, 34.675953, 36.009094>,  <44.597500, 34.672672, 36.249058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600037, 34.675953, 36.009094>,  <44.604267, 34.681419, 35.609154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600037, 34.675953, 36.009094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999073, -0.041874, 0.009992,
		0.041731, 0.999030, 0.014088,
		-0.010572, -0.013658, 0.999851,
		44.596867, 34.671852, 36.309048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956921, 35.275692, 35.926788>,  <44.604267, 34.681419, 35.609154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956921, 35.275692, 35.926788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987629, 34.950310, 36.157406>,  <45.006054, 34.755081, 36.295776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987629, 34.950310, 36.157406>,  <44.956921, 35.275692, 35.926788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987629, 34.950310, 36.157406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975174, -0.059201, -0.213379,
		0.207706, 0.578608, 0.788715,
		0.076770, -0.813454, 0.576540,
		45.010658, 34.706272, 36.330368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606010, 35.320908, 36.223179>,  <44.956921, 35.275692, 35.926788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606010, 35.320908, 36.223179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495316, 34.940262, 36.169746>,  <45.428898, 34.711872, 36.137688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495316, 34.940262, 36.169746>,  <45.606010, 35.320908, 36.223179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495316, 34.940262, 36.169746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771129, -0.136966, -0.621772,
		0.573392, -0.275075, 0.771722,
		-0.276733, -0.951617, -0.133583,
		45.412296, 34.654778, 36.129673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207626, 34.938179, 36.263466>,  <45.606010, 35.320908, 36.223179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207626, 34.938179, 36.263466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963127, 34.717083, 36.036892>,  <45.816425, 34.584427, 35.900948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963127, 34.717083, 36.036892>,  <46.207626, 34.938179, 36.263466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963127, 34.717083, 36.036892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735967, -0.133755, -0.663674,
		0.291074, -0.822551, 0.488555,
		-0.611252, -0.552738, -0.566437,
		45.779751, 34.551262, 35.866962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291855, 34.238953, 36.244331>,  <46.207626, 34.938179, 36.263466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291855, 34.238953, 36.244331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156273, 34.362934, 35.889019>,  <46.074924, 34.437321, 35.675831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156273, 34.362934, 35.889019>,  <46.291855, 34.238953, 36.244331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156273, 34.362934, 35.889019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934810, 0.004576, -0.355119,
		-0.106005, -0.950742, -0.291296,
		-0.338960, 0.309951, -0.888277,
		46.054585, 34.455921, 35.622536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414925, 33.775204, 35.672573>,  <46.291855, 34.238953, 36.244331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414925, 33.775204, 35.672573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402084, 34.158535, 35.559032>,  <46.394379, 34.388535, 35.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402084, 34.158535, 35.559032>,  <46.414925, 33.775204, 35.672573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402084, 34.158535, 35.559032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962339, -0.047068, -0.267744,
		-0.269948, -0.281757, -0.920728,
		-0.032102, 0.958331, -0.283852,
		46.392452, 34.446033, 35.473877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647003, 33.928383, 34.995243>,  <46.414925, 33.775204, 35.672573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647003, 33.928383, 34.995243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684010, 34.303627, 35.128746>,  <46.706211, 34.528774, 35.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684010, 34.303627, 35.128746>,  <46.647003, 33.928383, 34.995243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684010, 34.303627, 35.128746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893950, 0.069371, -0.442766,
		-0.438515, 0.339326, -0.832203,
		0.092511, 0.938108, 0.333760,
		46.711761, 34.585060, 35.228874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047264, 34.319984, 34.441856>,  <46.647003, 33.928383, 34.995243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047264, 34.319984, 34.441856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081444, 34.490566, 34.802040>,  <47.101952, 34.592915, 35.018150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081444, 34.490566, 34.802040>,  <47.047264, 34.319984, 34.441856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081444, 34.490566, 34.802040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969107, 0.174294, -0.174510,
		-0.231366, 0.887558, -0.398386,
		0.085451, 0.426454, 0.900464,
		47.107079, 34.618504, 35.072178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737602, 34.545670, 34.549210>,  <47.047264, 34.319984, 34.441856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737602, 34.545670, 34.549210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604656, 34.682747, 34.900684>,  <47.524887, 34.764992, 35.111568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604656, 34.682747, 34.900684>,  <47.737602, 34.545670, 34.549210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.604656, 34.682747, 34.900684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896792, 0.403323, 0.181919,
		-0.292054, 0.848466, -0.441373,
		-0.332368, 0.342690, 0.878689,
		47.504948, 34.785553, 35.164291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.664227, 35.217026, 34.616684>,  <47.737602, 34.545670, 34.549210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.664227, 35.217026, 34.616684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741459, 35.052696, 34.973095>,  <47.787800, 34.954098, 35.186943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741459, 35.052696, 34.973095>,  <47.664227, 35.217026, 34.616684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741459, 35.052696, 34.973095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850559, 0.522809, 0.056737,
		-0.489149, 0.746921, 0.450380,
		0.193085, -0.410828, 0.891032,
		47.799385, 34.929447, 35.240406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.962215, 30.263502, 27.606102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592754, 30.281080, 27.453819>,  <36.371078, 30.291626, 27.362450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592754, 30.281080, 27.453819>,  <36.962215, 30.263502, 27.606102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592754, 30.281080, 27.453819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371722, 0.138944, 0.917887,
		0.093232, 0.989325, -0.112001,
		-0.923650, 0.043943, -0.380708,
		36.315659, 30.294264, 27.339607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648060, 30.881214, 27.856180>,  <36.962215, 30.263502, 27.606102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648060, 30.881214, 27.856180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354183, 30.626919, 27.761471>,  <36.177856, 30.474342, 27.704645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354183, 30.626919, 27.761471>,  <36.648060, 30.881214, 27.856180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354183, 30.626919, 27.761471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379096, 0.095302, 0.920437,
		-0.562592, 0.765998, -0.311024,
		-0.734694, -0.635739, -0.236771,
		36.133774, 30.436197, 27.690439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029705, 31.108356, 28.065683>,  <36.648060, 30.881214, 27.856180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029705, 31.108356, 28.065683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947475, 30.717484, 28.044329>,  <35.898136, 30.482960, 28.031517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947475, 30.717484, 28.044329>,  <36.029705, 31.108356, 28.065683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947475, 30.717484, 28.044329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297128, 0.010348, 0.954782,
		-0.932444, 0.212145, -0.292476,
		-0.205579, -0.977183, -0.053385,
		35.885803, 30.424328, 28.028313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375149, 31.010307, 28.461981>,  <36.029705, 31.108356, 28.065683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375149, 31.010307, 28.461981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548019, 30.649834, 28.448763>,  <35.651741, 30.433550, 28.440832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548019, 30.649834, 28.448763>,  <35.375149, 31.010307, 28.461981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548019, 30.649834, 28.448763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045248, -0.058270, 0.997275,
		-0.900653, -0.429505, -0.065959,
		0.432178, -0.901183, -0.033047,
		35.677673, 30.379478, 28.438848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906338, 30.540358, 28.882027>,  <35.375149, 31.010307, 28.461981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906338, 30.540358, 28.882027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272400, 30.381212, 28.856113>,  <35.492039, 30.285725, 28.840565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272400, 30.381212, 28.856113>,  <34.906338, 30.540358, 28.882027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272400, 30.381212, 28.856113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053600, -0.279391, 0.958680,
		-0.399525, -0.873868, -0.277011,
		0.915154, -0.397864, -0.064784,
		35.546947, 30.261854, 28.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756058, 29.822805, 29.103924>,  <34.906338, 30.540358, 28.882027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756058, 29.822805, 29.103924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143139, 29.912580, 29.149836>,  <35.375389, 29.966446, 29.177383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143139, 29.912580, 29.149836>,  <34.756058, 29.822805, 29.103924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143139, 29.912580, 29.149836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079512, -0.160323, 0.983857,
		0.239216, -0.961210, -0.137300,
		0.967705, 0.224437, 0.114779,
		35.433449, 29.979912, 29.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041862, 29.228775, 29.583998>,  <34.756058, 29.822805, 29.103924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041862, 29.228775, 29.583998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303913, 29.530262, 29.604864>,  <35.461143, 29.711153, 29.617384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303913, 29.530262, 29.604864>,  <35.041862, 29.228775, 29.583998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303913, 29.530262, 29.604864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035746, -0.038048, 0.998636,
		0.754673, -0.656098, 0.002016,
		0.655127, 0.753716, 0.052167,
		35.500450, 29.756376, 29.620514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460793, 29.029829, 30.228771>,  <35.041862, 29.228775, 29.583998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460793, 29.029829, 30.228771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544868, 29.405935, 30.121645>,  <35.595314, 29.631599, 30.057369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544868, 29.405935, 30.121645>,  <35.460793, 29.029829, 30.228771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544868, 29.405935, 30.121645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229679, 0.218779, 0.948358,
		0.950299, -0.260845, -0.169974,
		0.210187, 0.940263, -0.267816,
		35.607925, 29.688015, 30.041300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120564, 29.234295, 30.553272>,  <35.460793, 29.029829, 30.228771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120564, 29.234295, 30.553272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893253, 29.558599, 30.497084>,  <35.756866, 29.753183, 30.463371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893253, 29.558599, 30.497084>,  <36.120564, 29.234295, 30.553272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893253, 29.558599, 30.497084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129726, 0.256857, 0.957703,
		0.812551, 0.526012, -0.251141,
		-0.568271, 0.810762, -0.140472,
		35.722771, 29.801828, 30.454943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441925, 29.840919, 30.919901>,  <36.120564, 29.234295, 30.553272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441925, 29.840919, 30.919901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075054, 29.984917, 30.851562>,  <35.854931, 30.071316, 30.810558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075054, 29.984917, 30.851562>,  <36.441925, 29.840919, 30.919901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075054, 29.984917, 30.851562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025940, 0.373902, 0.927106,
		0.397633, 0.854752, -0.333596,
		-0.917178, 0.359994, -0.170847,
		35.799900, 30.092915, 30.800308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391865, 30.493406, 31.307514>,  <36.441925, 29.840919, 30.919901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391865, 30.493406, 31.307514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008080, 30.411144, 31.230434>,  <35.777809, 30.361788, 31.184187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008080, 30.411144, 31.230434>,  <36.391865, 30.493406, 31.307514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008080, 30.411144, 31.230434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253238, 0.329047, 0.909724,
		-0.123682, 0.921647, -0.367789,
		-0.959465, -0.205655, -0.192699,
		35.720242, 30.349447, 31.172625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939304, 31.090897, 31.506474>,  <36.391865, 30.493406, 31.307514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939304, 31.090897, 31.506474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699444, 30.771053, 31.519396>,  <35.555527, 30.579147, 31.527149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699444, 30.771053, 31.519396>,  <35.939304, 31.090897, 31.506474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699444, 30.771053, 31.519396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336072, 0.288255, 0.896641,
		-0.726276, 0.526813, -0.441579,
		-0.599649, -0.799611, 0.032306,
		35.519550, 30.531170, 31.529087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313690, 31.360003, 31.752266>,  <35.939304, 31.090897, 31.506474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313690, 31.360003, 31.752266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.319027, 30.963182, 31.802320>,  <35.322231, 30.725090, 31.832354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.319027, 30.963182, 31.802320>,  <35.313690, 31.360003, 31.752266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319027, 30.963182, 31.802320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224887, 0.118964, 0.967095,
		-0.974293, -0.041049, -0.221512,
		0.013346, -0.992050, 0.125138,
		35.323032, 30.665567, 31.839861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760532, 31.229361, 32.168976>,  <35.313690, 31.360003, 31.752266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760532, 31.229361, 32.168976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986504, 30.900066, 32.191402>,  <35.122086, 30.702490, 32.204857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986504, 30.900066, 32.191402>,  <34.760532, 31.229361, 32.168976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986504, 30.900066, 32.191402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137357, -0.026826, 0.990158,
		-0.813629, -0.567066, -0.128232,
		0.564926, -0.823235, 0.056064,
		35.155983, 30.653095, 32.208221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414440, 30.692631, 32.405243>,  <34.760532, 31.229361, 32.168976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414440, 30.692631, 32.405243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777416, 30.545046, 32.485653>,  <34.995201, 30.456495, 32.533901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777416, 30.545046, 32.485653>,  <34.414440, 30.692631, 32.405243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777416, 30.545046, 32.485653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267434, -0.138166, 0.953619,
		-0.324075, -0.919117, -0.224051,
		0.907444, -0.368963, 0.201027,
		35.049648, 30.434357, 32.545959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254417, 30.130608, 32.806095>,  <34.414440, 30.692631, 32.405243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254417, 30.130608, 32.806095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638443, 30.206373, 32.888454>,  <34.868858, 30.251833, 32.937870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638443, 30.206373, 32.888454>,  <34.254417, 30.130608, 32.806095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638443, 30.206373, 32.888454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187922, -0.108617, 0.976160,
		0.207261, -0.975871, -0.068685,
		0.960067, 0.189413, 0.205900,
		34.926464, 30.263197, 32.950226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432987, 29.607567, 33.341648>,  <34.254417, 30.130608, 32.806095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432987, 29.607567, 33.341648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720039, 29.884676, 33.370144>,  <34.892269, 30.050941, 33.387241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720039, 29.884676, 33.370144>,  <34.432987, 29.607567, 33.341648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720039, 29.884676, 33.370144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117329, 0.019438, 0.992903,
		0.686473, -0.720893, 0.095232,
		0.717628, 0.692774, 0.071238,
		34.935329, 30.092508, 33.391514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943291, 29.317055, 33.822296>,  <34.432987, 29.607567, 33.341648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943291, 29.317055, 33.822296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980793, 29.715292, 33.821598>,  <35.003292, 29.954235, 33.821178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980793, 29.715292, 33.821598>,  <34.943291, 29.317055, 33.822296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980793, 29.715292, 33.821598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016364, 0.000207, 0.999866,
		0.995461, -0.093767, -0.016273,
		0.093752, 0.995594, -0.001741,
		35.008919, 30.013969, 33.821075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510899, 29.435116, 34.259502>,  <34.943291, 29.317055, 33.822296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510899, 29.435116, 34.259502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308411, 29.779764, 34.244823>,  <35.186916, 29.986553, 34.236015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308411, 29.779764, 34.244823>,  <35.510899, 29.435116, 34.259502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308411, 29.779764, 34.244823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180989, 0.147752, 0.972323,
		0.843196, 0.485571, -0.230740,
		-0.506224, 0.861621, -0.036701,
		35.156544, 30.038250, 34.233814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881340, 29.822948, 34.585651>,  <35.510899, 29.435116, 34.259502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881340, 29.822948, 34.585651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529678, 30.013515, 34.581532>,  <35.318680, 30.127855, 34.579060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529678, 30.013515, 34.581532>,  <35.881340, 29.822948, 34.585651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529678, 30.013515, 34.581532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074797, 0.159306, 0.984392,
		0.470623, 0.864666, -0.175690,
		-0.879158, 0.476418, -0.010299,
		35.265930, 30.156441, 34.578442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064171, 30.521807, 34.858276>,  <35.881340, 29.822948, 34.585651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064171, 30.521807, 34.858276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673843, 30.462914, 34.922897>,  <35.439648, 30.427578, 34.961670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673843, 30.462914, 34.922897>,  <36.064171, 30.521807, 34.858276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673843, 30.462914, 34.922897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141756, 0.136286, 0.980475,
		-0.166376, 0.979667, -0.112119,
		-0.975820, -0.147234, 0.161549,
		35.381096, 30.418743, 34.971363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590313, 30.256063, 35.273312>,  <36.064171, 30.521807, 34.858276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590313, 30.256063, 35.273312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874561, 30.391867, 35.519806>,  <37.045113, 30.473349, 35.667702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874561, 30.391867, 35.519806>,  <36.590313, 30.256063, 35.273312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874561, 30.391867, 35.519806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579488, 0.214287, -0.786304,
		-0.399009, 0.915868, -0.044464,
		0.710623, 0.339508, 0.616237,
		37.087749, 30.493719, 35.704678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788082, 30.907017, 35.066746>,  <36.590313, 30.256063, 35.273312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788082, 30.907017, 35.066746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.095909, 30.761841, 35.276901>,  <37.280605, 30.674736, 35.402996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.095909, 30.761841, 35.276901>,  <36.788082, 30.907017, 35.066746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095909, 30.761841, 35.276901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605281, 0.152460, -0.781275,
		0.203455, 0.919255, 0.337009,
		0.769572, -0.362940, 0.525389,
		37.326782, 30.652958, 35.434517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344433, 31.254539, 34.771961>,  <36.788082, 30.907017, 35.066746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344433, 31.254539, 34.771961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530022, 30.957649, 34.965389>,  <37.641373, 30.779516, 35.081444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530022, 30.957649, 34.965389>,  <37.344433, 31.254539, 34.771961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530022, 30.957649, 34.965389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629210, -0.108129, -0.769677,
		0.623560, 0.661371, 0.416846,
		0.463969, -0.742224, 0.483566,
		37.669212, 30.734982, 35.110458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092575, 31.395430, 34.776302>,  <37.344433, 31.254539, 34.771961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092575, 31.395430, 34.776302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054600, 31.000641, 34.828262>,  <38.031815, 30.763767, 34.859440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054600, 31.000641, 34.828262>,  <38.092575, 31.395430, 34.776302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054600, 31.000641, 34.828262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565827, -0.160859, -0.808681,
		0.819041, -0.003271, 0.573726,
		-0.094934, -0.986972, 0.129899,
		38.026119, 30.704550, 34.867233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769371, 31.153738, 34.765839>,  <38.092575, 31.395430, 34.776302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769371, 31.153738, 34.765839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554726, 30.820732, 34.710758>,  <38.425938, 30.620928, 34.677711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554726, 30.820732, 34.710758>,  <38.769371, 31.153738, 34.765839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554726, 30.820732, 34.710758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650622, -0.304286, -0.695774,
		0.537343, -0.462953, 0.704937,
		-0.536613, -0.832517, -0.137701,
		38.393742, 30.570976, 34.669449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257648, 30.690632, 34.725319>,  <38.769371, 31.153738, 34.765839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257648, 30.690632, 34.725319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944122, 30.537024, 34.530113>,  <38.756004, 30.444859, 34.412991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944122, 30.537024, 34.530113>,  <39.257648, 30.690632, 34.725319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944122, 30.537024, 34.530113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601815, -0.275973, -0.749438,
		0.153120, -0.881117, 0.447421,
		-0.783819, -0.384019, -0.488013,
		38.708977, 30.421818, 34.383709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577385, 30.068419, 34.336430>,  <39.257648, 30.690632, 34.725319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577385, 30.068419, 34.336430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237736, 30.162647, 34.147327>,  <39.033947, 30.219185, 34.033867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237736, 30.162647, 34.147327>,  <39.577385, 30.068419, 34.336430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237736, 30.162647, 34.147327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345075, -0.430228, -0.834163,
		-0.399899, -0.871442, 0.284026,
		-0.849120, 0.235570, -0.472760,
		38.983002, 30.233318, 34.005501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378437, 29.517176, 33.991020>,  <39.577385, 30.068419, 34.336430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378437, 29.517176, 33.991020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156322, 29.796667, 33.810604>,  <39.023056, 29.964363, 33.702354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156322, 29.796667, 33.810604>,  <39.378437, 29.517176, 33.991020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156322, 29.796667, 33.810604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167758, -0.437082, -0.883638,
		-0.814566, -0.566335, 0.125486,
		-0.555283, 0.698730, -0.451040,
		38.989738, 30.006287, 33.675293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049877, 29.179157, 33.492420>,  <39.378437, 29.517176, 33.991020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049877, 29.179157, 33.492420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040680, 29.559383, 33.368553>,  <39.035164, 29.787519, 33.294231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040680, 29.559383, 33.368553>,  <39.049877, 29.179157, 33.492420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040680, 29.559383, 33.368553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248907, -0.294557, -0.922649,
		-0.968255, -0.098291, -0.229830,
		-0.022990, 0.950566, -0.309672,
		39.033783, 29.844553, 33.275650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565807, 29.206930, 32.853008>,  <39.049877, 29.179157, 33.492420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565807, 29.206930, 32.853008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791359, 29.536463, 32.829895>,  <38.926689, 29.734182, 32.816025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791359, 29.536463, 32.829895>,  <38.565807, 29.206930, 32.853008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791359, 29.536463, 32.829895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122853, -0.152868, -0.980581,
		-0.816666, 0.545833, -0.187410,
		0.563882, 0.823831, -0.057785,
		38.960526, 29.783611, 32.812561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325336, 29.603907, 32.290318>,  <38.565807, 29.206930, 32.853008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325336, 29.603907, 32.290318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706745, 29.710892, 32.345821>,  <38.935593, 29.775082, 32.379124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706745, 29.710892, 32.345821>,  <38.325336, 29.603907, 32.290318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706745, 29.710892, 32.345821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199818, -0.216612, -0.955590,
		-0.225526, 0.938906, -0.259989,
		0.953525, 0.267461, 0.138759,
		38.992802, 29.791130, 32.387447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445812, 29.987946, 31.769110>,  <38.325336, 29.603907, 32.290318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445812, 29.987946, 31.769110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825699, 29.915415, 31.871216>,  <39.053631, 29.871897, 31.932480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825699, 29.915415, 31.871216>,  <38.445812, 29.987946, 31.769110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825699, 29.915415, 31.871216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232567, -0.137353, -0.962833,
		0.209650, 0.973783, -0.088276,
		0.949716, -0.181328, 0.255266,
		39.110615, 29.861017, 31.947796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852360, 30.321951, 31.280544>,  <38.445812, 29.987946, 31.769110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852360, 30.321951, 31.280544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102390, 30.051334, 31.436277>,  <39.252407, 29.888966, 31.529716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102390, 30.051334, 31.436277>,  <38.852360, 30.321951, 31.280544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102390, 30.051334, 31.436277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333495, -0.219497, -0.916844,
		0.705738, 0.702934, 0.088421,
		0.625072, -0.676539, 0.389332,
		39.289913, 29.848373, 31.553078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488110, 30.609158, 31.077393>,  <38.852360, 30.321951, 31.280544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488110, 30.609158, 31.077393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527264, 30.219557, 31.159115>,  <39.550755, 29.985796, 31.208147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527264, 30.219557, 31.159115>,  <39.488110, 30.609158, 31.077393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527264, 30.219557, 31.159115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407449, -0.148073, -0.901144,
		0.907967, 0.171453, 0.382361,
		0.097886, -0.974001, 0.204304,
		39.556629, 29.927357, 31.220406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084660, 30.418280, 30.789413>,  <39.488110, 30.609158, 31.077393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084660, 30.418280, 30.789413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865742, 30.083832, 30.804243>,  <39.734390, 29.883163, 30.813141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865742, 30.083832, 30.804243>,  <40.084660, 30.418280, 30.789413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865742, 30.083832, 30.804243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234060, -0.195438, -0.952376,
		0.803544, -0.512553, 0.302664,
		-0.547296, -0.836118, 0.037075,
		39.701553, 29.832996, 30.815365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488411, 29.897972, 30.444510>,  <40.084660, 30.418280, 30.789413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488411, 29.897972, 30.444510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105572, 29.784571, 30.468466>,  <39.875870, 29.716530, 30.482840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105572, 29.784571, 30.468466>,  <40.488411, 29.897972, 30.444510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105572, 29.784571, 30.468466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041098, -0.071790, -0.996573,
		0.286833, -0.956280, 0.057059,
		-0.957099, -0.283505, 0.059893,
		39.818443, 29.699520, 30.486433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373604, 29.480946, 29.816278>,  <40.488411, 29.897972, 30.444510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373604, 29.480946, 29.816278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002983, 29.552404, 29.948692>,  <39.780609, 29.595280, 30.028141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002983, 29.552404, 29.948692>,  <40.373604, 29.480946, 29.816278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002983, 29.552404, 29.948692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337945, -0.008846, -0.941124,
		-0.165202, -0.983873, 0.068570,
		-0.926554, 0.178649, 0.331034,
		39.725018, 29.605997, 30.048002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940933, 28.999603, 29.515373>,  <40.373604, 29.480946, 29.816278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940933, 28.999603, 29.515373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730865, 29.327860, 29.605488>,  <39.604824, 29.524813, 29.659555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730865, 29.327860, 29.605488>,  <39.940933, 28.999603, 29.515373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730865, 29.327860, 29.605488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323331, 0.052464, -0.944831,
		-0.787184, -0.569033, 0.237786,
		-0.525165, 0.820639, 0.225284,
		39.573315, 29.574051, 29.673073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331367, 28.909687, 29.190548>,  <39.940933, 28.999603, 29.515373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331367, 28.909687, 29.190548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347176, 29.306421, 29.239040>,  <39.356659, 29.544462, 29.268135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347176, 29.306421, 29.239040>,  <39.331367, 28.909687, 29.190548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347176, 29.306421, 29.239040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157174, 0.125986, -0.979502,
		-0.986780, 0.019657, 0.160871,
		0.039521, 0.991837, 0.121231,
		39.359032, 29.603973, 29.275410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.629078, 29.214842, 28.863638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869759, 29.533072, 28.891983>,  <39.014168, 29.724009, 28.908991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869759, 29.533072, 28.891983>,  <38.629078, 29.214842, 28.863638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869759, 29.533072, 28.891983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320459, 0.321725, -0.890954,
		-0.731619, 0.513375, 0.448530,
		0.601697, 0.795575, 0.070864,
		39.050266, 29.771744, 28.913242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358150, 29.717428, 28.423731>,  <38.629078, 29.214842, 28.863638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358150, 29.717428, 28.423731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.713070, 29.889097, 28.491282>,  <38.926022, 29.992098, 28.531813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.713070, 29.889097, 28.491282>,  <38.358150, 29.717428, 28.423731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713070, 29.889097, 28.491282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023201, 0.407241, -0.913026,
		-0.460618, 0.806206, 0.371300,
		0.887295, 0.429171, 0.168878,
		38.979259, 30.017849, 28.541945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276642, 30.466263, 28.229544>,  <38.358150, 29.717428, 28.423731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276642, 30.466263, 28.229544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659607, 30.354067, 28.202152>,  <38.889385, 30.286749, 28.185719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659607, 30.354067, 28.202152>,  <38.276642, 30.466263, 28.229544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659607, 30.354067, 28.202152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076797, 0.476015, -0.876078,
		0.278328, 0.833508, 0.477283,
		0.957411, -0.280491, -0.068477,
		38.946831, 30.269920, 28.181610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695999, 31.105343, 28.033911>,  <38.276642, 30.466263, 28.229544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695999, 31.105343, 28.033911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894878, 30.779514, 27.914396>,  <39.014206, 30.584017, 27.842688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894878, 30.779514, 27.914396>,  <38.695999, 31.105343, 28.033911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894878, 30.779514, 27.914396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049937, 0.370660, -0.927425,
		0.866201, 0.446190, 0.224967,
		0.497194, -0.814571, -0.298785,
		39.044037, 30.535143, 27.824760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192791, 31.353262, 27.481266>,  <38.695999, 31.105343, 28.033911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192791, 31.353262, 27.481266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207642, 30.956106, 27.436026>,  <39.216553, 30.717813, 27.408882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207642, 30.956106, 27.436026>,  <39.192791, 31.353262, 27.481266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207642, 30.956106, 27.436026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085301, 0.109617, -0.990307,
		0.995663, 0.046416, -0.080625,
		0.037129, -0.992890, -0.113101,
		39.218781, 30.658239, 27.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755798, 31.205952, 27.106812>,  <39.192791, 31.353262, 27.481266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755798, 31.205952, 27.106812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510578, 30.893215, 27.061399>,  <39.363445, 30.705574, 27.034153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510578, 30.893215, 27.061399>,  <39.755798, 31.205952, 27.106812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510578, 30.893215, 27.061399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061205, 0.190271, -0.979822,
		0.787666, -0.593736, -0.164499,
		-0.613055, -0.781841, -0.113530,
		39.326660, 30.658663, 27.027340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014690, 30.928400, 26.506933>,  <39.755798, 31.205952, 27.106812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014690, 30.928400, 26.506933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654140, 30.756550, 26.528664>,  <39.437813, 30.653440, 26.541702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654140, 30.756550, 26.528664>,  <40.014690, 30.928400, 26.506933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654140, 30.756550, 26.528664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093532, 0.070652, -0.993106,
		0.422826, -0.900239, -0.103867,
		-0.901371, -0.429626, 0.054327,
		39.383728, 30.627663, 26.544962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958145, 30.388470, 26.027781>,  <40.014690, 30.928400, 26.506933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958145, 30.388470, 26.027781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.567791, 30.462643, 26.073841>,  <39.333580, 30.507147, 26.101477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.567791, 30.462643, 26.073841>,  <39.958145, 30.388470, 26.027781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567791, 30.462643, 26.073841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149657, -0.184393, -0.971392,
		-0.158897, -0.965201, 0.207699,
		-0.975887, 0.185435, 0.115149,
		39.275024, 30.518272, 26.108385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603390, 29.720901, 25.842230>,  <39.958145, 30.388470, 26.027781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603390, 29.720901, 25.842230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334160, 30.015306, 25.813217>,  <39.172623, 30.191950, 25.795811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334160, 30.015306, 25.813217>,  <39.603390, 29.720901, 25.842230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334160, 30.015306, 25.813217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161119, -0.241637, -0.956897,
		-0.721815, -0.632373, 0.281224,
		-0.673070, 0.736014, -0.072530,
		39.132240, 30.236111, 25.791458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107670, 29.502874, 25.243042>,  <39.603390, 29.720901, 25.842230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107670, 29.502874, 25.243042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041946, 29.893673, 25.297424>,  <39.002514, 30.128151, 25.330053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041946, 29.893673, 25.297424>,  <39.107670, 29.502874, 25.243042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041946, 29.893673, 25.297424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210403, 0.099943, -0.972493,
		-0.963708, -0.188394, 0.189141,
		-0.164308, 0.976995, 0.135955,
		38.992653, 30.186771, 25.338211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453793, 29.653049, 24.930794>,  <39.107670, 29.502874, 25.243042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453793, 29.653049, 24.930794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657150, 29.997343, 24.941162>,  <38.779163, 30.203920, 24.947382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657150, 29.997343, 24.941162>,  <38.453793, 29.653049, 24.930794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657150, 29.997343, 24.941162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165916, 0.127444, -0.977870,
		-0.844991, 0.492840, 0.207601,
		0.508391, 0.860736, 0.025919,
		38.809666, 30.255564, 24.948938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106819, 30.006985, 24.494131>,  <38.453793, 29.653049, 24.930794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106819, 30.006985, 24.494131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439098, 30.228386, 24.518053>,  <38.638466, 30.361227, 24.532406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439098, 30.228386, 24.518053>,  <38.106819, 30.006985, 24.494131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439098, 30.228386, 24.518053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070512, 0.001957, -0.997509,
		-0.552242, 0.832845, -0.037403,
		0.830697, 0.553503, 0.059806,
		38.688309, 30.394438, 24.535995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004097, 30.599758, 24.095919>,  <38.106819, 30.006985, 24.494131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004097, 30.599758, 24.095919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400902, 30.561211, 24.128485>,  <38.638985, 30.538082, 24.148026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400902, 30.561211, 24.128485>,  <38.004097, 30.599758, 24.095919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400902, 30.561211, 24.128485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083914, 0.022135, -0.996227,
		0.094203, 0.995099, 0.030045,
		0.992010, -0.096368, 0.081417,
		38.698505, 30.532301, 24.152910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223473, 31.125042, 23.601088>,  <38.004097, 30.599758, 24.095919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223473, 31.125042, 23.601088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525238, 30.878971, 23.692673>,  <38.706295, 30.731329, 23.747623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525238, 30.878971, 23.692673>,  <38.223473, 31.125042, 23.601088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525238, 30.878971, 23.692673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397197, 0.150128, -0.905371,
		0.522589, 0.773964, 0.357604,
		0.754411, -0.615176, 0.228961,
		38.751560, 30.694418, 23.761360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800175, 31.567978, 23.452202>,  <38.223473, 31.125042, 23.601088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800175, 31.567978, 23.452202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924454, 31.187778, 23.450521>,  <38.999020, 30.959660, 23.449514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924454, 31.187778, 23.450521>,  <38.800175, 31.567978, 23.452202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924454, 31.187778, 23.450521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245671, 0.084572, -0.965657,
		0.918211, 0.298996, 0.259786,
		0.310698, -0.950499, -0.004200,
		39.017662, 30.902628, 23.449261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380695, 31.526730, 23.005072>,  <38.800175, 31.567978, 23.452202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380695, 31.526730, 23.005072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275814, 31.141378, 23.027527>,  <39.212887, 30.910168, 23.041000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275814, 31.141378, 23.027527>,  <39.380695, 31.526730, 23.005072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275814, 31.141378, 23.027527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210230, -0.113799, -0.971006,
		0.941836, -0.242796, 0.232369,
		-0.262200, -0.963379, 0.056137,
		39.197155, 30.852365, 23.044369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948391, 31.155792, 22.717606>,  <39.380695, 31.526730, 23.005072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948391, 31.155792, 22.717606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611275, 30.941139, 22.700983>,  <39.409004, 30.812347, 22.691010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611275, 30.941139, 22.700983>,  <39.948391, 31.155792, 22.717606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611275, 30.941139, 22.700983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054963, -0.009005, -0.998448,
		0.535425, -0.843768, 0.037084,
		-0.842792, -0.536632, -0.041555,
		39.358437, 30.780149, 22.688517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131695, 30.638300, 22.248318>,  <39.948391, 31.155792, 22.717606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131695, 30.638300, 22.248318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732857, 30.607840, 22.249674>,  <39.493553, 30.589563, 22.250488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732857, 30.607840, 22.249674>,  <40.131695, 30.638300, 22.248318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732857, 30.607840, 22.249674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009172, 0.075673, -0.997090,
		0.075673, -0.994221, -0.076151,
		0.997090, 0.076151, -0.003392,
		39.433731, 30.584993, 22.250692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871616, 30.091459, 21.657946>,  <40.131695, 30.638300, 22.248318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871616, 30.091459, 21.657946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573166, 30.341070, 21.750803>,  <39.394096, 30.490837, 21.806517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573166, 30.341070, 21.750803>,  <39.871616, 30.091459, 21.657946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573166, 30.341070, 21.750803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254487, 0.054900, -0.965516,
		-0.615253, -0.779472, 0.117845,
		-0.746124, 0.624027, 0.232143,
		39.349327, 30.528278, 21.820446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352131, 29.895178, 21.164013>,  <39.871616, 30.091459, 21.657946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352131, 29.895178, 21.164013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228687, 30.255503, 21.286196>,  <39.154621, 30.471697, 21.359505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228687, 30.255503, 21.286196>,  <39.352131, 29.895178, 21.164013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228687, 30.255503, 21.286196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308129, 0.209140, -0.928071,
		-0.899899, -0.380528, 0.213024,
		-0.308606, 0.900810, 0.305457,
		39.136105, 30.525745, 21.377832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893482, 30.040462, 20.658922>,  <39.352131, 29.895178, 21.164013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893482, 30.040462, 20.658922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949646, 30.401161, 20.822453>,  <38.983345, 30.617580, 20.920570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949646, 30.401161, 20.822453>,  <38.893482, 30.040462, 20.658922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949646, 30.401161, 20.822453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287800, 0.432257, -0.854591,
		-0.947342, 0.002332, 0.320215,
		0.140408, 0.901747, 0.408824,
		38.991768, 30.671686, 20.945101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456856, 30.295523, 20.233789>,  <38.893482, 30.040462, 20.658922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456856, 30.295523, 20.233789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653183, 30.604349, 20.395287>,  <38.770981, 30.789646, 20.492186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653183, 30.604349, 20.395287>,  <38.456856, 30.295523, 20.233789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653183, 30.604349, 20.395287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136177, 0.525685, -0.839709,
		-0.860554, 0.357165, 0.363154,
		0.490819, 0.772068, 0.403742,
		38.800430, 30.835970, 20.516409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107765, 30.975801, 20.107643>,  <38.456856, 30.295523, 20.233789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107765, 30.975801, 20.107643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500023, 31.044987, 20.144358>,  <38.735378, 31.086498, 20.166388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500023, 31.044987, 20.144358>,  <38.107765, 30.975801, 20.107643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500023, 31.044987, 20.144358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038810, 0.287768, -0.956914,
		-0.191926, 0.941952, 0.275484,
		0.980642, 0.172965, 0.091788,
		38.794216, 31.096876, 20.171894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239666, 31.293238, 19.479418>,  <38.107765, 30.975801, 20.107643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239666, 31.293238, 19.479418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608727, 31.294628, 19.633665>,  <38.830162, 31.295462, 19.726213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608727, 31.294628, 19.633665>,  <38.239666, 31.293238, 19.479418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608727, 31.294628, 19.633665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378066, 0.188978, -0.906285,
		-0.076022, 0.981975, 0.173047,
		0.922652, 0.003475, 0.385618,
		38.885521, 31.295670, 19.749352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957016, 32.069538, 19.815107>,  <38.239666, 31.293238, 19.479418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957016, 32.069538, 19.815107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621849, 31.860144, 19.753321>,  <37.420750, 31.734507, 19.716249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621849, 31.860144, 19.753321>,  <37.957016, 32.069538, 19.815107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621849, 31.860144, 19.753321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270554, 0.152585, 0.950536,
		-0.474022, 0.838261, -0.269484,
		-0.837916, -0.523485, -0.154466,
		37.370476, 31.703098, 19.706982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499947, 32.366924, 20.324209>,  <37.957016, 32.069538, 19.815107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499947, 32.366924, 20.324209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295204, 32.040672, 20.216320>,  <37.172359, 31.844921, 20.151587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295204, 32.040672, 20.216320>,  <37.499947, 32.366924, 20.324209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295204, 32.040672, 20.216320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399501, -0.051956, 0.915259,
		-0.760525, 0.576239, -0.299250,
		-0.511860, -0.815628, -0.269722,
		37.141647, 31.795984, 20.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821484, 32.543583, 20.393143>,  <37.499947, 32.366924, 20.324209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821484, 32.543583, 20.393143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884514, 32.149158, 20.414474>,  <36.922333, 31.912502, 20.427275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884514, 32.149158, 20.414474>,  <36.821484, 32.543583, 20.393143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884514, 32.149158, 20.414474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421869, -0.018391, 0.906470,
		-0.892858, -0.165339, -0.418889,
		0.157578, -0.986065, 0.053331,
		36.931786, 31.853338, 20.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260498, 32.290318, 20.757643>,  <36.821484, 32.543583, 20.393143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260498, 32.290318, 20.757643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528965, 31.995390, 20.788372>,  <36.690044, 31.818434, 20.806808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528965, 31.995390, 20.788372>,  <36.260498, 32.290318, 20.757643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528965, 31.995390, 20.788372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223763, -0.102703, 0.969217,
		-0.706730, -0.667695, -0.233915,
		0.671165, -0.737316, 0.076822,
		36.730316, 31.774195, 20.811419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890057, 31.661158, 21.172453>,  <36.260498, 32.290318, 20.757643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890057, 31.661158, 21.172453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287109, 31.619440, 21.197096>,  <36.525341, 31.594410, 21.211882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287109, 31.619440, 21.197096>,  <35.890057, 31.661158, 21.172453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287109, 31.619440, 21.197096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079518, -0.177389, 0.980923,
		-0.091374, -0.978599, -0.184376,
		0.992637, -0.104292, 0.061608,
		36.584900, 31.588152, 21.215578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013313, 30.994989, 21.529366>,  <35.890057, 31.661158, 21.172453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013313, 30.994989, 21.529366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352051, 31.206734, 21.549911>,  <36.555294, 31.333780, 21.562239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352051, 31.206734, 21.549911>,  <36.013313, 30.994989, 21.529366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352051, 31.206734, 21.549911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033777, -0.149914, 0.988122,
		0.530776, -0.835045, -0.144833,
		0.846839, 0.529364, 0.051365,
		36.606102, 31.365543, 21.565321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362320, 30.560286, 21.879791>,  <36.013313, 30.994989, 21.529366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362320, 30.560286, 21.879791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538742, 30.918966, 21.894714>,  <36.644596, 31.134174, 21.903669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538742, 30.918966, 21.894714>,  <36.362320, 30.560286, 21.879791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538742, 30.918966, 21.894714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216131, -0.146473, 0.965315,
		0.871065, -0.417697, -0.258408,
		0.441059, 0.896702, 0.037310,
		36.671059, 31.187977, 21.905907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083538, 30.438791, 22.266376>,  <36.362320, 30.560286, 21.879791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083538, 30.438791, 22.266376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926743, 30.801361, 22.329296>,  <36.832664, 31.018902, 22.367048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926743, 30.801361, 22.329296>,  <37.083538, 30.438791, 22.266376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926743, 30.801361, 22.329296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132300, -0.113663, 0.984671,
		0.910408, 0.406789, -0.075365,
		-0.391987, 0.906423, 0.157298,
		36.809147, 31.073288, 22.376486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297459, 30.488909, 22.880070>,  <37.083538, 30.438791, 22.266376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297459, 30.488909, 22.880070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078533, 30.819605, 22.827995>,  <36.947178, 31.018023, 22.796751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078533, 30.819605, 22.827995>,  <37.297459, 30.488909, 22.880070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078533, 30.819605, 22.827995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042625, 0.127813, 0.990882,
		0.835842, 0.547872, -0.034714,
		-0.547313, 0.826741, -0.130185,
		36.914341, 31.067627, 22.788940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601681, 30.889727, 23.356403>,  <37.297459, 30.488909, 22.880070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601681, 30.889727, 23.356403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240601, 31.041033, 23.274374>,  <37.023952, 31.131817, 23.225157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240601, 31.041033, 23.274374>,  <37.601681, 30.889727, 23.356403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240601, 31.041033, 23.274374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147248, 0.176256, 0.973268,
		0.404298, 0.908763, -0.103407,
		-0.902696, 0.378264, -0.205074,
		36.969791, 31.154512, 23.212852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553078, 31.479719, 23.735302>,  <37.601681, 30.889727, 23.356403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553078, 31.479719, 23.735302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186893, 31.340076, 23.655239>,  <36.967182, 31.256290, 23.607201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186893, 31.340076, 23.655239>,  <37.553078, 31.479719, 23.735302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186893, 31.340076, 23.655239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226235, 0.035134, 0.973439,
		-0.332801, 0.936424, -0.111143,
		-0.915457, -0.349106, -0.200160,
		36.912258, 31.235344, 23.595192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183842, 31.868410, 24.148392>,  <37.553078, 31.479719, 23.735302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183842, 31.868410, 24.148392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959827, 31.548182, 24.063114>,  <36.825420, 31.356045, 24.011948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959827, 31.548182, 24.063114>,  <37.183842, 31.868410, 24.148392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959827, 31.548182, 24.063114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271674, -0.065643, 0.960148,
		-0.782661, 0.595632, -0.180732,
		-0.560031, -0.800571, -0.213194,
		36.791817, 31.308010, 23.999155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626633, 32.062248, 24.575022>,  <37.183842, 31.868410, 24.148392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626633, 32.062248, 24.575022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575840, 31.680702, 24.466190>,  <36.545364, 31.451777, 24.400892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575840, 31.680702, 24.466190>,  <36.626633, 32.062248, 24.575022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575840, 31.680702, 24.466190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181144, -0.247386, 0.951833,
		-0.975225, 0.170148, -0.141373,
		-0.126979, -0.953860, -0.272079,
		36.537746, 31.394545, 24.384567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075356, 31.809368, 24.990095>,  <36.626633, 32.062248, 24.575022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075356, 31.809368, 24.990095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300003, 31.496531, 24.882090>,  <36.434792, 31.308828, 24.817286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300003, 31.496531, 24.882090>,  <36.075356, 31.809368, 24.990095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300003, 31.496531, 24.882090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113739, -0.396222, 0.911083,
		-0.819539, -0.480973, -0.311482,
		0.561622, -0.782095, -0.270014,
		36.468491, 31.261902, 24.801085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688557, 31.227386, 25.075672>,  <36.075356, 31.809368, 24.990095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688557, 31.227386, 25.075672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064770, 31.091801, 25.084608>,  <36.290497, 31.010448, 25.089970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064770, 31.091801, 25.084608>,  <35.688557, 31.227386, 25.075672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064770, 31.091801, 25.084608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173775, -0.423588, 0.889031,
		-0.291886, -0.840046, -0.457302,
		0.940535, -0.338963, 0.022340,
		36.346931, 30.990112, 25.091311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622906, 30.569260, 25.372585>,  <35.688557, 31.227386, 25.075672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622906, 30.569260, 25.372585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019901, 30.607599, 25.403015>,  <36.258099, 30.630604, 25.421274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019901, 30.607599, 25.403015>,  <35.622906, 30.569260, 25.372585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019901, 30.607599, 25.403015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024183, -0.455796, 0.889756,
		0.119960, -0.884908, -0.450053,
		0.992484, 0.095851, 0.076077,
		36.317646, 30.636354, 25.425838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745193, 29.876625, 25.434219>,  <35.622906, 30.569260, 25.372585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745193, 29.876625, 25.434219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053612, 30.094498, 25.566164>,  <36.238663, 30.225222, 25.645330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053612, 30.094498, 25.566164>,  <35.745193, 29.876625, 25.434219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053612, 30.094498, 25.566164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014959, -0.502379, 0.864518,
		0.636604, -0.671517, -0.379209,
		0.771046, 0.544683, 0.329862,
		36.284927, 30.257902, 25.665123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091488, 29.487274, 25.794113>,  <35.745193, 29.876625, 25.434219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091488, 29.487274, 25.794113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.216743, 29.834248, 25.948772>,  <36.291897, 30.042433, 26.041569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.216743, 29.834248, 25.948772>,  <36.091488, 29.487274, 25.794113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216743, 29.834248, 25.948772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070479, -0.427228, 0.901393,
		0.947088, -0.255013, -0.194918,
		0.313141, 0.867436, 0.386649,
		36.310684, 30.094479, 26.064768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654640, 29.285702, 26.323151>,  <36.091488, 29.487274, 25.794113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654640, 29.285702, 26.323151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500771, 29.645966, 26.403982>,  <36.408447, 29.862123, 26.452482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500771, 29.645966, 26.403982>,  <36.654640, 29.285702, 26.323151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500771, 29.645966, 26.403982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203500, -0.296291, 0.933166,
		0.900339, 0.317844, 0.297261,
		-0.384677, 0.900659, 0.202081,
		36.385368, 29.916162, 26.464607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805111, 29.446501, 27.030533>,  <36.654640, 29.285702, 26.323151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805111, 29.446501, 27.030533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521358, 29.720444, 26.963900>,  <36.351109, 29.884809, 26.923920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521358, 29.720444, 26.963900>,  <36.805111, 29.446501, 27.030533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521358, 29.720444, 26.963900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328696, -0.112375, 0.937726,
		0.623490, 0.719959, 0.304826,
		-0.709379, 0.684859, -0.166583,
		36.308544, 29.925901, 26.913925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.169876, 29.070843, 31.946795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.909142, 29.348440, 31.824493>,  <39.752701, 29.514999, 31.751114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.909142, 29.348440, 31.824493>,  <40.169876, 29.070843, 31.946795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909142, 29.348440, 31.824493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126919, 0.297656, 0.946199,
		0.747666, 0.655570, -0.105941,
		-0.651833, 0.693995, -0.305751,
		39.713593, 29.556639, 31.732767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329391, 29.628881, 32.372677>,  <40.169876, 29.070843, 31.946795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329391, 29.628881, 32.372677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.961205, 29.707376, 32.237480>,  <39.740292, 29.754475, 32.156361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.961205, 29.707376, 32.237480>,  <40.329391, 29.628881, 32.372677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961205, 29.707376, 32.237480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209588, 0.482090, 0.850683,
		0.329880, 0.853861, -0.402617,
		-0.920463, 0.196240, -0.337991,
		39.685066, 29.766249, 32.136082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156567, 30.303833, 32.623035>,  <40.329391, 29.628881, 32.372677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156567, 30.303833, 32.623035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806042, 30.137859, 32.525139>,  <39.595726, 30.038275, 32.466400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.806042, 30.137859, 32.525139>,  <40.156567, 30.303833, 32.623035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806042, 30.137859, 32.525139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372662, 0.261951, 0.890227,
		-0.305276, 0.871327, -0.384183,
		-0.876316, -0.414935, -0.244744,
		39.543148, 30.013378, 32.451717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735153, 30.846853, 32.748020>,  <40.156567, 30.303833, 32.623035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735153, 30.846853, 32.748020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490349, 30.531164, 32.768318>,  <39.343468, 30.341751, 32.780495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490349, 30.531164, 32.768318>,  <39.735153, 30.846853, 32.748020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490349, 30.531164, 32.768318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299059, 0.290349, 0.908989,
		-0.732126, 0.541135, -0.413720,
		-0.612009, -0.789221, 0.050740,
		39.306747, 30.294397, 32.783539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986553, 31.082930, 32.922726>,  <39.735153, 30.846853, 32.748020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986553, 31.082930, 32.922726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992664, 30.699417, 33.036221>,  <38.996330, 30.469311, 33.104317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992664, 30.699417, 33.036221>,  <38.986553, 31.082930, 32.922726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992664, 30.699417, 33.036221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619330, 0.213712, 0.755485,
		-0.784983, -0.187269, -0.590536,
		0.015274, -0.958779, 0.283741,
		38.997246, 30.411783, 33.121342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343788, 30.986776, 33.049679>,  <38.986553, 31.082930, 32.922726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343788, 30.986776, 33.049679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528496, 30.698072, 33.255913>,  <38.639320, 30.524851, 33.379654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528496, 30.698072, 33.255913>,  <38.343788, 30.986776, 33.049679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528496, 30.698072, 33.255913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461824, 0.300636, 0.834468,
		-0.757290, -0.623443, -0.194502,
		0.461769, -0.721760, 0.515589,
		38.667027, 30.481544, 33.410591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811192, 30.548275, 33.425091>,  <38.343788, 30.986776, 33.049679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811192, 30.548275, 33.425091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159698, 30.469185, 33.604778>,  <38.368801, 30.421730, 33.712589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159698, 30.469185, 33.604778>,  <37.811192, 30.548275, 33.425091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159698, 30.469185, 33.604778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456007, 0.012401, 0.889890,
		-0.181528, -0.980178, -0.079362,
		0.871266, -0.197729, 0.449220,
		38.421078, 30.409866, 33.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681686, 29.848137, 33.829391>,  <37.811192, 30.548275, 33.425091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681686, 29.848137, 33.829391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997673, 30.034500, 33.988834>,  <38.187263, 30.146318, 34.084499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997673, 30.034500, 33.988834>,  <37.681686, 29.848137, 33.829391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997673, 30.034500, 33.988834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531107, 0.195081, 0.824542,
		0.306398, -0.863062, 0.401553,
		0.789966, 0.465905, 0.398606,
		38.234661, 30.174273, 34.108418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703312, 29.511347, 34.447609>,  <37.681686, 29.848137, 33.829391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703312, 29.511347, 34.447609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913380, 29.848532, 34.494270>,  <38.039421, 30.050842, 34.522266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913380, 29.848532, 34.494270>,  <37.703312, 29.511347, 34.447609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913380, 29.848532, 34.494270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472701, 0.174977, 0.863676,
		0.707635, -0.508722, 0.490363,
		0.525173, 0.842962, 0.116653,
		38.070930, 30.101419, 34.529266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816002, 29.447315, 35.093746>,  <37.703312, 29.511347, 34.447609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816002, 29.447315, 35.093746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.880512, 29.835100, 35.019840>,  <37.919220, 30.067770, 34.975498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.880512, 29.835100, 35.019840>,  <37.816002, 29.447315, 35.093746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880512, 29.835100, 35.019840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358550, 0.231976, 0.904229,
		0.919474, -0.079583, 0.385012,
		0.161274, 0.969461, -0.184761,
		37.928894, 30.125938, 34.964413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254959, 29.774675, 35.727577>,  <37.816002, 29.447315, 35.093746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254959, 29.774675, 35.727577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048649, 30.062595, 35.541733>,  <37.924862, 30.235348, 35.430225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048649, 30.062595, 35.541733>,  <38.254959, 29.774675, 35.727577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048649, 30.062595, 35.541733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459441, 0.225337, 0.859149,
		0.723110, 0.656588, 0.214483,
		-0.515776, 0.719802, -0.464607,
		37.893917, 30.278536, 35.402351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367554, 30.306032, 36.171825>,  <38.254959, 29.774675, 35.727577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367554, 30.306032, 36.171825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048130, 30.379734, 35.942619>,  <37.856476, 30.423956, 35.805096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048130, 30.379734, 35.942619>,  <38.367554, 30.306032, 36.171825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048130, 30.379734, 35.942619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503371, 0.317544, 0.803607,
		0.330027, 0.930170, -0.160830,
		-0.798561, 0.184255, -0.573018,
		37.808563, 30.435011, 35.770714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049698, 30.882816, 36.526585>,  <38.367554, 30.306032, 36.171825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049698, 30.882816, 36.526585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.756439, 30.772045, 36.278130>,  <37.580482, 30.705582, 36.129059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.756439, 30.772045, 36.278130>,  <38.049698, 30.882816, 36.526585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756439, 30.772045, 36.278130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662874, 0.086899, 0.743671,
		-0.151968, 0.956953, -0.247278,
		-0.733147, -0.276928, -0.621134,
		37.536495, 30.688967, 36.091789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434494, 31.368126, 36.562603>,  <38.049698, 30.882816, 36.526585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434494, 31.368126, 36.562603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.319405, 31.005548, 36.438942>,  <37.250351, 30.788002, 36.364746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.319405, 31.005548, 36.438942>,  <37.434494, 31.368126, 36.562603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319405, 31.005548, 36.438942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765409, 0.023621, 0.643110,
		-0.575640, 0.421667, -0.700597,
		-0.287727, -0.906443, -0.309150,
		37.233086, 30.733616, 36.346195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944847, 31.688013, 36.823032>,  <37.434494, 31.368126, 36.562603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944847, 31.688013, 36.823032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963943, 32.076645, 36.915775>,  <36.975399, 32.309822, 36.971420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963943, 32.076645, 36.915775>,  <36.944847, 31.688013, 36.823032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963943, 32.076645, 36.915775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140160, 0.223305, -0.964619,
		-0.988977, 0.078545, -0.125516,
		0.047738, 0.971579, 0.231853,
		36.978264, 32.368118, 36.985332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658688, 32.054367, 36.373135>,  <36.944847, 31.688013, 36.823032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658688, 32.054367, 36.373135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866665, 32.351704, 36.541466>,  <36.991451, 32.530106, 36.642464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866665, 32.351704, 36.541466>,  <36.658688, 32.054367, 36.373135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866665, 32.351704, 36.541466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148414, 0.406555, -0.901491,
		-0.841207, 0.531184, 0.101064,
		0.519946, 0.743341, 0.420832,
		37.022648, 32.574707, 36.667717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467758, 32.651268, 35.919544>,  <36.658688, 32.054367, 36.373135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467758, 32.651268, 35.919544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.804634, 32.769199, 36.100113>,  <37.006760, 32.839958, 36.208454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.804634, 32.769199, 36.100113>,  <36.467758, 32.651268, 35.919544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804634, 32.769199, 36.100113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268853, 0.496100, -0.825592,
		-0.467362, 0.816676, 0.338546,
		0.842194, 0.294831, 0.451424,
		37.057293, 32.857647, 36.235538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575996, 33.305908, 35.688389>,  <36.467758, 32.651268, 35.919544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575996, 33.305908, 35.688389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932182, 33.191628, 35.830070>,  <37.145893, 33.123062, 35.915077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932182, 33.191628, 35.830070>,  <36.575996, 33.305908, 35.688389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932182, 33.191628, 35.830070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435187, 0.307122, -0.846339,
		0.133014, 0.907774, 0.397811,
		0.890460, -0.285697, 0.354199,
		37.199322, 33.105919, 35.936329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027977, 33.762867, 35.508923>,  <36.575996, 33.305908, 35.688389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027977, 33.762867, 35.508923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287258, 33.471642, 35.598145>,  <37.442825, 33.296906, 35.651680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287258, 33.471642, 35.598145>,  <37.027977, 33.762867, 35.508923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287258, 33.471642, 35.598145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515801, 0.204321, -0.831987,
		0.560167, 0.654347, 0.507979,
		0.648199, -0.728068, 0.223059,
		37.481716, 33.253220, 35.665062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611713, 34.096626, 35.498737>,  <37.027977, 33.762867, 35.508923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611713, 34.096626, 35.498737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691025, 33.712204, 35.421726>,  <37.738609, 33.481552, 35.375519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.691025, 33.712204, 35.421726>,  <37.611713, 34.096626, 35.498737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691025, 33.712204, 35.421726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336561, 0.251242, -0.907527,
		0.920551, 0.115143, 0.373267,
		0.198276, -0.961051, -0.192529,
		37.750507, 33.423889, 35.363968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324032, 34.079792, 35.194138>,  <37.611713, 34.096626, 35.498737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324032, 34.079792, 35.194138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161106, 33.734863, 35.073807>,  <38.063351, 33.527905, 35.001606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161106, 33.734863, 35.073807>,  <38.324032, 34.079792, 35.194138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161106, 33.734863, 35.073807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509361, 0.058917, -0.858534,
		0.758057, -0.502920, 0.415236,
		-0.407310, -0.862322, -0.300830,
		38.038914, 33.476166, 34.983559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873569, 33.629356, 34.990868>,  <38.324032, 34.079792, 35.194138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873569, 33.629356, 34.990868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549507, 33.456001, 34.832970>,  <38.355068, 33.351990, 34.738232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.549507, 33.456001, 34.832970>,  <38.873569, 33.629356, 34.990868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549507, 33.456001, 34.832970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460331, -0.053403, -0.886140,
		0.362959, -0.899626, 0.242766,
		-0.810158, -0.433384, -0.394742,
		38.306461, 33.325985, 34.714546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044323, 33.004162, 34.647835>,  <38.873569, 33.629356, 34.990868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044323, 33.004162, 34.647835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694145, 33.099339, 34.479557>,  <38.484039, 33.156445, 34.378590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694145, 33.099339, 34.479557>,  <39.044323, 33.004162, 34.647835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694145, 33.099339, 34.479557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350314, -0.287304, -0.891480,
		-0.332992, -0.927813, 0.168162,
		-0.875441, 0.237946, -0.420697,
		38.431511, 33.170719, 34.353348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036167, 32.602581, 34.138733>,  <39.044323, 33.004162, 34.647835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036167, 32.602581, 34.138733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779591, 32.893654, 34.041546>,  <38.625645, 33.068298, 33.983234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779591, 32.893654, 34.041546>,  <39.036167, 32.602581, 34.138733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779591, 32.893654, 34.041546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218417, -0.130378, -0.967107,
		-0.735427, -0.673406, -0.075309,
		-0.641437, 0.727685, -0.242967,
		38.587158, 33.111958, 33.968655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409153, 32.381184, 33.589321>,  <39.036167, 32.602581, 34.138733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409153, 32.381184, 33.589321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.520069, 32.764091, 33.556477>,  <38.586617, 32.993835, 33.536770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.520069, 32.764091, 33.556477>,  <38.409153, 32.381184, 33.589321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520069, 32.764091, 33.556477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206551, -0.142854, -0.967951,
		-0.938322, 0.251442, -0.237337,
		0.277288, 0.957272, -0.082108,
		38.603256, 33.051273, 33.531845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341995, 32.398640, 32.906960>,  <38.409153, 32.381184, 33.589321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341995, 32.398640, 32.906960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.453228, 32.779243, 32.959572>,  <38.519970, 33.007607, 32.991138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.453228, 32.779243, 32.959572>,  <38.341995, 32.398640, 32.906960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453228, 32.779243, 32.959572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016951, 0.141768, -0.989755,
		-0.960407, 0.273005, 0.055553,
		0.278084, 0.951509, 0.131528,
		38.536652, 33.064697, 32.999031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960049, 32.800594, 32.539581>,  <38.341995, 32.398640, 32.906960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960049, 32.800594, 32.539581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300922, 33.007767, 32.569321>,  <38.505447, 33.132069, 32.587166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300922, 33.007767, 32.569321>,  <37.960049, 32.800594, 32.539581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300922, 33.007767, 32.569321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013540, 0.120223, -0.992655,
		-0.523065, 0.846932, 0.095439,
		0.852185, 0.517931, 0.074352,
		38.556580, 33.163147, 32.591625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758297, 33.289917, 32.043125>,  <37.960049, 32.800594, 32.539581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758297, 33.289917, 32.043125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.155140, 33.297962, 32.092628>,  <38.393246, 33.302788, 32.122330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.155140, 33.297962, 32.092628>,  <37.758297, 33.289917, 32.043125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155140, 33.297962, 32.092628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122665, 0.048640, -0.991256,
		-0.025954, 0.998614, 0.045789,
		0.992109, 0.020111, 0.123757,
		38.452774, 33.303997, 32.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275623, 33.895130, 32.248352>,  <37.758297, 33.289917, 32.043125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275623, 33.895130, 32.248352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.989006, 34.161507, 32.165318>,  <36.817036, 34.321331, 32.115498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.989006, 34.161507, 32.165318>,  <37.275623, 33.895130, 32.248352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989006, 34.161507, 32.165318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485200, -0.262027, 0.834220,
		0.501145, 0.698476, 0.510867,
		-0.716544, 0.665938, -0.207586,
		36.774044, 34.361286, 32.103043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136757, 34.341320, 32.856396>,  <37.275623, 33.895130, 32.248352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136757, 34.341320, 32.856396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.801239, 34.315659, 32.640137>,  <36.599926, 34.300262, 32.510380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.801239, 34.315659, 32.640137>,  <37.136757, 34.341320, 32.856396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801239, 34.315659, 32.640137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520038, -0.199576, 0.830500,
		-0.161182, 0.977780, 0.134041,
		-0.838797, -0.064155, -0.540651,
		36.549599, 34.296413, 32.477940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785778, 34.731686, 33.263111>,  <37.136757, 34.341320, 32.856396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785778, 34.731686, 33.263111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.500065, 34.553345, 33.047329>,  <36.328636, 34.446342, 32.917858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.500065, 34.553345, 33.047329>,  <36.785778, 34.731686, 33.263111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500065, 34.553345, 33.047329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621525, 0.049779, 0.781811,
		-0.321716, 0.893723, -0.312663,
		-0.714286, -0.445849, -0.539457,
		36.285778, 34.419590, 32.885490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143986, 34.942341, 33.571602>,  <36.785778, 34.731686, 33.263111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143986, 34.942341, 33.571602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020561, 34.621918, 33.366432>,  <35.946507, 34.429665, 33.243332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.020561, 34.621918, 33.366432>,  <36.143986, 34.942341, 33.571602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020561, 34.621918, 33.366432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818800, -0.050755, 0.571831,
		-0.484106, 0.596426, -0.640249,
		-0.308559, -0.801062, -0.512924,
		35.927994, 34.381599, 33.212555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371868, 35.123608, 33.362930>,  <36.143986, 34.942341, 33.571602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371868, 35.123608, 33.362930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451843, 34.731995, 33.347305>,  <35.499828, 34.497028, 33.337929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451843, 34.731995, 33.347305>,  <35.371868, 35.123608, 33.362930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451843, 34.731995, 33.347305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695333, -0.169868, 0.698324,
		-0.690316, -0.112458, -0.714715,
		0.199939, -0.979029, -0.039066,
		35.511826, 34.438286, 33.335587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739437, 34.868408, 33.353840>,  <35.371868, 35.123608, 33.362930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739437, 34.868408, 33.353840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.963287, 34.548233, 33.439739>,  <35.097599, 34.356129, 33.491280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.963287, 34.548233, 33.439739>,  <34.739437, 34.868408, 33.353840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963287, 34.548233, 33.439739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614487, -0.226906, 0.755592,
		-0.556077, -0.554811, -0.618841,
		0.559629, -0.800437, 0.214747,
		35.131176, 34.308102, 33.504162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250790, 34.324081, 33.457935>,  <34.739437, 34.868408, 33.353840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250790, 34.324081, 33.457935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585999, 34.218895, 33.649170>,  <34.787125, 34.155785, 33.763912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585999, 34.218895, 33.649170>,  <34.250790, 34.324081, 33.457935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585999, 34.218895, 33.649170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537358, -0.245726, 0.806762,
		-0.094670, -0.932989, -0.347229,
		0.838024, -0.262962, 0.478087,
		34.837406, 34.140007, 33.792595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987492, 33.938755, 33.962868>,  <34.250790, 34.324081, 33.457935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987492, 33.938755, 33.962868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.365486, 33.985672, 34.085011>,  <34.592281, 34.013824, 34.158295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.365486, 33.985672, 34.085011>,  <33.987492, 33.938755, 33.962868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365486, 33.985672, 34.085011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251778, -0.335119, 0.907911,
		0.208825, -0.934846, -0.287151,
		0.944987, 0.117296, 0.305355,
		34.648983, 34.020859, 34.176617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203129, 33.278160, 34.174572>,  <33.987492, 33.938755, 33.962868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203129, 33.278160, 34.174572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.442513, 33.535625, 34.365376>,  <34.586143, 33.690105, 34.479858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.442513, 33.535625, 34.365376>,  <34.203129, 33.278160, 34.174572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442513, 33.535625, 34.365376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239562, -0.424388, 0.873215,
		0.764496, -0.636859, -0.099781,
		0.598461, 0.643666, 0.477010,
		34.622051, 33.728725, 34.508480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605816, 32.862511, 34.600750>,  <34.203129, 33.278160, 34.174572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605816, 32.862511, 34.600750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.586174, 33.230598, 34.756077>,  <34.574390, 33.451450, 34.849274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.586174, 33.230598, 34.756077>,  <34.605816, 32.862511, 34.600750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586174, 33.230598, 34.756077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323846, -0.382449, 0.865365,
		0.944834, -0.083260, 0.316789,
		-0.049105, 0.920218, 0.388315,
		34.571442, 33.506664, 34.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619198, 32.799534, 35.316406>,  <34.605816, 32.862511, 34.600750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619198, 32.799534, 35.316406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.478085, 33.173798, 35.312889>,  <34.393417, 33.398357, 35.310780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.478085, 33.173798, 35.312889>,  <34.619198, 32.799534, 35.316406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478085, 33.173798, 35.312889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298550, -0.103648, 0.948749,
		0.886797, 0.337333, 0.315908,
		-0.352787, 0.935662, -0.008796,
		34.372250, 33.454494, 35.310249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902824, 33.169930, 35.944160>,  <34.619198, 32.799534, 35.316406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902824, 33.169930, 35.944160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.593700, 33.386623, 35.811932>,  <34.408226, 33.516640, 35.732594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.593700, 33.386623, 35.811932>,  <34.902824, 33.169930, 35.944160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593700, 33.386623, 35.811932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305784, 0.138586, 0.941961,
		0.556109, 0.829044, 0.058554,
		-0.772813, 0.541738, -0.330577,
		34.361858, 33.549145, 35.712757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.096188, 36.479630, 28.901611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742184, 36.295540, 28.873463>,  <37.529781, 36.185085, 28.856573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742184, 36.295540, 28.873463>,  <38.096188, 36.479630, 28.901611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742184, 36.295540, 28.873463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077280, -0.294267, 0.952594,
		-0.459118, 0.837614, 0.295995,
		-0.885008, -0.460227, -0.070372,
		37.476681, 36.157471, 28.852350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781586, 36.724602, 29.576376>,  <38.096188, 36.479630, 28.901611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781586, 36.724602, 29.576376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561077, 36.406174, 29.476477>,  <37.428772, 36.215118, 29.416538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561077, 36.406174, 29.476477>,  <37.781586, 36.724602, 29.576376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561077, 36.406174, 29.476477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009924, -0.305576, 0.952116,
		-0.834265, 0.522398, 0.176357,
		-0.551274, -0.796067, -0.249747,
		37.395695, 36.167355, 29.401552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228252, 36.712418, 30.041948>,  <37.781586, 36.724602, 29.576376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228252, 36.712418, 30.041948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245026, 36.336918, 29.905134>,  <37.255089, 36.111618, 29.823046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245026, 36.336918, 29.905134>,  <37.228252, 36.712418, 30.041948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245026, 36.336918, 29.905134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003723, -0.342480, 0.939518,
		-0.999113, -0.038127, -0.017858,
		0.041937, -0.938751, -0.342035,
		37.257607, 36.055294, 29.802525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794151, 36.283321, 30.475609>,  <37.228252, 36.712418, 30.041948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794151, 36.283321, 30.475609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009693, 36.001591, 30.290756>,  <37.139019, 35.832554, 30.179844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009693, 36.001591, 30.290756>,  <36.794151, 36.283321, 30.475609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009693, 36.001591, 30.290756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195564, -0.638194, 0.744623,
		-0.819383, -0.310869, -0.481634,
		0.538856, -0.704322, -0.462130,
		37.171349, 35.790295, 30.152117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400578, 35.755592, 30.568190>,  <36.794151, 36.283321, 30.475609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400578, 35.755592, 30.568190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767502, 35.612633, 30.497972>,  <36.987656, 35.526855, 30.455843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767502, 35.612633, 30.497972>,  <36.400578, 35.755592, 30.568190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767502, 35.612633, 30.497972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148160, -0.715568, 0.682650,
		-0.369590, -0.600191, -0.709348,
		0.917307, -0.357397, -0.175542,
		37.042694, 35.505413, 30.445311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261662, 35.188618, 30.409336>,  <36.400578, 35.755592, 30.568190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261662, 35.188618, 30.409336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633629, 35.198479, 30.556110>,  <36.856812, 35.204395, 30.644175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633629, 35.198479, 30.556110>,  <36.261662, 35.188618, 30.409336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633629, 35.198479, 30.556110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231376, -0.736312, 0.635853,
		0.285857, -0.676192, -0.679006,
		0.929920, 0.024657, 0.366935,
		36.912605, 35.205875, 30.666191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356865, 34.509975, 30.539785>,  <36.261662, 35.188618, 30.409336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356865, 34.509975, 30.539785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649078, 34.696064, 30.739738>,  <36.824406, 34.807716, 30.859711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649078, 34.696064, 30.739738>,  <36.356865, 34.509975, 30.539785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649078, 34.696064, 30.739738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222571, -0.529836, 0.818374,
		0.645583, -0.709112, -0.283520,
		0.730538, 0.465224, 0.499881,
		36.868240, 34.835632, 30.889702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705116, 33.942413, 30.869104>,  <36.356865, 34.509975, 30.539785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705116, 33.942413, 30.869104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789982, 34.275871, 31.073076>,  <36.840900, 34.475945, 31.195459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789982, 34.275871, 31.073076>,  <36.705116, 33.942413, 30.869104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789982, 34.275871, 31.073076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202574, -0.472955, 0.857483,
		0.956007, -0.285229, 0.068528,
		0.212168, 0.833641, 0.509928,
		36.853634, 34.525963, 31.226055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227264, 33.838875, 31.480120>,  <36.705116, 33.942413, 30.869104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227264, 33.838875, 31.480120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032990, 34.174740, 31.577343>,  <36.916424, 34.376259, 31.635677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032990, 34.174740, 31.577343>,  <37.227264, 33.838875, 31.480120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032990, 34.174740, 31.577343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261092, -0.404713, 0.876378,
		0.834230, 0.362184, 0.415793,
		-0.485687, 0.839661, 0.243060,
		36.887283, 34.426640, 31.650261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923134, 33.927814, 31.721647>,  <37.227264, 33.838875, 31.480120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923134, 33.927814, 31.721647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258514, 33.715481, 31.770987>,  <38.459743, 33.588081, 31.800591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258514, 33.715481, 31.770987>,  <37.923134, 33.927814, 31.721647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258514, 33.715481, 31.770987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240892, 0.157975, -0.957609,
		0.488844, 0.832623, 0.260328,
		0.838452, -0.530833, 0.123347,
		38.510052, 33.556232, 31.807991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433147, 34.224819, 31.235050>,  <37.923134, 33.927814, 31.721647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433147, 34.224819, 31.235050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623081, 33.888248, 31.338223>,  <38.737041, 33.686306, 31.400126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623081, 33.888248, 31.338223>,  <38.433147, 34.224819, 31.235050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623081, 33.888248, 31.338223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511295, 0.025207, -0.859036,
		0.716317, 0.539778, 0.442188,
		0.474835, -0.841430, 0.257929,
		38.765533, 33.635818, 31.415602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066475, 34.301071, 31.002901>,  <38.433147, 34.224819, 31.235050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066475, 34.301071, 31.002901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035542, 33.903328, 31.031963>,  <39.016983, 33.664684, 31.049400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035542, 33.903328, 31.031963>,  <39.066475, 34.301071, 31.002901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035542, 33.903328, 31.031963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498879, -0.101687, -0.860686,
		0.863215, -0.030310, 0.503926,
		-0.077330, -0.994355, 0.072657,
		39.012344, 33.605022, 31.053761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695675, 33.990299, 30.862486>,  <39.066475, 34.301071, 31.002901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695675, 33.990299, 30.862486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432976, 33.695927, 30.796663>,  <39.275356, 33.519302, 30.757170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432976, 33.695927, 30.796663>,  <39.695675, 33.990299, 30.862486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432976, 33.695927, 30.796663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243140, -0.000088, -0.969991,
		0.713834, -0.677054, 0.178993,
		-0.656752, -0.735933, -0.164556,
		39.235950, 33.475147, 30.747297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050171, 33.479382, 30.502697>,  <39.695675, 33.990299, 30.862486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050171, 33.479382, 30.502697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663048, 33.422844, 30.419394>,  <39.430775, 33.388920, 30.369411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663048, 33.422844, 30.419394>,  <40.050171, 33.479382, 30.502697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663048, 33.422844, 30.419394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210071, 0.002127, -0.977684,
		0.138632, -0.989958, 0.027634,
		-0.967807, -0.141343, -0.208257,
		39.372707, 33.380440, 30.356916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046455, 32.888248, 30.157108>,  <40.050171, 33.479382, 30.502697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046455, 32.888248, 30.157108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723427, 33.109680, 30.075747>,  <39.529610, 33.242538, 30.026930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723427, 33.109680, 30.075747>,  <40.046455, 32.888248, 30.157108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723427, 33.109680, 30.075747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200947, -0.065978, -0.977378,
		-0.554478, -0.830177, -0.057958,
		-0.807573, 0.553581, -0.203405,
		39.481155, 33.275753, 30.014725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754509, 32.556572, 29.621038>,  <40.046455, 32.888248, 30.157108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754509, 32.556572, 29.621038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575302, 32.913296, 29.595894>,  <39.467777, 33.127331, 29.580807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575302, 32.913296, 29.595894>,  <39.754509, 32.556572, 29.621038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575302, 32.913296, 29.595894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072048, -0.034068, -0.996819,
		-0.891119, -0.451117, -0.048991,
		-0.448013, 0.891814, -0.062861,
		39.440899, 33.180840, 29.577036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164806, 32.461281, 29.169853>,  <39.754509, 32.556572, 29.621038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164806, 32.461281, 29.169853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257530, 32.849991, 29.152325>,  <39.313164, 33.083218, 29.141808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257530, 32.849991, 29.152325>,  <39.164806, 32.461281, 29.169853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257530, 32.849991, 29.152325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071789, -0.062014, -0.995490,
		-0.970108, 0.227619, -0.084138,
		0.231811, 0.971774, -0.043819,
		39.327072, 33.141521, 29.139179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783115, 32.797386, 28.515499>,  <39.164806, 32.461281, 29.169853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783115, 32.797386, 28.515499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050198, 33.077633, 28.616133>,  <39.210449, 33.245781, 28.676512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050198, 33.077633, 28.616133>,  <38.783115, 32.797386, 28.515499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050198, 33.077633, 28.616133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194953, 0.161588, -0.967410,
		-0.718441, 0.694996, -0.028694,
		0.667710, 0.700621, 0.251582,
		39.250511, 33.287819, 28.691607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640244, 33.283073, 28.025227>,  <38.783115, 32.797386, 28.515499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640244, 33.283073, 28.025227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997791, 33.368618, 28.182842>,  <39.212318, 33.419945, 28.277411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997791, 33.368618, 28.182842>,  <38.640244, 33.283073, 28.025227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997791, 33.368618, 28.182842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408854, -0.028217, -0.912163,
		-0.183958, 0.976456, -0.112660,
		0.893867, 0.213862, 0.394037,
		39.265953, 33.432777, 28.301054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863464, 34.004597, 27.772768>,  <38.640244, 33.283073, 28.025227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863464, 34.004597, 27.772768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203419, 33.835960, 27.899229>,  <39.407391, 33.734779, 27.975105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203419, 33.835960, 27.899229>,  <38.863464, 34.004597, 27.772768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203419, 33.835960, 27.899229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416546, 0.169997, -0.893079,
		0.322769, 0.890709, 0.320090,
		0.849888, -0.421591, 0.316152,
		39.458385, 33.709484, 27.994074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372169, 34.407326, 27.602650>,  <38.863464, 34.004597, 27.772768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372169, 34.407326, 27.602650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564449, 34.058464, 27.639019>,  <39.679817, 33.849148, 27.660841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564449, 34.058464, 27.639019>,  <39.372169, 34.407326, 27.602650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564449, 34.058464, 27.639019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455036, 0.159468, -0.876078,
		0.749577, 0.462508, 0.473520,
		0.480704, -0.872156, 0.090924,
		39.708660, 33.796818, 27.666296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969913, 34.537621, 27.398905>,  <39.372169, 34.407326, 27.602650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969913, 34.537621, 27.398905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943756, 34.142475, 27.342541>,  <39.928062, 33.905388, 27.308722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943756, 34.142475, 27.342541>,  <39.969913, 34.537621, 27.398905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943756, 34.142475, 27.342541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646771, 0.065573, -0.759860,
		0.759875, -0.140829, 0.634631,
		-0.065396, -0.987860, -0.140911,
		39.924137, 33.846119, 27.300268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639568, 34.400154, 27.104321>,  <39.969913, 34.537621, 27.398905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639568, 34.400154, 27.104321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399342, 34.099747, 26.994560>,  <40.255207, 33.919502, 26.928703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399342, 34.099747, 26.994560>,  <40.639568, 34.400154, 27.104321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399342, 34.099747, 26.994560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476414, -0.060490, -0.877137,
		0.642148, -0.657504, 0.394124,
		-0.600562, -0.751019, -0.274401,
		40.219173, 33.874443, 26.912239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.998268, 31.743343, 25.497700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.310894, 31.963835, 25.614523>,  <33.498470, 32.096130, 25.684616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.310894, 31.963835, 25.614523>,  <32.998268, 31.743343, 25.497700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310894, 31.963835, 25.614523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073200, -0.545982, 0.834593,
		0.619510, -0.630913, -0.467072,
		0.781569, 0.551228, 0.292058,
		33.545364, 32.129204, 25.702141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451584, 31.339972, 25.837383>,  <32.998268, 31.743343, 25.497700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451584, 31.339972, 25.837383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533375, 31.701420, 25.987934>,  <33.582451, 31.918289, 26.078264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533375, 31.701420, 25.987934>,  <33.451584, 31.339972, 25.837383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533375, 31.701420, 25.987934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070315, -0.369947, 0.926388,
		0.976342, -0.215892, -0.012108,
		0.204479, 0.903621, 0.376375,
		33.594719, 31.972506, 26.100847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880585, 31.239555, 26.339388>,  <33.451584, 31.339972, 25.837383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880585, 31.239555, 26.339388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.768661, 31.607813, 26.448292>,  <33.701508, 31.828768, 26.513634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.768661, 31.607813, 26.448292>,  <33.880585, 31.239555, 26.339388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768661, 31.607813, 26.448292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063911, -0.300820, 0.951537,
		0.957925, 0.248851, 0.143012,
		-0.279812, 0.920641, 0.272258,
		33.684719, 31.884005, 26.529970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339527, 31.281357, 26.880085>,  <33.880585, 31.239555, 26.339388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339527, 31.281357, 26.880085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067818, 31.568497, 26.941113>,  <33.904793, 31.740782, 26.977730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067818, 31.568497, 26.941113>,  <34.339527, 31.281357, 26.880085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067818, 31.568497, 26.941113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104767, -0.300616, 0.947974,
		0.726370, 0.627948, 0.279407,
		-0.679272, 0.717852, 0.152571,
		33.864037, 31.783852, 26.986883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551434, 31.630848, 27.448788>,  <34.339527, 31.281357, 26.880085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551434, 31.630848, 27.448788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161339, 31.711544, 27.412529>,  <33.927284, 31.759962, 27.390774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161339, 31.711544, 27.412529>,  <34.551434, 31.630848, 27.448788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161339, 31.711544, 27.412529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105448, -0.063846, 0.992373,
		0.194416, 0.977355, 0.083539,
		-0.975235, 0.201742, -0.090648,
		33.868767, 31.772066, 27.385334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443665, 32.076805, 27.950726>,  <34.551434, 31.630848, 27.448788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443665, 32.076805, 27.950726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.058220, 32.000690, 27.875635>,  <33.826954, 31.955023, 27.830582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.058220, 32.000690, 27.875635>,  <34.443665, 32.076805, 27.950726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058220, 32.000690, 27.875635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195443, 0.022459, 0.980458,
		-0.182348, 0.981472, -0.058831,
		-0.963614, -0.190283, -0.187727,
		33.769135, 31.943605, 27.819317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007305, 32.530758, 28.365328>,  <34.443665, 32.076805, 27.950726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007305, 32.530758, 28.365328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765488, 32.222652, 28.284109>,  <33.620399, 32.037788, 28.235378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765488, 32.222652, 28.284109>,  <34.007305, 32.530758, 28.365328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765488, 32.222652, 28.284109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278292, -0.034610, 0.959873,
		-0.746381, 0.636788, -0.193434,
		-0.604541, -0.770262, -0.203046,
		33.584126, 31.991573, 28.223196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313633, 32.693409, 28.616785>,  <34.007305, 32.530758, 28.365328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313633, 32.693409, 28.616785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334106, 32.297211, 28.565723>,  <33.346390, 32.059490, 28.535086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334106, 32.297211, 28.565723>,  <33.313633, 32.693409, 28.616785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334106, 32.297211, 28.565723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365173, -0.137535, 0.920724,
		-0.929531, -0.000514, -0.368743,
		0.051188, -0.990497, -0.127655,
		33.349464, 32.000061, 28.527428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739677, 32.395973, 29.061720>,  <33.313633, 32.693409, 28.616785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739677, 32.395973, 29.061720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975201, 32.079910, 28.993664>,  <33.116516, 31.890272, 28.952831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975201, 32.079910, 28.993664>,  <32.739677, 32.395973, 29.061720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975201, 32.079910, 28.993664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153561, -0.316024, 0.936241,
		-0.793549, -0.525143, -0.307417,
		0.588812, -0.790160, -0.170138,
		33.151844, 31.842863, 28.942623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295166, 31.696192, 29.253809>,  <32.739677, 32.395973, 29.061720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295166, 31.696192, 29.253809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.693165, 31.656284, 29.255949>,  <32.931965, 31.632339, 29.257233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.693165, 31.656284, 29.255949>,  <32.295166, 31.696192, 29.253809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693165, 31.656284, 29.255949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048141, -0.431823, 0.900673,
		-0.087547, -0.896424, -0.434466,
		0.994997, -0.099767, 0.005350,
		32.991665, 31.626354, 29.257553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370510, 30.994179, 29.547747>,  <32.295166, 31.696192, 29.253809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370510, 30.994179, 29.547747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.740456, 31.138140, 29.596909>,  <32.962421, 31.224516, 29.626406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.740456, 31.138140, 29.596909>,  <32.370510, 30.994179, 29.547747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740456, 31.138140, 29.596909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017430, -0.362943, 0.931648,
		0.379910, -0.859501, -0.341944,
		0.924859, 0.359902, 0.122904,
		33.017914, 31.246111, 29.633780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734222, 30.476892, 29.935581>,  <32.370510, 30.994179, 29.547747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734222, 30.476892, 29.935581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936039, 30.819294, 29.980654>,  <33.057129, 31.024734, 30.007696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936039, 30.819294, 29.980654>,  <32.734222, 30.476892, 29.935581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936039, 30.819294, 29.980654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018437, -0.119797, 0.992627,
		0.863191, -0.502899, -0.044660,
		0.504542, 0.856003, 0.112680,
		33.087402, 31.076096, 30.014458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440624, 30.292976, 30.210218>,  <32.734222, 30.476892, 29.935581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440624, 30.292976, 30.210218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352444, 30.668190, 30.317171>,  <33.299538, 30.893318, 30.381342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352444, 30.668190, 30.317171>,  <33.440624, 30.292976, 30.210218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352444, 30.668190, 30.317171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218083, -0.219783, 0.950860,
		0.950706, 0.267927, -0.156119,
		-0.220449, 0.938035, 0.267380,
		33.286308, 30.949600, 30.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883038, 30.300028, 30.768028>,  <33.440624, 30.292976, 30.210218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883038, 30.300028, 30.768028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654133, 30.621309, 30.834215>,  <33.516788, 30.814079, 30.873928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654133, 30.621309, 30.834215>,  <33.883038, 30.300028, 30.768028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654133, 30.621309, 30.834215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102691, -0.270370, 0.957264,
		0.813617, 0.530813, 0.237204,
		-0.572261, 0.803205, 0.165468,
		33.482456, 30.862270, 30.883856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571949, 30.549957, 30.596363>,  <33.883038, 30.300028, 30.768028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571949, 30.549957, 30.596363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946182, 30.423164, 30.658590>,  <35.170723, 30.347088, 30.695927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946182, 30.423164, 30.658590>,  <34.571949, 30.549957, 30.596363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946182, 30.423164, 30.658590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169987, 0.018167, -0.985279,
		0.309491, 0.948257, 0.070880,
		0.935585, -0.316984, 0.155569,
		35.226856, 30.328070, 30.705261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090874, 30.937876, 30.252167>,  <34.571949, 30.549957, 30.596363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090874, 30.937876, 30.252167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.283092, 30.590580, 30.301540>,  <35.398422, 30.382202, 30.331163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.283092, 30.590580, 30.301540>,  <35.090874, 30.937876, 30.252167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283092, 30.590580, 30.301540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392136, 0.086842, -0.915799,
		0.784414, 0.488487, 0.382199,
		0.480546, -0.868239, 0.123433,
		35.427258, 30.330109, 30.338570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633564, 30.958132, 29.831001>,  <35.090874, 30.937876, 30.252167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633564, 30.958132, 29.831001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.655590, 30.568708, 29.919685>,  <35.668804, 30.335054, 29.972897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.655590, 30.568708, 29.919685>,  <35.633564, 30.958132, 29.831001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655590, 30.568708, 29.919685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313987, -0.193900, -0.929417,
		0.947829, 0.120791, 0.295007,
		0.055063, -0.973557, 0.221710,
		35.672108, 30.276642, 29.986198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287384, 30.740988, 29.725492>,  <35.633564, 30.958132, 29.831001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287384, 30.740988, 29.725492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053043, 30.419891, 29.680986>,  <35.912437, 30.227234, 29.654284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053043, 30.419891, 29.680986>,  <36.287384, 30.740988, 29.725492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053043, 30.419891, 29.680986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245640, -0.045060, -0.968313,
		0.772292, -0.594622, 0.223584,
		-0.585855, -0.802741, -0.111264,
		35.877285, 30.179070, 29.647608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677895, 30.198303, 29.399385>,  <36.287384, 30.740988, 29.725492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677895, 30.198303, 29.399385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290852, 30.146856, 29.312489>,  <36.058624, 30.115988, 29.260351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290852, 30.146856, 29.312489>,  <36.677895, 30.198303, 29.399385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290852, 30.146856, 29.312489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227987, -0.075555, -0.970728,
		0.108441, -0.988812, 0.102432,
		-0.967606, -0.128620, -0.217243,
		36.000568, 30.108271, 29.247316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686115, 29.760183, 28.865675>,  <36.677895, 30.198303, 29.399385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686115, 29.760183, 28.865675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315895, 29.909264, 28.838997>,  <36.093761, 29.998713, 28.822990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315895, 29.909264, 28.838997>,  <36.686115, 29.760183, 28.865675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315895, 29.909264, 28.838997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026142, -0.238638, -0.970757,
		-0.377718, -0.896742, 0.230615,
		-0.925552, 0.372701, -0.066695,
		36.038231, 30.021074, 28.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257347, 29.251347, 28.388504>,  <36.686115, 29.760183, 28.865675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257347, 29.251347, 28.388504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070831, 29.605145, 28.382299>,  <35.958923, 29.817423, 28.378576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070831, 29.605145, 28.382299>,  <36.257347, 29.251347, 28.388504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070831, 29.605145, 28.382299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099525, -0.069873, -0.992579,
		-0.879016, -0.461285, 0.120611,
		-0.466289, 0.884496, -0.015510,
		35.930946, 29.870493, 28.377647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660145, 29.171164, 27.876036>,  <36.257347, 29.251347, 28.388504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660145, 29.171164, 27.876036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756615, 29.555962, 27.927258>,  <35.814495, 29.786840, 27.957991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756615, 29.555962, 27.927258>,  <35.660145, 29.171164, 27.876036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756615, 29.555962, 27.927258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011959, 0.128996, -0.991573,
		-0.970409, 0.240670, 0.019605,
		0.241171, 0.961997, 0.128057,
		35.828964, 29.844561, 27.965675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209793, 29.553925, 27.402374>,  <35.660145, 29.171164, 27.876036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209793, 29.553925, 27.402374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501259, 29.815256, 27.484550>,  <35.676140, 29.972055, 27.533857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501259, 29.815256, 27.484550>,  <35.209793, 29.553925, 27.402374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501259, 29.815256, 27.484550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026415, 0.326561, -0.944807,
		-0.684357, 0.683024, 0.255213,
		0.728669, 0.653327, 0.205442,
		35.719860, 30.011253, 27.546183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116222, 30.017569, 26.978884>,  <35.209793, 29.553925, 27.402374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116222, 30.017569, 26.978884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491089, 30.105453, 27.087282>,  <35.716011, 30.158184, 27.152321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491089, 30.105453, 27.087282>,  <35.116222, 30.017569, 26.978884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491089, 30.105453, 27.087282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153545, 0.437736, -0.885896,
		-0.313268, 0.871845, 0.376497,
		0.937170, 0.219714, 0.270996,
		35.772240, 30.171368, 27.168581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349594, 30.686146, 26.737450>,  <35.116222, 30.017569, 26.978884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349594, 30.686146, 26.737450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674862, 30.458231, 26.784945>,  <35.870022, 30.321482, 26.813440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674862, 30.458231, 26.784945>,  <35.349594, 30.686146, 26.737450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674862, 30.458231, 26.784945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381725, 0.368101, -0.847813,
		0.439368, 0.734739, 0.516831,
		0.813168, -0.569789, 0.118736,
		35.918812, 30.287294, 26.820566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947769, 31.101753, 26.729088>,  <35.349594, 30.686146, 26.737450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947769, 31.101753, 26.729088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103779, 30.742624, 26.647312>,  <36.197384, 30.527147, 26.598248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103779, 30.742624, 26.647312>,  <35.947769, 31.101753, 26.729088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103779, 30.742624, 26.647312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564484, 0.408542, -0.717253,
		0.727487, 0.164345, 0.666148,
		0.390026, -0.897822, -0.204438,
		36.220787, 30.473278, 26.585981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605949, 31.266397, 26.548264>,  <35.947769, 31.101753, 26.729088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605949, 31.266397, 26.548264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502377, 30.906534, 26.407652>,  <36.440231, 30.690617, 26.323286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502377, 30.906534, 26.407652>,  <36.605949, 31.266397, 26.548264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502377, 30.906534, 26.407652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392696, 0.234452, -0.889282,
		0.882465, -0.368306, 0.292585,
		-0.258931, -0.899657, -0.351528,
		36.424698, 30.636637, 26.302193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189320, 30.852434, 26.244621>,  <36.605949, 31.266397, 26.548264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189320, 30.852434, 26.244621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868336, 30.719051, 26.046686>,  <36.675747, 30.639021, 25.927925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868336, 30.719051, 26.046686>,  <37.189320, 30.852434, 26.244621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868336, 30.719051, 26.046686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382102, 0.349800, -0.855358,
		0.458321, -0.875469, -0.153285,
		-0.802459, -0.333458, -0.494839,
		36.627598, 30.619015, 25.898235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005276, 30.678354, 26.275475>,  <37.189320, 30.852434, 26.244621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005276, 30.678354, 26.275475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394836, 30.600618, 26.228586>,  <38.628574, 30.553978, 26.200453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.394836, 30.600618, 26.228586>,  <38.005276, 30.678354, 26.275475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394836, 30.600618, 26.228586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047240, -0.331593, 0.942239,
		-0.221980, -0.923189, -0.313760,
		0.973906, -0.194336, -0.117219,
		38.687008, 30.542316, 26.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137196, 30.138754, 26.764082>,  <38.005276, 30.678354, 26.275475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137196, 30.138754, 26.764082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508018, 30.270115, 26.691740>,  <38.730515, 30.348930, 26.648335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508018, 30.270115, 26.691740>,  <38.137196, 30.138754, 26.764082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508018, 30.270115, 26.691740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293760, -0.336562, 0.894668,
		0.232941, -0.882541, -0.408485,
		0.927062, 0.328401, -0.180856,
		38.786137, 30.368635, 26.637484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545956, 29.630081, 26.945795>,  <38.137196, 30.138754, 26.764082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545956, 29.630081, 26.945795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801979, 29.937136, 26.958828>,  <38.955593, 30.121368, 26.966648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801979, 29.937136, 26.958828>,  <38.545956, 29.630081, 26.945795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801979, 29.937136, 26.958828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340689, -0.321564, 0.883475,
		0.688667, -0.554371, -0.467345,
		0.640054, 0.767639, 0.032583,
		38.993996, 30.167427, 26.968603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263454, 29.372263, 27.152279>,  <38.545956, 29.630081, 26.945795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263454, 29.372263, 27.152279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.276722, 29.762655, 27.238405>,  <39.284683, 29.996891, 27.290081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.276722, 29.762655, 27.238405>,  <39.263454, 29.372263, 27.152279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276722, 29.762655, 27.238405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363395, -0.212466, 0.907084,
		0.931044, 0.048159, -0.361714,
		0.033168, 0.975981, 0.215316,
		39.286671, 30.055450, 27.302999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961834, 29.646778, 27.440250>,  <39.263454, 29.372263, 27.152279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961834, 29.646778, 27.440250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.663532, 29.883774, 27.562109>,  <39.484550, 30.025970, 27.635223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.663532, 29.883774, 27.562109>,  <39.961834, 29.646778, 27.440250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663532, 29.883774, 27.562109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271676, -0.147074, 0.951084,
		0.608311, 0.792041, -0.051283,
		-0.745755, 0.592487, 0.304645,
		39.439804, 30.061520, 27.653503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203144, 30.035639, 27.959785>,  <39.961834, 29.646778, 27.440250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203144, 30.035639, 27.959785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815666, 30.105373, 28.030485>,  <39.583179, 30.147215, 28.072905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815666, 30.105373, 28.030485>,  <40.203144, 30.035639, 27.959785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815666, 30.105373, 28.030485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137371, -0.216630, 0.966541,
		0.206794, 0.960561, 0.185899,
		-0.968693, 0.174338, 0.176751,
		39.525059, 30.157675, 28.083511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225842, 30.289148, 28.598415>,  <40.203144, 30.035639, 27.959785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225842, 30.289148, 28.598415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.837795, 30.206867, 28.546926>,  <39.604969, 30.157499, 28.516033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.837795, 30.206867, 28.546926>,  <40.225842, 30.289148, 28.598415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837795, 30.206867, 28.546926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093813, -0.171277, 0.980746,
		-0.223788, 0.963510, 0.146860,
		-0.970112, -0.205702, -0.128720,
		39.546761, 30.145157, 28.508310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910477, 30.712646, 29.109112>,  <40.225842, 30.289148, 28.598415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910477, 30.712646, 29.109112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658932, 30.411390, 29.031845>,  <39.508007, 30.230637, 28.985485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658932, 30.411390, 29.031845>,  <39.910477, 30.712646, 29.109112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658932, 30.411390, 29.031845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004085, -0.251639, 0.967813,
		-0.777509, 0.607828, 0.161322,
		-0.628858, -0.753142, -0.193169,
		39.470276, 30.185448, 28.973894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431709, 30.851507, 29.635908>,  <39.910477, 30.712646, 29.109112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431709, 30.851507, 29.635908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364147, 30.474937, 29.519156>,  <39.323608, 30.248997, 29.449104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364147, 30.474937, 29.519156>,  <39.431709, 30.851507, 29.635908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364147, 30.474937, 29.519156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177097, -0.262328, 0.948589,
		-0.969591, 0.211915, -0.122414,
		-0.168908, -0.941422, -0.291880,
		39.313477, 30.192511, 29.431591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746452, 30.532269, 29.893108>,  <39.431709, 30.851507, 29.635908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746452, 30.532269, 29.893108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029652, 30.256153, 29.833454>,  <39.199570, 30.090485, 29.797661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029652, 30.256153, 29.833454>,  <38.746452, 30.532269, 29.893108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029652, 30.256153, 29.833454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076214, -0.284626, 0.955604,
		-0.702089, -0.665201, -0.254125,
		0.707999, -0.690286, -0.149135,
		39.242050, 30.049067, 29.788713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497795, 29.882673, 30.344181>,  <38.746452, 30.532269, 29.893108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497795, 29.882673, 30.344181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869812, 29.770615, 30.249067>,  <39.093021, 29.703379, 30.191999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869812, 29.770615, 30.249067>,  <38.497795, 29.882673, 30.344181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869812, 29.770615, 30.249067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156293, -0.284062, 0.945981,
		-0.332564, -0.916965, -0.220404,
		0.930040, -0.280151, -0.237784,
		39.148823, 29.686571, 30.177732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594784, 29.275595, 30.752228>,  <38.497795, 29.882673, 30.344181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594784, 29.275595, 30.752228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959095, 29.389090, 30.632248>,  <39.177681, 29.457186, 30.560261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959095, 29.389090, 30.632248>,  <38.594784, 29.275595, 30.752228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959095, 29.389090, 30.632248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339873, -0.102711, 0.934846,
		0.234442, -0.953386, -0.189981,
		0.910782, 0.283736, -0.299950,
		39.232330, 29.474211, 30.542263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110397, 28.739586, 31.013887>,  <38.594784, 29.275595, 30.752228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110397, 28.739586, 31.013887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283360, 29.094023, 30.947117>,  <39.387138, 29.306684, 30.907055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283360, 29.094023, 30.947117>,  <39.110397, 28.739586, 31.013887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283360, 29.094023, 30.947117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249038, 0.060564, 0.966598,
		0.866604, -0.459537, -0.194482,
		0.432409, 0.886091, -0.166927,
		39.413082, 29.359850, 30.897039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694374, 28.657650, 31.431768>,  <39.110397, 28.739586, 31.013887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694374, 28.657650, 31.431768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.629028, 29.047338, 31.369532>,  <39.589821, 29.281151, 31.332190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.629028, 29.047338, 31.369532>,  <39.694374, 28.657650, 31.431768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629028, 29.047338, 31.369532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118119, 0.175889, 0.977298,
		0.979470, 0.141273, -0.143807,
		-0.163360, 0.974220, -0.155591,
		39.580021, 29.339605, 31.322855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.205776, 33.520954, 26.616001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813068, 33.452816, 26.582270>,  <40.577442, 33.411934, 26.562031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813068, 33.452816, 26.582270>,  <41.205776, 33.520954, 26.616001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813068, 33.452816, 26.582270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134019, -0.305780, -0.942623,
		0.134785, -0.936740, 0.323035,
		-0.981770, -0.170345, -0.084327,
		40.518536, 33.401714, 26.556973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094997, 32.734634, 26.424982>,  <41.205776, 33.520954, 26.616001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094997, 32.734634, 26.424982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.780586, 32.950748, 26.304819>,  <40.591938, 33.080418, 26.232721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.780586, 32.950748, 26.304819>,  <41.094997, 32.734634, 26.424982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780586, 32.950748, 26.304819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063974, -0.412247, -0.908823,
		-0.614868, -0.733582, 0.289474,
		-0.786031, 0.540287, -0.300407,
		40.544777, 33.112835, 26.214697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701290, 32.238007, 26.011339>,  <41.094997, 32.734634, 26.424982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701290, 32.238007, 26.011339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.580849, 32.603210, 25.901249>,  <40.508583, 32.822334, 25.835196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.580849, 32.603210, 25.901249>,  <40.701290, 32.238007, 26.011339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580849, 32.603210, 25.901249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068255, -0.267244, -0.961209,
		-0.951147, -0.308205, 0.018149,
		-0.301099, 0.913012, -0.275224,
		40.490520, 32.877113, 25.818682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118557, 32.110714, 25.555799>,  <40.701290, 32.238007, 26.011339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118557, 32.110714, 25.555799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240002, 32.482727, 25.472992>,  <40.312866, 32.705936, 25.423307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240002, 32.482727, 25.472992>,  <40.118557, 32.110714, 25.555799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240002, 32.482727, 25.472992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074033, -0.193593, -0.978285,
		-0.949916, 0.312342, 0.010077,
		0.303609, 0.930035, -0.207021,
		40.331085, 32.761738, 25.410885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518593, 32.387100, 25.237974>,  <40.118557, 32.110714, 25.555799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518593, 32.387100, 25.237974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844719, 32.600540, 25.148056>,  <40.040394, 32.728603, 25.094105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844719, 32.600540, 25.148056>,  <39.518593, 32.387100, 25.237974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844719, 32.600540, 25.148056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287465, 0.036020, -0.957114,
		-0.502615, 0.844972, 0.182758,
		0.815317, 0.533596, -0.224796,
		40.089314, 32.760620, 25.080618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240017, 33.005890, 24.779654>,  <39.518593, 32.387100, 25.237974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240017, 33.005890, 24.779654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.637268, 33.003605, 24.732908>,  <39.875618, 33.002232, 24.704861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.637268, 33.003605, 24.732908>,  <39.240017, 33.005890, 24.779654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637268, 33.003605, 24.732908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114311, 0.165578, -0.979549,
		0.024950, 0.986180, 0.163787,
		0.993132, -0.005717, -0.116863,
		39.935207, 33.001888, 24.697849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393890, 33.711357, 24.504484>,  <39.240017, 33.005890, 24.779654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393890, 33.711357, 24.504484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673359, 33.439911, 24.413857>,  <39.841042, 33.277042, 24.359480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673359, 33.439911, 24.413857>,  <39.393890, 33.711357, 24.504484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673359, 33.439911, 24.413857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050953, 0.363076, -0.930365,
		0.713624, 0.638477, 0.288249,
		0.698674, -0.678618, -0.226568,
		39.882961, 33.236324, 24.345886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010952, 34.104195, 24.187799>,  <39.393890, 33.711357, 24.504484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010952, 34.104195, 24.187799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084061, 33.728909, 24.070255>,  <40.127926, 33.503738, 23.999729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084061, 33.728909, 24.070255>,  <40.010952, 34.104195, 24.187799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084061, 33.728909, 24.070255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261847, 0.334550, -0.905269,
		0.947645, 0.088508, 0.306813,
		0.182768, -0.938213, -0.293859,
		40.138889, 33.447445, 23.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723122, 33.983940, 23.928041>,  <40.010952, 34.104195, 24.187799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723122, 33.983940, 23.928041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482811, 33.711582, 23.760490>,  <40.338627, 33.548168, 23.659960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482811, 33.711582, 23.760490>,  <40.723122, 33.983940, 23.928041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482811, 33.711582, 23.760490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365447, 0.232106, -0.901430,
		0.711001, -0.694632, 0.109388,
		-0.600772, -0.680892, -0.418879,
		40.302578, 33.507313, 23.634827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115940, 33.742046, 23.339699>,  <40.723122, 33.983940, 23.928041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115940, 33.742046, 23.339699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759975, 33.587196, 23.243204>,  <40.546398, 33.494286, 23.185308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759975, 33.587196, 23.243204>,  <41.115940, 33.742046, 23.339699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759975, 33.587196, 23.243204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162101, 0.225934, -0.960561,
		0.426364, -0.893916, -0.138307,
		-0.889909, -0.387129, -0.241235,
		40.493004, 33.471058, 23.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203251, 33.316097, 22.682266>,  <41.115940, 33.742046, 23.339699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203251, 33.316097, 22.682266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.809231, 33.373798, 22.719950>,  <40.572819, 33.408421, 22.742559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.809231, 33.373798, 22.719950>,  <41.203251, 33.316097, 22.682266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809231, 33.373798, 22.719950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039198, 0.344823, -0.937849,
		-0.167773, -0.927517, -0.334012,
		-0.985046, 0.144253, 0.094209,
		40.513718, 33.417076, 22.748213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810047, 32.931656, 22.065216>,  <41.203251, 33.316097, 22.682266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810047, 32.931656, 22.065216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.596031, 33.243500, 22.195412>,  <40.467621, 33.430607, 22.273529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.596031, 33.243500, 22.195412>,  <40.810047, 32.931656, 22.065216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596031, 33.243500, 22.195412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243173, 0.226854, -0.943082,
		-0.809071, -0.583740, 0.068202,
		-0.535043, 0.779606, 0.325491,
		40.435516, 33.477383, 22.293058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858341, 32.367630, 21.606398>,  <40.810047, 32.931656, 22.065216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858341, 32.367630, 21.606398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571617, 32.163345, 21.796284>,  <40.399582, 32.040775, 21.910215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571617, 32.163345, 21.796284>,  <40.858341, 32.367630, 21.606398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571617, 32.163345, 21.796284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269061, -0.425492, -0.864038,
		0.643265, -0.747078, 0.167584,
		-0.716810, -0.510715, 0.474714,
		40.356575, 32.010132, 21.938698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055347, 32.391117, 21.386358>,  <40.858341, 32.367630, 21.606398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055347, 32.391117, 21.386358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.874401, 32.644833, 21.637129>,  <39.765835, 32.797062, 21.787592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.874401, 32.644833, 21.637129>,  <40.055347, 32.391117, 21.386358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874401, 32.644833, 21.637129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546803, -0.358073, 0.756829,
		0.704537, 0.685170, -0.184852,
		-0.452366, 0.634292, 0.626928,
		39.738693, 32.835121, 21.825207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676117, 31.779207, 21.004391>,  <40.055347, 32.391117, 21.386358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676117, 31.779207, 21.004391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.392311, 31.527433, 20.877642>,  <39.222027, 31.376369, 20.801592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.392311, 31.527433, 20.877642>,  <39.676117, 31.779207, 21.004391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392311, 31.527433, 20.877642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275259, -0.166397, 0.946860,
		-0.648712, 0.759030, -0.055196,
		-0.709511, -0.629433, -0.316874,
		39.179459, 31.338604, 20.782579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022987, 31.923052, 21.187403>,  <39.676117, 31.779207, 21.004391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022987, 31.923052, 21.187403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.021774, 31.526102, 21.138119>,  <39.021046, 31.287931, 21.108549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.021774, 31.526102, 21.138119>,  <39.022987, 31.923052, 21.187403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021774, 31.526102, 21.138119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166130, -0.120997, 0.978653,
		-0.986099, 0.023438, -0.164496,
		-0.003034, -0.992376, -0.123209,
		39.020863, 31.228390, 21.101156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600586, 31.670273, 21.684252>,  <39.022987, 31.923052, 21.187403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600586, 31.670273, 21.684252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782848, 31.324389, 21.599728>,  <38.892204, 31.116858, 21.549013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782848, 31.324389, 21.599728>,  <38.600586, 31.670273, 21.684252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782848, 31.324389, 21.599728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114974, -0.292570, 0.949307,
		-0.882700, -0.408261, -0.232730,
		0.455655, -0.864711, -0.211312,
		38.919544, 31.064976, 21.536333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275234, 31.272842, 22.102863>,  <38.600586, 31.670273, 21.684252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275234, 31.272842, 22.102863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594143, 31.048759, 22.012949>,  <38.785488, 30.914309, 21.959002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594143, 31.048759, 22.012949>,  <38.275234, 31.272842, 22.102863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594143, 31.048759, 22.012949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003254, -0.368396, 0.929663,
		-0.603617, -0.741922, -0.291887,
		0.797268, -0.560210, -0.224785,
		38.833324, 30.880697, 21.945513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141327, 30.597015, 22.263687>,  <38.275234, 31.272842, 22.102863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141327, 30.597015, 22.263687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540363, 30.624535, 22.260353>,  <38.779785, 30.641047, 22.258352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540363, 30.624535, 22.260353>,  <38.141327, 30.597015, 22.263687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540363, 30.624535, 22.260353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033080, -0.367017, 0.929626,
		0.060899, -0.927666, -0.368411,
		0.997596, 0.068801, -0.008337,
		38.839642, 30.645174, 22.257853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311436, 30.040895, 22.661280>,  <38.141327, 30.597015, 22.263687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311436, 30.040895, 22.661280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642006, 30.266020, 22.667894>,  <38.840347, 30.401094, 22.671864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.642006, 30.266020, 22.667894>,  <38.311436, 30.040895, 22.661280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642006, 30.266020, 22.667894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130508, -0.220037, 0.966722,
		0.547718, -0.796762, -0.255295,
		0.826421, 0.562809, 0.016534,
		38.889931, 30.434862, 22.672855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691940, 29.644953, 23.013161>,  <38.311436, 30.040895, 22.661280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691940, 29.644953, 23.013161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854111, 30.010254, 23.029156>,  <38.951412, 30.229435, 23.038752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854111, 30.010254, 23.029156>,  <38.691940, 29.644953, 23.013161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854111, 30.010254, 23.029156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129739, -0.100786, 0.986413,
		0.904874, -0.394731, -0.159346,
		0.405427, 0.913252, 0.039986,
		38.975739, 30.284229, 23.041151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354198, 29.672380, 23.356808>,  <38.691940, 29.644953, 23.013161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354198, 29.672380, 23.356808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.248890, 30.056461, 23.394117>,  <39.185703, 30.286909, 23.416502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.248890, 30.056461, 23.394117>,  <39.354198, 29.672380, 23.356808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248890, 30.056461, 23.394117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029691, -0.088573, 0.995627,
		0.964264, 0.264893, -0.005191,
		-0.263275, 0.960201, 0.093273,
		39.169907, 30.344522, 23.422100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812656, 29.877926, 23.844536>,  <39.354198, 29.672380, 23.356808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812656, 29.877926, 23.844536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.495045, 30.119835, 23.820004>,  <39.304478, 30.264980, 23.805285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.495045, 30.119835, 23.820004>,  <39.812656, 29.877926, 23.844536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495045, 30.119835, 23.820004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031472, 0.141658, 0.989415,
		0.607058, 0.783699, -0.131514,
		-0.794034, 0.604772, -0.061330,
		39.256836, 30.301266, 23.801605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974510, 30.405952, 24.341412>,  <39.812656, 29.877926, 23.844536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974510, 30.405952, 24.341412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.581863, 30.441593, 24.273907>,  <39.346275, 30.462976, 24.233404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.581863, 30.441593, 24.273907>,  <39.974510, 30.405952, 24.341412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581863, 30.441593, 24.273907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145677, 0.221396, 0.964241,
		0.123277, 0.971105, -0.204348,
		-0.981622, 0.089100, -0.168761,
		39.287376, 30.468323, 24.223278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806923, 30.998447, 24.624701>,  <39.974510, 30.405952, 24.341412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806923, 30.998447, 24.624701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456436, 30.808464, 24.592043>,  <39.246143, 30.694473, 24.572449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456436, 30.808464, 24.592043>,  <39.806923, 30.998447, 24.624701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456436, 30.808464, 24.592043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225265, 0.253884, 0.940637,
		-0.426037, 0.842589, -0.329448,
		-0.876212, -0.474960, -0.081642,
		39.193573, 30.665976, 24.567551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499969, 31.381674, 25.163507>,  <39.806923, 30.998447, 24.624701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499969, 31.381674, 25.163507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.292053, 31.047424, 25.092464>,  <39.167301, 30.846874, 25.049839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.292053, 31.047424, 25.092464>,  <39.499969, 31.381674, 25.163507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292053, 31.047424, 25.092464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222010, -0.068627, 0.972626,
		-0.824940, 0.544996, -0.149845,
		-0.519794, -0.835625, -0.177608,
		39.136116, 30.796738, 25.039183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818264, 31.490210, 25.473661>,  <39.499969, 31.381674, 25.163507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818264, 31.490210, 25.473661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.899609, 31.100422, 25.435604>,  <38.948418, 30.866549, 25.412769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.899609, 31.100422, 25.435604>,  <38.818264, 31.490210, 25.473661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899609, 31.100422, 25.435604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107535, -0.118816, 0.987076,
		-0.973180, -0.190504, -0.128953,
		0.203364, -0.974470, -0.095143,
		38.960617, 30.808081, 25.407061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247837, 31.183981, 25.677553>,  <38.818264, 31.490210, 25.473661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247837, 31.183981, 25.677553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.532009, 30.905807, 25.720758>,  <38.702511, 30.738903, 25.746681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.532009, 30.905807, 25.720758>,  <38.247837, 31.183981, 25.677553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532009, 30.905807, 25.720758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245964, -0.101550, 0.963945,
		-0.659389, -0.711380, -0.243195,
		0.710428, -0.695432, 0.108013,
		38.745136, 30.697178, 25.753162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592777, 30.719299, 25.596218>,  <38.247837, 31.183981, 25.677553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592777, 30.719299, 25.596218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195919, 30.712854, 25.546589>,  <36.957806, 30.708988, 25.516811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195919, 30.712854, 25.546589>,  <37.592777, 30.719299, 25.596218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195919, 30.712854, 25.546589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119354, 0.175541, -0.977210,
		0.037523, -0.984340, -0.172239,
		-0.992142, -0.016111, -0.124072,
		36.898277, 30.708021, 25.509367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470558, 30.335531, 25.040251>,  <37.592777, 30.719299, 25.596218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470558, 30.335531, 25.040251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146263, 30.568575, 25.063118>,  <36.951687, 30.708401, 25.076838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146263, 30.568575, 25.063118>,  <37.470558, 30.335531, 25.040251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146263, 30.568575, 25.063118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014748, 0.117948, -0.992910,
		-0.585222, -0.804148, -0.104217,
		-0.810739, 0.582610, 0.057167,
		36.903042, 30.743359, 25.080269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062984, 30.161606, 24.431122>,  <37.470558, 30.335531, 25.040251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062984, 30.161606, 24.431122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858852, 30.485504, 24.546967>,  <36.736374, 30.679844, 24.616472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858852, 30.485504, 24.546967>,  <37.062984, 30.161606, 24.431122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858852, 30.485504, 24.546967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186353, 0.224636, -0.956458,
		-0.839545, -0.542078, 0.036260,
		-0.510329, 0.809747, 0.289610,
		36.705753, 30.728428, 24.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509701, 30.120701, 24.082937>,  <37.062984, 30.161606, 24.431122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509701, 30.120701, 24.082937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531006, 30.509819, 24.173117>,  <36.543789, 30.743290, 24.227224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.531006, 30.509819, 24.173117>,  <36.509701, 30.120701, 24.082937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531006, 30.509819, 24.173117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286582, 0.231165, -0.929749,
		-0.956574, -0.015087, 0.291100,
		0.053265, 0.972798, 0.225450,
		36.546986, 30.801659, 24.240751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024261, 30.355040, 23.700293>,  <36.509701, 30.120701, 24.082937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024261, 30.355040, 23.700293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264374, 30.660969, 23.793852>,  <36.408440, 30.844526, 23.849987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264374, 30.660969, 23.793852>,  <36.024261, 30.355040, 23.700293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264374, 30.660969, 23.793852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043013, 0.322900, -0.945455,
		-0.798632, 0.557478, 0.226728,
		0.600281, 0.764822, 0.233900,
		36.444458, 30.890415, 23.864021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669559, 30.953251, 23.374271>,  <36.024261, 30.355040, 23.700293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669559, 30.953251, 23.374271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.060143, 31.013319, 23.436211>,  <36.294491, 31.049360, 23.473373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.060143, 31.013319, 23.436211>,  <35.669559, 30.953251, 23.374271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060143, 31.013319, 23.436211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105282, 0.294755, -0.949755,
		-0.188266, 0.943699, 0.272006,
		0.976459, 0.150170, 0.154847,
		36.353081, 31.058371, 23.482664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709225, 31.569811, 23.172174>,  <35.669559, 30.953251, 23.374271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709225, 31.569811, 23.172174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085075, 31.433146, 23.164494>,  <36.310585, 31.351147, 23.159885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.085075, 31.433146, 23.164494>,  <35.709225, 31.569811, 23.172174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085075, 31.433146, 23.164494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046164, 0.182161, -0.982184,
		0.339075, 0.921999, 0.186936,
		0.939626, -0.341664, -0.019203,
		36.366962, 31.330647, 23.158733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644066, 32.293568, 23.480839>,  <35.709225, 31.569811, 23.172174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644066, 32.293568, 23.480839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.486053, 32.656391, 23.539083>,  <35.391247, 32.874084, 23.574030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.486053, 32.656391, 23.539083>,  <35.644066, 32.293568, 23.480839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486053, 32.656391, 23.539083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476366, -0.337776, 0.811778,
		0.785511, 0.251312, 0.565522,
		-0.395029, 0.907055, 0.145610,
		35.367546, 32.928509, 23.582766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730404, 32.457844, 24.303194>,  <35.644066, 32.293568, 23.480839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730404, 32.457844, 24.303194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.461044, 32.702419, 24.136974>,  <35.299431, 32.849163, 24.037243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.461044, 32.702419, 24.136974>,  <35.730404, 32.457844, 24.303194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461044, 32.702419, 24.136974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545453, -0.031499, 0.837549,
		0.499020, 0.790665, 0.354722,
		-0.673394, 0.611438, -0.415551,
		35.259026, 32.885849, 24.012308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621929, 33.037312, 24.890198>,  <35.730404, 32.457844, 24.303194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621929, 33.037312, 24.890198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306290, 33.015762, 24.645437>,  <35.116905, 33.002834, 24.498581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306290, 33.015762, 24.645437>,  <35.621929, 33.037312, 24.890198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306290, 33.015762, 24.645437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614105, 0.046414, 0.787858,
		-0.014044, 0.997468, -0.069709,
		-0.789099, -0.053873, -0.611899,
		35.069561, 32.999599, 24.461868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213745, 33.411037, 25.240047>,  <35.621929, 33.037312, 24.890198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213745, 33.411037, 25.240047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973583, 33.206856, 24.993814>,  <34.829487, 33.084347, 24.846075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973583, 33.206856, 24.993814>,  <35.213745, 33.411037, 25.240047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973583, 33.206856, 24.993814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695133, -0.047418, 0.717316,
		-0.395349, 0.858594, -0.326366,
		-0.600407, -0.510458, -0.615584,
		34.793461, 33.053719, 24.809139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555420, 33.654327, 25.356544>,  <35.213745, 33.411037, 25.240047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555420, 33.654327, 25.356544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478451, 33.325363, 25.142399>,  <34.432270, 33.127983, 25.013912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478451, 33.325363, 25.142399>,  <34.555420, 33.654327, 25.356544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478451, 33.325363, 25.142399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821194, -0.163719, 0.546659,
		-0.537227, 0.544826, -0.643856,
		-0.192423, -0.822411, -0.535363,
		34.420723, 33.078640, 24.981791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880322, 33.717651, 25.228010>,  <34.555420, 33.654327, 25.356544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880322, 33.717651, 25.228010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.969757, 33.328953, 25.197752>,  <34.023418, 33.095734, 25.179598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.969757, 33.328953, 25.197752>,  <33.880322, 33.717651, 25.228010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969757, 33.328953, 25.197752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853066, -0.232643, 0.467071,
		-0.471471, -0.039903, -0.880978,
		0.223591, -0.971744, -0.075644,
		34.036835, 33.037430, 25.175058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230606, 33.229572, 24.952971>,  <33.880322, 33.717651, 25.228010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230606, 33.229572, 24.952971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496181, 33.015991, 25.162380>,  <33.655525, 32.887840, 25.288027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496181, 33.015991, 25.162380>,  <33.230606, 33.229572, 24.952971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496181, 33.015991, 25.162380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739640, -0.365837, 0.564885,
		-0.110099, -0.762268, -0.637829,
		0.663935, -0.533958, 0.523525,
		33.695362, 32.855804, 25.319439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.019176, 35.563362, 22.103815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208241, 35.300583, 22.338766>,  <39.321678, 35.142914, 22.479736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208241, 35.300583, 22.338766>,  <39.019176, 35.563362, 22.103815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208241, 35.300583, 22.338766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663973, 0.172768, 0.727524,
		-0.579427, -0.733871, -0.354538,
		0.472656, -0.656951, 0.587377,
		39.350037, 35.103497, 22.514978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470089, 35.493305, 22.541304>,  <39.019176, 35.563362, 22.103815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470089, 35.493305, 22.541304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.785816, 35.355423, 22.744537>,  <38.975254, 35.272694, 22.866478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.785816, 35.355423, 22.744537>,  <38.470089, 35.493305, 22.541304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785816, 35.355423, 22.744537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530352, 0.034151, 0.847089,
		-0.309351, -0.938088, -0.155860,
		0.789322, -0.344709, 0.508082,
		39.022614, 35.252010, 22.896961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261215, 34.973366, 23.009050>,  <38.470089, 35.493305, 22.541304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261215, 34.973366, 23.009050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.618584, 35.093899, 23.142313>,  <38.833004, 35.166218, 23.222271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.618584, 35.093899, 23.142313>,  <38.261215, 34.973366, 23.009050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618584, 35.093899, 23.142313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318827, -0.097100, 0.942826,
		0.316458, -0.948561, 0.009324,
		0.893422, 0.301337, 0.333155,
		38.886612, 35.184299, 23.242260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337166, 34.597118, 23.646809>,  <38.261215, 34.973366, 23.009050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337166, 34.597118, 23.646809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.602268, 34.892056, 23.699078>,  <38.761330, 35.069019, 23.730440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.602268, 34.892056, 23.699078>,  <38.337166, 34.597118, 23.646809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602268, 34.892056, 23.699078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345925, 0.146697, 0.926723,
		0.664142, -0.659399, 0.352290,
		0.662760, 0.737342, 0.130675,
		38.801098, 35.113258, 23.738279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547642, 34.482697, 24.296556>,  <38.337166, 34.597118, 23.646809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547642, 34.482697, 24.296556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658024, 34.861866, 24.232941>,  <38.724255, 35.089367, 24.194771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658024, 34.861866, 24.232941>,  <38.547642, 34.482697, 24.296556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658024, 34.861866, 24.232941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280562, 0.237699, 0.929937,
		0.919311, -0.212000, 0.331545,
		0.275954, 0.947921, -0.159040,
		38.740810, 35.146244, 24.185228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003487, 34.752083, 24.886005>,  <38.547642, 34.482697, 24.296556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003487, 34.752083, 24.886005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.850830, 35.083389, 24.721893>,  <38.759235, 35.282173, 24.623426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.850830, 35.083389, 24.721893>,  <39.003487, 34.752083, 24.886005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850830, 35.083389, 24.721893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292821, 0.312673, 0.903599,
		0.876701, 0.464990, 0.123203,
		-0.381642, 0.828263, -0.410280,
		38.736336, 35.331867, 24.598810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309464, 35.240288, 25.336365>,  <39.003487, 34.752083, 24.886005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309464, 35.240288, 25.336365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997562, 35.390072, 25.135658>,  <38.810421, 35.479942, 25.015234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997562, 35.390072, 25.135658>,  <39.309464, 35.240288, 25.336365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997562, 35.390072, 25.135658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320511, 0.449707, 0.833688,
		0.537832, 0.810890, -0.230640,
		-0.779750, 0.374461, -0.501766,
		38.763638, 35.502411, 24.985128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078205, 35.690166, 25.779636>,  <39.309464, 35.240288, 25.336365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078205, 35.690166, 25.779636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786186, 35.708733, 25.506908>,  <38.610973, 35.719872, 25.343271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786186, 35.708733, 25.506908>,  <39.078205, 35.690166, 25.779636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786186, 35.708733, 25.506908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604970, 0.420167, 0.676366,
		0.317872, 0.906259, -0.278661,
		-0.730047, 0.046416, -0.681819,
		38.567173, 35.722656, 25.302362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852123, 36.401695, 25.673962>,  <39.078205, 35.690166, 25.779636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852123, 36.401695, 25.673962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.553776, 36.145130, 25.602102>,  <38.374767, 35.991192, 25.558987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.553776, 36.145130, 25.602102>,  <38.852123, 36.401695, 25.673962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553776, 36.145130, 25.602102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575061, 0.483962, 0.659610,
		-0.336141, 0.595288, -0.729823,
		-0.745864, -0.641415, -0.179648,
		38.330017, 35.952705, 25.548208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307724, 36.845341, 25.798538>,  <38.852123, 36.401695, 25.673962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307724, 36.845341, 25.798538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.155182, 36.476162, 25.819496>,  <38.063656, 36.254654, 25.832071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.155182, 36.476162, 25.819496>,  <38.307724, 36.845341, 25.798538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155182, 36.476162, 25.819496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731178, 0.335825, 0.593802,
		-0.565641, 0.188138, -0.802904,
		-0.381351, -0.922944, 0.052394,
		38.040775, 36.199280, 25.835215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482029, 36.897808, 25.593336>,  <38.307724, 36.845341, 25.798538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482029, 36.897808, 25.593336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.602940, 36.589470, 25.817629>,  <37.675488, 36.404465, 25.952204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.602940, 36.589470, 25.817629>,  <37.482029, 36.897808, 25.593336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602940, 36.589470, 25.817629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662092, 0.253403, 0.705281,
		-0.685756, -0.584447, -0.433775,
		0.302280, -0.770849, 0.560730,
		37.693623, 36.358215, 25.985847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853718, 36.652802, 25.867279>,  <37.482029, 36.897808, 25.593336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853718, 36.652802, 25.867279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112720, 36.477417, 26.116594>,  <37.268124, 36.372189, 26.266184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112720, 36.477417, 26.116594>,  <36.853718, 36.652802, 25.867279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112720, 36.477417, 26.116594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603252, 0.204849, 0.770795,
		-0.465642, -0.875094, -0.131861,
		0.647506, -0.438460, 0.623289,
		37.306973, 36.345879, 26.303581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294891, 36.197384, 25.944868>,  <36.853718, 36.652802, 25.867279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294891, 36.197384, 25.944868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929314, 36.346050, 25.879660>,  <35.709969, 36.435249, 25.840534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929314, 36.346050, 25.879660>,  <36.294891, 36.197384, 25.944868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929314, 36.346050, 25.879660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292975, 0.326234, -0.898742,
		-0.280845, -0.869160, -0.407047,
		-0.913943, 0.371661, -0.163021,
		35.655132, 36.457550, 25.830753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926208, 35.868038, 25.306059>,  <36.294891, 36.197384, 25.944868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926208, 35.868038, 25.306059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.729843, 36.214535, 25.343216>,  <35.612022, 36.422432, 25.365511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.729843, 36.214535, 25.343216>,  <35.926208, 35.868038, 25.306059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729843, 36.214535, 25.343216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200136, 0.215906, -0.955683,
		-0.847907, -0.450570, -0.279358,
		-0.490917, 0.866240, 0.092893,
		35.582569, 36.474407, 25.371084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508987, 36.032627, 24.748575>,  <35.926208, 35.868038, 25.306059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508987, 36.032627, 24.748575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.557762, 36.405300, 24.885452>,  <35.587025, 36.628906, 24.967579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.557762, 36.405300, 24.885452>,  <35.508987, 36.032627, 24.748575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557762, 36.405300, 24.885452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294499, 0.295278, -0.908890,
		-0.947841, 0.211600, -0.238376,
		0.121934, 0.931685, 0.342192,
		35.594341, 36.684807, 24.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280750, 36.369282, 24.169069>,  <35.508987, 36.032627, 24.748575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280750, 36.369282, 24.169069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.439896, 36.648369, 24.407360>,  <35.535385, 36.815823, 24.550335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.439896, 36.648369, 24.407360>,  <35.280750, 36.369282, 24.169069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439896, 36.648369, 24.407360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156208, 0.588334, -0.793386,
		-0.904047, 0.408719, 0.125089,
		0.397866, 0.697719, 0.595727,
		35.559254, 36.857685, 24.586079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966827, 36.952389, 23.999769>,  <35.280750, 36.369282, 24.169069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966827, 36.952389, 23.999769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.324032, 37.049267, 24.151487>,  <35.538357, 37.107391, 24.242519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.324032, 37.049267, 24.151487>,  <34.966827, 36.952389, 23.999769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324032, 37.049267, 24.151487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287967, 0.340162, -0.895190,
		-0.345830, 0.908644, 0.234027,
		0.893015, 0.242192, 0.379297,
		35.591938, 37.121925, 24.265276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076118, 37.490883, 23.609880>,  <34.966827, 36.952389, 23.999769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076118, 37.490883, 23.609880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435040, 37.406708, 23.765091>,  <35.650391, 37.356201, 23.858217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435040, 37.406708, 23.765091>,  <35.076118, 37.490883, 23.609880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435040, 37.406708, 23.765091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427341, 0.193919, -0.883049,
		0.110582, 0.958181, 0.263933,
		0.897302, -0.210439, 0.388026,
		35.704231, 37.343575, 23.881498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521286, 38.030327, 23.359282>,  <35.076118, 37.490883, 23.609880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521286, 38.030327, 23.359282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.765804, 37.732117, 23.465502>,  <35.912514, 37.553192, 23.529234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.765804, 37.732117, 23.465502>,  <35.521286, 38.030327, 23.359282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765804, 37.732117, 23.465502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415699, 0.016953, -0.909344,
		0.673435, 0.666265, 0.320277,
		0.611293, -0.745523, 0.265549,
		35.949192, 37.508461, 23.545166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204109, 38.287189, 23.214552>,  <35.521286, 38.030327, 23.359282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204109, 38.287189, 23.214552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.230694, 37.888084, 23.217571>,  <36.246643, 37.648621, 23.219383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.230694, 37.888084, 23.217571>,  <36.204109, 38.287189, 23.214552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230694, 37.888084, 23.217571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494897, 0.026395, -0.868551,
		0.866406, 0.061461, 0.495543,
		0.066462, -0.997760, 0.007548,
		36.250633, 37.588757, 23.219835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923779, 38.123569, 22.879871>,  <36.204109, 38.287189, 23.214552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923779, 38.123569, 22.879871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.718285, 37.780472, 22.887407>,  <36.594986, 37.574615, 22.891930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.718285, 37.780472, 22.887407>,  <36.923779, 38.123569, 22.879871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718285, 37.780472, 22.887407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512378, -0.324351, -0.795151,
		0.688144, -0.398846, 0.606119,
		-0.513738, -0.857740, 0.018840,
		36.564163, 37.523151, 22.893059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467545, 37.713497, 22.726980>,  <36.923779, 38.123569, 22.879871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467545, 37.713497, 22.726980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109821, 37.566986, 22.624174>,  <36.895187, 37.479080, 22.562490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109821, 37.566986, 22.624174>,  <37.467545, 37.713497, 22.726980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109821, 37.566986, 22.624174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376009, -0.303796, -0.875400,
		0.242562, -0.879514, 0.409411,
		-0.894305, -0.366281, -0.257016,
		36.841530, 37.457100, 22.547070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697227, 37.109013, 22.506819>,  <37.467545, 37.713497, 22.726980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697227, 37.109013, 22.506819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325718, 37.156364, 22.366322>,  <37.102814, 37.184776, 22.282022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325718, 37.156364, 22.366322>,  <37.697227, 37.109013, 22.506819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325718, 37.156364, 22.366322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301126, -0.311558, -0.901252,
		-0.216119, -0.942825, 0.253720,
		-0.928771, 0.118376, -0.351243,
		37.047089, 37.191879, 22.260948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510975, 36.551300, 22.189985>,  <37.697227, 37.109013, 22.506819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510975, 36.551300, 22.189985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.248692, 36.805717, 22.027262>,  <37.091320, 36.958366, 21.929626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.248692, 36.805717, 22.027262>,  <37.510975, 36.551300, 22.189985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248692, 36.805717, 22.027262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326912, -0.246509, -0.912339,
		-0.680567, -0.731223, -0.046291,
		-0.655711, 0.636040, -0.406811,
		37.051979, 36.996529, 21.905218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978264, 36.146778, 21.792227>,  <37.510975, 36.551300, 22.189985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978264, 36.146778, 21.792227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039276, 36.519985, 21.661871>,  <37.075886, 36.743912, 21.583658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039276, 36.519985, 21.661871>,  <36.978264, 36.146778, 21.792227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039276, 36.519985, 21.661871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440108, -0.359372, -0.822896,
		-0.884895, -0.017907, -0.465446,
		0.152533, 0.933022, -0.325888,
		37.085037, 36.799892, 21.564104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954685, 35.356071, 21.762087>,  <36.978264, 36.146778, 21.792227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954685, 35.356071, 21.762087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603825, 35.288033, 21.582457>,  <36.393307, 35.247211, 21.474678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603825, 35.288033, 21.582457>,  <36.954685, 35.356071, 21.762087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603825, 35.288033, 21.582457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299809, -0.536545, 0.788818,
		-0.375123, 0.826552, 0.419637,
		-0.877153, -0.170093, -0.449078,
		36.340679, 35.237003, 21.447733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407883, 35.482361, 22.303373>,  <36.954685, 35.356071, 21.762087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407883, 35.482361, 22.303373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.220215, 35.252174, 22.035429>,  <36.107616, 35.114063, 21.874662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.220215, 35.252174, 22.035429>,  <36.407883, 35.482361, 22.303373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220215, 35.252174, 22.035429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351713, -0.574013, 0.739464,
		-0.810050, 0.582531, 0.066907,
		-0.469166, -0.575471, -0.669863,
		36.079464, 35.079533, 21.834471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680763, 35.360905, 22.503633>,  <36.407883, 35.482361, 22.303373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680763, 35.360905, 22.503633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.741398, 35.074226, 22.231348>,  <35.777779, 34.902218, 22.067976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.741398, 35.074226, 22.231348>,  <35.680763, 35.360905, 22.503633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741398, 35.074226, 22.231348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450680, -0.663035, 0.597723,
		-0.879721, 0.216178, -0.423506,
		0.151585, -0.716695, -0.680713,
		35.786873, 34.859219, 22.027134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072926, 35.012508, 22.455935>,  <35.680763, 35.360905, 22.503633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072926, 35.012508, 22.455935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344929, 34.752403, 22.320438>,  <35.508133, 34.596340, 22.239141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344929, 34.752403, 22.320438>,  <35.072926, 35.012508, 22.455935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344929, 34.752403, 22.320438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398270, -0.715494, 0.573977,
		-0.615600, -0.255402, -0.745525,
		0.680013, -0.650260, -0.338739,
		35.548931, 34.557323, 22.218817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702560, 34.351295, 22.310415>,  <35.072926, 35.012508, 22.455935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702560, 34.351295, 22.310415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.087547, 34.264057, 22.375038>,  <35.318539, 34.211716, 22.413813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.087547, 34.264057, 22.375038>,  <34.702560, 34.351295, 22.310415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087547, 34.264057, 22.375038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270720, -0.813956, 0.513991,
		0.019404, -0.538435, -0.842444,
		0.962463, -0.218093, 0.161559,
		35.376286, 34.198627, 22.423506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762970, 33.610256, 22.284300>,  <34.702560, 34.351295, 22.310415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762970, 33.610256, 22.284300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.101551, 33.697308, 22.478685>,  <35.304699, 33.749538, 22.595316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.101551, 33.697308, 22.478685>,  <34.762970, 33.610256, 22.284300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101551, 33.697308, 22.478685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167818, -0.757113, 0.631361,
		0.505329, -0.615970, -0.604338,
		0.846451, 0.217627, 0.485962,
		35.355488, 33.762596, 22.624474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092899, 33.017757, 22.393053>,  <34.762970, 33.610256, 22.284300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092899, 33.017757, 22.393053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264633, 33.254059, 22.666311>,  <35.367672, 33.395840, 22.830265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264633, 33.254059, 22.666311>,  <35.092899, 33.017757, 22.393053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264633, 33.254059, 22.666311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010584, -0.753062, 0.657865,
		0.903085, -0.289673, -0.317061,
		0.429332, 0.590752, 0.683144,
		35.393433, 33.431286, 22.871254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560760, 32.553307, 22.724195>,  <35.092899, 33.017757, 22.393053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560760, 32.553307, 22.724195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.499989, 32.875393, 22.953474>,  <35.463524, 33.068645, 23.091042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.499989, 32.875393, 22.953474>,  <35.560760, 32.553307, 22.724195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499989, 32.875393, 22.953474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049269, -0.585376, 0.809264,
		0.987162, 0.094711, 0.128609,
		-0.151931, 0.805211, 0.573195,
		35.454411, 33.116955, 23.125433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107716, 32.106663, 22.824291>,  <35.560760, 32.553307, 22.724195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107716, 32.106663, 22.824291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.365292, 31.801748, 22.798193>,  <36.519836, 31.618799, 22.782534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.365292, 31.801748, 22.798193>,  <36.107716, 32.106663, 22.824291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365292, 31.801748, 22.798193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120883, 0.185584, -0.975165,
		0.755463, 0.620064, 0.211653,
		0.643943, -0.762286, -0.065247,
		36.558475, 31.573063, 22.778620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528191, 32.389629, 22.290577>,  <36.107716, 32.106663, 22.824291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528191, 32.389629, 22.290577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.650318, 32.012787, 22.346039>,  <36.723595, 31.786682, 22.379316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.650318, 32.012787, 22.346039>,  <36.528191, 32.389629, 22.290577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650318, 32.012787, 22.346039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473212, 0.023749, -0.880628,
		0.826349, 0.334484, 0.453065,
		0.305316, -0.942102, 0.138657,
		36.741913, 31.730156, 22.387636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193470, 32.381485, 22.112789>,  <36.528191, 32.389629, 22.290577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193470, 32.381485, 22.112789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.054955, 32.009655, 22.062229>,  <36.971848, 31.786556, 22.031893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.054955, 32.009655, 22.062229>,  <37.193470, 32.381485, 22.112789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054955, 32.009655, 22.062229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381565, -0.016471, -0.924195,
		0.857027, -0.368265, 0.360397,
		-0.346285, -0.929575, -0.126401,
		36.951069, 31.730782, 22.024309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734642, 31.929094, 21.769350>,  <37.193470, 32.381485, 22.112789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734642, 31.929094, 21.769350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373920, 31.775032, 21.690962>,  <37.157486, 31.682594, 21.643929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373920, 31.775032, 21.690962>,  <37.734642, 31.929094, 21.769350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373920, 31.775032, 21.690962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244805, -0.081614, -0.966131,
		0.356118, -0.919235, 0.167888,
		-0.901804, -0.385157, -0.195970,
		37.103378, 31.659485, 21.632172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865417, 31.320690, 21.370678>,  <37.734642, 31.929094, 21.769350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865417, 31.320690, 21.370678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.479420, 31.416191, 21.327261>,  <37.247822, 31.473492, 21.301210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.479420, 31.416191, 21.327261>,  <37.865417, 31.320690, 21.370678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479420, 31.416191, 21.327261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027054, -0.321031, -0.946682,
		-0.260863, -0.916482, 0.303334,
		-0.964997, 0.238748, -0.108540,
		37.189922, 31.487816, 21.294699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513771, 30.799101, 21.058603>,  <37.865417, 31.320690, 21.370678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513771, 30.799101, 21.058603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.275497, 31.108461, 20.971878>,  <37.132534, 31.294077, 20.919842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.275497, 31.108461, 20.971878>,  <37.513771, 30.799101, 21.058603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275497, 31.108461, 20.971878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056511, -0.228909, -0.971806,
		-0.801227, -0.591143, 0.092652,
		-0.595686, 0.773402, -0.216814,
		37.096790, 31.340483, 20.906834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114464, 30.487103, 20.466049>,  <37.513771, 30.799101, 21.058603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114464, 30.487103, 20.466049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.027317, 30.877073, 20.447929>,  <36.975029, 31.111055, 20.437057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.027317, 30.877073, 20.447929>,  <37.114464, 30.487103, 20.466049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027317, 30.877073, 20.447929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033155, -0.038996, -0.998689,
		-0.975415, -0.219086, -0.023828,
		-0.217870, 0.974926, -0.045301,
		36.961956, 31.169552, 20.434340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478409, 30.661875, 20.027470>,  <37.114464, 30.487103, 20.466049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478409, 30.661875, 20.027470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693382, 30.999197, 20.027353>,  <36.822369, 31.201590, 20.027285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693382, 30.999197, 20.027353>,  <36.478409, 30.661875, 20.027470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693382, 30.999197, 20.027353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006641, -0.004575, -0.999968,
		-0.843278, 0.537417, -0.008059,
		0.537436, 0.843304, -0.000289,
		36.854614, 31.252188, 20.027267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259075, 31.083294, 19.464033>,  <36.478409, 30.661875, 20.027470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259075, 31.083294, 19.464033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.637428, 31.180439, 19.550117>,  <36.864441, 31.238726, 19.601768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.637428, 31.180439, 19.550117>,  <36.259075, 31.083294, 19.464033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637428, 31.180439, 19.550117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108818, 0.387419, -0.915459,
		-0.305707, 0.889340, 0.340027,
		0.945887, 0.242861, 0.215213,
		36.921196, 31.253298, 19.614681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.455608, 29.888277, 35.658199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695847, 30.171965, 35.510529>,  <34.839989, 30.342178, 35.421925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695847, 30.171965, 35.510529>,  <34.455608, 29.888277, 35.658199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695847, 30.171965, 35.510529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305285, -0.223338, -0.925701,
		-0.738977, 0.668675, 0.082379,
		0.600595, 0.709221, -0.369178,
		34.876026, 30.384731, 35.399776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115059, 30.316359, 35.112740>,  <34.455608, 29.888277, 35.658199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115059, 30.316359, 35.112740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508144, 30.372696, 35.064663>,  <34.743996, 30.406498, 35.035816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508144, 30.372696, 35.064663>,  <34.115059, 30.316359, 35.112740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508144, 30.372696, 35.064663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095113, -0.172931, -0.980331,
		-0.158856, 0.974812, -0.156545,
		0.982710, 0.140842, -0.120189,
		34.802956, 30.414948, 35.028606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098755, 30.653658, 34.443268>,  <34.115059, 30.316359, 35.112740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098755, 30.653658, 34.443268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470242, 30.515728, 34.497807>,  <34.693134, 30.432970, 34.530529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470242, 30.515728, 34.497807>,  <34.098755, 30.653658, 34.443268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470242, 30.515728, 34.497807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129154, -0.043861, -0.990654,
		0.347580, 0.937643, 0.003801,
		0.928713, -0.344823, 0.136346,
		34.748856, 30.412281, 34.538712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468647, 31.101433, 34.107262>,  <34.098755, 30.653658, 34.443268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468647, 31.101433, 34.107262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680233, 30.764040, 34.144653>,  <34.807186, 30.561605, 34.167088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680233, 30.764040, 34.144653>,  <34.468647, 31.101433, 34.107262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680233, 30.764040, 34.144653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224133, 0.032614, -0.974013,
		0.818512, 0.536169, 0.206304,
		0.528964, -0.843480, 0.093478,
		34.838921, 30.510996, 34.172695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186676, 31.279642, 33.960728>,  <34.468647, 31.101433, 34.107262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186676, 31.279642, 33.960728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132763, 30.888512, 33.896614>,  <35.100414, 30.653833, 33.858147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132763, 30.888512, 33.896614>,  <35.186676, 31.279642, 33.960728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132763, 30.888512, 33.896614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305124, 0.112944, -0.945591,
		0.942726, -0.176359, 0.283135,
		-0.134786, -0.977825, -0.160287,
		35.092327, 30.595163, 33.848530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723572, 31.154112, 33.500599>,  <35.186676, 31.279642, 33.960728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723572, 31.154112, 33.500599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491638, 30.830088, 33.465729>,  <35.352478, 30.635674, 33.444805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491638, 30.830088, 33.465729>,  <35.723572, 31.154112, 33.500599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491638, 30.830088, 33.465729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258214, -0.081225, -0.962667,
		0.772736, -0.580695, 0.256265,
		-0.579832, -0.810059, -0.087178,
		35.317688, 30.587070, 33.439575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144508, 30.576376, 33.207836>,  <35.723572, 31.154112, 33.500599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144508, 30.576376, 33.207836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759537, 30.508907, 33.122715>,  <35.528553, 30.468426, 33.071640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759537, 30.508907, 33.122715>,  <36.144508, 30.576376, 33.207836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759537, 30.508907, 33.122715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230124, -0.090615, -0.968933,
		0.144149, -0.981498, 0.126026,
		-0.962426, -0.168673, -0.212805,
		35.470810, 30.458305, 33.058872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276070, 30.024982, 32.762913>,  <36.144508, 30.576376, 33.207836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276070, 30.024982, 32.762913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896088, 30.134800, 32.703308>,  <35.668098, 30.200691, 32.667545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896088, 30.134800, 32.703308>,  <36.276070, 30.024982, 32.762913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896088, 30.134800, 32.703308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104929, -0.168870, -0.980037,
		-0.294230, -0.946629, 0.131612,
		-0.949957, 0.274546, -0.149015,
		35.611099, 30.217163, 32.658604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913960, 29.606340, 32.296921>,  <36.276070, 30.024982, 32.762913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913960, 29.606340, 32.296921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666195, 29.919399, 32.272278>,  <35.517536, 30.107235, 32.257492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666195, 29.919399, 32.272278>,  <35.913960, 29.606340, 32.296921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666195, 29.919399, 32.272278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237902, -0.261907, -0.935311,
		-0.748154, -0.564685, 0.348421,
		-0.619410, 0.782647, -0.061607,
		35.480373, 30.154194, 32.253796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338921, 29.377125, 31.905008>,  <35.913960, 29.606340, 32.296921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338921, 29.377125, 31.905008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319366, 29.776192, 31.885929>,  <35.307636, 30.015631, 31.874481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319366, 29.776192, 31.885929>,  <35.338921, 29.377125, 31.905008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319366, 29.776192, 31.885929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158015, -0.054878, -0.985910,
		-0.986226, -0.040655, 0.160329,
		-0.048881, 0.997665, -0.047698,
		35.304703, 30.075491, 31.871620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815689, 29.465067, 31.478821>,  <35.338921, 29.377125, 31.905008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815689, 29.465067, 31.478821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018078, 29.809977, 31.487537>,  <35.139511, 30.016922, 31.492767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018078, 29.809977, 31.487537>,  <34.815689, 29.465067, 31.478821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018078, 29.809977, 31.487537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051948, -0.005247, -0.998636,
		-0.860982, 0.506418, -0.047448,
		0.505976, 0.862272, 0.021789,
		35.169872, 30.068659, 31.494074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484547, 29.913319, 31.107759>,  <34.815689, 29.465067, 31.478821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484547, 29.913319, 31.107759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860329, 30.050388, 31.107197>,  <35.085796, 30.132629, 31.106859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860329, 30.050388, 31.107197>,  <34.484547, 29.913319, 31.107759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860329, 30.050388, 31.107197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036999, 0.097344, -0.994563,
		-0.340674, 0.934397, 0.104129,
		0.939453, 0.342674, -0.001409,
		35.142166, 30.153191, 31.106773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183929, 30.621115, 31.343327>,  <34.484547, 29.913319, 31.107759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183929, 30.621115, 31.343327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816010, 30.775146, 31.313192>,  <33.595257, 30.867565, 31.295113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816010, 30.775146, 31.313192>,  <34.183929, 30.621115, 31.343327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816010, 30.775146, 31.313192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032889, 0.266981, 0.963140,
		0.391000, 0.883422, -0.258235,
		-0.919803, 0.385081, -0.075335,
		33.540070, 30.890671, 31.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117634, 31.305107, 31.691063>,  <34.183929, 30.621115, 31.343327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117634, 31.305107, 31.691063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753456, 31.140116, 31.703457>,  <33.534950, 31.041121, 31.710894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753456, 31.140116, 31.703457>,  <34.117634, 31.305107, 31.691063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753456, 31.140116, 31.703457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066451, 0.219790, 0.973281,
		-0.408266, 0.884056, -0.227515,
		-0.910441, -0.412476, 0.030986,
		33.480324, 31.016373, 31.712753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744038, 31.744831, 32.025497>,  <34.117634, 31.305107, 31.691063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744038, 31.744831, 32.025497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503735, 31.426552, 32.056370>,  <33.359554, 31.235584, 32.074894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503735, 31.426552, 32.056370>,  <33.744038, 31.744831, 32.025497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503735, 31.426552, 32.056370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095245, 0.167096, 0.981329,
		-0.793737, 0.582190, -0.176170,
		-0.600758, -0.795697, 0.077180,
		33.323505, 31.187843, 32.079525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018974, 32.018074, 32.412216>,  <33.744038, 31.744831, 32.025497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018974, 32.018074, 32.412216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996643, 31.621880, 32.462540>,  <32.983246, 31.384163, 32.492733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996643, 31.621880, 32.462540>,  <33.018974, 32.018074, 32.412216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996643, 31.621880, 32.462540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440906, 0.137513, 0.886956,
		-0.895815, -0.005954, -0.444387,
		-0.055828, -0.990482, 0.125811,
		32.979897, 31.324736, 32.500282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539841, 32.003143, 32.862701>,  <33.018974, 32.018074, 32.412216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539841, 32.003143, 32.862701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657913, 31.621723, 32.886707>,  <32.728756, 31.392870, 32.901112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657913, 31.621723, 32.886707>,  <32.539841, 32.003143, 32.862701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657913, 31.621723, 32.886707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478996, -0.093340, 0.872840,
		-0.826698, -0.286395, -0.484301,
		0.295182, -0.953554, 0.060018,
		32.746468, 31.335657, 32.904713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948481, 31.545679, 32.969448>,  <32.539841, 32.003143, 32.862701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948481, 31.545679, 32.969448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.269352, 31.347895, 33.103325>,  <32.461876, 31.229225, 33.183651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.269352, 31.347895, 33.103325>,  <31.948481, 31.545679, 32.969448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269352, 31.347895, 33.103325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471876, -0.181539, 0.862772,
		-0.365847, -0.850031, -0.378951,
		0.802177, -0.494460, 0.334694,
		32.510006, 31.199556, 33.203732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757120, 30.872276, 33.335098>,  <31.948481, 31.545679, 32.969448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757120, 30.872276, 33.335098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103073, 31.000732, 33.489422>,  <32.310646, 31.077806, 33.582016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103073, 31.000732, 33.489422>,  <31.757120, 30.872276, 33.335098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103073, 31.000732, 33.489422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405267, -0.006806, 0.914173,
		0.296206, -0.947006, 0.124262,
		0.864882, 0.321142, 0.385807,
		32.362537, 31.097075, 33.605164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855938, 30.447800, 33.881016>,  <31.757120, 30.872276, 33.335098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855938, 30.447800, 33.881016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106358, 30.748074, 33.965427>,  <32.256611, 30.928238, 34.016075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106358, 30.748074, 33.965427>,  <31.855938, 30.447800, 33.881016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106358, 30.748074, 33.965427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403905, 0.080688, 0.911236,
		0.667024, -0.655714, 0.353721,
		0.626051, 0.750686, 0.211025,
		32.294174, 30.973280, 34.028736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098347, 30.362114, 34.634499>,  <31.855938, 30.447800, 33.881016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098347, 30.362114, 34.634499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.143967, 30.742067, 34.518078>,  <32.171341, 30.970039, 34.448227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.143967, 30.742067, 34.518078>,  <32.098347, 30.362114, 34.634499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143967, 30.742067, 34.518078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383879, 0.312344, 0.868952,
		0.916312, 0.012620, 0.400266,
		0.114054, 0.949885, -0.291049,
		32.178185, 31.027033, 34.430763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230164, 30.696230, 35.274010>,  <32.098347, 30.362114, 34.634499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230164, 30.696230, 35.274010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118927, 31.001945, 35.041275>,  <32.052185, 31.185375, 34.901634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118927, 31.001945, 35.041275>,  <32.230164, 30.696230, 35.274010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118927, 31.001945, 35.041275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526285, 0.385487, 0.757907,
		0.803549, 0.516975, 0.295034,
		-0.278087, 0.764288, -0.581834,
		32.035500, 31.231232, 34.866726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336349, 31.317808, 35.664352>,  <32.230164, 30.696230, 35.274010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336349, 31.317808, 35.664352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088272, 31.451548, 35.380501>,  <31.939426, 31.531792, 35.210190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088272, 31.451548, 35.380501>,  <32.336349, 31.317808, 35.664352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088272, 31.451548, 35.380501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660247, 0.266007, 0.702363,
		0.423602, 0.904130, 0.055778,
		-0.620190, 0.334350, -0.709630,
		31.902216, 31.551853, 35.167610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078144, 32.044044, 35.899036>,  <32.336349, 31.317808, 35.664352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078144, 32.044044, 35.899036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821381, 31.913719, 35.621387>,  <31.667324, 31.835524, 35.454800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821381, 31.913719, 35.621387>,  <32.078144, 32.044044, 35.899036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821381, 31.913719, 35.621387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766721, 0.261105, 0.586484,
		-0.009845, 0.908664, -0.417411,
		-0.641905, -0.325812, -0.694121,
		31.628809, 31.815975, 35.413151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665758, 32.649910, 35.850937>,  <32.078144, 32.044044, 35.899036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665758, 32.649910, 35.850937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431499, 32.373341, 35.681728>,  <31.290945, 32.207397, 35.580204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431499, 32.373341, 35.681728>,  <31.665758, 32.649910, 35.850937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431499, 32.373341, 35.681728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791852, 0.376535, 0.480825,
		-0.173173, 0.616563, -0.768024,
		-0.585647, -0.691427, -0.423021,
		31.255806, 32.165913, 35.554821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187378, 33.078480, 35.410034>,  <31.665758, 32.649910, 35.850937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187378, 33.078480, 35.410034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094164, 32.715675, 35.550339>,  <31.038235, 32.497993, 35.634521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094164, 32.715675, 35.550339>,  <31.187378, 33.078480, 35.410034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094164, 32.715675, 35.550339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748398, 0.397584, 0.530874,
		-0.620962, -0.138793, -0.771455,
		-0.233037, -0.907008, 0.350758,
		31.024254, 32.443573, 35.655567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768923, 33.654964, 35.660629>,  <31.187378, 33.078480, 35.410034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768923, 33.654964, 35.660629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.876280, 34.032047, 35.739902>,  <30.940695, 34.258297, 35.787464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.876280, 34.032047, 35.739902>,  <30.768923, 33.654964, 35.660629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876280, 34.032047, 35.739902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074276, 0.184865, -0.979953,
		-0.960442, 0.277732, -0.020404,
		0.268392, 0.942704, 0.198181,
		30.956797, 34.314857, 35.799358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486952, 34.183601, 35.095085>,  <30.768923, 33.654964, 35.660629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486952, 34.183601, 35.095085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.834986, 34.302349, 35.252472>,  <31.043806, 34.373596, 35.346905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.834986, 34.302349, 35.252472>,  <30.486952, 34.183601, 35.095085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834986, 34.302349, 35.252472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407356, 0.016345, -0.913123,
		-0.277508, 0.954779, -0.106709,
		0.870086, 0.296867, 0.393471,
		31.096012, 34.391411, 35.370514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751015, 34.533195, 34.550556>,  <30.486952, 34.183601, 35.095085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751015, 34.533195, 34.550556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.068586, 34.536926, 34.793732>,  <31.259129, 34.539165, 34.939636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.068586, 34.536926, 34.793732>,  <30.751015, 34.533195, 34.550556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068586, 34.536926, 34.793732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602974, 0.116374, -0.789227,
		-0.078108, 0.993162, 0.086770,
		0.793928, 0.009325, 0.607940,
		31.306765, 34.539722, 34.976112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186586, 35.224121, 34.566475>,  <30.751015, 34.533195, 34.550556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186586, 35.224121, 34.566475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413769, 34.901493, 34.632034>,  <31.550079, 34.707916, 34.671371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413769, 34.901493, 34.632034>,  <31.186586, 35.224121, 34.566475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413769, 34.901493, 34.632034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595203, 0.264961, -0.758637,
		0.568470, 0.528427, 0.630561,
		0.567958, -0.806574, 0.163899,
		31.584156, 34.659519, 34.681206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869411, 35.451576, 34.524963>,  <31.186586, 35.224121, 34.566475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869411, 35.451576, 34.524963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882477, 35.054276, 34.480461>,  <31.890316, 34.815895, 34.453758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882477, 35.054276, 34.480461>,  <31.869411, 35.451576, 34.524963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882477, 35.054276, 34.480461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523624, 0.111821, -0.844579,
		0.851323, -0.030671, 0.523744,
		0.032661, -0.993255, -0.111256,
		31.892275, 34.756298, 34.447083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526947, 35.310780, 34.139488>,  <31.869411, 35.451576, 34.524963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526947, 35.310780, 34.139488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345341, 34.957985, 34.088932>,  <32.236378, 34.746307, 34.058598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345341, 34.957985, 34.088932>,  <32.526947, 35.310780, 34.139488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345341, 34.957985, 34.088932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523791, -0.149450, -0.838634,
		0.720773, -0.446956, 0.529828,
		-0.454015, -0.881984, -0.126392,
		32.209137, 34.693390, 34.051014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090366, 34.802944, 34.012287>,  <32.526947, 35.310780, 34.139488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090366, 34.802944, 34.012287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739861, 34.696903, 33.851345>,  <32.529556, 34.633278, 33.754780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739861, 34.696903, 33.851345>,  <33.090366, 34.802944, 34.012287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739861, 34.696903, 33.851345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470428, -0.290060, -0.833405,
		0.104233, -0.919557, 0.378880,
		-0.876261, -0.265104, -0.402351,
		32.476982, 34.617371, 33.730640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252289, 34.140980, 33.730988>,  <33.090366, 34.802944, 34.012287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252289, 34.140980, 33.730988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920364, 34.277691, 33.554535>,  <32.721210, 34.359718, 33.448662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920364, 34.277691, 33.554535>,  <33.252289, 34.140980, 33.730988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920364, 34.277691, 33.554535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382101, -0.228138, -0.895518,
		-0.406706, -0.911670, 0.058718,
		-0.829812, 0.341776, -0.441136,
		32.671421, 34.380222, 33.422195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020741, 33.585289, 33.213303>,  <33.252289, 34.140980, 33.730988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020741, 33.585289, 33.213303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857800, 33.932762, 33.100552>,  <32.760036, 34.141247, 33.032902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857800, 33.932762, 33.100552>,  <33.020741, 33.585289, 33.213303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857800, 33.932762, 33.100552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499569, -0.046425, -0.865029,
		-0.764523, -0.493186, -0.415056,
		-0.407351, 0.868684, -0.281874,
		32.735596, 34.193367, 33.015991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028538, 33.459183, 32.522198>,  <33.020741, 33.585289, 33.213303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028538, 33.459183, 32.522198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973129, 33.853107, 32.564083>,  <32.939884, 34.089462, 32.589214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973129, 33.853107, 32.564083>,  <33.028538, 33.459183, 32.522198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973129, 33.853107, 32.564083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537733, 0.163580, -0.827094,
		-0.831658, -0.058260, -0.552223,
		-0.138520, 0.984808, 0.104715,
		32.931572, 34.148548, 32.595497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881474, 33.623249, 31.836025>,  <33.028538, 33.459183, 32.522198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881474, 33.623249, 31.836025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933311, 33.978363, 32.012680>,  <32.964413, 34.191433, 32.118671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933311, 33.978363, 32.012680>,  <32.881474, 33.623249, 31.836025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933311, 33.978363, 32.012680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516533, 0.319743, -0.794329,
		-0.846404, 0.331059, -0.417134,
		0.129594, 0.887786, 0.441635,
		32.972191, 34.244698, 32.145172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969254, 34.068680, 31.223806>,  <32.881474, 33.623249, 31.836025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969254, 34.068680, 31.223806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095943, 34.315449, 31.511999>,  <33.171959, 34.463509, 31.684916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095943, 34.315449, 31.511999>,  <32.969254, 34.068680, 31.223806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095943, 34.315449, 31.511999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646034, 0.415856, -0.640081,
		-0.694496, 0.668186, -0.266839,
		0.316726, 0.616920, 0.720482,
		33.190960, 34.500526, 31.728144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826351, 34.735012, 31.077162>,  <32.969254, 34.068680, 31.223806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826351, 34.735012, 31.077162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.155373, 34.727070, 31.304499>,  <33.352787, 34.722305, 31.440901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.155373, 34.727070, 31.304499>,  <32.826351, 34.735012, 31.077162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155373, 34.727070, 31.304499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511058, 0.464175, -0.723437,
		-0.249448, 0.885521, 0.391955,
		0.822554, -0.019852, 0.568340,
		33.402138, 34.721115, 31.475000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029121, 35.334518, 31.107868>,  <32.826351, 34.735012, 31.077162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029121, 35.334518, 31.107868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365646, 35.133007, 31.186260>,  <33.567562, 35.012100, 31.233295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365646, 35.133007, 31.186260>,  <33.029121, 35.334518, 31.107868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365646, 35.133007, 31.186260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455937, 0.466573, -0.757912,
		0.290382, 0.726991, 0.622224,
		0.841308, -0.503779, 0.195978,
		33.618038, 34.981873, 31.245054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624649, 35.902779, 31.054338>,  <33.029121, 35.334518, 31.107868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624649, 35.902779, 31.054338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770473, 35.534733, 30.997084>,  <33.857967, 35.313908, 30.962730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770473, 35.534733, 30.997084>,  <33.624649, 35.902779, 31.054338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770473, 35.534733, 30.997084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542412, 0.334778, -0.770528,
		0.756890, 0.203268, 0.621127,
		0.364564, -0.920112, -0.143135,
		33.879841, 35.258698, 30.954144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292881, 36.054581, 30.900318>,  <33.624649, 35.902779, 31.054338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292881, 36.054581, 30.900318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234093, 35.686058, 30.756323>,  <34.198818, 35.464943, 30.669926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234093, 35.686058, 30.756323>,  <34.292881, 36.054581, 30.900318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234093, 35.686058, 30.756323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503175, 0.243697, -0.829112,
		0.851595, -0.302994, 0.427762,
		-0.146971, -0.921307, -0.359990,
		34.190002, 35.409664, 30.648325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867764, 35.887592, 30.575855>,  <34.292881, 36.054581, 30.900318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867764, 35.887592, 30.575855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609501, 35.644894, 30.390390>,  <34.454544, 35.499275, 30.279112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609501, 35.644894, 30.390390>,  <34.867764, 35.887592, 30.575855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609501, 35.644894, 30.390390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544640, 0.059696, -0.836543,
		0.535249, -0.792650, 0.291916,
		-0.645659, -0.606748, -0.463660,
		34.415802, 35.462868, 30.251293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231335, 35.676666, 30.035404>,  <34.867764, 35.887592, 30.575855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231335, 35.676666, 30.035404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877857, 35.541996, 29.905338>,  <34.665771, 35.461193, 29.827299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877857, 35.541996, 29.905338>,  <35.231335, 35.676666, 30.035404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877857, 35.541996, 29.905338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260108, 0.224322, -0.939161,
		0.389136, -0.914510, -0.110659,
		-0.883695, -0.336678, -0.325163,
		34.612747, 35.440994, 29.807789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411514, 35.256039, 29.465969>,  <35.231335, 35.676666, 30.035404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411514, 35.256039, 29.465969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026127, 35.357685, 29.432133>,  <34.794895, 35.418674, 29.411831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026127, 35.357685, 29.432133>,  <35.411514, 35.256039, 29.465969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026127, 35.357685, 29.432133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121999, 0.135238, -0.983274,
		-0.238430, -0.957671, -0.161300,
		-0.963466, 0.254121, -0.084590,
		34.737087, 35.433922, 29.406755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198143, 34.917061, 28.874096>,  <35.411514, 35.256039, 29.465969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198143, 34.917061, 28.874096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932613, 35.212994, 28.917898>,  <34.773296, 35.390553, 28.944180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932613, 35.212994, 28.917898>,  <35.198143, 34.917061, 28.874096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932613, 35.212994, 28.917898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170186, 0.292005, -0.941154,
		-0.728271, -0.606122, -0.319748,
		-0.663821, 0.739831, 0.109505,
		34.733467, 35.434944, 28.950750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582058, 34.814285, 28.378281>,  <35.198143, 34.917061, 28.874096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582058, 34.814285, 28.378281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539379, 35.203423, 28.460440>,  <34.513771, 35.436905, 28.509735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539379, 35.203423, 28.460440>,  <34.582058, 34.814285, 28.378281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539379, 35.203423, 28.460440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030180, 0.209651, -0.977310,
		-0.993833, -0.098081, -0.051730,
		-0.106701, 0.972845, 0.205398,
		34.507370, 35.495277, 28.522058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950424, 35.115257, 28.038439>,  <34.582058, 34.814285, 28.378281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950424, 35.115257, 28.038439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220165, 35.401787, 28.110130>,  <34.382011, 35.573704, 28.153145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220165, 35.401787, 28.110130>,  <33.950424, 35.115257, 28.038439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220165, 35.401787, 28.110130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038725, 0.208081, -0.977345,
		-0.737390, 0.666019, 0.112581,
		0.674357, 0.716324, 0.179228,
		34.422474, 35.616684, 28.163898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689953, 35.673813, 27.695232>,  <33.950424, 35.115257, 28.038439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689953, 35.673813, 27.695232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072731, 35.774406, 27.753212>,  <34.302399, 35.834763, 27.788000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072731, 35.774406, 27.753212>,  <33.689953, 35.673813, 27.695232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072731, 35.774406, 27.753212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051178, 0.345370, -0.937070,
		-0.285719, 0.904144, 0.317630,
		0.956946, 0.251483, 0.144950,
		34.359814, 35.849850, 27.796698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743584, 36.259327, 27.314676>,  <33.689953, 35.673813, 27.695232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743584, 36.259327, 27.314676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125134, 36.156055, 27.375948>,  <34.354065, 36.094093, 27.412710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125134, 36.156055, 27.375948>,  <33.743584, 36.259327, 27.314676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125134, 36.156055, 27.375948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232687, 0.313461, -0.920651,
		0.189681, 0.913829, 0.359079,
		0.953875, -0.258183, 0.153179,
		34.411297, 36.078602, 27.421902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231644, 36.829010, 27.101061>,  <33.743584, 36.259327, 27.314676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231644, 36.829010, 27.101061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457054, 36.498608, 27.096235>,  <34.592300, 36.300365, 27.093340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457054, 36.498608, 27.096235>,  <34.231644, 36.829010, 27.101061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457054, 36.498608, 27.096235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437761, 0.310974, -0.843600,
		0.700571, 0.470114, 0.536837,
		0.563530, -0.826007, -0.012062,
		34.626114, 36.250805, 27.092617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912575, 37.087044, 27.048748>,  <34.231644, 36.829010, 27.101061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912575, 37.087044, 27.048748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958614, 36.706268, 26.935207>,  <34.986240, 36.477802, 26.867083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958614, 36.706268, 26.935207>,  <34.912575, 37.087044, 27.048748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958614, 36.706268, 26.935207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482218, 0.303368, -0.821847,
		0.868457, -0.042283, 0.493958,
		0.115101, -0.951935, -0.283852,
		34.993145, 36.420689, 26.850052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520161, 37.126297, 26.867783>,  <34.912575, 37.087044, 27.048748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520161, 37.126297, 26.867783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339840, 36.810909, 26.700403>,  <35.231647, 36.621677, 26.599976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339840, 36.810909, 26.700403>,  <35.520161, 37.126297, 26.867783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339840, 36.810909, 26.700403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499042, 0.166053, -0.850520,
		0.740090, -0.592239, 0.318620,
		-0.450803, -0.788466, -0.418447,
		35.204597, 36.574371, 26.574869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084309, 36.719769, 26.504200>,  <35.520161, 37.126297, 26.867783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084309, 36.719769, 26.504200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739426, 36.606846, 26.335964>,  <35.532494, 36.539093, 26.235022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739426, 36.606846, 26.335964>,  <36.084309, 36.719769, 26.504200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739426, 36.606846, 26.335964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382307, 0.182050, -0.905924,
		0.332319, -0.941891, -0.049037,
		-0.862209, -0.282309, -0.420591,
		35.480762, 36.522152, 26.209787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291462, 35.978653, 26.756891>,  <36.084309, 36.719769, 26.504200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291462, 35.978653, 26.756891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679363, 36.007385, 26.850201>,  <36.912106, 36.024624, 26.906187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679363, 36.007385, 26.850201>,  <36.291462, 35.978653, 26.756891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679363, 36.007385, 26.850201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240189, 0.110814, 0.964380,
		0.043417, -0.991242, 0.124714,
		0.969755, 0.071825, 0.233274,
		36.970291, 36.028934, 26.920183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493668, 35.393372, 27.228884>,  <36.291462, 35.978653, 26.756891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493668, 35.393372, 27.228884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757900, 35.688946, 27.281967>,  <36.916439, 35.866291, 27.313818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757900, 35.688946, 27.281967>,  <36.493668, 35.393372, 27.228884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757900, 35.688946, 27.281967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132150, -0.059561, 0.989439,
		0.739034, -0.671141, 0.058306,
		0.660580, 0.738934, 0.132709,
		36.956074, 35.910625, 27.321779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063999, 35.143547, 27.696434>,  <36.493668, 35.393372, 27.228884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063999, 35.143547, 27.696434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.074612, 35.542114, 27.728544>,  <37.080978, 35.781254, 27.747810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.074612, 35.542114, 27.728544>,  <37.063999, 35.143547, 27.696434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074612, 35.542114, 27.728544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059434, -0.081733, 0.994880,
		0.997880, -0.021623, -0.061390,
		0.026530, 0.996420, 0.080275,
		37.082569, 35.841042, 27.752626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673679, 35.396088, 28.048492>,  <37.063999, 35.143547, 27.696434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673679, 35.396088, 28.048492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399384, 35.684826, 28.085812>,  <37.234806, 35.858070, 28.108204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399384, 35.684826, 28.085812>,  <37.673679, 35.396088, 28.048492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399384, 35.684826, 28.085812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175470, 0.039549, 0.983690,
		0.706381, 0.690925, -0.153782,
		-0.685738, 0.721844, 0.093299,
		37.193661, 35.901379, 28.113802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045879, 35.956135, 28.362003>,  <37.673679, 35.396088, 28.048492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045879, 35.956135, 28.362003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654278, 35.990559, 28.435911>,  <37.419315, 36.011211, 28.480255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654278, 35.990559, 28.435911>,  <38.045879, 35.956135, 28.362003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654278, 35.990559, 28.435911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194102, 0.116966, 0.973983,
		0.062210, 0.989400, -0.131215,
		-0.979007, 0.086060, 0.184768,
		37.360577, 36.016376, 28.491341>
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
