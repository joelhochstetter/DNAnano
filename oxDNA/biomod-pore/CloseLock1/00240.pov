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
	<24.250015, 35.010365, 35.200684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515039, 34.877766, 34.932022>,  <24.674055, 34.798206, 34.770824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515039, 34.877766, 34.932022>,  <24.250015, 35.010365, 35.200684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.515039, 34.877766, 34.932022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374718, 0.923144, -0.085975,
		0.648536, -0.194718, 0.735858,
		0.662561, -0.331497, -0.671656,
		24.713808, 34.778316, 34.730526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853231, 35.178860, 35.413589>,  <24.250015, 35.010365, 35.200684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853231, 35.178860, 35.413589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852995, 35.134144, 35.016098>,  <24.852854, 35.107315, 34.777603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852995, 35.134144, 35.016098>,  <24.853231, 35.178860, 35.413589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852995, 35.134144, 35.016098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230355, 0.966992, -0.108920,
		0.973107, -0.228975, 0.025181,
		-0.000590, -0.111792, -0.993732,
		24.852818, 35.100605, 34.717979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474783, 35.565742, 35.189632>,  <24.853231, 35.178860, 35.413589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474783, 35.565742, 35.189632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232882, 35.533005, 34.872753>,  <25.087740, 35.513363, 34.682625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232882, 35.533005, 34.872753>,  <25.474783, 35.565742, 35.189632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232882, 35.533005, 34.872753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244404, 0.927638, -0.282408,
		0.757983, -0.364403, -0.540992,
		-0.604755, -0.081840, -0.792195,
		25.051455, 35.508453, 34.635094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173103, 35.917343, 35.128952>,  <25.474783, 35.565742, 35.189632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173103, 35.917343, 35.128952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996418, 35.734798, 35.437916>,  <25.890408, 35.625271, 35.623295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996418, 35.734798, 35.437916>,  <26.173103, 35.917343, 35.128952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996418, 35.734798, 35.437916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865381, 0.443836, -0.232647,
		-0.236653, -0.771195, -0.590976,
		-0.441713, -0.456364, 0.772413,
		25.863905, 35.597889, 35.669640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745539, 35.447052, 34.753540>,  <26.173103, 35.917343, 35.128952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745539, 35.447052, 34.753540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386597, 35.420841, 34.578972>,  <26.171232, 35.405113, 34.474232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386597, 35.420841, 34.578972>,  <26.745539, 35.447052, 34.753540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386597, 35.420841, 34.578972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406747, -0.260864, 0.875504,
		-0.171215, 0.963149, 0.207434,
		-0.897353, -0.065526, -0.436422,
		26.117392, 35.401184, 34.448044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788446, 34.912140, 35.335621>,  <26.745539, 35.447052, 34.753540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788446, 34.912140, 35.335621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109167, 35.129456, 35.236057>,  <27.301600, 35.259846, 35.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109167, 35.129456, 35.236057>,  <26.788446, 34.912140, 35.335621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109167, 35.129456, 35.236057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174254, 0.185866, 0.967000,
		0.571622, -0.818714, 0.054358,
		0.801800, 0.543287, -0.248910,
		27.349707, 35.292442, 35.161385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274712, 34.829147, 35.841663>,  <26.788446, 34.912140, 35.335621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274712, 34.829147, 35.841663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457430, 35.143421, 35.674793>,  <27.567060, 35.331985, 35.574673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457430, 35.143421, 35.674793>,  <27.274712, 34.829147, 35.841663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457430, 35.143421, 35.674793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390227, 0.244448, 0.887675,
		0.799412, -0.568279, -0.194934,
		0.456796, 0.785687, -0.417173,
		27.594469, 35.379128, 35.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771124, 34.930611, 36.358219>,  <27.274712, 34.829147, 35.841663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771124, 34.930611, 36.358219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751917, 35.261795, 36.134727>,  <27.740393, 35.460506, 36.000633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751917, 35.261795, 36.134727>,  <27.771124, 34.930611, 36.358219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751917, 35.261795, 36.134727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285033, 0.547469, 0.786787,
		0.957314, -0.121476, -0.262285,
		-0.048017, 0.827962, -0.558724,
		27.737513, 35.510185, 35.967110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427908, 35.237648, 36.370251>,  <27.771124, 34.930611, 36.358219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427908, 35.237648, 36.370251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138355, 35.499081, 36.281872>,  <27.964622, 35.655941, 36.228844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138355, 35.499081, 36.281872>,  <28.427908, 35.237648, 36.370251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138355, 35.499081, 36.281872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256041, 0.551876, 0.793647,
		0.640652, 0.517937, -0.566839,
		-0.723884, 0.653586, -0.220948,
		27.921190, 35.695156, 36.215588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728941, 35.921074, 36.348495>,  <28.427908, 35.237648, 36.370251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728941, 35.921074, 36.348495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341436, 35.978745, 36.429207>,  <28.108934, 36.013348, 36.477634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341436, 35.978745, 36.429207>,  <28.728941, 35.921074, 36.348495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341436, 35.978745, 36.429207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247946, 0.546920, 0.799625,
		0.004933, 0.824676, -0.565584,
		-0.968761, 0.144178, 0.201777,
		28.050808, 36.021999, 36.489738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764151, 36.566509, 36.575783>,  <28.728941, 35.921074, 36.348495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764151, 36.566509, 36.575783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400345, 36.442177, 36.686176>,  <28.182062, 36.367577, 36.752415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400345, 36.442177, 36.686176>,  <28.764151, 36.566509, 36.575783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400345, 36.442177, 36.686176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132812, 0.411845, 0.901523,
		-0.393887, 0.856602, -0.333296,
		-0.909513, -0.310833, 0.275988,
		28.127491, 36.348927, 36.768974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403797, 37.238777, 36.806473>,  <28.764151, 36.566509, 36.575783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403797, 37.238777, 36.806473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235212, 36.917419, 36.974728>,  <28.134062, 36.724606, 37.075680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235212, 36.917419, 36.974728>,  <28.403797, 37.238777, 36.806473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235212, 36.917419, 36.974728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137438, 0.401896, 0.905312,
		-0.896372, 0.439364, -0.058967,
		-0.421460, -0.803392, 0.420633,
		28.108774, 36.676403, 37.100918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910391, 37.534527, 37.253613>,  <28.403797, 37.238777, 36.806473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910391, 37.534527, 37.253613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996456, 37.169758, 37.393387>,  <28.048096, 36.950897, 37.477253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996456, 37.169758, 37.393387>,  <27.910391, 37.534527, 37.253613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996456, 37.169758, 37.393387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105760, 0.377473, 0.919961,
		-0.970835, -0.160985, 0.177663,
		0.215162, -0.911920, 0.349438,
		28.061005, 36.896183, 37.498219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669989, 37.531204, 37.995846>,  <27.910391, 37.534527, 37.253613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669989, 37.531204, 37.995846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902025, 37.205795, 37.979454>,  <28.041246, 37.010551, 37.969620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902025, 37.205795, 37.979454>,  <27.669989, 37.531204, 37.995846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902025, 37.205795, 37.979454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525176, 0.335082, 0.782246,
		-0.622644, -0.475292, 0.621620,
		0.580089, -0.813522, -0.040975,
		28.076052, 36.961739, 37.967163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607042, 37.112671, 38.637123>,  <27.669989, 37.531204, 37.995846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607042, 37.112671, 38.637123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963770, 37.016380, 38.483910>,  <28.177807, 36.958607, 38.391983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963770, 37.016380, 38.483910>,  <27.607042, 37.112671, 38.637123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963770, 37.016380, 38.483910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433603, 0.213335, 0.875487,
		-0.129037, -0.946858, 0.294635,
		0.891817, -0.240724, -0.383032,
		28.231316, 36.944164, 38.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894678, 36.670650, 39.106281>,  <27.607042, 37.112671, 38.637123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894678, 36.670650, 39.106281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178783, 36.835922, 38.878311>,  <28.349247, 36.935085, 38.741531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178783, 36.835922, 38.878311>,  <27.894678, 36.670650, 39.106281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178783, 36.835922, 38.878311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574732, 0.127110, 0.808410,
		0.406460, -0.901735, -0.147186,
		0.710263, 0.413179, -0.569921,
		28.391863, 36.959877, 38.707336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450905, 36.384800, 39.519112>,  <27.894678, 36.670650, 39.106281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450905, 36.384800, 39.519112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603106, 36.657562, 39.269241>,  <28.694426, 36.821220, 39.119320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603106, 36.657562, 39.269241>,  <28.450905, 36.384800, 39.519112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603106, 36.657562, 39.269241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612364, 0.320388, 0.722746,
		0.692984, -0.657536, -0.295668,
		0.380503, 0.681908, -0.624675,
		28.717257, 36.862133, 39.081841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165712, 36.287842, 39.481106>,  <28.450905, 36.384800, 39.519112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165712, 36.287842, 39.481106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089067, 36.669369, 39.388565>,  <29.043081, 36.898285, 39.333038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089067, 36.669369, 39.388565>,  <29.165712, 36.287842, 39.481106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089067, 36.669369, 39.388565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598086, 0.300373, 0.743014,
		0.778189, 0.004001, -0.628017,
		-0.191612, 0.953813, -0.231354,
		29.031584, 36.955513, 39.319160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728901, 36.540585, 39.598328>,  <29.165712, 36.287842, 39.481106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728901, 36.540585, 39.598328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475800, 36.850319, 39.596333>,  <29.323938, 37.036160, 39.595135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475800, 36.850319, 39.596333>,  <29.728901, 36.540585, 39.598328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475800, 36.850319, 39.596333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521410, 0.430814, 0.736567,
		0.572501, 0.463464, -0.676346,
		-0.632752, 0.774339, -0.004986,
		29.285975, 37.082619, 39.594837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179928, 37.156837, 39.574661>,  <29.728901, 36.540585, 39.598328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179928, 37.156837, 39.574661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833864, 37.328094, 39.679115>,  <29.626226, 37.430851, 39.741787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833864, 37.328094, 39.679115>,  <30.179928, 37.156837, 39.574661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833864, 37.328094, 39.679115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450189, 0.433597, 0.780592,
		0.220977, 0.792897, -0.567876,
		-0.865158, 0.428144, 0.261139,
		29.574316, 37.456539, 39.757458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265211, 37.909946, 39.593033>,  <30.179928, 37.156837, 39.574661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265211, 37.909946, 39.593033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965488, 37.795902, 39.832115>,  <29.785654, 37.727474, 39.975563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965488, 37.795902, 39.832115>,  <30.265211, 37.909946, 39.593033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965488, 37.795902, 39.832115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502050, 0.343995, 0.793482,
		-0.431836, 0.894640, -0.114619,
		-0.749309, -0.285110, 0.597703,
		29.740696, 37.710369, 40.011425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245506, 38.505939, 40.025623>,  <30.265211, 37.909946, 39.593033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245506, 38.505939, 40.025623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004526, 38.242538, 40.206032>,  <29.859938, 38.084496, 40.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004526, 38.242538, 40.206032>,  <30.245506, 38.505939, 40.025623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004526, 38.242538, 40.206032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395820, 0.244209, 0.885262,
		-0.693095, 0.711851, 0.113526,
		-0.602450, -0.658506, 0.451025,
		29.823792, 38.044987, 40.341339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911949, 38.905224, 40.660820>,  <30.245506, 38.505939, 40.025623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911949, 38.905224, 40.660820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888453, 38.510025, 40.717960>,  <29.874353, 38.272903, 40.752243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888453, 38.510025, 40.717960>,  <29.911949, 38.905224, 40.660820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888453, 38.510025, 40.717960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254606, 0.123538, 0.959121,
		-0.965259, 0.092713, 0.244294,
		-0.058743, -0.987999, 0.142851,
		29.870831, 38.213627, 40.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665506, 38.792667, 41.410191>,  <29.911949, 38.905224, 40.660820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665506, 38.792667, 41.410191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812990, 38.430355, 41.326649>,  <29.901480, 38.212967, 41.276524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812990, 38.430355, 41.326649>,  <29.665506, 38.792667, 41.410191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812990, 38.430355, 41.326649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298710, -0.097315, 0.949369,
		-0.880242, -0.412430, 0.234684,
		0.368710, -0.905777, -0.208858,
		29.923603, 38.158623, 41.263992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498007, 38.296097, 41.974144>,  <29.665506, 38.792667, 41.410191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498007, 38.296097, 41.974144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814304, 38.132305, 41.792133>,  <30.004082, 38.034031, 41.682926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814304, 38.132305, 41.792133>,  <29.498007, 38.296097, 41.974144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814304, 38.132305, 41.792133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445463, -0.124922, 0.886542,
		-0.419868, -0.903724, 0.083628,
		0.790743, -0.409484, -0.455026,
		30.051527, 38.009460, 41.655624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752764, 37.572250, 42.264889>,  <29.498007, 38.296097, 41.974144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752764, 37.572250, 42.264889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047953, 37.784985, 42.098728>,  <30.225065, 37.912624, 41.999031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047953, 37.784985, 42.098728>,  <29.752764, 37.572250, 42.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047953, 37.784985, 42.098728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520583, -0.056960, 0.851909,
		0.429411, -0.844932, -0.318897,
		0.737970, 0.531831, -0.415398,
		30.269344, 37.944534, 41.974110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323019, 37.264172, 42.477257>,  <29.752764, 37.572250, 42.264889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323019, 37.264172, 42.477257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383526, 37.650391, 42.392567>,  <30.419830, 37.882122, 42.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383526, 37.650391, 42.392567>,  <30.323019, 37.264172, 42.477257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383526, 37.650391, 42.392567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347313, 0.148620, 0.925897,
		0.925468, -0.213595, -0.312867,
		0.151269, 0.965551, -0.211728,
		30.428907, 37.940056, 42.329048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014050, 37.442245, 42.488873>,  <30.323019, 37.264172, 42.477257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014050, 37.442245, 42.488873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771685, 37.737759, 42.606907>,  <30.626266, 37.915066, 42.677727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771685, 37.737759, 42.606907>,  <31.014050, 37.442245, 42.488873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771685, 37.737759, 42.606907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379186, -0.057879, 0.923508,
		0.699349, 0.671456, -0.245066,
		-0.605911, 0.738781, 0.295085,
		30.589911, 37.959393, 42.695431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361013, 37.750900, 43.038494>,  <31.014050, 37.442245, 42.488873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361013, 37.750900, 43.038494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996563, 37.915741, 43.040344>,  <30.777893, 38.014645, 43.041454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996563, 37.915741, 43.040344>,  <31.361013, 37.750900, 43.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996563, 37.915741, 43.040344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035754, 0.067857, 0.997054,
		0.410573, 0.908608, -0.076560,
		-0.911127, 0.412100, 0.004626,
		30.723225, 38.039371, 43.041733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883459, 37.299435, 42.906166>,  <31.361013, 37.750900, 43.038494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883459, 37.299435, 42.906166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988684, 36.951118, 43.072311>,  <32.051819, 36.742130, 43.171997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988684, 36.951118, 43.072311>,  <31.883459, 37.299435, 42.906166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988684, 36.951118, 43.072311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182561, -0.377820, -0.907702,
		0.947349, 0.314611, 0.059582,
		0.263062, -0.870788, 0.415363,
		32.067604, 36.689880, 43.196918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448757, 37.177567, 42.498398>,  <31.883459, 37.299435, 42.906166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448757, 37.177567, 42.498398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300686, 36.842545, 42.659126>,  <32.211842, 36.641529, 42.755562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300686, 36.842545, 42.659126>,  <32.448757, 37.177567, 42.498398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300686, 36.842545, 42.659126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174101, -0.487437, -0.855625,
		0.912500, -0.246777, 0.326259,
		-0.370180, -0.837560, 0.401822,
		32.189632, 36.591278, 42.779675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929897, 36.592072, 42.447449>,  <32.448757, 37.177567, 42.498398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929897, 36.592072, 42.447449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554615, 36.454044, 42.457996>,  <32.329445, 36.371227, 42.464325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554615, 36.454044, 42.457996>,  <32.929897, 36.592072, 42.447449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554615, 36.454044, 42.457996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166473, -0.516809, -0.839759,
		0.303401, -0.783478, 0.542319,
		-0.938208, -0.345065, 0.026373,
		32.273151, 36.350525, 42.465908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004391, 36.251438, 41.883846>,  <32.929897, 36.592072, 42.447449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004391, 36.251438, 41.883846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667881, 36.096748, 42.034950>,  <32.465977, 36.003933, 42.125614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667881, 36.096748, 42.034950>,  <33.004391, 36.251438, 41.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667881, 36.096748, 42.034950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117073, -0.812510, -0.571071,
		0.527785, -0.436200, 0.728816,
		-0.841272, -0.386727, 0.377763,
		32.415501, 35.980732, 42.148277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468369, 36.788464, 41.949417>,  <33.004391, 36.251438, 41.883846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468369, 36.788464, 41.949417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745518, 36.728291, 41.667343>,  <33.911808, 36.692184, 41.498096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745518, 36.728291, 41.667343>,  <33.468369, 36.788464, 41.949417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745518, 36.728291, 41.667343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713296, 0.000099, -0.700863,
		0.105503, 0.988620, -0.107236,
		0.692876, -0.150434, -0.705189,
		33.953381, 36.683159, 41.455788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445534, 37.226128, 41.304176>,  <33.468369, 36.788464, 41.949417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445534, 37.226128, 41.304176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594452, 36.859699, 41.244564>,  <33.683804, 36.639843, 41.208797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594452, 36.859699, 41.244564>,  <33.445534, 37.226128, 41.304176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594452, 36.859699, 41.244564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561135, -0.094266, -0.822339,
		0.739272, 0.389781, -0.549134,
		0.372297, -0.916070, -0.149031,
		33.706142, 36.584877, 41.199856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666553, 37.087673, 40.664841>,  <33.445534, 37.226128, 41.304176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666553, 37.087673, 40.664841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551308, 36.715176, 40.754074>,  <33.482159, 36.491676, 40.807613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551308, 36.715176, 40.754074>,  <33.666553, 37.087673, 40.664841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551308, 36.715176, 40.754074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283156, -0.139695, -0.948846,
		0.914773, -0.336548, -0.223439,
		-0.288119, -0.931247, 0.223085,
		33.464870, 36.435802, 40.820999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972225, 36.687092, 40.211376>,  <33.666553, 37.087673, 40.664841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972225, 36.687092, 40.211376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643764, 36.499786, 40.341873>,  <33.446686, 36.387402, 40.420170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643764, 36.499786, 40.341873>,  <33.972225, 36.687092, 40.211376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643764, 36.499786, 40.341873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322371, -0.091128, -0.942217,
		0.470937, -0.878876, -0.076125,
		-0.821154, -0.468266, 0.326240,
		33.397419, 36.359306, 40.439747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882767, 36.005817, 39.896591>,  <33.972225, 36.687092, 40.211376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882767, 36.005817, 39.896591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506680, 36.088978, 40.004494>,  <33.281029, 36.138874, 40.069237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506680, 36.088978, 40.004494>,  <33.882767, 36.005817, 39.896591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506680, 36.088978, 40.004494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305655, -0.165716, -0.937610,
		-0.150215, -0.964013, 0.219352,
		-0.940218, 0.207889, 0.269763,
		33.224613, 36.151348, 40.085423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555233, 35.486046, 39.620117>,  <33.882767, 36.005817, 39.896591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555233, 35.486046, 39.620117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292011, 35.781967, 39.676193>,  <33.134079, 35.959522, 39.709839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292011, 35.781967, 39.676193>,  <33.555233, 35.486046, 39.620117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292011, 35.781967, 39.676193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444812, -0.231716, -0.865130,
		-0.607542, -0.631661, 0.481556,
		-0.658053, 0.739805, 0.140193,
		33.094597, 36.003910, 39.718250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030113, 35.242939, 39.286266>,  <33.555233, 35.486046, 39.620117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030113, 35.242939, 39.286266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933971, 35.628616, 39.331081>,  <32.876286, 35.860023, 39.357971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933971, 35.628616, 39.331081>,  <33.030113, 35.242939, 39.286266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933971, 35.628616, 39.331081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574598, -0.048300, -0.817009,
		-0.782346, -0.260753, 0.565635,
		-0.240357, 0.964197, 0.112041,
		32.861866, 35.917877, 39.364693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259907, 35.259258, 39.200581>,  <33.030113, 35.242939, 39.286266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259907, 35.259258, 39.200581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357861, 35.643913, 39.151123>,  <32.416634, 35.874706, 39.121449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357861, 35.643913, 39.151123>,  <32.259907, 35.259258, 39.200581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357861, 35.643913, 39.151123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686947, 0.082089, -0.722057,
		-0.684206, 0.261757, 0.680695,
		0.244881, 0.961636, -0.123647,
		32.431324, 35.932404, 39.114029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670696, 35.609119, 39.238403>,  <32.259907, 35.259258, 39.200581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670696, 35.609119, 39.238403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904617, 35.871231, 39.047146>,  <32.044971, 36.028496, 38.932392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904617, 35.871231, 39.047146>,  <31.670696, 35.609119, 39.238403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904617, 35.871231, 39.047146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656608, 0.036280, -0.753359,
		-0.476312, 0.754517, 0.451476,
		0.584802, 0.655276, -0.478142,
		32.080059, 36.067814, 38.903702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321617, 36.183987, 39.120098>,  <31.670696, 35.609119, 39.238403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321617, 36.183987, 39.120098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618479, 36.181988, 38.852013>,  <31.796595, 36.180786, 38.691162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618479, 36.181988, 38.852013>,  <31.321617, 36.183987, 39.120098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618479, 36.181988, 38.852013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669633, 0.036702, -0.741784,
		0.028308, 0.999314, 0.023890,
		0.742152, -0.005001, -0.670213,
		31.841124, 36.180489, 38.650948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124006, 36.719696, 38.621838>,  <31.321617, 36.183987, 39.120098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124006, 36.719696, 38.621838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385519, 36.497925, 38.415855>,  <31.542427, 36.364864, 38.292267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385519, 36.497925, 38.415855>,  <31.124006, 36.719696, 38.621838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385519, 36.497925, 38.415855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539279, 0.135988, -0.831075,
		0.530797, 0.821047, -0.210084,
		0.653783, -0.554426, -0.514956,
		31.581654, 36.331596, 38.261368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249004, 37.067665, 38.016808>,  <31.124006, 36.719696, 38.621838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249004, 37.067665, 38.016808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380106, 36.699356, 37.932190>,  <31.458767, 36.478371, 37.881420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380106, 36.699356, 37.932190>,  <31.249004, 37.067665, 38.016808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380106, 36.699356, 37.932190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498739, 0.021540, -0.866484,
		0.802395, 0.389496, -0.452168,
		0.327753, -0.920776, -0.211540,
		31.478432, 36.423122, 37.868729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557590, 37.018581, 37.345867>,  <31.249004, 37.067665, 38.016808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557590, 37.018581, 37.345867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447754, 36.636955, 37.393803>,  <31.381851, 36.407982, 37.422565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447754, 36.636955, 37.393803>,  <31.557590, 37.018581, 37.345867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447754, 36.636955, 37.393803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509654, 0.038720, -0.859508,
		0.815385, -0.297092, -0.496874,
		-0.274592, -0.954063, 0.119842,
		31.365376, 36.350735, 37.429756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609774, 36.728394, 36.722111>,  <31.557590, 37.018581, 37.345867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609774, 36.728394, 36.722111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371412, 36.462124, 36.901791>,  <31.228395, 36.302361, 37.009598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371412, 36.462124, 36.901791>,  <31.609774, 36.728394, 36.722111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371412, 36.462124, 36.901791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661987, 0.090530, -0.744028,
		0.454616, -0.740730, -0.494615,
		-0.595901, -0.665676, 0.449197,
		31.192642, 36.262421, 37.036549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419674, 36.234669, 36.210316>,  <31.609774, 36.728394, 36.722111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419674, 36.234669, 36.210316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126366, 36.172974, 36.475201>,  <30.950380, 36.135956, 36.634132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126366, 36.172974, 36.475201>,  <31.419674, 36.234669, 36.210316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126366, 36.172974, 36.475201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671103, 0.007683, -0.741325,
		0.109252, -0.988004, -0.109143,
		-0.733270, -0.154238, 0.662213,
		30.906385, 36.126701, 36.673866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198055, 35.580223, 36.024849>,  <31.419674, 36.234669, 36.210316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198055, 35.580223, 36.024849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915680, 35.778320, 36.227386>,  <30.746254, 35.897179, 36.348907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915680, 35.778320, 36.227386>,  <31.198055, 35.580223, 36.024849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915680, 35.778320, 36.227386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654468, -0.182803, -0.733658,
		-0.270778, -0.849304, 0.453169,
		-0.705939, 0.495244, 0.506343,
		30.703897, 35.926895, 36.379288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663357, 35.124481, 35.922237>,  <31.198055, 35.580223, 36.024849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663357, 35.124481, 35.922237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537531, 35.487675, 36.032959>,  <30.462036, 35.705589, 36.099392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537531, 35.487675, 36.032959>,  <30.663357, 35.124481, 35.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537531, 35.487675, 36.032959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624600, 0.021596, -0.780646,
		-0.714789, -0.418456, 0.560331,
		-0.314565, 0.907981, 0.276804,
		30.443161, 35.760067, 36.116001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991104, 35.112694, 35.753830>,  <30.663357, 35.124481, 35.922237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991104, 35.112694, 35.753830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097607, 35.495663, 35.798473>,  <30.161509, 35.725445, 35.825260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097607, 35.495663, 35.798473>,  <29.991104, 35.112694, 35.753830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097607, 35.495663, 35.798473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560266, 0.247944, -0.790333,
		-0.784353, 0.147898, 0.602426,
		0.266257, 0.957418, 0.111613,
		30.177485, 35.782887, 35.831959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335312, 35.476402, 35.693233>,  <29.991104, 35.112694, 35.753830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335312, 35.476402, 35.693233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635403, 35.735756, 35.641457>,  <29.815458, 35.891369, 35.610390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635403, 35.735756, 35.641457>,  <29.335312, 35.476402, 35.693233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635403, 35.735756, 35.641457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568382, 0.532439, -0.627256,
		-0.337785, 0.544156, 0.767982,
		0.750228, 0.648385, -0.129438,
		29.860472, 35.930271, 35.602627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979156, 36.075527, 35.647423>,  <29.335312, 35.476402, 35.693233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979156, 36.075527, 35.647423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346424, 36.144299, 35.504646>,  <29.566784, 36.185562, 35.418980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346424, 36.144299, 35.504646>,  <28.979156, 36.075527, 35.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346424, 36.144299, 35.504646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374992, 0.667885, -0.642892,
		0.127862, 0.724133, 0.677704,
		0.918168, 0.171932, -0.356942,
		29.621874, 36.195877, 35.397564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989937, 36.777512, 35.648235>,  <28.979156, 36.075527, 35.647423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989937, 36.777512, 35.648235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275879, 36.660595, 35.394135>,  <29.447445, 36.590443, 35.241673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275879, 36.660595, 35.394135>,  <28.989937, 36.777512, 35.648235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275879, 36.660595, 35.394135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450441, 0.502384, -0.738047,
		0.534868, 0.813740, 0.227470,
		0.714856, -0.292296, -0.635251,
		29.490335, 36.572906, 35.203560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208008, 37.400864, 35.301163>,  <28.989937, 36.777512, 35.648235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208008, 37.400864, 35.301163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316801, 37.097794, 35.063858>,  <29.382076, 36.915951, 34.921474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316801, 37.097794, 35.063858>,  <29.208008, 37.400864, 35.301163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316801, 37.097794, 35.063858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282878, 0.526313, -0.801857,
		0.919785, 0.385912, -0.071180,
		0.271984, -0.757672, -0.593261,
		29.398396, 36.870491, 34.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495565, 37.755581, 34.616310>,  <29.208008, 37.400864, 35.301163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495565, 37.755581, 34.616310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395254, 37.375286, 34.543411>,  <29.335068, 37.147110, 34.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395254, 37.375286, 34.543411>,  <29.495565, 37.755581, 34.616310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395254, 37.375286, 34.543411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336323, 0.262102, -0.904538,
		0.907743, -0.165546, -0.385484,
		-0.250779, -0.950735, -0.182244,
		29.320021, 37.090065, 34.488739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728264, 37.635899, 33.909939>,  <29.495565, 37.755581, 34.616310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728264, 37.635899, 33.909939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445911, 37.364929, 33.992722>,  <29.276501, 37.202347, 34.042393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445911, 37.364929, 33.992722>,  <29.728264, 37.635899, 33.909939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445911, 37.364929, 33.992722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531528, 0.313450, -0.786910,
		0.468198, -0.665470, -0.581327,
		-0.705882, -0.677421, 0.206959,
		29.234146, 37.161701, 34.054810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284973, 37.132946, 33.850155>,  <29.728264, 37.635899, 33.909939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284973, 37.132946, 33.850155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517038, 37.231449, 33.539600>,  <30.656277, 37.290550, 33.353268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517038, 37.231449, 33.539600>,  <30.284973, 37.132946, 33.850155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517038, 37.231449, 33.539600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814499, -0.173733, 0.553542,
		0.001429, -0.953507, -0.301368,
		0.580164, 0.246255, -0.776382,
		30.691088, 37.305325, 33.306686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643251, 36.667320, 33.401730>,  <30.284973, 37.132946, 33.850155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643251, 36.667320, 33.401730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838238, 37.012436, 33.455349>,  <30.955229, 37.219505, 33.487518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838238, 37.012436, 33.455349>,  <30.643251, 36.667320, 33.401730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838238, 37.012436, 33.455349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665884, -0.466651, 0.582096,
		0.564780, -0.194492, -0.801995,
		0.487465, 0.862792, 0.134046,
		30.984478, 37.271275, 33.495564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377649, 36.522354, 33.464825>,  <30.643251, 36.667320, 33.401730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377649, 36.522354, 33.464825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328951, 36.875957, 33.645359>,  <31.299732, 37.088120, 33.753681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328951, 36.875957, 33.645359>,  <31.377649, 36.522354, 33.464825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328951, 36.875957, 33.645359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826017, -0.161890, 0.539896,
		0.550341, 0.438541, -0.710498,
		-0.121744, 0.884010, 0.451336,
		31.292427, 37.141159, 33.780762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974890, 36.918751, 33.370197>,  <31.377649, 36.522354, 33.464825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974890, 36.918751, 33.370197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840706, 37.071457, 33.714691>,  <31.760195, 37.163082, 33.921387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840706, 37.071457, 33.714691>,  <31.974890, 36.918751, 33.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840706, 37.071457, 33.714691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928434, -0.020913, 0.370909,
		0.159612, 0.924022, -0.347430,
		-0.335462, 0.381768, 0.861231,
		31.740067, 37.185986, 33.973061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530411, 37.125538, 33.689964>,  <31.974890, 36.918751, 33.370197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530411, 37.125538, 33.689964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278816, 37.145184, 34.000309>,  <32.127861, 37.156971, 34.186516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278816, 37.145184, 34.000309>,  <32.530411, 37.125538, 33.689964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278816, 37.145184, 34.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767792, -0.117317, 0.629867,
		0.121960, 0.991879, 0.036078,
		-0.628985, 0.049118, 0.775865,
		32.090122, 37.159920, 34.233067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941689, 37.651455, 34.156250>,  <32.530411, 37.125538, 33.689964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941689, 37.651455, 34.156250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695045, 37.419430, 34.369160>,  <32.547062, 37.280212, 34.496906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695045, 37.419430, 34.369160>,  <32.941689, 37.651455, 34.156250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695045, 37.419430, 34.369160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681600, -0.054990, 0.729656,
		-0.393979, 0.812711, 0.429280,
		-0.616605, -0.580067, 0.532279,
		32.510063, 37.245411, 34.528843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891785, 37.963104, 34.821449>,  <32.941689, 37.651455, 34.156250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891785, 37.963104, 34.821449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856903, 37.566734, 34.780548>,  <32.835976, 37.328911, 34.756008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856903, 37.566734, 34.780548>,  <32.891785, 37.963104, 34.821449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856903, 37.566734, 34.780548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649471, -0.134379, 0.748419,
		-0.755370, -0.001146, 0.655297,
		-0.087201, -0.990929, -0.102250,
		32.830742, 37.269455, 34.749874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529266, 37.637856, 35.393307>,  <32.891785, 37.963104, 34.821449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529266, 37.637856, 35.393307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822720, 37.439270, 35.207706>,  <32.998791, 37.320118, 35.096344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822720, 37.439270, 35.207706>,  <32.529266, 37.637856, 35.393307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822720, 37.439270, 35.207706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629539, 0.239470, 0.739144,
		-0.255846, -0.834371, 0.488229,
		0.733637, -0.496466, -0.464002,
		33.042812, 37.290329, 35.068504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790947, 37.193699, 35.805874>,  <32.529266, 37.637856, 35.393307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790947, 37.193699, 35.805874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090351, 37.226589, 35.542675>,  <33.269993, 37.246323, 35.384754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090351, 37.226589, 35.542675>,  <32.790947, 37.193699, 35.805874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090351, 37.226589, 35.542675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649667, 0.107921, 0.752519,
		0.132898, -0.990752, 0.027353,
		0.748512, 0.082238, -0.658002,
		33.314903, 37.251259, 35.345276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311195, 36.746708, 36.058990>,  <32.790947, 37.193699, 35.805874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311195, 36.746708, 36.058990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500748, 37.001053, 35.815311>,  <33.614479, 37.153660, 35.669106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500748, 37.001053, 35.815311>,  <33.311195, 36.746708, 36.058990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500748, 37.001053, 35.815311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734551, 0.096116, 0.671712,
		0.485669, -0.765794, -0.421526,
		0.473878, 0.635862, -0.609195,
		33.642910, 37.191811, 35.632553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031639, 36.523922, 36.074409>,  <33.311195, 36.746708, 36.058990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031639, 36.523922, 36.074409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046402, 36.906769, 35.959473>,  <34.055260, 37.136478, 35.890511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046402, 36.906769, 35.959473>,  <34.031639, 36.523922, 36.074409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046402, 36.906769, 35.959473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790989, 0.147742, 0.593724,
		0.610716, -0.249193, -0.751618,
		0.036906, 0.957118, -0.287338,
		34.057472, 37.193905, 35.873272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690228, 36.604595, 36.243423>,  <34.031639, 36.523922, 36.074409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690228, 36.604595, 36.243423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554707, 36.974167, 36.172356>,  <34.473392, 37.195911, 36.129715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554707, 36.974167, 36.172356>,  <34.690228, 36.604595, 36.243423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554707, 36.974167, 36.172356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741587, 0.378455, 0.553914,
		0.579018, 0.055908, -0.813396,
		-0.338802, 0.923930, -0.177672,
		34.453068, 37.251347, 36.119053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298489, 37.065853, 36.051804>,  <34.690228, 36.604595, 36.243423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298489, 37.065853, 36.051804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024338, 37.327106, 36.180599>,  <34.859848, 37.483856, 36.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024338, 37.327106, 36.180599>,  <35.298489, 37.065853, 36.051804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024338, 37.327106, 36.180599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688595, 0.437485, 0.578311,
		0.236847, 0.618082, -0.749585,
		-0.685376, 0.653132, 0.321992,
		34.818726, 37.523045, 36.277195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610352, 37.659069, 36.099094>,  <35.298489, 37.065853, 36.051804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610352, 37.659069, 36.099094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292179, 37.694473, 36.338913>,  <35.101276, 37.715714, 36.482803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292179, 37.694473, 36.338913>,  <35.610352, 37.659069, 36.099094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292179, 37.694473, 36.338913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585188, 0.369459, 0.721841,
		-0.157619, 0.925023, -0.345673,
		-0.795431, 0.088508, 0.599546,
		35.053551, 37.721027, 36.518776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715168, 38.348827, 36.394089>,  <35.610352, 37.659069, 36.099094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715168, 38.348827, 36.394089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475193, 38.146191, 36.641777>,  <35.331207, 38.024609, 36.790390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475193, 38.146191, 36.641777>,  <35.715168, 38.348827, 36.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475193, 38.146191, 36.641777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675937, 0.093095, 0.731055,
		-0.427994, 0.857145, 0.286574,
		-0.599942, -0.506593, 0.619220,
		35.295212, 37.994213, 36.827541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729233, 38.699657, 37.101242>,  <35.715168, 38.348827, 36.394089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729233, 38.699657, 37.101242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580708, 38.336010, 37.176739>,  <35.491592, 38.117821, 37.222038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580708, 38.336010, 37.176739>,  <35.729233, 38.699657, 37.101242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580708, 38.336010, 37.176739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656078, -0.113050, 0.746178,
		-0.657029, 0.400895, 0.638432,
		-0.371314, -0.909122, 0.188741,
		35.469315, 38.063274, 37.233360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702080, 38.730247, 37.793087>,  <35.729233, 38.699657, 37.101242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702080, 38.730247, 37.793087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665886, 38.335587, 37.738918>,  <35.644169, 38.098789, 37.706417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665886, 38.335587, 37.738918>,  <35.702080, 38.730247, 37.793087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665886, 38.335587, 37.738918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420918, -0.161124, 0.892674,
		-0.902574, 0.023774, 0.429877,
		-0.090486, -0.986648, -0.135420,
		35.638741, 38.039593, 37.698292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427132, 38.485741, 38.394283>,  <35.702080, 38.730247, 37.793087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427132, 38.485741, 38.394283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592644, 38.170017, 38.212830>,  <35.691952, 37.980583, 38.103958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592644, 38.170017, 38.212830>,  <35.427132, 38.485741, 38.394283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592644, 38.170017, 38.212830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262831, -0.373499, 0.889617,
		-0.871610, -0.487336, 0.052907,
		0.413782, -0.789305, -0.453632,
		35.716778, 37.933228, 38.076740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139610, 37.967876, 38.786327>,  <35.427132, 38.485741, 38.394283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139610, 37.967876, 38.786327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456539, 37.811825, 38.598701>,  <35.646698, 37.718193, 38.486126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456539, 37.811825, 38.598701>,  <35.139610, 37.967876, 38.786327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456539, 37.811825, 38.598701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146973, -0.624139, 0.767365,
		-0.592136, -0.676941, -0.437180,
		0.792322, -0.390131, -0.469067,
		35.694237, 37.694786, 38.457981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085373, 37.158291, 38.721649>,  <35.139610, 37.967876, 38.786327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085373, 37.158291, 38.721649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466965, 37.277782, 38.711109>,  <35.695919, 37.349476, 38.704784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466965, 37.277782, 38.711109>,  <35.085373, 37.158291, 38.721649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466965, 37.277782, 38.711109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201529, -0.573552, 0.793993,
		0.222074, -0.762759, -0.607356,
		0.953975, 0.298725, -0.026348,
		35.753159, 37.367401, 38.703205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550007, 36.599354, 38.781891>,  <35.085373, 37.158291, 38.721649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550007, 36.599354, 38.781891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803478, 36.893383, 38.878319>,  <35.955563, 37.069801, 38.936176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803478, 36.893383, 38.878319>,  <35.550007, 36.599354, 38.781891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803478, 36.893383, 38.878319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384802, -0.569845, 0.726089,
		0.671105, -0.367341, -0.643956,
		0.633677, 0.735077, 0.241072,
		35.993580, 37.113907, 38.950642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299179, 36.265228, 38.933487>,  <35.550007, 36.599354, 38.781891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299179, 36.265228, 38.933487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303543, 36.612919, 39.131203>,  <36.306160, 36.821533, 39.249832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303543, 36.612919, 39.131203>,  <36.299179, 36.265228, 38.933487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303543, 36.612919, 39.131203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290848, -0.475706, 0.830127,
		0.956707, 0.134708, -0.258003,
		0.010909, 0.869228, 0.494291,
		36.306816, 36.873688, 39.279491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854263, 36.211369, 39.339279>,  <36.299179, 36.265228, 38.933487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854263, 36.211369, 39.339279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634029, 36.486874, 39.527946>,  <36.501888, 36.652176, 39.641148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634029, 36.486874, 39.527946>,  <36.854263, 36.211369, 39.339279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634029, 36.486874, 39.527946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215360, -0.428699, 0.877404,
		0.806523, 0.584662, 0.087703,
		-0.550583, 0.688759, 0.471668,
		36.468853, 36.693501, 39.669445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273045, 36.391464, 39.966717>,  <36.854263, 36.211369, 39.339279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273045, 36.391464, 39.966717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909138, 36.534378, 40.051262>,  <36.690792, 36.620125, 40.101990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909138, 36.534378, 40.051262>,  <37.273045, 36.391464, 39.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909138, 36.534378, 40.051262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150266, -0.191185, 0.969984,
		0.386965, 0.914221, 0.120247,
		-0.909768, 0.357280, 0.211358,
		36.636208, 36.641563, 40.114670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334232, 36.811153, 40.546066>,  <37.273045, 36.391464, 39.966717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334232, 36.811153, 40.546066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942623, 36.731503, 40.563301>,  <36.707657, 36.683712, 40.573643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942623, 36.731503, 40.563301>,  <37.334232, 36.811153, 40.546066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942623, 36.731503, 40.563301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074753, -0.154347, 0.985185,
		-0.189526, 0.967742, 0.165995,
		-0.979026, -0.199126, 0.043089,
		36.648914, 36.671764, 40.576229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042980, 37.191441, 41.149002>,  <37.334232, 36.811153, 40.546066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042980, 37.191441, 41.149002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779057, 36.898567, 41.081398>,  <36.620705, 36.722843, 41.040836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779057, 36.898567, 41.081398>,  <37.042980, 37.191441, 41.149002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779057, 36.898567, 41.081398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029376, -0.199607, 0.979436,
		-0.750863, 0.651201, 0.110193,
		-0.659805, -0.732184, -0.169007,
		36.581116, 36.678913, 41.030697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716141, 37.191654, 41.742115>,  <37.042980, 37.191441, 41.149002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716141, 37.191654, 41.742115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643650, 36.828987, 41.589745>,  <36.600155, 36.611385, 41.498322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643650, 36.828987, 41.589745>,  <36.716141, 37.191654, 41.742115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643650, 36.828987, 41.589745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002555, -0.386905, 0.922116,
		-0.983439, 0.168083, 0.067800,
		-0.181224, -0.906671, -0.380927,
		36.589283, 36.556984, 41.475468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110439, 36.948799, 42.035717>,  <36.716141, 37.191654, 41.742115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110439, 36.948799, 42.035717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289661, 36.618942, 41.897610>,  <36.397194, 36.421028, 41.814743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289661, 36.618942, 41.897610>,  <36.110439, 36.948799, 42.035717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289661, 36.618942, 41.897610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098767, -0.429503, 0.897648,
		-0.888531, -0.368098, -0.273890,
		0.448059, -0.824640, -0.345271,
		36.424080, 36.371552, 41.794029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775059, 36.419853, 42.335091>,  <36.110439, 36.948799, 42.035717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775059, 36.419853, 42.335091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100754, 36.214619, 42.226456>,  <36.296173, 36.091476, 42.161274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100754, 36.214619, 42.226456>,  <35.775059, 36.419853, 42.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100754, 36.214619, 42.226456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122951, -0.609621, 0.783100,
		-0.567357, -0.604241, -0.559463,
		0.814241, -0.513084, -0.271581,
		36.345024, 36.060692, 42.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597412, 35.741661, 42.375622>,  <35.775059, 36.419853, 42.335091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597412, 35.741661, 42.375622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997223, 35.730064, 42.379814>,  <36.237110, 35.723106, 42.382328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997223, 35.730064, 42.379814>,  <35.597412, 35.741661, 42.375622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997223, 35.730064, 42.379814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028635, -0.747307, 0.663862,
		-0.011415, -0.663846, -0.747782,
		0.999525, -0.028991, 0.010478,
		36.297081, 35.721367, 42.382957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812840, 34.984142, 42.409878>,  <35.597412, 35.741661, 42.375622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812840, 34.984142, 42.409878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111477, 35.198441, 42.567646>,  <36.290661, 35.327019, 42.662308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111477, 35.198441, 42.567646>,  <35.812840, 34.984142, 42.409878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111477, 35.198441, 42.567646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152996, -0.715243, 0.681923,
		0.647449, -0.448774, -0.615964,
		0.746594, 0.535750, 0.394423,
		36.335457, 35.359165, 42.685974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232285, 34.460220, 42.646587>,  <35.812840, 34.984142, 42.409878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232285, 34.460220, 42.646587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350704, 34.798550, 42.824097>,  <36.421757, 35.001549, 42.930603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350704, 34.798550, 42.824097>,  <36.232285, 34.460220, 42.646587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350704, 34.798550, 42.824097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, -0.502325, 0.849377,
		0.941343, -0.179591, -0.285695,
		0.296052, 0.845823, 0.443775,
		36.439518, 35.052296, 42.957230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760220, 34.275738, 43.079357>,  <36.232285, 34.460220, 42.646587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760220, 34.275738, 43.079357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644592, 34.629303, 43.226402>,  <36.575218, 34.841442, 43.314629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644592, 34.629303, 43.226402>,  <36.760220, 34.275738, 43.079357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644592, 34.629303, 43.226402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054511, -0.368189, 0.928152,
		0.955756, 0.288334, 0.058247,
		-0.289064, 0.883912, 0.367616,
		36.557873, 34.894478, 43.336685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150055, 34.329235, 43.606838>,  <36.760220, 34.275738, 43.079357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150055, 34.329235, 43.606838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870770, 34.588585, 43.728237>,  <36.703197, 34.744194, 43.801075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870770, 34.588585, 43.728237>,  <37.150055, 34.329235, 43.606838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870770, 34.588585, 43.728237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235627, -0.192184, 0.952651,
		0.675999, 0.736668, -0.018588,
		-0.698216, 0.648371, 0.303496,
		36.661304, 34.783096, 43.819286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481026, 34.806538, 44.015442>,  <37.150055, 34.329235, 43.606838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481026, 34.806538, 44.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097027, 34.757092, 44.115936>,  <36.866627, 34.727425, 44.176231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097027, 34.757092, 44.115936>,  <37.481026, 34.806538, 44.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097027, 34.757092, 44.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275011, -0.247723, 0.928979,
		-0.052599, 0.960913, 0.271809,
		-0.960001, -0.123614, 0.251232,
		36.809025, 34.720009, 44.191307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475880, 35.084366, 44.624748>,  <37.481026, 34.806538, 44.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475880, 35.084366, 44.624748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116417, 34.908939, 44.621269>,  <36.900738, 34.803684, 44.619183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116417, 34.908939, 44.621269>,  <37.475880, 35.084366, 44.624748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116417, 34.908939, 44.621269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041757, -0.105275, 0.993566,
		-0.436661, 0.892511, 0.112919,
		-0.898657, -0.438567, -0.008701,
		36.846821, 34.777370, 44.618660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123875, 35.363338, 45.153629>,  <37.475880, 35.084366, 44.624748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123875, 35.363338, 45.153629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880386, 35.049564, 45.106083>,  <36.734295, 34.861301, 45.077557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880386, 35.049564, 45.106083>,  <37.123875, 35.363338, 45.153629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880386, 35.049564, 45.106083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088288, -0.215862, 0.972424,
		-0.788458, 0.581440, 0.200655,
		-0.608720, -0.784431, -0.118864,
		36.697769, 34.814236, 45.070423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468784, 35.455894, 45.483395>,  <37.123875, 35.363338, 45.153629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468784, 35.455894, 45.483395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548542, 35.064335, 45.465473>,  <36.596397, 34.829399, 45.454720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548542, 35.064335, 45.465473>,  <36.468784, 35.455894, 45.483395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548542, 35.064335, 45.465473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003628, -0.044986, 0.998981,
		-0.979913, -0.199349, -0.005418,
		0.199389, -0.978895, -0.044806,
		36.608360, 34.770668, 45.452030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142132, 35.136917, 46.126312>,  <36.468784, 35.455894, 45.483395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142132, 35.136917, 46.126312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441944, 34.908512, 45.992355>,  <36.621830, 34.771469, 45.911980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441944, 34.908512, 45.992355>,  <36.142132, 35.136917, 46.126312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441944, 34.908512, 45.992355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211702, -0.272566, 0.938558,
		-0.627205, -0.774375, -0.083413,
		0.749531, -0.571009, -0.334891,
		36.666805, 34.737209, 45.891888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921780, 34.405857, 46.404369>,  <36.142132, 35.136917, 46.126312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921780, 34.405857, 46.404369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309475, 34.438667, 46.311543>,  <36.542091, 34.458355, 46.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309475, 34.438667, 46.311543>,  <35.921780, 34.405857, 46.404369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309475, 34.438667, 46.311543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221589, -0.701227, 0.677627,
		-0.107149, -0.708203, -0.697830,
		0.969235, 0.082024, -0.232066,
		36.600246, 34.463276, 46.241924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125469, 33.730560, 46.416565>,  <35.921780, 34.405857, 46.404369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125469, 33.730560, 46.416565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443115, 33.952518, 46.515732>,  <36.633705, 34.085693, 46.575233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443115, 33.952518, 46.515732>,  <36.125469, 33.730560, 46.416565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443115, 33.952518, 46.515732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221692, -0.644286, 0.731948,
		0.565887, -0.526293, -0.634656,
		0.794119, 0.554898, 0.247918,
		36.681351, 34.118988, 46.590107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652328, 33.283306, 46.511791>,  <36.125469, 33.730560, 46.416565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652328, 33.283306, 46.511791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745476, 33.612778, 46.718605>,  <36.801365, 33.810463, 46.842693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745476, 33.612778, 46.718605>,  <36.652328, 33.283306, 46.511791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745476, 33.612778, 46.718605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111763, -0.550790, 0.827127,
		0.966064, -0.134830, -0.220320,
		0.232872, 0.823681, 0.517030,
		36.815338, 33.859882, 46.873714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432426, 33.265648, 46.627388>,  <36.652328, 33.283306, 46.511791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432426, 33.265648, 46.627388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239414, 33.476250, 46.907375>,  <37.123608, 33.602612, 47.075367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239414, 33.476250, 46.907375>,  <37.432426, 33.265648, 46.627388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239414, 33.476250, 46.907375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382669, -0.592125, 0.709191,
		0.787861, 0.610064, 0.084244,
		-0.482535, 0.526507, 0.699965,
		37.094654, 33.634201, 47.117363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860023, 33.065002, 47.131729>,  <37.432426, 33.265648, 46.627388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860023, 33.065002, 47.131729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588924, 33.258430, 47.353291>,  <37.426266, 33.374489, 47.486229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588924, 33.258430, 47.353291>,  <37.860023, 33.065002, 47.131729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588924, 33.258430, 47.353291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306500, -0.498945, 0.810624,
		0.668365, 0.719173, 0.189945,
		-0.677751, 0.483574, 0.553904,
		37.385601, 33.403503, 47.519463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108570, 33.290882, 47.804581>,  <37.860023, 33.065002, 47.131729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108570, 33.290882, 47.804581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714748, 33.260605, 47.867725>,  <37.478455, 33.242439, 47.905613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714748, 33.260605, 47.867725>,  <38.108570, 33.290882, 47.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714748, 33.260605, 47.867725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174378, -0.344030, 0.922624,
		-0.015530, 0.935903, 0.351916,
		-0.984556, -0.075695, 0.157858,
		37.419380, 33.237896, 47.915081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824986, 33.615181, 48.427132>,  <38.108570, 33.290882, 47.804581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824986, 33.615181, 48.427132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570858, 33.319534, 48.337616>,  <37.418381, 33.142147, 48.283905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570858, 33.319534, 48.337616>,  <37.824986, 33.615181, 48.427132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570858, 33.319534, 48.337616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215777, -0.448144, 0.867530,
		-0.741493, 0.502868, 0.444197,
		-0.635317, -0.739115, -0.223788,
		37.380264, 33.097801, 48.270481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675137, 33.427071, 49.052998>,  <37.824986, 33.615181, 48.427132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675137, 33.427071, 49.052998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501987, 33.131248, 48.846821>,  <37.398098, 32.953754, 48.723114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501987, 33.131248, 48.846821>,  <37.675137, 33.427071, 49.052998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501987, 33.131248, 48.846821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116202, -0.612796, 0.781651,
		-0.893936, 0.278457, 0.351199,
		-0.432870, -0.739556, -0.515443,
		37.372128, 32.909382, 48.692188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147346, 33.055691, 49.424896>,  <37.675137, 33.427071, 49.052998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147346, 33.055691, 49.424896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301739, 32.787876, 49.171047>,  <37.394375, 32.627190, 49.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301739, 32.787876, 49.171047>,  <37.147346, 33.055691, 49.424896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301739, 32.787876, 49.171047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190174, -0.615402, 0.764928,
		-0.902690, -0.415938, -0.110207,
		0.385984, -0.669534, -0.634618,
		37.417534, 32.587017, 48.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862316, 32.399006, 49.631950>,  <37.147346, 33.055691, 49.424896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862316, 32.399006, 49.631950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214642, 32.327705, 49.456497>,  <37.426037, 32.284927, 49.351223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214642, 32.327705, 49.456497>,  <36.862316, 32.399006, 49.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214642, 32.327705, 49.456497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301371, -0.503452, 0.809760,
		-0.365168, -0.845437, -0.389728,
		0.880811, -0.178246, -0.438635,
		37.478886, 32.274231, 49.324905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059628, 31.683195, 49.594551>,  <36.862316, 32.399006, 49.631950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059628, 31.683195, 49.594551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384808, 31.915398, 49.612995>,  <37.579914, 32.054718, 49.624062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384808, 31.915398, 49.612995>,  <37.059628, 31.683195, 49.594551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384808, 31.915398, 49.612995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204578, -0.358836, 0.910706,
		0.545216, -0.730925, -0.410474,
		0.812950, 0.580505, 0.046112,
		37.628693, 32.089550, 49.626827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669498, 31.089626, 49.712326>,  <37.059628, 31.683195, 49.594551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669498, 31.089626, 49.712326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583626, 31.446568, 49.871128>,  <37.532101, 31.660732, 49.966412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583626, 31.446568, 49.871128>,  <37.669498, 31.089626, 49.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583626, 31.446568, 49.871128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056261, 0.394512, -0.917167,
		-0.975062, -0.219235, -0.034490,
		-0.214681, 0.892354, 0.397008,
		37.519222, 31.714273, 49.990231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429028, 31.328255, 49.963676>,  <37.669498, 31.089626, 49.712326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429028, 31.328255, 49.963676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492599, 31.155069, 50.318592>,  <38.530743, 31.051159, 50.531540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492599, 31.155069, 50.318592>,  <38.429028, 31.328255, 49.963676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492599, 31.155069, 50.318592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887877, -0.330342, -0.320233,
		0.431758, 0.838701, 0.331913,
		0.158934, -0.432961, 0.887291,
		38.540279, 31.025181, 50.584778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972366, 31.726480, 50.330708>,  <38.429028, 31.328255, 49.963676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972366, 31.726480, 50.330708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916637, 31.330574, 50.343060>,  <38.883202, 31.093031, 50.350471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916637, 31.330574, 50.343060>,  <38.972366, 31.726480, 50.330708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916637, 31.330574, 50.343060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778537, -0.128753, -0.614250,
		0.611939, -0.061538, 0.788507,
		-0.139322, -0.989765, 0.030879,
		38.874840, 31.033644, 50.352322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561108, 31.428806, 50.427326>,  <38.972366, 31.726480, 50.330708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561108, 31.428806, 50.427326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362663, 31.143473, 50.229324>,  <39.243595, 30.972273, 50.110523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362663, 31.143473, 50.229324>,  <39.561108, 31.428806, 50.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362663, 31.143473, 50.229324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774985, -0.106734, -0.622902,
		0.391502, -0.692651, 0.605773,
		-0.496110, -0.713332, -0.495007,
		39.213829, 30.929474, 50.080822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010159, 30.876057, 50.150520>,  <39.561108, 31.428806, 50.427326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010159, 30.876057, 50.150520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709518, 30.818085, 49.893120>,  <39.529137, 30.783302, 49.738678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709518, 30.818085, 49.893120>,  <40.010159, 30.876057, 50.150520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709518, 30.818085, 49.893120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659570, -0.152871, -0.735933,
		0.008285, -0.977561, 0.210488,
		-0.751598, -0.144929, -0.643504,
		39.484039, 30.774607, 49.700069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173500, 30.279032, 49.870815>,  <40.010159, 30.876057, 50.150520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173500, 30.279032, 49.870815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957928, 30.491047, 49.608944>,  <39.828583, 30.618256, 49.451820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957928, 30.491047, 49.608944>,  <40.173500, 30.279032, 49.870815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957928, 30.491047, 49.608944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660818, -0.215940, -0.718812,
		-0.522370, -0.820018, -0.233882,
		-0.538934, 0.530039, -0.654683,
		39.796249, 30.650059, 49.412540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854637, 29.815853, 49.296864>,  <40.173500, 30.279032, 49.870815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854637, 29.815853, 49.296864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933315, 30.191832, 49.185287>,  <39.980522, 30.417419, 49.118340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933315, 30.191832, 49.185287>,  <39.854637, 29.815853, 49.296864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933315, 30.191832, 49.185287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773044, -0.323674, -0.545562,
		-0.603086, -0.108325, -0.790287,
		0.196697, 0.939947, -0.278944,
		39.992325, 30.473816, 49.101604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836914, 30.080341, 48.518044>,  <39.854637, 29.815853, 49.296864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836914, 30.080341, 48.518044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101444, 30.305517, 48.716335>,  <40.260162, 30.440622, 48.835312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101444, 30.305517, 48.716335>,  <39.836914, 30.080341, 48.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101444, 30.305517, 48.716335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715152, -0.273799, -0.643111,
		-0.226302, 0.779828, -0.583657,
		0.661321, 0.562941, 0.495734,
		40.299839, 30.474400, 48.865055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167904, 30.243553, 48.672359>,  <39.836914, 30.080341, 48.518044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167904, 30.243553, 48.672359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959724, 30.545000, 48.511761>,  <38.834816, 30.725868, 48.415401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959724, 30.545000, 48.511761>,  <39.167904, 30.243553, 48.672359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959724, 30.545000, 48.511761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273735, -0.298133, -0.914432,
		-0.808831, -0.585814, -0.051129,
		-0.520444, 0.753617, -0.401497,
		38.803593, 30.771086, 48.391312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481407, 30.049807, 48.244141>,  <39.167904, 30.243553, 48.672359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481407, 30.049807, 48.244141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622898, 30.398611, 48.108807>,  <38.707794, 30.607895, 48.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622898, 30.398611, 48.108807>,  <38.481407, 30.049807, 48.244141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622898, 30.398611, 48.108807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054314, -0.380257, -0.923285,
		-0.933769, 0.308218, -0.181871,
		0.353731, 0.872013, -0.338332,
		38.729019, 30.660215, 48.007309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351608, 29.934776, 47.517200>,  <38.481407, 30.049807, 48.244141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351608, 29.934776, 47.517200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573189, 30.267685, 47.525841>,  <38.706139, 30.467430, 47.531025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573189, 30.267685, 47.525841>,  <38.351608, 29.934776, 47.517200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573189, 30.267685, 47.525841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097229, -0.038900, -0.994501,
		-0.826853, 0.553005, -0.102469,
		0.553951, 0.832269, 0.021604,
		38.739372, 30.517366, 47.532322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993126, 30.426132, 47.085350>,  <38.351608, 29.934776, 47.517200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993126, 30.426132, 47.085350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389477, 30.478748, 47.097099>,  <38.627285, 30.510319, 47.104149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389477, 30.478748, 47.097099>,  <37.993126, 30.426132, 47.085350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389477, 30.478748, 47.097099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041090, -0.087231, -0.995340,
		-0.128366, 0.987465, -0.091840,
		0.990875, 0.131542, 0.029377,
		38.686741, 30.518211, 47.105911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109646, 31.065054, 46.647411>,  <37.993126, 30.426132, 47.085350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109646, 31.065054, 46.647411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464149, 30.881056, 46.669147>,  <38.676853, 30.770657, 46.682190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464149, 30.881056, 46.669147>,  <38.109646, 31.065054, 46.647411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464149, 30.881056, 46.669147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120269, 0.115233, -0.986031,
		0.447305, 0.880413, 0.157449,
		0.886258, -0.459993, 0.054342,
		38.730026, 30.743057, 46.685452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583656, 31.527306, 46.493710>,  <38.109646, 31.065054, 46.647411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583656, 31.527306, 46.493710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771389, 31.177670, 46.443592>,  <38.884029, 30.967888, 46.413521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771389, 31.177670, 46.443592>,  <38.583656, 31.527306, 46.493710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771389, 31.177670, 46.443592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252022, 0.268584, -0.929703,
		0.846296, 0.404759, 0.346343,
		0.469328, -0.874090, -0.125293,
		38.912186, 30.915443, 46.406006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125908, 31.604170, 46.069275>,  <38.583656, 31.527306, 46.493710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125908, 31.604170, 46.069275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076843, 31.212141, 46.006779>,  <39.047405, 30.976923, 45.969280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076843, 31.212141, 46.006779>,  <39.125908, 31.604170, 46.069275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076843, 31.212141, 46.006779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198089, 0.130085, -0.971513,
		0.972479, -0.150113, 0.178186,
		-0.122658, -0.980074, -0.156240,
		39.040047, 30.918119, 45.959908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687759, 31.396849, 45.667362>,  <39.125908, 31.604170, 46.069275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687759, 31.396849, 45.667362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438728, 31.092680, 45.593437>,  <39.289310, 30.910179, 45.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438728, 31.092680, 45.593437>,  <39.687759, 31.396849, 45.667362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438728, 31.092680, 45.593437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191505, 0.080933, -0.978149,
		0.758765, -0.644365, 0.095238,
		-0.622577, -0.760423, -0.184808,
		39.251957, 30.864553, 45.537994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998741, 31.005800, 45.171188>,  <39.687759, 31.396849, 45.667362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998741, 31.005800, 45.171188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627155, 30.859556, 45.147995>,  <39.404205, 30.771811, 45.134079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627155, 30.859556, 45.147995>,  <39.998741, 31.005800, 45.171188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627155, 30.859556, 45.147995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108733, -0.119757, -0.986831,
		0.353850, -0.923032, 0.151003,
		-0.928960, -0.365610, -0.057988,
		39.348469, 30.749874, 45.130600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016041, 30.356455, 44.817829>,  <39.998741, 31.005800, 45.171188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016041, 30.356455, 44.817829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643681, 30.492966, 44.765759>,  <39.420265, 30.574873, 44.734516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643681, 30.492966, 44.765759>,  <40.016041, 30.356455, 44.817829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643681, 30.492966, 44.765759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174034, 0.101077, -0.979539,
		-0.321136, -0.934512, -0.153486,
		-0.930905, 0.341277, -0.130177,
		39.364410, 30.595348, 44.726704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799049, 29.973236, 44.256989>,  <40.016041, 30.356455, 44.817829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799049, 29.973236, 44.256989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548668, 30.284828, 44.271801>,  <39.398438, 30.471783, 44.280689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548668, 30.284828, 44.271801>,  <39.799049, 29.973236, 44.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548668, 30.284828, 44.271801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053053, 0.089909, -0.994536,
		-0.778051, -0.620572, -0.097606,
		-0.625956, 0.778978, 0.037030,
		39.360882, 30.518522, 44.282909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208176, 29.842825, 43.878624>,  <39.799049, 29.973236, 44.256989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208176, 29.842825, 43.878624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258053, 30.239616, 43.870350>,  <39.287979, 30.477692, 43.865387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258053, 30.239616, 43.870350>,  <39.208176, 29.842825, 43.878624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258053, 30.239616, 43.870350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121229, -0.005455, -0.992610,
		-0.984762, 0.126278, 0.119576,
		0.124692, 0.991980, -0.020681,
		39.295460, 30.537210, 43.864147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701805, 30.062735, 43.405598>,  <39.208176, 29.842825, 43.878624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701805, 30.062735, 43.405598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926949, 30.391663, 43.439014>,  <39.062035, 30.589020, 43.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926949, 30.391663, 43.439014>,  <38.701805, 30.062735, 43.405598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926949, 30.391663, 43.439014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238505, 0.258359, -0.936144,
		-0.791397, 0.506988, 0.341546,
		0.562856, 0.822322, 0.083546,
		39.095806, 30.638359, 43.464077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328068, 30.548031, 43.176384>,  <38.701805, 30.062735, 43.405598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328068, 30.548031, 43.176384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687469, 30.720219, 43.141987>,  <38.903111, 30.823530, 43.121349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687469, 30.720219, 43.141987>,  <38.328068, 30.548031, 43.176384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687469, 30.720219, 43.141987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185823, 0.195503, -0.962937,
		-0.397702, 0.881179, 0.255651,
		0.898500, 0.430468, -0.085991,
		38.957020, 30.849360, 43.116188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225967, 31.289045, 43.113365>,  <38.328068, 30.548031, 43.176384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225967, 31.289045, 43.113365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555759, 31.159201, 42.927956>,  <38.753635, 31.081295, 42.816711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555759, 31.159201, 42.927956>,  <38.225967, 31.289045, 43.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555759, 31.159201, 42.927956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372160, 0.306007, -0.876275,
		0.426289, 0.894979, 0.131491,
		0.824485, -0.324611, -0.463522,
		38.803104, 31.061817, 42.788898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239433, 31.777021, 42.693302>,  <38.225967, 31.289045, 43.113365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239433, 31.777021, 42.693302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523361, 31.544384, 42.534351>,  <38.693718, 31.404802, 42.438980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523361, 31.544384, 42.534351>,  <38.239433, 31.777021, 42.693302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523361, 31.544384, 42.534351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175444, 0.400387, -0.899394,
		0.682186, 0.708123, 0.182165,
		0.709818, -0.581594, -0.397374,
		38.736305, 31.369905, 42.415138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794697, 32.219440, 42.380177>,  <38.239433, 31.777021, 42.693302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794697, 32.219440, 42.380177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791016, 31.867306, 42.190472>,  <38.788807, 31.656025, 42.076649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791016, 31.867306, 42.190472>,  <38.794697, 32.219440, 42.380177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791016, 31.867306, 42.190472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062002, 0.473874, -0.878407,
		0.998034, 0.021319, -0.058945,
		-0.009205, -0.880335, -0.474264,
		38.788254, 31.603205, 42.048191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168743, 32.281532, 41.767376>,  <38.794697, 32.219440, 42.380177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168743, 32.281532, 41.767376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011272, 31.922167, 41.689545>,  <38.916790, 31.706547, 41.642845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011272, 31.922167, 41.689545>,  <39.168743, 32.281532, 41.767376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011272, 31.922167, 41.689545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192979, 0.287731, -0.938067,
		0.898764, -0.331746, -0.286649,
		-0.393678, -0.898418, -0.194583,
		38.893169, 31.652641, 41.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464657, 32.062096, 41.112755>,  <39.168743, 32.281532, 41.767376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464657, 32.062096, 41.112755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116966, 31.878447, 41.186127>,  <38.908352, 31.768257, 41.230148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116966, 31.878447, 41.186127>,  <39.464657, 32.062096, 41.112755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116966, 31.878447, 41.186127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344610, 0.296589, -0.890662,
		0.354523, -0.837400, -0.416023,
		-0.869228, -0.459126, 0.183429,
		38.856197, 31.740709, 41.241158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413509, 31.646595, 40.446167>,  <39.464657, 32.062096, 41.112755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413509, 31.646595, 40.446167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043297, 31.625896, 40.596218>,  <38.821171, 31.613478, 40.686249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043297, 31.625896, 40.596218>,  <39.413509, 31.646595, 40.446167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043297, 31.625896, 40.596218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375048, -0.011647, -0.926932,
		0.052336, -0.998592, -0.008628,
		-0.925527, -0.051748, 0.375129,
		38.765640, 31.610373, 40.708755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084530, 31.134144, 40.161648>,  <39.413509, 31.646595, 40.446167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084530, 31.134144, 40.161648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796196, 31.381964, 40.285942>,  <38.623196, 31.530655, 40.360519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796196, 31.381964, 40.285942>,  <39.084530, 31.134144, 40.161648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796196, 31.381964, 40.285942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473978, -0.113519, -0.873189,
		-0.505710, -0.776705, 0.375481,
		-0.720834, 0.619550, 0.310734,
		38.579945, 31.567829, 40.379162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385944, 30.909019, 39.787315>,  <39.084530, 31.134144, 40.161648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385944, 30.909019, 39.787315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309753, 31.271929, 39.937286>,  <38.264038, 31.489676, 40.027267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309753, 31.271929, 39.937286>,  <38.385944, 30.909019, 39.787315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309753, 31.271929, 39.937286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524315, 0.228867, -0.820191,
		-0.829948, -0.352805, 0.432105,
		-0.190473, 0.907275, 0.374928,
		38.252613, 31.544111, 40.049767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602654, 30.976414, 39.746246>,  <38.385944, 30.909019, 39.787315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602654, 30.976414, 39.746246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800079, 31.324297, 39.745693>,  <37.918533, 31.533028, 39.745361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800079, 31.324297, 39.745693>,  <37.602654, 30.976414, 39.746246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800079, 31.324297, 39.745693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515245, 0.291120, -0.806084,
		-0.700655, 0.398567, 0.591799,
		0.493563, 0.869709, -0.001385,
		37.948147, 31.585209, 39.745277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046452, 31.413750, 39.670517>,  <37.602654, 30.976414, 39.746246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046452, 31.413750, 39.670517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359558, 31.638693, 39.563908>,  <37.547421, 31.773659, 39.499943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359558, 31.638693, 39.563908>,  <37.046452, 31.413750, 39.670517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359558, 31.638693, 39.563908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476132, 0.265421, -0.838362,
		-0.400718, 0.783140, 0.475518,
		0.782767, 0.562356, -0.266519,
		37.594387, 31.807400, 39.483952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768372, 32.047657, 39.420616>,  <37.046452, 31.413750, 39.670517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768372, 32.047657, 39.420616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139027, 32.091408, 39.276737>,  <37.361420, 32.117657, 39.190411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139027, 32.091408, 39.276737>,  <36.768372, 32.047657, 39.420616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139027, 32.091408, 39.276737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370814, 0.423581, -0.826484,
		0.061964, 0.899231, 0.433063,
		0.926638, 0.109373, -0.359694,
		37.417019, 32.124218, 39.168827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783218, 32.736362, 39.270084>,  <36.768372, 32.047657, 39.420616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783218, 32.736362, 39.270084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086014, 32.598087, 39.048286>,  <37.267693, 32.515121, 38.915207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086014, 32.598087, 39.048286>,  <36.783218, 32.736362, 39.270084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086014, 32.598087, 39.048286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352652, 0.498257, -0.792071,
		0.550091, 0.795134, 0.255268,
		0.756992, -0.345690, -0.554492,
		37.313110, 32.494381, 38.881939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067421, 33.262714, 38.887516>,  <36.783218, 32.736362, 39.270084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067421, 33.262714, 38.887516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180149, 32.944366, 38.673161>,  <37.247787, 32.753357, 38.544548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180149, 32.944366, 38.673161>,  <37.067421, 33.262714, 38.887516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180149, 32.944366, 38.673161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199179, 0.497830, -0.844093,
		0.938565, 0.344621, -0.018220,
		0.281821, -0.795865, -0.535887,
		37.264694, 32.705608, 38.512394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484417, 33.527210, 38.388775>,  <37.067421, 33.262714, 38.887516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484417, 33.527210, 38.388775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346684, 33.178368, 38.249714>,  <37.264046, 32.969063, 38.166279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346684, 33.178368, 38.249714>,  <37.484417, 33.527210, 38.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346684, 33.178368, 38.249714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175036, 0.423437, -0.888855,
		0.922387, -0.245209, -0.298453,
		-0.344332, -0.872109, -0.347652,
		37.243385, 32.916737, 38.145420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787277, 33.373512, 37.711624>,  <37.484417, 33.527210, 38.388775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787277, 33.373512, 37.711624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465996, 33.135254, 37.715069>,  <37.273228, 32.992298, 37.717136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465996, 33.135254, 37.715069>,  <37.787277, 33.373512, 37.711624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465996, 33.135254, 37.715069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327657, 0.429674, -0.841440,
		0.497501, -0.678666, -0.540282,
		-0.803202, -0.595645, 0.008607,
		37.225033, 32.956562, 37.717651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794453, 32.986797, 37.064354>,  <37.787277, 33.373512, 37.711624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794453, 32.986797, 37.064354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421848, 33.006222, 37.208542>,  <37.198288, 33.017876, 37.295055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421848, 33.006222, 37.208542>,  <37.794453, 32.986797, 37.064354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421848, 33.006222, 37.208542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315481, 0.385335, -0.867173,
		-0.181013, -0.921498, -0.343621,
		-0.931508, 0.048564, 0.360466,
		37.142395, 33.020790, 37.316681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425182, 32.984764, 36.481434>,  <37.794453, 32.986797, 37.064354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425182, 32.984764, 36.481434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148602, 33.089104, 36.750908>,  <36.982655, 33.151707, 36.912594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148602, 33.089104, 36.750908>,  <37.425182, 32.984764, 36.481434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148602, 33.089104, 36.750908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557991, 0.399468, -0.727373,
		-0.458851, -0.878854, -0.130661,
		-0.691449, 0.260848, 0.673689,
		36.941166, 33.167358, 36.953014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797619, 32.774639, 36.277412>,  <37.425182, 32.984764, 36.481434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797619, 32.774639, 36.277412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659271, 33.053391, 36.528725>,  <36.576263, 33.220642, 36.679512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659271, 33.053391, 36.528725>,  <36.797619, 32.774639, 36.277412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659271, 33.053391, 36.528725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656238, 0.298924, -0.692817,
		-0.670618, -0.651924, 0.353931,
		-0.345866, 0.696878, 0.628281,
		36.555511, 33.262455, 36.717209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001446, 32.844822, 36.183727>,  <36.797619, 32.774639, 36.277412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001446, 32.844822, 36.183727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122250, 33.180359, 36.364895>,  <36.194733, 33.381680, 36.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122250, 33.180359, 36.364895>,  <36.001446, 32.844822, 36.183727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122250, 33.180359, 36.364895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680238, 0.522479, -0.514094,
		-0.667884, -0.152832, 0.728405,
		0.302006, 0.838844, 0.452917,
		36.212852, 33.432011, 36.500771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380680, 33.227566, 36.099270>,  <36.001446, 32.844822, 36.183727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380680, 33.227566, 36.099270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674229, 33.490742, 36.166859>,  <35.850357, 33.648647, 36.207413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674229, 33.490742, 36.166859>,  <35.380680, 33.227566, 36.099270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674229, 33.490742, 36.166859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505841, 0.695335, -0.510523,
		-0.453382, 0.289188, 0.843099,
		0.733873, 0.657936, 0.168970,
		35.894390, 33.688122, 36.217548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079586, 33.781204, 36.366234>,  <35.380680, 33.227566, 36.099270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079586, 33.781204, 36.366234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425758, 33.931080, 36.233185>,  <35.633461, 34.021004, 36.153355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425758, 33.931080, 36.233185>,  <35.079586, 33.781204, 36.366234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425758, 33.931080, 36.233185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499017, 0.704042, -0.505279,
		0.044862, 0.603270, 0.796274,
		0.865430, 0.374686, -0.332627,
		35.685387, 34.043488, 36.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883549, 34.436138, 36.338009>,  <35.079586, 33.781204, 36.366234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883549, 34.436138, 36.338009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222004, 34.441952, 36.124905>,  <35.425079, 34.445442, 35.997044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222004, 34.441952, 36.124905>,  <34.883549, 34.436138, 36.338009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222004, 34.441952, 36.124905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440814, 0.580927, -0.684257,
		0.299548, 0.813826, 0.497954,
		0.846141, 0.014537, -0.532762,
		35.475845, 34.446312, 35.965076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100723, 35.071476, 36.290356>,  <34.883549, 34.436138, 36.338009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100723, 35.071476, 36.290356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258003, 34.905762, 35.962025>,  <35.352371, 34.806332, 35.765026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258003, 34.905762, 35.962025>,  <35.100723, 35.071476, 36.290356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258003, 34.905762, 35.962025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293318, 0.789570, -0.539021,
		0.871412, 0.452707, 0.188940,
		0.393200, -0.414290, -0.820828,
		35.375961, 34.781475, 35.715775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514393, 35.536404, 36.002373>,  <35.100723, 35.071476, 36.290356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514393, 35.536404, 36.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419254, 35.293392, 35.699230>,  <35.362171, 35.147587, 35.517345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419254, 35.293392, 35.699230>,  <35.514393, 35.536404, 36.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419254, 35.293392, 35.699230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074002, 0.789310, -0.609520,
		0.968479, -0.088892, -0.232695,
		-0.237849, -0.607527, -0.757852,
		35.347900, 35.111134, 35.471874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684677, 35.974213, 35.528206>,  <35.514393, 35.536404, 36.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684677, 35.974213, 35.528206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522186, 35.679966, 35.311378>,  <35.424694, 35.503418, 35.181282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522186, 35.679966, 35.311378>,  <35.684677, 35.974213, 35.528206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522186, 35.679966, 35.311378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207909, 0.652073, -0.729092,
		0.889806, -0.183473, -0.417831,
		-0.406225, -0.735621, -0.542072,
		35.400318, 35.459278, 35.148758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331322, 36.370499, 35.743317>,  <35.684677, 35.974213, 35.528206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331322, 36.370499, 35.743317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554615, 36.543762, 35.460258>,  <36.688591, 36.647720, 35.290424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554615, 36.543762, 35.460258>,  <36.331322, 36.370499, 35.743317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554615, 36.543762, 35.460258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659530, -0.749140, 0.061721,
		-0.503387, -0.501165, -0.703871,
		0.558231, 0.433154, -0.707641,
		36.722084, 36.673710, 35.247967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526646, 35.931980, 35.197014>,  <36.331322, 36.370499, 35.743317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526646, 35.931980, 35.197014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803093, 36.215767, 35.252163>,  <36.968960, 36.386040, 35.285252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803093, 36.215767, 35.252163>,  <36.526646, 35.931980, 35.197014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803093, 36.215767, 35.252163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685772, -0.703953, 0.184843,
		0.228199, -0.033197, -0.973048,
		0.691117, 0.709470, 0.137876,
		37.010429, 36.428608, 35.293526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022106, 35.679291, 34.863918>,  <36.526646, 35.931980, 35.197014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022106, 35.679291, 34.863918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205799, 35.911850, 35.132568>,  <37.316013, 36.051384, 35.293758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205799, 35.911850, 35.132568>,  <37.022106, 35.679291, 34.863918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205799, 35.911850, 35.132568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664926, -0.726335, 0.174101,
		0.589049, 0.366631, -0.720141,
		0.459232, 0.581394, 0.671630,
		37.343567, 36.086269, 35.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525635, 35.297169, 34.947983>,  <37.022106, 35.679291, 34.863918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525635, 35.297169, 34.947983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590191, 35.572060, 35.231297>,  <37.628925, 35.736996, 35.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590191, 35.572060, 35.231297>,  <37.525635, 35.297169, 34.947983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590191, 35.572060, 35.231297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713746, -0.576928, 0.397141,
		0.681556, 0.441439, -0.583620,
		0.161393, 0.687230, 0.708284,
		37.638607, 35.778229, 35.443783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291599, 35.531185, 34.949356>,  <37.525635, 35.297169, 34.947983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291599, 35.531185, 34.949356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140110, 35.599068, 35.313282>,  <38.049217, 35.639797, 35.531639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140110, 35.599068, 35.313282>,  <38.291599, 35.531185, 34.949356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140110, 35.599068, 35.313282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804680, -0.425275, 0.414285,
		0.457230, 0.889011, 0.024502,
		-0.378724, 0.169707, 0.909817,
		38.026493, 35.649979, 35.586227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854347, 35.748535, 35.415009>,  <38.291599, 35.531185, 34.949356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854347, 35.748535, 35.415009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574863, 35.606586, 35.663486>,  <38.407173, 35.521420, 35.812572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574863, 35.606586, 35.663486>,  <38.854347, 35.748535, 35.415009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574863, 35.606586, 35.663486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714031, -0.399795, 0.574738,
		0.044392, 0.845122, 0.532726,
		-0.698705, -0.354869, 0.621191,
		38.365253, 35.500126, 35.849842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200432, 35.708080, 36.104725>,  <38.854347, 35.748535, 35.415009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200432, 35.708080, 36.104725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868786, 35.490669, 36.157089>,  <38.669796, 35.360222, 36.188507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868786, 35.490669, 36.157089>,  <39.200432, 35.708080, 36.104725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868786, 35.490669, 36.157089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502787, -0.622527, 0.599721,
		-0.244474, 0.563058, 0.789429,
		-0.829118, -0.543531, 0.130907,
		38.620049, 35.327610, 36.196362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974205, 35.645340, 36.811417>,  <39.200432, 35.708080, 36.104725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974205, 35.645340, 36.811417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849957, 35.326698, 36.603977>,  <38.775406, 35.135513, 36.479515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849957, 35.326698, 36.603977>,  <38.974205, 35.645340, 36.811417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849957, 35.326698, 36.603977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401898, -0.604482, 0.687808,
		-0.861391, 0.005225, 0.507916,
		-0.310620, -0.796602, -0.518595,
		38.756771, 35.087719, 36.448399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791931, 35.236835, 37.331409>,  <38.974205, 35.645340, 36.811417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791931, 35.236835, 37.331409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788727, 34.998398, 37.010258>,  <38.786804, 34.855335, 36.817566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788727, 34.998398, 37.010258>,  <38.791931, 35.236835, 37.331409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788727, 34.998398, 37.010258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546099, -0.675205, 0.495857,
		-0.837683, -0.434478, 0.330933,
		-0.008009, -0.596093, -0.802876,
		38.786324, 34.819569, 36.769394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380257, 34.571075, 37.504803>,  <38.791931, 35.236835, 37.331409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380257, 34.571075, 37.504803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638458, 34.508053, 37.205872>,  <38.793381, 34.470242, 37.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638458, 34.508053, 37.205872>,  <38.380257, 34.571075, 37.504803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638458, 34.508053, 37.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475866, -0.682381, 0.554894,
		-0.597388, -0.713815, -0.365507,
		0.645507, -0.157555, -0.747327,
		38.832111, 34.460785, 36.981674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737236, 33.995399, 37.744164>,  <38.380257, 34.571075, 37.504803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737236, 33.995399, 37.744164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946808, 34.069141, 37.411537>,  <39.072552, 34.113388, 37.211960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946808, 34.069141, 37.411537>,  <38.737236, 33.995399, 37.744164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946808, 34.069141, 37.411537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748021, -0.566533, 0.345696,
		-0.407381, -0.803153, -0.434725,
		0.523933, 0.184354, -0.831569,
		39.103989, 34.124447, 37.162067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979321, 33.342941, 37.565815>,  <38.737236, 33.995399, 37.744164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979321, 33.342941, 37.565815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205166, 33.633522, 37.409111>,  <39.340672, 33.807869, 37.315086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205166, 33.633522, 37.409111>,  <38.979321, 33.342941, 37.565815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205166, 33.633522, 37.409111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793794, -0.347950, 0.498820,
		0.226055, -0.592619, -0.773112,
		0.564614, 0.726452, -0.391762,
		39.374550, 33.851460, 37.291584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587433, 32.998726, 37.184910>,  <38.979321, 33.342941, 37.565815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587433, 32.998726, 37.184910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686695, 33.373775, 37.282307>,  <39.746250, 33.598804, 37.340744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686695, 33.373775, 37.282307>,  <39.587433, 32.998726, 37.184910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686695, 33.373775, 37.282307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761930, -0.344139, 0.548662,
		0.598233, 0.049376, -0.799800,
		0.248152, 0.937619, 0.243497,
		39.761139, 33.655060, 37.355354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294987, 32.978607, 37.304977>,  <39.587433, 32.998726, 37.184910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294987, 32.978607, 37.304977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223423, 33.334263, 37.473461>,  <40.180485, 33.547657, 37.574551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223423, 33.334263, 37.473461>,  <40.294987, 32.978607, 37.304977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223423, 33.334263, 37.473461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682155, -0.196397, 0.704338,
		0.708981, 0.413343, -0.571396,
		-0.178912, 0.889143, 0.421206,
		40.169750, 33.601006, 37.599823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943081, 33.176712, 37.496632>,  <40.294987, 32.978607, 37.304977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943081, 33.176712, 37.496632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721001, 33.413902, 37.729916>,  <40.587753, 33.556217, 37.869884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721001, 33.413902, 37.729916>,  <40.943081, 33.176712, 37.496632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721001, 33.413902, 37.729916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617707, -0.175577, 0.766558,
		0.556945, 0.785848, -0.268802,
		-0.555203, 0.592971, 0.583211,
		40.554440, 33.591793, 37.904881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404858, 33.684296, 37.868950>,  <40.943081, 33.176712, 37.496632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404858, 33.684296, 37.868950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069637, 33.661507, 38.085995>,  <40.868504, 33.647831, 38.216221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069637, 33.661507, 38.085995>,  <41.404858, 33.684296, 37.868950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069637, 33.661507, 38.085995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538783, -0.243055, 0.806621,
		0.085926, 0.968338, 0.234390,
		-0.838051, -0.056976, 0.542608,
		40.818222, 33.644413, 38.248775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566616, 33.973850, 38.526798>,  <41.404858, 33.684296, 37.868950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566616, 33.973850, 38.526798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226376, 33.781448, 38.611759>,  <41.022232, 33.666008, 38.662735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226376, 33.781448, 38.611759>,  <41.566616, 33.973850, 38.526798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226376, 33.781448, 38.611759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369433, -0.259259, 0.892359,
		-0.374159, 0.837510, 0.398225,
		-0.850602, -0.481001, 0.212399,
		40.971195, 33.637146, 38.675480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467316, 34.072166, 39.295410>,  <41.566616, 33.973850, 38.526798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467316, 34.072166, 39.295410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240845, 33.749584, 39.227207>,  <41.104961, 33.556034, 39.186283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240845, 33.749584, 39.227207>,  <41.467316, 34.072166, 39.295410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240845, 33.749584, 39.227207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184797, -0.325782, 0.927209,
		-0.803300, 0.493456, 0.333481,
		-0.566179, -0.806453, -0.170511,
		41.070992, 33.507648, 39.176052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014183, 33.993969, 39.799316>,  <41.467316, 34.072166, 39.295410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014183, 33.993969, 39.799316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046623, 33.622330, 39.654984>,  <41.066090, 33.399345, 39.568382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046623, 33.622330, 39.654984>,  <41.014183, 33.993969, 39.799316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046623, 33.622330, 39.654984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084151, -0.367115, 0.926362,
		-0.993147, -0.044768, -0.107959,
		0.081105, -0.929098, -0.360832,
		41.070953, 33.343601, 39.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416283, 33.635109, 40.195492>,  <41.014183, 33.993969, 39.799316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416283, 33.635109, 40.195492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689426, 33.374809, 40.062687>,  <40.853313, 33.218628, 39.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689426, 33.374809, 40.062687>,  <40.416283, 33.635109, 40.195492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689426, 33.374809, 40.062687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122744, -0.345812, 0.930241,
		-0.720169, -0.675972, -0.156264,
		0.682855, -0.650750, -0.332015,
		40.894283, 33.179585, 39.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192127, 33.100307, 40.573257>,  <40.416283, 33.635109, 40.195492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192127, 33.100307, 40.573257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564728, 33.022724, 40.450176>,  <40.788288, 32.976173, 40.376328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564728, 33.022724, 40.450176>,  <40.192127, 33.100307, 40.573257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564728, 33.022724, 40.450176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180379, -0.488283, 0.853840,
		-0.315853, -0.850859, -0.419852,
		0.931505, -0.193956, -0.307703,
		40.844177, 32.964539, 40.357864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274357, 32.363098, 40.552231>,  <40.192127, 33.100307, 40.573257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274357, 32.363098, 40.552231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632874, 32.537281, 40.585770>,  <40.847984, 32.641792, 40.605892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632874, 32.537281, 40.585770>,  <40.274357, 32.363098, 40.552231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632874, 32.537281, 40.585770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135869, -0.449649, 0.882811,
		0.422132, -0.779866, -0.462184,
		0.896295, 0.435459, 0.083851,
		40.901764, 32.667919, 40.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826256, 31.825359, 40.659698>,  <40.274357, 32.363098, 40.552231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826256, 31.825359, 40.659698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973438, 32.174828, 40.787014>,  <41.061749, 32.384510, 40.863403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973438, 32.174828, 40.787014>,  <40.826256, 31.825359, 40.659698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973438, 32.174828, 40.787014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254566, -0.423876, 0.869210,
		0.894319, -0.238804, -0.378374,
		0.367954, 0.873672, 0.318288,
		41.083824, 32.436928, 40.882500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384750, 31.601250, 40.870434>,  <40.826256, 31.825359, 40.659698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384750, 31.601250, 40.870434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286819, 31.945238, 41.049549>,  <41.228062, 32.151630, 41.157017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286819, 31.945238, 41.049549>,  <41.384750, 31.601250, 40.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286819, 31.945238, 41.049549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295189, -0.373802, 0.879281,
		0.923538, 0.347455, -0.162336,
		-0.244829, 0.859969, 0.447785,
		41.213371, 32.203228, 41.183884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093571, 31.905952, 41.199722>,  <41.384750, 31.601250, 40.870434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093571, 31.905952, 41.199722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795837, 32.057404, 41.419762>,  <41.617195, 32.148273, 41.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795837, 32.057404, 41.419762>,  <42.093571, 31.905952, 41.199722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795837, 32.057404, 41.419762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403034, -0.402110, 0.822114,
		0.532474, 0.833636, 0.146705,
		-0.744336, 0.378627, 0.550096,
		41.572536, 32.170990, 41.584789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367207, 32.017506, 41.891502>,  <42.093571, 31.905952, 41.199722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367207, 32.017506, 41.891502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976196, 32.016235, 41.975815>,  <41.741589, 32.015472, 42.026402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976196, 32.016235, 41.975815>,  <42.367207, 32.017506, 41.891502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976196, 32.016235, 41.975815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197175, -0.367465, 0.908896,
		0.074573, 0.930032, 0.359833,
		-0.977528, -0.003171, 0.210782,
		41.682938, 32.015285, 42.039051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298027, 32.028557, 42.698910>,  <42.367207, 32.017506, 41.891502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298027, 32.028557, 42.698910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903194, 31.983006, 42.653824>,  <41.666294, 31.955673, 42.626770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903194, 31.983006, 42.653824>,  <42.298027, 32.028557, 42.698910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903194, 31.983006, 42.653824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097342, -0.132591, 0.986379,
		-0.127276, 0.984607, 0.119793,
		-0.987079, -0.113882, -0.112719,
		41.607071, 31.948841, 42.620007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869320, 32.595898, 43.008987>,  <42.298027, 32.028557, 42.698910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869320, 32.595898, 43.008987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662834, 32.254238, 42.983833>,  <41.538944, 32.049244, 42.968742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662834, 32.254238, 42.983833>,  <41.869320, 32.595898, 43.008987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662834, 32.254238, 42.983833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067657, -0.032524, 0.997178,
		-0.853785, 0.519009, -0.041000,
		-0.516211, -0.854150, -0.062883,
		41.507973, 31.997993, 42.964970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410965, 32.738091, 43.577724>,  <41.869320, 32.595898, 43.008987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410965, 32.738091, 43.577724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384888, 32.352863, 43.473225>,  <41.369244, 32.121727, 43.410526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384888, 32.352863, 43.473225>,  <41.410965, 32.738091, 43.577724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384888, 32.352863, 43.473225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136711, -0.250719, 0.958358,
		-0.988464, 0.098191, -0.115318,
		-0.065190, -0.963067, -0.261250,
		41.365330, 32.063942, 43.394848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867702, 32.430775, 44.043999>,  <41.410965, 32.738091, 43.577724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867702, 32.430775, 44.043999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076038, 32.118786, 43.905220>,  <41.201038, 31.931593, 43.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076038, 32.118786, 43.905220>,  <40.867702, 32.430775, 44.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076038, 32.118786, 43.905220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092005, -0.455348, 0.885547,
		-0.848683, -0.429306, -0.308924,
		0.520838, -0.779971, -0.346948,
		41.232288, 31.884794, 43.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540203, 31.865128, 44.329876>,  <40.867702, 32.430775, 44.043999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540203, 31.865128, 44.329876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910534, 31.743248, 44.240437>,  <41.132732, 31.670120, 44.186771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910534, 31.743248, 44.240437>,  <40.540203, 31.865128, 44.329876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910534, 31.743248, 44.240437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047924, -0.492211, 0.869156,
		-0.374888, -0.815407, -0.441101,
		0.925831, -0.304697, -0.223602,
		41.188282, 31.651838, 44.173355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494583, 31.179455, 44.547794>,  <40.540203, 31.865128, 44.329876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494583, 31.179455, 44.547794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873775, 31.305449, 44.529427>,  <41.101292, 31.381044, 44.518406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873775, 31.305449, 44.529427>,  <40.494583, 31.179455, 44.547794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873775, 31.305449, 44.529427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216627, -0.532704, 0.818107,
		0.233231, -0.785501, -0.573229,
		0.947986, 0.314985, -0.045918,
		41.158173, 31.399944, 44.515652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828300, 30.622648, 44.784496>,  <40.494583, 31.179455, 44.547794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828300, 30.622648, 44.784496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100693, 30.914650, 44.807655>,  <41.264130, 31.089851, 44.821552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100693, 30.914650, 44.807655>,  <40.828300, 30.622648, 44.784496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100693, 30.914650, 44.807655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268509, -0.322469, 0.907699,
		0.681295, -0.602582, -0.415609,
		0.680984, 0.730005, 0.057898,
		41.304989, 31.133652, 44.825024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468323, 30.294804, 44.920498>,  <40.828300, 30.622648, 44.784496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468323, 30.294804, 44.920498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534916, 30.676750, 45.018898>,  <41.574871, 30.905918, 45.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534916, 30.676750, 45.018898>,  <41.468323, 30.294804, 44.920498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534916, 30.676750, 45.018898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402230, -0.293547, 0.867203,
		0.900274, -0.045428, -0.432947,
		0.166486, 0.954865, 0.246000,
		41.584862, 30.963209, 45.092697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070103, 30.166290, 45.456726>,  <41.468323, 30.294804, 44.920498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070103, 30.166290, 45.456726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884182, 30.517380, 45.503311>,  <41.772629, 30.728033, 45.531261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884182, 30.517380, 45.503311>,  <42.070103, 30.166290, 45.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884182, 30.517380, 45.503311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319265, 0.043458, 0.946668,
		0.825851, 0.477195, -0.300425,
		-0.464801, 0.877722, 0.116462,
		41.744743, 30.780697, 45.538250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568150, 30.674896, 45.815006>,  <42.070103, 30.166290, 45.456726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568150, 30.674896, 45.815006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206200, 30.824030, 45.897182>,  <41.989029, 30.913509, 45.946487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206200, 30.824030, 45.897182>,  <42.568150, 30.674896, 45.815006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206200, 30.824030, 45.897182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261278, 0.105433, 0.959488,
		0.336068, 0.921889, -0.192816,
		-0.904871, 0.372832, 0.205437,
		41.934738, 30.935879, 45.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710201, 31.211769, 46.222984>,  <42.568150, 30.674896, 45.815006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710201, 31.211769, 46.222984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329868, 31.120419, 46.306656>,  <42.101669, 31.065607, 46.356861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329868, 31.120419, 46.306656>,  <42.710201, 31.211769, 46.222984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329868, 31.120419, 46.306656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180416, 0.140522, 0.973501,
		-0.251720, 0.963378, -0.092410,
		-0.950835, -0.228378, 0.209181,
		42.044617, 31.051905, 46.369411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416603, 31.687832, 46.743496>,  <42.710201, 31.211769, 46.222984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416603, 31.687832, 46.743496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195766, 31.355371, 46.769966>,  <42.063263, 31.155895, 46.785847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195766, 31.355371, 46.769966>,  <42.416603, 31.687832, 46.743496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195766, 31.355371, 46.769966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180036, -0.041340, 0.982791,
		-0.814111, 0.554509, 0.172460,
		-0.552096, -0.831150, 0.066176,
		42.030136, 31.106026, 46.789818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865993, 31.695152, 47.352093>,  <42.416603, 31.687832, 46.743496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865993, 31.695152, 47.352093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771282, 31.856562, 47.705612>,  <42.714455, 31.953407, 47.917725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771282, 31.856562, 47.705612>,  <42.865993, 31.695152, 47.352093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771282, 31.856562, 47.705612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203074, 0.869022, -0.451177,
		-0.950104, -0.286305, -0.123819,
		-0.236776, 0.403521, 0.883803,
		42.700249, 31.977617, 47.970753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628586, 32.402344, 47.201534>,  <42.865993, 31.695152, 47.352093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628586, 32.402344, 47.201534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775208, 32.753731, 47.324127>,  <42.863182, 32.964561, 47.397682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775208, 32.753731, 47.324127>,  <42.628586, 32.402344, 47.201534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775208, 32.753731, 47.324127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130719, 0.374768, -0.917857,
		-0.921167, 0.296385, 0.252207,
		0.366558, 0.878468, 0.306481,
		42.885174, 33.017273, 47.416073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183746, 32.960037, 47.029270>,  <42.628586, 32.402344, 47.201534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183746, 32.960037, 47.029270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553165, 33.111881, 47.051022>,  <42.774818, 33.202988, 47.064072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553165, 33.111881, 47.051022>,  <42.183746, 32.960037, 47.029270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553165, 33.111881, 47.051022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153875, 0.496722, -0.854160,
		-0.351256, 0.780491, 0.517159,
		0.923548, 0.379607, 0.054378,
		42.830231, 33.225765, 47.067333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080956, 33.645390, 46.771091>,  <42.183746, 32.960037, 47.029270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080956, 33.645390, 46.771091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477077, 33.590084, 46.776512>,  <42.714748, 33.556900, 46.779766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477077, 33.590084, 46.776512>,  <42.080956, 33.645390, 46.771091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477077, 33.590084, 46.776512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057500, 0.319089, -0.945979,
		0.126471, 0.937585, 0.323944,
		0.990302, -0.138266, 0.013555,
		42.774170, 33.548603, 46.780579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231277, 34.224747, 46.490788>,  <42.080956, 33.645390, 46.771091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231277, 34.224747, 46.490788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563484, 34.004169, 46.459419>,  <42.762810, 33.871822, 46.440598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563484, 34.004169, 46.459419>,  <42.231277, 34.224747, 46.490788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563484, 34.004169, 46.459419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122453, 0.318117, -0.940110,
		0.543361, 0.771178, 0.331728,
		0.830520, -0.551441, -0.078419,
		42.812641, 33.838737, 46.435894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606331, 34.684681, 46.244320>,  <42.231277, 34.224747, 46.490788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606331, 34.684681, 46.244320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760399, 34.325420, 46.159496>,  <42.852840, 34.109863, 46.108601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760399, 34.325420, 46.159496>,  <42.606331, 34.684681, 46.244320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760399, 34.325420, 46.159496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172862, 0.295941, -0.939435,
		0.906512, 0.325182, 0.269243,
		0.385167, -0.898151, -0.212062,
		42.875950, 34.055977, 46.095879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240444, 34.793510, 46.040298>,  <42.606331, 34.684681, 46.244320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240444, 34.793510, 46.040298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136280, 34.446411, 45.870968>,  <43.073784, 34.238152, 45.769371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136280, 34.446411, 45.870968>,  <43.240444, 34.793510, 46.040298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136280, 34.446411, 45.870968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130748, 0.402721, -0.905936,
		0.956605, -0.291261, 0.008585,
		-0.260406, -0.867746, -0.423326,
		43.058159, 34.186089, 45.743969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676369, 34.725460, 45.424351>,  <43.240444, 34.793510, 46.040298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676369, 34.725460, 45.424351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381702, 34.467278, 45.343636>,  <43.204903, 34.312370, 45.295204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381702, 34.467278, 45.343636>,  <43.676369, 34.725460, 45.424351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381702, 34.467278, 45.343636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030091, 0.329383, -0.943717,
		0.675591, -0.689128, -0.262067,
		-0.736662, -0.645452, -0.201792,
		43.160706, 34.273643, 45.283096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789295, 34.496746, 44.782169>,  <43.676369, 34.725460, 45.424351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789295, 34.496746, 44.782169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415722, 34.358734, 44.819515>,  <43.191578, 34.275925, 44.841923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415722, 34.358734, 44.819515>,  <43.789295, 34.496746, 44.782169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415722, 34.358734, 44.819515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150227, 0.141875, -0.978419,
		0.324342, -0.927805, -0.184335,
		-0.933935, -0.345035, 0.093365,
		43.135540, 34.255222, 44.847527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674774, 34.075706, 44.206635>,  <43.789295, 34.496746, 44.782169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674774, 34.075706, 44.206635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307892, 34.158741, 44.342659>,  <43.087761, 34.208561, 44.424274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307892, 34.158741, 44.342659>,  <43.674774, 34.075706, 44.206635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307892, 34.158741, 44.342659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330857, 0.078639, -0.940399,
		-0.221953, -0.975051, -0.003447,
		-0.917208, 0.207584, 0.340057,
		43.032730, 34.221016, 44.444675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283192, 33.737614, 43.699612>,  <43.674774, 34.075706, 44.206635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283192, 33.737614, 43.699612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014858, 33.970951, 43.882782>,  <42.853859, 34.110954, 43.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014858, 33.970951, 43.882782>,  <43.283192, 33.737614, 43.699612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014858, 33.970951, 43.882782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355077, 0.289456, -0.888896,
		-0.651079, -0.758899, 0.012955,
		-0.670833, 0.583342, 0.457927,
		42.813610, 34.145954, 44.020161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562874, 33.569313, 43.623520>,  <43.283192, 33.737614, 43.699612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562874, 33.569313, 43.623520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574364, 33.965553, 43.677017>,  <42.581257, 34.203297, 43.709114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574364, 33.965553, 43.677017>,  <42.562874, 33.569313, 43.623520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574364, 33.965553, 43.677017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263058, 0.136573, -0.955065,
		-0.964352, -0.007748, 0.264508,
		0.028725, 0.990600, 0.133743,
		42.582981, 34.262733, 43.717140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036224, 33.750614, 43.251385>,  <42.562874, 33.569313, 43.623520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036224, 33.750614, 43.251385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264511, 34.076134, 43.295227>,  <42.401482, 34.271446, 43.321533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264511, 34.076134, 43.295227>,  <42.036224, 33.750614, 43.251385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264511, 34.076134, 43.295227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376059, 0.377685, -0.846129,
		-0.729974, 0.441684, 0.521588,
		0.570717, 0.813799, 0.109601,
		42.435726, 34.320274, 43.328106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687462, 34.362644, 43.219173>,  <42.036224, 33.750614, 43.251385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687462, 34.362644, 43.219173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064457, 34.395840, 43.089664>,  <42.290653, 34.415756, 43.011959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064457, 34.395840, 43.089664>,  <41.687462, 34.362644, 43.219173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064457, 34.395840, 43.089664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321830, 0.486825, -0.812051,
		0.090233, 0.869548, 0.485534,
		0.942488, 0.082986, -0.323775,
		42.347202, 34.420734, 42.992531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816631, 35.064655, 43.248875>,  <41.687462, 34.362644, 43.219173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816631, 35.064655, 43.248875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060276, 34.899227, 42.978188>,  <42.206463, 34.799969, 42.815777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060276, 34.899227, 42.978188>,  <41.816631, 35.064655, 43.248875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060276, 34.899227, 42.978188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397453, 0.579204, -0.711726,
		0.686307, 0.702481, 0.188423,
		0.609109, -0.413573, -0.676715,
		42.243008, 34.775154, 42.775173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060257, 35.586414, 42.835930>,  <41.816631, 35.064655, 43.248875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060257, 35.586414, 42.835930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106201, 35.254223, 42.617897>,  <42.133766, 35.054909, 42.487076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106201, 35.254223, 42.617897>,  <42.060257, 35.586414, 42.835930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106201, 35.254223, 42.617897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326423, 0.486691, -0.810296,
		0.938219, 0.270998, -0.215185,
		0.114860, -0.830477, -0.545083,
		42.140659, 35.005081, 42.454372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505596, 35.820251, 42.220757>,  <42.060257, 35.586414, 42.835930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505596, 35.820251, 42.220757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321259, 35.473412, 42.145115>,  <42.210655, 35.265308, 42.099731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321259, 35.473412, 42.145115>,  <42.505596, 35.820251, 42.220757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321259, 35.473412, 42.145115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192076, 0.305476, -0.932626,
		0.866447, -0.393472, -0.307326,
		-0.460843, -0.867101, -0.189103,
		42.183006, 35.213280, 42.088383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828049, 35.749363, 41.573879>,  <42.505596, 35.820251, 42.220757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828049, 35.749363, 41.573879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510376, 35.507351, 41.596561>,  <42.319771, 35.362144, 41.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510376, 35.507351, 41.596561>,  <42.828049, 35.749363, 41.573879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510376, 35.507351, 41.596561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325518, 0.344771, -0.880438,
		0.513139, -0.717687, -0.470759,
		-0.794183, -0.605028, 0.056705,
		42.272121, 35.325844, 41.613571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785290, 35.323292, 40.894794>,  <42.828049, 35.749363, 41.573879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785290, 35.323292, 40.894794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424591, 35.305450, 41.066776>,  <42.208172, 35.294746, 41.169964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424591, 35.305450, 41.066776>,  <42.785290, 35.323292, 40.894794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424591, 35.305450, 41.066776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432175, 0.113069, -0.894673,
		-0.008705, -0.992585, -0.121238,
		-0.901748, -0.044608, 0.429955,
		42.154068, 35.292068, 41.195763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405670, 34.951775, 40.478874>,  <42.785290, 35.323292, 40.894794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405670, 34.951775, 40.478874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096428, 35.119156, 40.669537>,  <41.910881, 35.219585, 40.783936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096428, 35.119156, 40.669537>,  <42.405670, 34.951775, 40.478874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096428, 35.119156, 40.669537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486309, 0.091388, -0.868994,
		-0.407198, -0.903627, 0.132847,
		-0.773106, 0.418457, 0.476655,
		41.864494, 35.244694, 40.812534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794277, 34.590420, 40.187542>,  <42.405670, 34.951775, 40.478874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794277, 34.590420, 40.187542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704029, 34.941818, 40.355991>,  <41.649879, 35.152657, 40.457062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704029, 34.941818, 40.355991>,  <41.794277, 34.590420, 40.187542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704029, 34.941818, 40.355991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364182, 0.324875, -0.872827,
		-0.903585, -0.350297, 0.246631,
		-0.225625, 0.878492, 0.421124,
		41.636341, 35.205364, 40.482330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990974, 34.690105, 40.068581>,  <41.794277, 34.590420, 40.187542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990974, 34.690105, 40.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156532, 35.041557, 40.163834>,  <41.255867, 35.252426, 40.220985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156532, 35.041557, 40.163834>,  <40.990974, 34.690105, 40.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156532, 35.041557, 40.163834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327810, 0.387895, -0.861439,
		-0.849255, 0.278480, 0.448569,
		0.413891, 0.878628, 0.238133,
		41.280701, 35.305145, 40.235275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436520, 35.289539, 40.024929>,  <40.990974, 34.690105, 40.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436520, 35.289539, 40.024929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802731, 35.447041, 39.992012>,  <41.022457, 35.541542, 39.972263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802731, 35.447041, 39.992012>,  <40.436520, 35.289539, 40.024929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802731, 35.447041, 39.992012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233394, 0.353339, -0.905913,
		-0.327628, 0.848594, 0.415390,
		0.915526, 0.393752, -0.082293,
		41.077389, 35.565166, 39.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282486, 35.948471, 39.740353>,  <40.436520, 35.289539, 40.024929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282486, 35.948471, 39.740353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669788, 35.874695, 39.672867>,  <40.902168, 35.830429, 39.632378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669788, 35.874695, 39.672867>,  <40.282486, 35.948471, 39.740353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669788, 35.874695, 39.672867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082663, 0.400710, -0.912468,
		0.235899, 0.897449, 0.372743,
		0.968256, -0.184438, -0.168713,
		40.960266, 35.819363, 39.622253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443550, 36.462654, 39.394371>,  <40.282486, 35.948471, 39.740353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443550, 36.462654, 39.394371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732567, 36.206627, 39.289871>,  <40.905975, 36.053013, 39.227173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732567, 36.206627, 39.289871>,  <40.443550, 36.462654, 39.394371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732567, 36.206627, 39.289871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109761, 0.266889, -0.957456,
		0.682558, 0.720478, 0.122585,
		0.722542, -0.640064, -0.261247,
		40.949329, 36.014606, 39.211498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965179, 36.854271, 38.942638>,  <40.443550, 36.462654, 39.394371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965179, 36.854271, 38.942638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013596, 36.461201, 38.886497>,  <41.042645, 36.225357, 38.852814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013596, 36.461201, 38.886497>,  <40.965179, 36.854271, 38.942638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013596, 36.461201, 38.886497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158411, 0.158703, -0.974535,
		0.979927, 0.095720, 0.174875,
		0.121036, -0.982675, -0.140354,
		41.049908, 36.166397, 38.844391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552631, 36.773064, 38.537510>,  <40.965179, 36.854271, 38.942638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552631, 36.773064, 38.537510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367348, 36.422771, 38.483040>,  <41.256180, 36.212597, 38.450359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367348, 36.422771, 38.483040>,  <41.552631, 36.773064, 38.537510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367348, 36.422771, 38.483040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034385, 0.135778, -0.990142,
		0.885583, -0.463323, -0.032781,
		-0.463207, -0.875726, -0.136174,
		41.228386, 36.160053, 38.442188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874928, 36.465195, 38.096378>,  <41.552631, 36.773064, 38.537510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874928, 36.465195, 38.096378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509037, 36.307476, 38.061028>,  <41.289505, 36.212845, 38.039818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509037, 36.307476, 38.061028>,  <41.874928, 36.465195, 38.096378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509037, 36.307476, 38.061028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004266, 0.228122, -0.973623,
		0.404062, -0.890217, -0.210350,
		-0.914722, -0.394302, -0.088377,
		41.234619, 36.189186, 38.034515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910660, 36.055206, 37.470585>,  <41.874928, 36.465195, 38.096378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910660, 36.055206, 37.470585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513454, 36.089199, 37.503330>,  <41.275131, 36.109592, 37.522976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513454, 36.089199, 37.503330>,  <41.910660, 36.055206, 37.470585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513454, 36.089199, 37.503330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046745, 0.353681, -0.934197,
		-0.108340, -0.931498, -0.347238,
		-0.993014, 0.084980, 0.081861,
		41.215549, 36.114693, 37.527889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682446, 36.049149, 36.767262>,  <41.910660, 36.055206, 37.470585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682446, 36.049149, 36.767262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339947, 36.161243, 36.940838>,  <41.134445, 36.228500, 37.044983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339947, 36.161243, 36.940838>,  <41.682446, 36.049149, 36.767262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339947, 36.161243, 36.940838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288983, 0.436428, -0.852068,
		-0.428161, -0.854985, -0.292709,
		-0.856252, 0.280235, 0.433937,
		41.083073, 36.245316, 37.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071671, 35.772339, 36.305916>,  <41.682446, 36.049149, 36.767262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071671, 35.772339, 36.305916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962379, 36.091690, 36.520557>,  <40.896805, 36.283302, 36.649342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962379, 36.091690, 36.520557>,  <41.071671, 35.772339, 36.305916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962379, 36.091690, 36.520557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278627, 0.468235, -0.838524,
		-0.920715, -0.378617, 0.094517,
		-0.273224, 0.798377, 0.536604,
		40.880413, 36.331203, 36.681538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385979, 35.961422, 36.243271>,  <41.071671, 35.772339, 36.305916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385979, 35.961422, 36.243271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503128, 36.322037, 36.370674>,  <40.573418, 36.538406, 36.447117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503128, 36.322037, 36.370674>,  <40.385979, 35.961422, 36.243271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503128, 36.322037, 36.370674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235822, 0.390936, -0.889695,
		-0.926614, 0.185455, 0.327097,
		0.292873, 0.901541, 0.318513,
		40.590988, 36.592499, 36.466228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036556, 36.342926, 35.820881>,  <40.385979, 35.961422, 36.243271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036556, 36.342926, 35.820881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296902, 36.612255, 35.961174>,  <40.453110, 36.773853, 36.045349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296902, 36.612255, 35.961174>,  <40.036556, 36.342926, 35.820881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296902, 36.612255, 35.961174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072894, 0.404421, -0.911663,
		-0.755691, 0.618931, 0.214139,
		0.650859, 0.673326, 0.350733,
		40.492161, 36.814255, 36.066395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774311, 36.929161, 35.576382>,  <40.036556, 36.342926, 35.820881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774311, 36.929161, 35.576382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162373, 36.998371, 35.644348>,  <40.395210, 37.039898, 35.685127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162373, 36.998371, 35.644348>,  <39.774311, 36.929161, 35.576382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162373, 36.998371, 35.644348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082999, 0.421460, -0.903041,
		-0.227860, 0.890188, 0.394518,
		0.970150, 0.173022, 0.169918,
		40.453419, 37.050278, 35.695324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834766, 37.616394, 35.359467>,  <39.774311, 36.929161, 35.576382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834766, 37.616394, 35.359467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205593, 37.466770, 35.349457>,  <40.428089, 37.376995, 35.343449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205593, 37.466770, 35.349457>,  <39.834766, 37.616394, 35.359467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205593, 37.466770, 35.349457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169124, 0.476872, -0.862548,
		0.334577, 0.795408, 0.505355,
		0.927068, -0.374057, -0.025028,
		40.483715, 37.354553, 35.341949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276577, 38.144604, 35.265491>,  <39.834766, 37.616394, 35.359467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276577, 38.144604, 35.265491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482491, 37.820335, 35.153915>,  <40.606037, 37.625774, 35.086971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482491, 37.820335, 35.153915>,  <40.276577, 38.144604, 35.265491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482491, 37.820335, 35.153915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204463, 0.432063, -0.878360,
		0.832583, 0.395132, 0.388171,
		0.514782, -0.810674, -0.278938,
		40.636925, 37.577133, 35.070232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821854, 38.444603, 35.010529>,  <40.276577, 38.144604, 35.265491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821854, 38.444603, 35.010529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872372, 38.071503, 34.875454>,  <40.902683, 37.847645, 34.794411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872372, 38.071503, 34.875454>,  <40.821854, 38.444603, 35.010529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872372, 38.071503, 34.875454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295388, 0.360329, -0.884821,
		0.946993, 0.011998, 0.321030,
		0.126293, -0.932748, -0.337685,
		40.910259, 37.791679, 34.774147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553379, 38.375195, 34.812958>,  <40.821854, 38.444603, 35.010529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553379, 38.375195, 34.812958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305584, 38.121063, 34.628525>,  <41.156906, 37.968586, 34.517864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305584, 38.121063, 34.628525>,  <41.553379, 38.375195, 34.812958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305584, 38.121063, 34.628525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268675, 0.380286, -0.884984,
		0.737596, -0.672118, -0.064886,
		-0.619489, -0.635327, -0.461078,
		41.119736, 37.930466, 34.490200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938313, 38.232204, 34.350330>,  <41.553379, 38.375195, 34.812958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938313, 38.232204, 34.350330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583866, 38.111824, 34.209343>,  <41.371201, 38.039597, 34.124752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583866, 38.111824, 34.209343>,  <41.938313, 38.232204, 34.350330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583866, 38.111824, 34.209343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297807, 0.212989, -0.930562,
		0.355127, -0.929550, -0.099106,
		-0.886112, -0.300954, -0.352465,
		41.318031, 38.021538, 34.103603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100014, 37.832741, 33.757290>,  <41.938313, 38.232204, 34.350330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100014, 37.832741, 33.757290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717773, 37.941952, 33.712967>,  <41.488430, 38.007481, 33.686375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717773, 37.941952, 33.712967>,  <42.100014, 37.832741, 33.757290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717773, 37.941952, 33.712967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150078, 0.127377, -0.980434,
		-0.253576, -0.953535, -0.162698,
		-0.955603, 0.273032, -0.110805,
		41.431091, 38.023861, 33.679726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644382, 37.377571, 34.022919>,  <42.100014, 37.832741, 33.757290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644382, 37.377571, 34.022919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588360, 37.235374, 34.392570>,  <42.554745, 37.150059, 34.614361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588360, 37.235374, 34.392570>,  <42.644382, 37.377571, 34.022919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588360, 37.235374, 34.392570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976968, -0.201366, 0.070605,
		0.160989, 0.912732, 0.375503,
		-0.140057, -0.355488, 0.924128,
		42.546341, 37.128727, 34.669807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102154, 37.687275, 34.497715>,  <42.644382, 37.377571, 34.022919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102154, 37.687275, 34.497715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011478, 37.326054, 34.643650>,  <42.957073, 37.109322, 34.731213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011478, 37.326054, 34.643650>,  <43.102154, 37.687275, 34.497715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011478, 37.326054, 34.643650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973967, -0.210657, 0.083742,
		0.001232, 0.374324, 0.927297,
		-0.226688, -0.903053, 0.364839,
		42.943474, 37.055138, 34.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396442, 37.495911, 35.146946>,  <43.102154, 37.687275, 34.497715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396442, 37.495911, 35.146946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321217, 37.140816, 34.978870>,  <43.276081, 36.927761, 34.878025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321217, 37.140816, 34.978870>,  <43.396442, 37.495911, 35.146946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321217, 37.140816, 34.978870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930458, -0.298011, 0.213158,
		-0.314448, -0.350878, 0.882047,
		-0.188067, -0.887735, -0.420186,
		43.264797, 36.874496, 34.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486469, 36.851215, 35.580433>,  <43.396442, 37.495911, 35.146946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486469, 36.851215, 35.580433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559826, 36.761917, 35.197491>,  <43.603840, 36.708336, 34.967728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559826, 36.761917, 35.197491>,  <43.486469, 36.851215, 35.580433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559826, 36.761917, 35.197491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917028, -0.312002, 0.248425,
		-0.354157, -0.923479, 0.147507,
		0.183393, -0.223250, -0.957354,
		43.614845, 36.694942, 34.910286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846554, 36.173981, 35.466171>,  <43.486469, 36.851215, 35.580433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846554, 36.173981, 35.466171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943954, 36.456516, 35.200298>,  <44.002396, 36.626038, 35.040775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943954, 36.456516, 35.200298>,  <43.846554, 36.173981, 35.466171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943954, 36.456516, 35.200298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917644, -0.389687, -0.077934,
		-0.314064, -0.590961, -0.743054,
		0.243502, 0.706335, -0.664678,
		44.017006, 36.668415, 35.000896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066154, 35.909519, 34.893002>,  <43.846554, 36.173981, 35.466171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066154, 35.909519, 34.893002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271584, 36.252132, 34.913391>,  <44.394840, 36.457699, 34.925625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271584, 36.252132, 34.913391>,  <44.066154, 35.909519, 34.893002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271584, 36.252132, 34.913391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855098, -0.515825, 0.052267,
		0.071063, 0.016746, -0.997331,
		0.513573, 0.856530, 0.050975,
		44.425655, 36.509090, 34.928684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728893, 35.778439, 34.666935>,  <44.066154, 35.909519, 34.893002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728893, 35.778439, 34.666935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842625, 36.148232, 34.768517>,  <44.910862, 36.370106, 34.829468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842625, 36.148232, 34.768517>,  <44.728893, 35.778439, 34.666935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842625, 36.148232, 34.768517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940958, -0.218325, -0.258712,
		-0.183730, 0.312520, -0.931973,
		0.284326, 0.924481, 0.253956,
		44.927921, 36.425575, 34.844704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158825, 36.048752, 34.106812>,  <44.728893, 35.778439, 34.666935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158825, 36.048752, 34.106812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250191, 36.213165, 34.459827>,  <45.305012, 36.311813, 34.671638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250191, 36.213165, 34.459827>,  <45.158825, 36.048752, 34.106812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250191, 36.213165, 34.459827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973559, -0.099198, -0.205771,
		0.002968, 0.906208, -0.422821,
		0.228414, 0.411031, 0.882542,
		45.318714, 36.336475, 34.724590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243435, 36.596806, 33.730610>,  <45.158825, 36.048752, 34.106812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243435, 36.596806, 33.730610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538925, 36.655415, 33.993767>,  <45.716217, 36.690582, 34.151661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538925, 36.655415, 33.993767>,  <45.243435, 36.596806, 33.730610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538925, 36.655415, 33.993767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267356, 0.959711, 0.086460,
		-0.618715, -0.239760, 0.748136,
		0.738724, 0.146524, 0.657889,
		45.760544, 36.699371, 34.191132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020405, 36.737171, 34.362858>,  <45.243435, 36.596806, 33.730610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020405, 36.737171, 34.362858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384304, 36.901024, 34.389847>,  <45.602646, 36.999336, 34.406040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384304, 36.901024, 34.389847>,  <45.020405, 36.737171, 34.362858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384304, 36.901024, 34.389847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410760, 0.864578, 0.289451,
		0.060236, -0.291042, 0.954812,
		0.909752, 0.409634, 0.067469,
		45.657230, 37.023914, 34.410088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027767, 37.024433, 34.999424>,  <45.020405, 36.737171, 34.362858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027767, 37.024433, 34.999424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313347, 37.223690, 34.802601>,  <45.484695, 37.343246, 34.684505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313347, 37.223690, 34.802601>,  <45.027767, 37.024433, 34.999424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313347, 37.223690, 34.802601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344311, 0.861682, 0.372765,
		0.609692, -0.096713, 0.786716,
		0.713951, 0.498147, -0.492061,
		45.527531, 37.373135, 34.654984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291759, 37.541920, 35.453056>,  <45.027767, 37.024433, 34.999424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291759, 37.541920, 35.453056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406387, 37.664402, 35.089931>,  <45.475166, 37.737892, 34.872059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406387, 37.664402, 35.089931>,  <45.291759, 37.541920, 35.453056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406387, 37.664402, 35.089931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250487, 0.938537, 0.237498,
		0.924733, 0.159333, 0.345661,
		0.286574, 0.306206, -0.907807,
		45.492359, 37.756264, 34.817589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730343, 38.226398, 35.497902>,  <45.291759, 37.541920, 35.453056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730343, 38.226398, 35.497902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576927, 38.202484, 35.129269>,  <45.484879, 38.188137, 34.908089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576927, 38.202484, 35.129269>,  <45.730343, 38.226398, 35.497902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576927, 38.202484, 35.129269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361342, 0.928063, 0.090176,
		0.849897, 0.367594, -0.377556,
		-0.383544, -0.059787, -0.921585,
		45.461864, 38.184547, 34.852795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975018, 38.756924, 35.125332>,  <45.730343, 38.226398, 35.497902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975018, 38.756924, 35.125332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630428, 38.637127, 34.961300>,  <45.423676, 38.565247, 34.862881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630428, 38.637127, 34.961300>,  <45.975018, 38.756924, 35.125332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630428, 38.637127, 34.961300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298963, 0.951898, -0.067159,
		0.410472, 0.064744, -0.909572,
		-0.861471, -0.299495, -0.410084,
		45.371986, 38.547279, 34.838276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785099, 39.304710, 34.891754>,  <45.975018, 38.756924, 35.125332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785099, 39.304710, 34.891754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432343, 39.123512, 34.839489>,  <45.220688, 39.014793, 34.808128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432343, 39.123512, 34.839489>,  <45.785099, 39.304710, 34.891754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432343, 39.123512, 34.839489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471345, 0.853274, 0.223062,
		0.010445, 0.258302, -0.966008,
		-0.881887, -0.452993, -0.130662,
		45.167778, 38.987614, 34.800289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367359, 39.760468, 34.434402>,  <45.785099, 39.304710, 34.891754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367359, 39.760468, 34.434402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100552, 39.525486, 34.617702>,  <44.940468, 39.384499, 34.727680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100552, 39.525486, 34.617702>,  <45.367359, 39.760468, 34.434402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100552, 39.525486, 34.617702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390554, 0.799477, 0.456403,
		-0.634473, 0.125458, -0.762695,
		-0.667017, -0.587450, 0.458248,
		44.900448, 39.349251, 34.755177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697407, 39.962521, 34.242180>,  <45.367359, 39.760468, 34.434402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697407, 39.962521, 34.242180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644852, 39.776951, 34.592609>,  <44.613319, 39.665611, 34.802868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644852, 39.776951, 34.592609>,  <44.697407, 39.962521, 34.242180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644852, 39.776951, 34.592609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550113, 0.769305, 0.324878,
		-0.824689, -0.439257, -0.356288,
		-0.131389, -0.463922, 0.876078,
		44.605434, 39.637775, 34.855434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977570, 40.083290, 34.367542>,  <44.697407, 39.962521, 34.242180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977570, 40.083290, 34.367542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152885, 39.972721, 34.709652>,  <44.258076, 39.906380, 34.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152885, 39.972721, 34.709652>,  <43.977570, 40.083290, 34.367542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152885, 39.972721, 34.709652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375204, 0.808404, 0.453547,
		-0.816776, -0.519688, 0.250604,
		0.438292, -0.276418, 0.855274,
		44.284374, 39.889797, 34.966232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400272, 40.182625, 34.855679>,  <43.977570, 40.083290, 34.367542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400272, 40.182625, 34.855679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735168, 40.182880, 35.074413>,  <43.936108, 40.183033, 35.205654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735168, 40.182880, 35.074413>,  <43.400272, 40.182625, 34.855679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735168, 40.182880, 35.074413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316874, 0.815563, 0.484198,
		-0.445667, -0.578667, 0.683027,
		0.837241, 0.000642, 0.546834,
		43.986340, 40.183075, 35.238464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210442, 40.210068, 35.506084>,  <43.400272, 40.182625, 34.855679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210442, 40.210068, 35.506084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587505, 40.343399, 35.512730>,  <43.813744, 40.423397, 35.516716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587505, 40.343399, 35.512730>,  <43.210442, 40.210068, 35.506084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587505, 40.343399, 35.512730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265350, 0.718358, 0.643079,
		0.202421, -0.610617, 0.765619,
		0.942664, 0.333329, 0.016616,
		43.870304, 40.443398, 35.517715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307819, 40.495476, 36.132980>,  <43.210442, 40.210068, 35.506084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307819, 40.495476, 36.132980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614510, 40.651585, 35.929089>,  <43.798523, 40.745251, 35.806755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614510, 40.651585, 35.929089>,  <43.307819, 40.495476, 36.132980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614510, 40.651585, 35.929089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100431, 0.857138, 0.505202,
		0.634074, -0.336158, 0.696383,
		0.766723, 0.390273, -0.509728,
		43.844528, 40.768665, 35.776169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856640, 40.726765, 36.633530>,  <43.307819, 40.495476, 36.132980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856640, 40.726765, 36.633530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922886, 40.945343, 36.305149>,  <43.962631, 41.076492, 36.108120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922886, 40.945343, 36.305149>,  <43.856640, 40.726765, 36.633530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922886, 40.945343, 36.305149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035844, 0.835235, 0.548724,
		0.985539, -0.061449, 0.157912,
		0.165612, 0.546449, -0.820955,
		43.972569, 41.109276, 36.058865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285694, 41.282162, 36.827785>,  <43.856640, 40.726765, 36.633530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285694, 41.282162, 36.827785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146263, 41.420513, 36.479336>,  <44.062603, 41.503525, 36.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146263, 41.420513, 36.479336>,  <44.285694, 41.282162, 36.827785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146263, 41.420513, 36.479336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057156, 0.935534, 0.348582,
		0.935534, 0.071720, -0.345879,
		-0.348582, 0.345879, -0.871125,
		44.041687, 41.524277, 36.217999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787952, 41.841671, 36.441151>,  <44.285694, 41.282162, 36.827785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787952, 41.841671, 36.441151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405556, 41.875908, 36.328896>,  <44.176117, 41.896450, 36.261543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405556, 41.875908, 36.328896>,  <44.787952, 41.841671, 36.441151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405556, 41.875908, 36.328896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034995, 0.982937, 0.180581,
		0.291304, 0.162813, -0.942674,
		-0.955990, 0.085593, -0.280636,
		44.118759, 41.901585, 36.244705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784935, 42.487976, 36.119934>,  <44.787952, 41.841671, 36.441151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784935, 42.487976, 36.119934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392017, 42.432083, 36.169857>,  <44.156269, 42.398548, 36.199810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392017, 42.432083, 36.169857>,  <44.784935, 42.487976, 36.119934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392017, 42.432083, 36.169857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110764, 0.970386, 0.214666,
		-0.151108, 0.197041, -0.968680,
		-0.982292, -0.139732, 0.124809,
		44.097328, 42.390163, 36.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485161, 43.041412, 35.718571>,  <44.784935, 42.487976, 36.119934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485161, 43.041412, 35.718571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207390, 42.931164, 35.984444>,  <44.040730, 42.865013, 36.143967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207390, 42.931164, 35.984444>,  <44.485161, 43.041412, 35.718571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207390, 42.931164, 35.984444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102722, 0.952244, 0.287541,
		-0.712194, 0.131398, -0.689575,
		-0.694426, -0.275620, 0.664685,
		43.999062, 42.848476, 36.183849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971668, 43.578972, 35.655930>,  <44.485161, 43.041412, 35.718571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971668, 43.578972, 35.655930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876064, 43.400307, 36.000805>,  <43.818703, 43.293106, 36.207729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876064, 43.400307, 36.000805>,  <43.971668, 43.578972, 35.655930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876064, 43.400307, 36.000805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253286, 0.885858, 0.388718,
		-0.937402, -0.125474, -0.324859,
		-0.239005, -0.446668, 0.862186,
		43.804363, 43.266308, 36.259460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196472, 43.753380, 35.842861>,  <43.971668, 43.578972, 35.655930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196472, 43.753380, 35.842861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422890, 43.646832, 36.154926>,  <43.558739, 43.582905, 36.342163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422890, 43.646832, 36.154926>,  <43.196472, 43.753380, 35.842861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422890, 43.646832, 36.154926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283690, 0.825621, 0.487719,
		-0.774028, -0.497391, 0.391769,
		0.566040, -0.266367, 0.780159,
		43.592701, 43.566921, 36.388973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826290, 43.821812, 36.428844>,  <43.196472, 43.753380, 35.842861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826290, 43.821812, 36.428844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220291, 43.862705, 36.484451>,  <43.456692, 43.887241, 36.517815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220291, 43.862705, 36.484451>,  <42.826290, 43.821812, 36.428844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220291, 43.862705, 36.484451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128674, 0.971935, 0.196939,
		-0.114982, -0.211872, 0.970510,
		0.984998, 0.102235, 0.139018,
		43.515789, 43.893375, 36.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192661, 43.957195, 37.013020>,  <42.826290, 43.821812, 36.428844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192661, 43.957195, 37.013020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356934, 44.147026, 36.701603>,  <43.455498, 44.260925, 36.514755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356934, 44.147026, 36.701603>,  <43.192661, 43.957195, 37.013020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356934, 44.147026, 36.701603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498653, 0.831759, 0.243973,
		0.763338, 0.288024, 0.578236,
		0.410683, 0.474573, -0.778537,
		43.480137, 44.289398, 36.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475834, 44.537750, 37.371571>,  <43.192661, 43.957195, 37.013020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475834, 44.537750, 37.371571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375374, 44.561558, 36.985123>,  <43.315098, 44.575844, 36.753254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375374, 44.561558, 36.985123>,  <43.475834, 44.537750, 37.371571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375374, 44.561558, 36.985123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455578, 0.873374, 0.172238,
		0.854033, 0.483399, -0.192233,
		-0.251152, 0.059520, -0.966116,
		43.300030, 44.579414, 36.695290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540337, 45.188179, 37.292992>,  <43.475834, 44.537750, 37.371571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540337, 45.188179, 37.292992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292393, 45.083042, 36.997238>,  <43.143627, 45.019958, 36.819786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292393, 45.083042, 36.997238>,  <43.540337, 45.188179, 37.292992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292393, 45.083042, 36.997238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643257, 0.709854, 0.286928,
		0.449433, 0.653467, -0.609090,
		-0.619863, -0.262846, -0.739379,
		43.106434, 45.004189, 36.775425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673809, 44.928089, 37.935799>,  <43.540337, 45.188179, 37.292992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673809, 44.928089, 37.935799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406189, 45.189774, 38.076866>,  <43.245617, 45.346783, 38.161507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406189, 45.189774, 38.076866>,  <43.673809, 44.928089, 37.935799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406189, 45.189774, 38.076866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076049, -0.411761, 0.908113,
		0.739312, 0.634397, 0.225739,
		-0.669055, 0.654212, 0.352665,
		43.205471, 45.386036, 38.182667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915051, 45.204243, 38.535389>,  <43.673809, 44.928089, 37.935799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915051, 45.204243, 38.535389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515133, 45.209824, 38.541229>,  <43.275181, 45.213173, 38.544731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515133, 45.209824, 38.541229>,  <43.915051, 45.204243, 38.535389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515133, 45.209824, 38.541229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006692, -0.453085, 0.891442,
		0.019055, 0.891358, 0.452899,
		-0.999796, 0.013955, 0.014598,
		43.215195, 45.214012, 38.545609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416695, 45.458172, 37.951603>,  <43.915051, 45.204243, 38.535389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416695, 45.458172, 37.951603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768505, 45.395184, 38.131222>,  <44.979591, 45.357391, 38.238995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768505, 45.395184, 38.131222>,  <44.416695, 45.458172, 37.951603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768505, 45.395184, 38.131222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146090, -0.987441, -0.060141,
		0.452877, -0.012706, -0.891482,
		0.879522, -0.157473, 0.449046,
		45.032360, 45.347942, 38.265934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708534, 44.973999, 37.653046>,  <44.416695, 45.458172, 37.951603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708534, 44.973999, 37.653046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858089, 44.941044, 38.022568>,  <44.947823, 44.921268, 38.244282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858089, 44.941044, 38.022568>,  <44.708534, 44.973999, 37.653046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858089, 44.941044, 38.022568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183723, -0.982888, -0.013303,
		0.909094, -0.164750, -0.382630,
		0.373891, -0.082392, 0.923806,
		44.970257, 44.916325, 38.299709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428699, 44.657677, 37.789612>,  <44.708534, 44.973999, 37.653046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428699, 44.657677, 37.789612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119968, 44.586220, 38.033699>,  <44.934731, 44.543346, 38.180149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119968, 44.586220, 38.033699>,  <45.428699, 44.657677, 37.789612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119968, 44.586220, 38.033699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001561, -0.960248, -0.279145,
		0.635825, -0.214501, 0.741428,
		-0.771831, -0.178645, 0.610215,
		44.888420, 44.532627, 38.216763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568729, 44.247036, 38.488388>,  <45.428699, 44.657677, 37.789612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568729, 44.247036, 38.488388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202511, 44.196224, 38.335735>,  <44.982780, 44.165737, 38.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202511, 44.196224, 38.335735>,  <45.568729, 44.247036, 38.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202511, 44.196224, 38.335735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172066, -0.981312, -0.086144,
		-0.363553, -0.144534, 0.920293,
		-0.915545, -0.127033, -0.381629,
		44.927849, 44.158115, 38.221249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176903, 43.752129, 38.867958>,  <45.568729, 44.247036, 38.488388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176903, 43.752129, 38.867958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026077, 43.742329, 38.497612>,  <44.935581, 43.736446, 38.275406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026077, 43.742329, 38.497612>,  <45.176903, 43.752129, 38.867958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026077, 43.742329, 38.497612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128586, -0.991354, -0.026131,
		-0.917218, -0.128906, 0.376954,
		-0.377064, -0.024504, -0.925863,
		44.912960, 43.734978, 38.219852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647186, 43.349098, 38.888748>,  <45.176903, 43.752129, 38.867958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647186, 43.349098, 38.888748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808071, 43.296925, 38.526264>,  <44.904602, 43.265621, 38.308773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808071, 43.296925, 38.526264>,  <44.647186, 43.349098, 38.888748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808071, 43.296925, 38.526264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027352, -0.987646, 0.154293,
		-0.915136, -0.086846, -0.393680,
		0.402216, -0.130431, -0.906206,
		44.928738, 43.257797, 38.254402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324318, 42.664627, 38.524723>,  <44.647186, 43.349098, 38.888748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324318, 42.664627, 38.524723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655224, 42.754875, 38.318916>,  <44.853767, 42.809025, 38.195431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655224, 42.754875, 38.318916>,  <44.324318, 42.664627, 38.524723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655224, 42.754875, 38.318916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315157, -0.944518, 0.092535,
		-0.465094, -0.238705, -0.852472,
		0.827263, 0.225625, -0.514519,
		44.903404, 42.822563, 38.164562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380623, 42.041172, 38.178581>,  <44.324318, 42.664627, 38.524723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380623, 42.041172, 38.178581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729252, 42.227699, 38.118038>,  <44.938427, 42.339615, 38.081711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729252, 42.227699, 38.118038>,  <44.380623, 42.041172, 38.178581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729252, 42.227699, 38.118038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462950, -0.884419, -0.058993,
		-0.161376, -0.018656, -0.986717,
		0.871571, 0.466320, -0.151360,
		44.990723, 42.367596, 38.072632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567081, 41.790924, 37.555351>,  <44.380623, 42.041172, 38.178581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567081, 41.790924, 37.555351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876225, 41.930546, 37.767334>,  <45.061710, 42.014320, 37.894524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876225, 41.930546, 37.767334>,  <44.567081, 41.790924, 37.555351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876225, 41.930546, 37.767334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434726, -0.899609, -0.041449,
		0.462282, 0.262418, -0.847014,
		0.772858, 0.349057, 0.529952,
		45.108082, 42.035263, 37.926319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143417, 41.657795, 37.150337>,  <44.567081, 41.790924, 37.555351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143417, 41.657795, 37.150337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302975, 41.686962, 37.515976>,  <45.398708, 41.704464, 37.735359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302975, 41.686962, 37.515976>,  <45.143417, 41.657795, 37.150337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302975, 41.686962, 37.515976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416187, -0.902648, -0.109612,
		0.817113, 0.424158, -0.390405,
		0.398891, 0.072917, 0.914095,
		45.422642, 41.708836, 37.790203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882271, 41.458729, 37.140049>,  <45.143417, 41.657795, 37.150337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882271, 41.458729, 37.140049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739372, 41.411201, 37.510616>,  <45.653633, 41.382687, 37.732956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739372, 41.411201, 37.510616>,  <45.882271, 41.458729, 37.140049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739372, 41.411201, 37.510616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245991, -0.968826, -0.029395,
		0.901033, 0.217390, 0.375341,
		-0.357250, -0.118817, 0.926421,
		45.632198, 41.375557, 37.788544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391975, 41.075878, 37.443146>,  <45.882271, 41.458729, 37.140049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391975, 41.075878, 37.443146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102814, 41.034191, 37.716366>,  <45.929317, 41.009178, 37.880299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102814, 41.034191, 37.716366>,  <46.391975, 41.075878, 37.443146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102814, 41.034191, 37.716366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179634, -0.982914, 0.040141,
		0.667194, 0.151717, 0.729269,
		-0.722899, -0.104220, 0.683048,
		45.885944, 41.002926, 37.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704865, 40.739246, 38.025875>,  <46.391975, 41.075878, 37.443146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704865, 40.739246, 38.025875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311089, 40.670525, 38.040638>,  <46.074821, 40.629292, 38.049496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311089, 40.670525, 38.040638>,  <46.704865, 40.739246, 38.025875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311089, 40.670525, 38.040638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174941, -0.977971, 0.113876,
		0.016531, 0.118561, 0.992809,
		-0.984440, -0.171801, 0.036908,
		46.015755, 40.618984, 38.051712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661011, 40.263691, 38.620728>,  <46.704865, 40.739246, 38.025875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661011, 40.263691, 38.620728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314198, 40.241940, 38.422619>,  <46.106110, 40.228889, 38.303753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314198, 40.241940, 38.422619>,  <46.661011, 40.263691, 38.620728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314198, 40.241940, 38.422619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003401, -0.993358, 0.115011,
		-0.498239, 0.101403, 0.861090,
		-0.867033, -0.054374, -0.495275,
		46.054089, 40.225628, 38.274036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240795, 39.971035, 39.076870>,  <46.661011, 40.263691, 38.620728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240795, 39.971035, 39.076870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089931, 39.890041, 38.715374>,  <45.999413, 39.841446, 38.498474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089931, 39.890041, 38.715374>,  <46.240795, 39.971035, 39.076870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089931, 39.890041, 38.715374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202485, -0.970228, 0.132880,
		-0.903744, -0.132878, 0.406928,
		-0.377156, -0.202487, -0.903744,
		45.976784, 39.829296, 38.444252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917027, 39.288841, 39.157669>,  <46.240795, 39.971035, 39.076870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917027, 39.288841, 39.157669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932720, 39.311543, 38.758621>,  <45.942135, 39.325165, 38.519192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932720, 39.311543, 38.758621>,  <45.917027, 39.288841, 39.157669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932720, 39.311543, 38.758621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165270, -0.985004, -0.049536,
		-0.985468, -0.162932, -0.048021,
		0.039230, 0.056753, -0.997617,
		45.944489, 39.328568, 38.459335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492760, 38.719051, 38.876350>,  <45.917027, 39.288841, 39.157669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492760, 38.719051, 38.876350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740810, 38.829990, 38.582813>,  <45.889641, 38.896553, 38.406693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740810, 38.829990, 38.582813>,  <45.492760, 38.719051, 38.876350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740810, 38.829990, 38.582813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085946, -0.953809, -0.287859,
		-0.779781, 0.115438, -0.615318,
		0.620125, 0.277351, -0.733840,
		45.926849, 38.913197, 38.362659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392975, 38.212345, 38.356384>,  <45.492760, 38.719051, 38.876350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392975, 38.212345, 38.356384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739067, 38.386379, 38.256725>,  <45.946724, 38.490799, 38.196930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739067, 38.386379, 38.256725>,  <45.392975, 38.212345, 38.356384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739067, 38.386379, 38.256725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255385, -0.810091, -0.527760,
		-0.431450, 0.393008, -0.812032,
		0.865234, 0.435082, -0.249146,
		45.998638, 38.516903, 38.181980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487732, 37.987946, 37.700577>,  <45.392975, 38.212345, 38.356384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487732, 37.987946, 37.700577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852993, 38.109711, 37.809006>,  <46.072151, 38.182770, 37.874062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852993, 38.109711, 37.809006>,  <45.487732, 37.987946, 37.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852993, 38.109711, 37.809006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402796, -0.775807, -0.485674,
		0.062452, 0.552682, -0.831049,
		0.913157, 0.304412, 0.271068,
		46.126942, 38.201035, 37.890327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751785, 38.018967, 37.147301>,  <45.487732, 37.987946, 37.700577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751785, 38.018967, 37.147301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071903, 37.999149, 37.386326>,  <46.263973, 37.987259, 37.529739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071903, 37.999149, 37.386326>,  <45.751785, 38.018967, 37.147301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071903, 37.999149, 37.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366569, -0.748231, -0.552972,
		0.474511, 0.661586, -0.580640,
		0.800291, -0.049546, 0.597561,
		46.311989, 37.984287, 37.565594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346802, 38.167217, 36.752525>,  <45.751785, 38.018967, 37.147301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346802, 38.167217, 36.752525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470829, 37.954178, 37.067535>,  <46.545246, 37.826355, 37.256542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470829, 37.954178, 37.067535>,  <46.346802, 38.167217, 36.752525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470829, 37.954178, 37.067535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457061, -0.642838, -0.614699,
		0.833639, 0.550546, 0.044106,
		0.310067, -0.532596, 0.787528,
		46.563850, 37.794399, 37.303795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031033, 38.081451, 36.671085>,  <46.346802, 38.167217, 36.752525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031033, 38.081451, 36.671085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920147, 37.787781, 36.919003>,  <46.853615, 37.611580, 37.067753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920147, 37.787781, 36.919003>,  <47.031033, 38.081451, 36.671085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920147, 37.787781, 36.919003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431957, -0.671439, -0.602148,
		0.858233, 0.100798, 0.503265,
		-0.277217, -0.734172, 0.619792,
		46.836983, 37.567528, 37.104939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.635105, 37.658096, 36.615292>,  <47.031033, 38.081451, 36.671085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.635105, 37.658096, 36.615292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352917, 37.416447, 36.763531>,  <47.183605, 37.271458, 36.852474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352917, 37.416447, 36.763531>,  <47.635105, 37.658096, 36.615292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352917, 37.416447, 36.763531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470379, -0.790236, -0.392773,
		0.530145, -0.102768, 0.841656,
		-0.705471, -0.604124, 0.370600,
		47.141273, 37.235210, 36.874710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.977833, 37.195816, 36.906475>,  <47.635105, 37.658096, 36.615292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.977833, 37.195816, 36.906475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622520, 37.023663, 36.842304>,  <47.409332, 36.920372, 36.803802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622520, 37.023663, 36.842304>,  <47.977833, 37.195816, 36.906475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622520, 37.023663, 36.842304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459147, -0.822826, -0.334874,
		0.012122, -0.371119, 0.928506,
		-0.888277, -0.430381, -0.160424,
		47.356037, 36.894547, 36.794178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.048878, 36.466656, 37.132057>,  <47.977833, 37.195816, 36.906475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.048878, 36.466656, 37.132057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724209, 36.462841, 36.898441>,  <47.529408, 36.460552, 36.758270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724209, 36.462841, 36.898441>,  <48.048878, 36.466656, 37.132057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724209, 36.462841, 36.898441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306457, -0.858159, -0.411884,
		-0.497270, -0.513296, 0.699464,
		-0.811669, -0.009538, -0.584040,
		47.480709, 36.459980, 36.723228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.916519, 35.786297, 36.955482>,  <48.048878, 36.466656, 37.132057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.916519, 35.786297, 36.955482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708897, 35.975643, 36.670803>,  <47.584324, 36.089249, 36.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708897, 35.975643, 36.670803>,  <47.916519, 35.786297, 36.955482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708897, 35.975643, 36.670803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249752, -0.712314, -0.655921,
		-0.817440, -0.518205, 0.251506,
		-0.519053, 0.473362, -0.711697,
		47.553181, 36.117653, 36.457294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501068, 35.291119, 36.685020>,  <47.916519, 35.786297, 36.955482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501068, 35.291119, 36.685020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565472, 35.573055, 36.408680>,  <47.604115, 35.742218, 36.242878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565472, 35.573055, 36.408680>,  <47.501068, 35.291119, 36.685020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.565472, 35.573055, 36.408680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146248, -0.709292, -0.689577,
		-0.976057, 0.009993, -0.217284,
		0.161009, 0.704844, -0.690848,
		47.613773, 35.784508, 36.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055897, 35.165966, 35.944706>,  <47.501068, 35.291119, 36.685020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055897, 35.165966, 35.944706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401035, 35.364788, 35.907978>,  <47.608120, 35.484081, 35.885941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401035, 35.364788, 35.907978>,  <47.055897, 35.165966, 35.944706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401035, 35.364788, 35.907978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304296, -0.655853, -0.690841,
		-0.403606, 0.568150, -0.717153,
		0.862848, 0.497054, -0.091820,
		47.659889, 35.513905, 35.880432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.192982, 35.207993, 35.210892>,  <47.055897, 35.165966, 35.944706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.192982, 35.207993, 35.210892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513046, 35.188229, 35.449989>,  <47.705086, 35.176373, 35.593449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513046, 35.188229, 35.449989>,  <47.192982, 35.207993, 35.210892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513046, 35.188229, 35.449989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302765, -0.827039, -0.473646,
		0.517762, 0.559969, -0.646805,
		0.800160, -0.049406, 0.597748,
		47.753094, 35.173409, 35.629314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.725090, 35.204082, 34.666168>,  <47.192982, 35.207993, 35.210892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.725090, 35.204082, 34.666168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809364, 35.029564, 35.016083>,  <47.859928, 34.924850, 35.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809364, 35.029564, 35.016083>,  <47.725090, 35.204082, 34.666168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809364, 35.029564, 35.016083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305100, -0.820823, -0.482870,
		0.928722, 0.368633, -0.039824,
		0.210690, -0.436301, 0.874786,
		47.872570, 34.898674, 35.278519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.187363, 37.786629, 42.477032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816067, 37.663681, 42.393227>,  <38.593288, 37.589912, 42.342945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816067, 37.663681, 42.393227>,  <39.187363, 37.786629, 42.477032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816067, 37.663681, 42.393227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101329, 0.332996, -0.937468,
		0.357918, -0.891424, -0.277954,
		-0.928238, -0.307372, -0.209512,
		38.537594, 37.571472, 42.330372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150604, 37.662453, 41.814419>,  <39.187363, 37.786629, 42.477032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150604, 37.662453, 41.814419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.757862, 37.649208, 41.889099>,  <38.522217, 37.641262, 41.933907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.757862, 37.649208, 41.889099>,  <39.150604, 37.662453, 41.814419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757862, 37.649208, 41.889099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189070, 0.245265, -0.950840,
		-0.014306, -0.968890, -0.247076,
		-0.981859, -0.033112, 0.186697,
		38.463303, 37.639275, 41.945107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705254, 37.143246, 41.323486>,  <39.150604, 37.662453, 41.814419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705254, 37.143246, 41.323486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.496471, 37.455311, 41.461422>,  <38.371201, 37.642548, 41.544186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.496471, 37.455311, 41.461422>,  <38.705254, 37.143246, 41.323486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496471, 37.455311, 41.461422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276659, 0.227583, -0.933630,
		-0.806860, -0.582716, 0.097050,
		-0.521954, 0.780159, 0.344841,
		38.339886, 37.689358, 41.564873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208969, 37.304070, 40.760376>,  <38.705254, 37.143246, 41.323486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208969, 37.304070, 40.760376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158623, 37.626541, 40.991627>,  <38.128414, 37.820026, 41.130379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158623, 37.626541, 40.991627>,  <38.208969, 37.304070, 40.760376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158623, 37.626541, 40.991627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393550, 0.494367, -0.775061,
		-0.910646, -0.325073, 0.255050,
		-0.125863, 0.806182, 0.578126,
		38.120865, 37.868397, 41.165066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625103, 37.584820, 40.532028>,  <38.208969, 37.304070, 40.760376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625103, 37.584820, 40.532028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791538, 37.888016, 40.732952>,  <37.891399, 38.069935, 40.853508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791538, 37.888016, 40.732952>,  <37.625103, 37.584820, 40.532028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791538, 37.888016, 40.732952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319808, 0.639094, -0.699487,
		-0.851229, 0.130408, 0.508334,
		0.416092, 0.757993, 0.502310,
		37.916367, 38.115414, 40.883644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137650, 38.125790, 40.399147>,  <37.625103, 37.584820, 40.532028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137650, 38.125790, 40.399147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494400, 38.284748, 40.485523>,  <37.708450, 38.380123, 40.537350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494400, 38.284748, 40.485523>,  <37.137650, 38.125790, 40.399147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494400, 38.284748, 40.485523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088097, 0.620949, -0.778885,
		-0.443612, 0.675647, 0.588820,
		0.891878, 0.397396, 0.215939,
		37.761963, 38.403965, 40.550304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005566, 38.844601, 40.140194>,  <37.137650, 38.125790, 40.399147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005566, 38.844601, 40.140194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404743, 38.842670, 40.165779>,  <37.644249, 38.841515, 40.181129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404743, 38.842670, 40.165779>,  <37.005566, 38.844601, 40.140194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404743, 38.842670, 40.165779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056720, 0.532084, -0.844790,
		-0.029962, 0.846678, 0.531261,
		0.997940, -0.004822, 0.063966,
		37.704124, 38.841225, 40.184967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177673, 39.603352, 40.072681>,  <37.005566, 38.844601, 40.140194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177673, 39.603352, 40.072681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476498, 39.357738, 39.970806>,  <37.655792, 39.210373, 39.909683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476498, 39.357738, 39.970806>,  <37.177673, 39.603352, 40.072681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476498, 39.357738, 39.970806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021485, 0.360624, -0.932463,
		0.664405, 0.702081, 0.256217,
		0.747063, -0.614029, -0.254685,
		37.700615, 39.173531, 39.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739998, 40.022301, 39.689663>,  <37.177673, 39.603352, 40.072681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739998, 40.022301, 39.689663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788322, 39.636288, 39.596619>,  <37.817318, 39.404678, 39.540791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788322, 39.636288, 39.596619>,  <37.739998, 40.022301, 39.689663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788322, 39.636288, 39.596619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037800, 0.229689, -0.972530,
		0.991956, 0.126283, -0.008730,
		0.120809, -0.965037, -0.232615,
		37.824566, 39.346775, 39.526833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082741, 40.041145, 39.073978>,  <37.739998, 40.022301, 39.689663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082741, 40.041145, 39.073978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914131, 39.678833, 39.091312>,  <37.812965, 39.461445, 39.101715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914131, 39.678833, 39.091312>,  <38.082741, 40.041145, 39.073978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914131, 39.678833, 39.091312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033872, -0.032030, -0.998913,
		0.906186, -0.422530, -0.017180,
		-0.421520, -0.905783, 0.043337,
		37.787674, 39.407097, 39.104313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565536, 39.668819, 38.517872>,  <38.082741, 40.041145, 39.073978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565536, 39.668819, 38.517872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242424, 39.437798, 38.565079>,  <38.048557, 39.299187, 38.593403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242424, 39.437798, 38.565079>,  <38.565536, 39.668819, 38.517872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242424, 39.437798, 38.565079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100664, -0.062108, -0.992980,
		0.580826, -0.813989, -0.007969,
		-0.807779, -0.577551, 0.118013,
		38.000092, 39.264534, 38.600483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655262, 39.140701, 37.990181>,  <38.565536, 39.668819, 38.517872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655262, 39.140701, 37.990181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265045, 39.150562, 38.077549>,  <38.030914, 39.156479, 38.129971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265045, 39.150562, 38.077549>,  <38.655262, 39.140701, 37.990181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265045, 39.150562, 38.077549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218796, -0.013791, -0.975673,
		-0.021025, -0.999601, 0.018844,
		-0.975544, 0.024636, 0.218419,
		37.972382, 39.157959, 38.143074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303398, 38.561214, 37.574036>,  <38.655262, 39.140701, 37.990181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303398, 38.561214, 37.574036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052521, 38.857681, 37.669788>,  <37.901993, 39.035561, 37.727242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052521, 38.857681, 37.669788>,  <38.303398, 38.561214, 37.574036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052521, 38.857681, 37.669788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314388, 0.040287, -0.948439,
		-0.712593, -0.670115, 0.207745,
		-0.627194, 0.741163, 0.239384,
		37.864361, 39.080029, 37.741604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694000, 38.450592, 37.145065>,  <38.303398, 38.561214, 37.574036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694000, 38.450592, 37.145065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630318, 38.822109, 37.278927>,  <37.592110, 39.045021, 37.359245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630318, 38.822109, 37.278927>,  <37.694000, 38.450592, 37.145065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630318, 38.822109, 37.278927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374434, 0.256845, -0.890971,
		-0.913484, -0.267153, 0.306882,
		-0.159204, 0.928795, 0.334655,
		37.582558, 39.100746, 37.379322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932781, 38.565895, 36.995258>,  <37.694000, 38.450592, 37.145065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932781, 38.565895, 36.995258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121666, 38.917782, 37.017605>,  <37.234997, 39.128914, 37.031013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121666, 38.917782, 37.017605>,  <36.932781, 38.565895, 36.995258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121666, 38.917782, 37.017605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461107, 0.300533, -0.834901,
		-0.751264, 0.368488, 0.547557,
		0.472210, 0.879714, 0.055866,
		37.263329, 39.181698, 37.034367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500854, 39.087158, 36.710159>,  <36.932781, 38.565895, 36.995258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500854, 39.087158, 36.710159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856529, 39.267723, 36.680305>,  <37.069935, 39.376064, 36.662392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856529, 39.267723, 36.680305>,  <36.500854, 39.087158, 36.710159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856529, 39.267723, 36.680305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220461, 0.279770, -0.934412,
		-0.400926, 0.847322, 0.348287,
		0.889188, 0.451414, -0.074634,
		37.123287, 39.403149, 36.657917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395374, 39.659695, 36.187374>,  <36.500854, 39.087158, 36.710159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395374, 39.659695, 36.187374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795071, 39.670097, 36.198959>,  <37.034889, 39.676338, 36.205910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795071, 39.670097, 36.198959>,  <36.395374, 39.659695, 36.187374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795071, 39.670097, 36.198959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014298, 0.446839, -0.894500,
		-0.036205, 0.894236, 0.446128,
		0.999242, 0.026006, 0.028963,
		37.094845, 39.677898, 36.207649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662651, 40.367714, 36.062729>,  <36.395374, 39.659695, 36.187374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662651, 40.367714, 36.062729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980953, 40.139660, 35.981022>,  <37.171932, 40.002827, 35.931995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980953, 40.139660, 35.981022>,  <36.662651, 40.367714, 36.062729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980953, 40.139660, 35.981022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172193, 0.536362, -0.826236,
		0.580628, 0.622305, 0.524984,
		0.795752, -0.570134, -0.204270,
		37.219677, 39.968620, 35.919743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189713, 40.775623, 35.904339>,  <36.662651, 40.367714, 36.062729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189713, 40.775623, 35.904339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285294, 40.431637, 35.723957>,  <37.342640, 40.225246, 35.615726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285294, 40.431637, 35.723957>,  <37.189713, 40.775623, 35.904339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285294, 40.431637, 35.723957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234391, 0.501756, -0.832647,
		0.942318, 0.093261, 0.321463,
		0.238950, -0.859967, -0.450955,
		37.356979, 40.173645, 35.588669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925098, 40.811161, 35.668880>,  <37.189713, 40.775623, 35.904339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925098, 40.811161, 35.668880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759270, 40.538712, 35.427483>,  <37.659775, 40.375244, 35.282642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759270, 40.538712, 35.427483>,  <37.925098, 40.811161, 35.668880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759270, 40.538712, 35.427483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454383, 0.419652, -0.785766,
		0.788460, -0.599972, 0.135515,
		-0.414568, -0.681121, -0.603496,
		37.634899, 40.334373, 35.246433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502811, 40.571537, 35.250496>,  <37.925098, 40.811161, 35.668880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502811, 40.571537, 35.250496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180901, 40.420021, 35.067699>,  <37.987755, 40.329109, 34.958019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180901, 40.420021, 35.067699>,  <38.502811, 40.571537, 35.250496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180901, 40.420021, 35.067699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350807, 0.317527, -0.880972,
		0.478813, -0.869306, -0.122657,
		-0.804781, -0.378793, -0.456995,
		37.939465, 40.306385, 34.930603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827652, 40.108467, 34.832497>,  <38.502811, 40.571537, 35.250496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827652, 40.108467, 34.832497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468235, 40.233376, 34.709141>,  <38.252583, 40.308319, 34.635128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468235, 40.233376, 34.709141>,  <38.827652, 40.108467, 34.832497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468235, 40.233376, 34.709141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406738, 0.328551, -0.852419,
		-0.164865, -0.891370, -0.422230,
		-0.898545, 0.312271, -0.308387,
		38.198673, 40.327057, 34.616623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721584, 39.407158, 34.843525>,  <38.827652, 40.108467, 34.832497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721584, 39.407158, 34.843525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461369, 39.527119, 34.564426>,  <38.305237, 39.599094, 34.396965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461369, 39.527119, 34.564426>,  <38.721584, 39.407158, 34.843525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461369, 39.527119, 34.564426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060759, 0.895236, 0.441431,
		0.757037, 0.329564, -0.564166,
		-0.650541, 0.299901, -0.697750,
		38.266205, 39.617088, 34.355103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985996, 39.334995, 35.541466>,  <38.721584, 39.407158, 34.843525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985996, 39.334995, 35.541466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265289, 39.564072, 35.369652>,  <39.432865, 39.701515, 35.266563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265289, 39.564072, 35.369652>,  <38.985996, 39.334995, 35.541466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265289, 39.564072, 35.369652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515215, 0.014574, 0.856937,
		0.497017, -0.819644, -0.284881,
		0.698231, 0.572687, -0.429537,
		39.474758, 39.735878, 35.240791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534901, 39.032070, 35.696918>,  <38.985996, 39.334995, 35.541466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534901, 39.032070, 35.696918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680748, 39.397999, 35.627468>,  <39.768257, 39.617558, 35.585796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680748, 39.397999, 35.627468>,  <39.534901, 39.032070, 35.696918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680748, 39.397999, 35.627468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451804, -0.010765, 0.892052,
		0.814203, -0.403705, -0.417247,
		0.364618, 0.914826, -0.173631,
		39.790134, 39.672447, 35.575378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234039, 38.994228, 35.895588>,  <39.534901, 39.032070, 35.696918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234039, 38.994228, 35.895588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.181068, 39.390705, 35.894581>,  <40.149284, 39.628590, 35.893978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.181068, 39.390705, 35.894581>,  <40.234039, 38.994228, 35.895588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181068, 39.390705, 35.894581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479851, 0.066333, 0.874839,
		0.867298, 0.114648, -0.484408,
		-0.132431, 0.991189, -0.002516,
		40.141338, 39.688061, 35.893826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908382, 39.353207, 35.972435>,  <40.234039, 38.994228, 35.895588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908382, 39.353207, 35.972435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.626972, 39.610603, 36.093079>,  <40.458126, 39.765041, 36.165466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.626972, 39.610603, 36.093079>,  <40.908382, 39.353207, 35.972435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626972, 39.610603, 36.093079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410998, 0.022172, 0.911367,
		0.579769, 0.765133, -0.280071,
		-0.703526, 0.643491, 0.301613,
		40.415913, 39.803650, 36.183563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269653, 39.939644, 36.332493>,  <40.908382, 39.353207, 35.972435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269653, 39.939644, 36.332493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895565, 39.957970, 36.472935>,  <40.671112, 39.968964, 36.557198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895565, 39.957970, 36.472935>,  <41.269653, 39.939644, 36.332493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895565, 39.957970, 36.472935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347635, -0.069486, 0.935051,
		0.067235, 0.996530, 0.049058,
		-0.935216, 0.045814, 0.351101,
		40.615002, 39.971714, 36.578266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248093, 40.553738, 36.689598>,  <41.269653, 39.939644, 36.332493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248093, 40.553738, 36.689598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.969204, 40.312782, 36.845036>,  <40.801872, 40.168209, 36.938297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.969204, 40.312782, 36.845036>,  <41.248093, 40.553738, 36.689598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969204, 40.312782, 36.845036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453051, 0.049815, 0.890092,
		-0.555540, 0.796646, 0.238181,
		-0.697223, -0.602390, 0.388595,
		40.760036, 40.132065, 36.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104916, 40.804840, 37.404388>,  <41.248093, 40.553738, 36.689598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104916, 40.804840, 37.404388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.961033, 40.431652, 37.399006>,  <40.874702, 40.207741, 37.395779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.961033, 40.431652, 37.399006>,  <41.104916, 40.804840, 37.404388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961033, 40.431652, 37.399006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216564, -0.097504, 0.971387,
		-0.907586, 0.346500, 0.237120,
		-0.359706, -0.932969, -0.013454,
		40.853123, 40.151760, 37.394970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683754, 40.718124, 38.046368>,  <41.104916, 40.804840, 37.404388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683754, 40.718124, 38.046368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.720993, 40.336666, 37.931900>,  <40.743336, 40.107792, 37.863220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.720993, 40.336666, 37.931900>,  <40.683754, 40.718124, 38.046368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720993, 40.336666, 37.931900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004945, -0.287854, 0.957662,
		-0.995645, -0.087737, -0.031514,
		0.093094, -0.953647, -0.286167,
		40.748920, 40.050571, 37.846050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168159, 40.345093, 38.385857>,  <40.683754, 40.718124, 38.046368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168159, 40.345093, 38.385857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429829, 40.058399, 38.289227>,  <40.586830, 39.886383, 38.231251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429829, 40.058399, 38.289227>,  <40.168159, 40.345093, 38.385857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429829, 40.058399, 38.289227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181456, -0.458787, 0.869821,
		-0.734257, -0.525177, -0.430181,
		0.654171, -0.716731, -0.241571,
		40.626080, 39.843380, 38.216755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894493, 39.685505, 38.560772>,  <40.168159, 40.345093, 38.385857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894493, 39.685505, 38.560772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.290943, 39.636543, 38.540066>,  <40.528812, 39.607166, 38.527641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.290943, 39.636543, 38.540066>,  <39.894493, 39.685505, 38.560772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290943, 39.636543, 38.540066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005650, -0.427996, 0.903763,
		-0.132778, -0.895454, -0.424891,
		0.991130, -0.122400, -0.051769,
		40.588284, 39.599823, 38.524536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993340, 39.010880, 38.802906>,  <39.894493, 39.685505, 38.560772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993340, 39.010880, 38.802906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353634, 39.182560, 38.829647>,  <40.569809, 39.285568, 38.845692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353634, 39.182560, 38.829647>,  <39.993340, 39.010880, 38.802906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353634, 39.182560, 38.829647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129018, -0.411314, 0.902316,
		0.414773, -0.804119, -0.425858,
		0.900732, 0.429200, 0.066856,
		40.623852, 39.311321, 38.849705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356911, 38.468647, 39.105816>,  <39.993340, 39.010880, 38.802906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356911, 38.468647, 39.105816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577766, 38.794270, 39.177872>,  <40.710278, 38.989643, 39.221107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577766, 38.794270, 39.177872>,  <40.356911, 38.468647, 39.105816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577766, 38.794270, 39.177872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269886, -0.378934, 0.885195,
		0.788865, -0.440130, -0.428926,
		0.552135, 0.814061, 0.180143,
		40.743408, 39.038486, 39.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877235, 38.222141, 39.420670>,  <40.356911, 38.468647, 39.105816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877235, 38.222141, 39.420670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938164, 38.597763, 39.543941>,  <40.974720, 38.823135, 39.617905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938164, 38.597763, 39.543941>,  <40.877235, 38.222141, 39.420670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938164, 38.597763, 39.543941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306813, -0.341342, 0.888454,
		0.939502, -0.040776, -0.340107,
		0.152320, 0.939054, 0.308181,
		40.983860, 38.879478, 39.636395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608650, 38.281036, 39.672829>,  <40.877235, 38.222141, 39.420670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608650, 38.281036, 39.672829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.356838, 38.537113, 39.848942>,  <41.205750, 38.690758, 39.954609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.356838, 38.537113, 39.848942>,  <41.608650, 38.281036, 39.672829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356838, 38.537113, 39.848942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341531, -0.280982, 0.896887,
		0.697890, 0.714986, -0.041758,
		-0.629529, 0.640190, 0.440284,
		41.167980, 38.729172, 39.981026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018177, 38.379784, 40.265636>,  <41.608650, 38.281036, 39.672829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018177, 38.379784, 40.265636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.643970, 38.506283, 40.328629>,  <41.419449, 38.582184, 40.366425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.643970, 38.506283, 40.328629>,  <42.018177, 38.379784, 40.265636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643970, 38.506283, 40.328629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088232, -0.222495, 0.970933,
		0.342093, 0.922217, 0.180244,
		-0.935514, 0.316246, 0.157483,
		41.363316, 38.601158, 40.375874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068462, 38.785954, 40.749752>,  <42.018177, 38.379784, 40.265636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068462, 38.785954, 40.749752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692112, 38.650597, 40.756073>,  <41.466301, 38.569382, 40.759865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692112, 38.650597, 40.756073>,  <42.068462, 38.785954, 40.749752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692112, 38.650597, 40.756073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136215, -0.335198, 0.932249,
		-0.310166, 0.879281, 0.361473,
		-0.940874, -0.338389, 0.015804,
		41.409851, 38.549080, 40.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707348, 38.981125, 41.437626>,  <42.068462, 38.785954, 40.749752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707348, 38.981125, 41.437626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500713, 38.679714, 41.274979>,  <41.376732, 38.498867, 41.177391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500713, 38.679714, 41.274979>,  <41.707348, 38.981125, 41.437626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500713, 38.679714, 41.274979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045869, -0.449857, 0.891922,
		-0.855005, 0.479407, 0.197828,
		-0.516587, -0.753524, -0.406620,
		41.345737, 38.453655, 41.152992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.759514, 38.848186, 41.932564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.854240, 38.520508, 41.723629>,  <40.911076, 38.323902, 41.598267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.854240, 38.520508, 41.723629>,  <40.759514, 38.848186, 41.932564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854240, 38.520508, 41.723629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105137, -0.556086, 0.824448,
		-0.965850, -0.140323, -0.217816,
		0.236814, -0.819194, -0.522342,
		40.925285, 38.274750, 41.566925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218838, 38.435917, 41.913868>,  <40.759514, 38.848186, 41.932564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218838, 38.435917, 41.913868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519634, 38.184738, 41.833675>,  <40.700111, 38.034031, 41.785561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519634, 38.184738, 41.833675>,  <40.218838, 38.435917, 41.913868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519634, 38.184738, 41.833675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179442, -0.487661, 0.854393,
		-0.634280, -0.606522, -0.479396,
		0.751991, -0.627948, -0.200478,
		40.745232, 37.996353, 41.773533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999298, 37.813545, 42.187183>,  <40.218838, 38.435917, 41.913868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999298, 37.813545, 42.187183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382481, 37.729553, 42.108982>,  <40.612392, 37.679157, 42.062061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382481, 37.729553, 42.108982>,  <39.999298, 37.813545, 42.187183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382481, 37.729553, 42.108982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018280, -0.635373, 0.771989,
		-0.286320, -0.743109, -0.604823,
		0.957960, -0.209980, -0.195504,
		40.669868, 37.666557, 42.050331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959789, 37.172100, 42.303925>,  <39.999298, 37.813545, 42.187183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959789, 37.172100, 42.303925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.334019, 37.305676, 42.349846>,  <40.558556, 37.385818, 42.377399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.334019, 37.305676, 42.349846>,  <39.959789, 37.172100, 42.303925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334019, 37.305676, 42.349846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101537, -0.565787, 0.818276,
		0.338207, -0.753904, -0.563244,
		0.935578, 0.333937, 0.114804,
		40.614693, 37.405857, 42.384289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355682, 36.560406, 42.441868>,  <39.959789, 37.172100, 42.303925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355682, 36.560406, 42.441868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543388, 36.884811, 42.581604>,  <40.656013, 37.079456, 42.665447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543388, 36.884811, 42.581604>,  <40.355682, 36.560406, 42.441868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543388, 36.884811, 42.581604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236953, -0.496744, 0.834924,
		0.850672, -0.309024, -0.425278,
		0.469266, 0.811017, 0.349342,
		40.684170, 37.128117, 42.686405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876900, 36.323887, 42.872166>,  <40.355682, 36.560406, 42.441868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876900, 36.323887, 42.872166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827953, 36.688614, 43.028938>,  <40.798584, 36.907452, 43.123001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827953, 36.688614, 43.028938>,  <40.876900, 36.323887, 42.872166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827953, 36.688614, 43.028938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172022, -0.369434, 0.913196,
		0.977463, 0.179168, -0.111646,
		-0.122370, 0.911821, 0.391929,
		40.791241, 36.962162, 43.146519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473545, 36.566929, 43.243217>,  <40.876900, 36.323887, 42.872166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473545, 36.566929, 43.243217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175282, 36.790844, 43.387787>,  <40.996323, 36.925194, 43.474529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175282, 36.790844, 43.387787>,  <41.473545, 36.566929, 43.243217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175282, 36.790844, 43.387787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292591, -0.212244, 0.932386,
		0.598647, 0.800994, -0.005526,
		-0.745662, 0.559787, 0.361423,
		40.951584, 36.958778, 43.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701809, 36.830357, 43.864391>,  <41.473545, 36.566929, 43.243217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701809, 36.830357, 43.864391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.312565, 36.903496, 43.920429>,  <41.079018, 36.947380, 43.954052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.312565, 36.903496, 43.920429>,  <41.701809, 36.830357, 43.864391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312565, 36.903496, 43.920429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098141, -0.221136, 0.970293,
		0.208398, 0.957948, 0.197244,
		-0.973108, 0.182849, 0.140098,
		41.020634, 36.958351, 43.962460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578884, 37.188831, 44.480465>,  <41.701809, 36.830357, 43.864391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578884, 37.188831, 44.480465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203293, 37.053989, 44.453098>,  <40.977940, 36.973083, 44.436680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203293, 37.053989, 44.453098>,  <41.578884, 37.188831, 44.480465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203293, 37.053989, 44.453098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100267, 0.077985, 0.991900,
		-0.329039, 0.938232, -0.107027,
		-0.938978, -0.337105, -0.068413,
		40.921600, 36.952858, 44.432575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064350, 37.584835, 45.004135>,  <41.578884, 37.188831, 44.480465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064350, 37.584835, 45.004135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891453, 37.228924, 44.945530>,  <40.787716, 37.015377, 44.910366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.891453, 37.228924, 44.945530>,  <41.064350, 37.584835, 45.004135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891453, 37.228924, 44.945530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074327, -0.126768, 0.989144,
		-0.898689, 0.438440, -0.011340,
		-0.432242, -0.889776, -0.146513,
		40.761780, 36.961990, 44.901577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642132, 37.473194, 45.561466>,  <41.064350, 37.584835, 45.004135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642132, 37.473194, 45.561466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.680489, 37.105309, 45.409191>,  <40.703503, 36.884575, 45.317825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.680489, 37.105309, 45.409191>,  <40.642132, 37.473194, 45.561466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680489, 37.105309, 45.409191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112537, -0.369980, 0.922199,
		-0.989009, -0.131276, 0.068022,
		0.095896, -0.919718, -0.380687,
		40.709259, 36.829391, 45.294987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263336, 37.015163, 46.082027>,  <40.642132, 37.473194, 45.561466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263336, 37.015163, 46.082027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468502, 36.762035, 45.850006>,  <40.591602, 36.610161, 45.710793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468502, 36.762035, 45.850006>,  <40.263336, 37.015163, 46.082027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468502, 36.762035, 45.850006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181702, -0.580362, 0.793829,
		-0.838988, -0.512565, -0.182693,
		0.512917, -0.632817, -0.580051,
		40.622375, 36.572189, 45.675991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001431, 36.343132, 46.280590>,  <40.263336, 37.015163, 46.082027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001431, 36.343132, 46.280590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362587, 36.289391, 46.117252>,  <40.579281, 36.257145, 46.019249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362587, 36.289391, 46.117252>,  <40.001431, 36.343132, 46.280590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362587, 36.289391, 46.117252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304280, -0.471264, 0.827843,
		-0.303658, -0.871700, -0.384618,
		0.902887, -0.134349, -0.408343,
		40.633453, 36.249084, 45.994751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088558, 35.525433, 46.336098>,  <40.001431, 36.343132, 46.280590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088558, 35.525433, 46.336098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447941, 35.691864, 46.280014>,  <40.663570, 35.791721, 46.246365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447941, 35.691864, 46.280014>,  <40.088558, 35.525433, 46.336098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447941, 35.691864, 46.280014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385904, -0.596000, 0.704175,
		0.209425, -0.686777, -0.696045,
		0.898454, 0.416079, -0.140213,
		40.717476, 35.816689, 46.237949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595688, 34.996460, 46.347134>,  <40.088558, 35.525433, 46.336098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595688, 34.996460, 46.347134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833820, 35.309967, 46.417889>,  <40.976700, 35.498070, 46.460342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.833820, 35.309967, 46.417889>,  <40.595688, 34.996460, 46.347134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833820, 35.309967, 46.417889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352221, -0.452440, 0.819291,
		0.722165, -0.425447, -0.545411,
		0.595331, 0.783768, 0.176885,
		41.012421, 35.545097, 46.470955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277134, 34.739170, 46.409142>,  <40.595688, 34.996460, 46.347134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277134, 34.739170, 46.409142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270027, 35.090054, 46.601055>,  <41.265762, 35.300583, 46.716206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270027, 35.090054, 46.601055>,  <41.277134, 34.739170, 46.409142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270027, 35.090054, 46.601055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401014, -0.433321, 0.807106,
		0.915899, 0.206744, -0.344072,
		-0.017771, 0.877205, 0.479786,
		41.264694, 35.353214, 46.744991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921032, 34.813801, 46.745480>,  <41.277134, 34.739170, 46.409142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921032, 34.813801, 46.745480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690720, 35.070995, 46.947487>,  <41.552532, 35.225311, 47.068691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690720, 35.070995, 46.947487>,  <41.921032, 34.813801, 46.745480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690720, 35.070995, 46.947487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377654, -0.338683, 0.861784,
		0.725159, 0.686919, -0.047821,
		-0.575779, 0.642990, 0.505017,
		41.517986, 35.263893, 47.098991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364754, 35.296680, 47.089584>,  <41.921032, 34.813801, 46.745480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364754, 35.296680, 47.089584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.009857, 35.252335, 47.268700>,  <41.796921, 35.225727, 47.376167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.009857, 35.252335, 47.268700>,  <42.364754, 35.296680, 47.089584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009857, 35.252335, 47.268700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461222, -0.194604, 0.865681,
		-0.008835, 0.974596, 0.223795,
		-0.887241, -0.110868, 0.447786,
		41.743687, 35.219074, 47.403034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506725, 35.199055, 47.803799>,  <42.364754, 35.296680, 47.089584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506725, 35.199055, 47.803799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.112293, 35.152466, 47.851280>,  <41.875633, 35.124512, 47.879768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.112293, 35.152466, 47.851280>,  <42.506725, 35.199055, 47.803799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112293, 35.152466, 47.851280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158693, -0.445653, 0.881028,
		-0.049715, 0.887597, 0.457931,
		-0.986076, -0.116471, 0.118700,
		41.816471, 35.117523, 47.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236584, 35.608971, 48.311039>,  <42.506725, 35.199055, 47.803799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236584, 35.608971, 48.311039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983742, 35.300926, 48.276695>,  <41.832035, 35.116100, 48.256088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983742, 35.300926, 48.276695>,  <42.236584, 35.608971, 48.311039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983742, 35.300926, 48.276695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199012, -0.268428, 0.942518,
		-0.748892, 0.578682, 0.322936,
		-0.632104, -0.770113, -0.085858,
		41.794109, 35.069893, 48.250938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057980, 35.438004, 48.945057>,  <42.236584, 35.608971, 48.311039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057980, 35.438004, 48.945057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.897541, 35.118038, 48.766506>,  <41.801277, 34.926060, 48.659374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.897541, 35.118038, 48.766506>,  <42.057980, 35.438004, 48.945057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897541, 35.118038, 48.766506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176867, -0.545752, 0.819068,
		-0.898798, 0.249578, 0.360380,
		-0.401100, -0.799916, -0.446378,
		41.777210, 34.878063, 48.632591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646595, 35.230934, 49.487762>,  <42.057980, 35.438004, 48.945057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646595, 35.230934, 49.487762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.719975, 34.923573, 49.242519>,  <41.764004, 34.739155, 49.095375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.719975, 34.923573, 49.242519>,  <41.646595, 35.230934, 49.487762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719975, 34.923573, 49.242519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432642, -0.496928, 0.752252,
		-0.882704, -0.403256, 0.241284,
		0.183450, -0.768406, -0.613106,
		41.775009, 34.693050, 49.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314957, 34.496845, 49.712677>,  <41.646595, 35.230934, 49.487762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314957, 34.496845, 49.712677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.666763, 34.494205, 49.522343>,  <41.877846, 34.492622, 49.408142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.666763, 34.494205, 49.522343>,  <41.314957, 34.496845, 49.712677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666763, 34.494205, 49.522343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435480, -0.391995, 0.810369,
		-0.191875, -0.919944, -0.341888,
		0.879512, -0.006604, -0.475831,
		41.930618, 34.492226, 49.379593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031261, 35.160213, 50.058167>,  <41.314957, 34.496845, 49.712677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031261, 35.160213, 50.058167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739048, 35.287827, 50.299675>,  <40.563721, 35.364395, 50.444580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739048, 35.287827, 50.299675>,  <41.031261, 35.160213, 50.058167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739048, 35.287827, 50.299675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675943, -0.212166, -0.705753,
		-0.097055, -0.923692, 0.370639,
		-0.730535, 0.319028, 0.603771,
		40.519886, 35.383537, 50.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535336, 34.639404, 50.085091>,  <41.031261, 35.160213, 50.058167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535336, 34.639404, 50.085091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353436, 34.983715, 50.176529>,  <40.244293, 35.190304, 50.231392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.353436, 34.983715, 50.176529>,  <40.535336, 34.639404, 50.085091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353436, 34.983715, 50.176529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786596, -0.267808, -0.556369,
		-0.417692, -0.432824, 0.798872,
		-0.454754, 0.860780, 0.228597,
		40.217010, 35.241947, 50.245110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811901, 34.521088, 50.236706>,  <40.535336, 34.639404, 50.085091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811901, 34.521088, 50.236706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.790730, 34.911758, 50.153477>,  <39.778027, 35.146160, 50.103539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.790730, 34.911758, 50.153477>,  <39.811901, 34.521088, 50.236706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790730, 34.911758, 50.153477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826261, -0.159850, -0.540131,
		-0.560795, 0.143333, 0.815453,
		-0.052932, 0.976680, -0.208073,
		39.774849, 35.204762, 50.091053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142567, 34.652756, 50.240959>,  <39.811901, 34.521088, 50.236706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142567, 34.652756, 50.240959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.280052, 34.974712, 50.047462>,  <39.362545, 35.167889, 49.931366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.280052, 34.974712, 50.047462>,  <39.142567, 34.652756, 50.240959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280052, 34.974712, 50.047462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815911, 0.000936, -0.578177,
		-0.464919, 0.593417, 0.657044,
		0.343714, 0.804895, -0.483740,
		39.383167, 35.216183, 49.902340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567265, 34.936573, 50.005917>,  <39.142567, 34.652756, 50.240959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567265, 34.936573, 50.005917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835884, 35.115574, 49.769691>,  <38.997055, 35.222973, 49.627956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835884, 35.115574, 49.769691>,  <38.567265, 34.936573, 50.005917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835884, 35.115574, 49.769691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684985, 0.071058, -0.725084,
		-0.282512, 0.891456, 0.354251,
		0.671553, 0.447502, -0.590558,
		39.037350, 35.249825, 49.592525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311310, 35.629391, 49.768116>,  <38.567265, 34.936573, 50.005917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311310, 35.629391, 49.768116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578629, 35.496731, 49.501766>,  <38.739021, 35.417137, 49.341957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578629, 35.496731, 49.501766>,  <38.311310, 35.629391, 49.768116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578629, 35.496731, 49.501766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634956, 0.212047, -0.742877,
		0.387570, 0.919264, -0.068871,
		0.668297, -0.331646, -0.665875,
		38.779118, 35.397236, 49.302002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106152, 36.007164, 49.272049>,  <38.311310, 35.629391, 49.768116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106152, 36.007164, 49.272049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346653, 35.735504, 49.103645>,  <38.490955, 35.572510, 49.002602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346653, 35.735504, 49.103645>,  <38.106152, 36.007164, 49.272049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346653, 35.735504, 49.103645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520054, 0.067423, -0.851468,
		0.606660, 0.730896, -0.312656,
		0.601255, -0.679150, -0.421009,
		38.527031, 35.531757, 48.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290131, 36.287643, 48.630447>,  <38.106152, 36.007164, 49.272049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290131, 36.287643, 48.630447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345470, 35.893314, 48.592461>,  <38.378674, 35.656719, 48.569668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345470, 35.893314, 48.592461>,  <38.290131, 36.287643, 48.630447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345470, 35.893314, 48.592461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611653, -0.009631, -0.791068,
		0.778936, 0.167530, -0.604312,
		0.138348, -0.985820, -0.094969,
		38.386974, 35.597569, 48.563969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492332, 36.207767, 47.946278>,  <38.290131, 36.287643, 48.630447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492332, 36.207767, 47.946278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365364, 35.843491, 48.052017>,  <38.289185, 35.624924, 48.115463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365364, 35.843491, 48.052017>,  <38.492332, 36.207767, 47.946278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365364, 35.843491, 48.052017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438460, -0.106235, -0.892450,
		0.840833, -0.399186, -0.365582,
		-0.317416, -0.910694, 0.264353,
		38.270138, 35.570282, 48.131325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732735, 35.742180, 47.382900>,  <38.492332, 36.207767, 47.946278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732735, 35.742180, 47.382900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407829, 35.603077, 47.570217>,  <38.212887, 35.519615, 47.682606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407829, 35.603077, 47.570217>,  <38.732735, 35.742180, 47.382900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407829, 35.603077, 47.570217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408003, -0.235008, -0.882216,
		0.416847, -0.907655, 0.049003,
		-0.812264, -0.347756, 0.468288,
		38.164150, 35.498749, 47.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611790, 36.276222, 46.942928>,  <38.732735, 35.742180, 47.382900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611790, 36.276222, 46.942928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325653, 36.069759, 46.754517>,  <38.153973, 35.945881, 46.641468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325653, 36.069759, 46.754517>,  <38.611790, 36.276222, 46.942928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325653, 36.069759, 46.754517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165284, 0.529969, -0.831754,
		0.678951, -0.672838, -0.293793,
		-0.715337, -0.516161, -0.471032,
		38.111053, 35.914909, 46.613209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998363, 36.065437, 46.220688>,  <38.611790, 36.276222, 46.942928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998363, 36.065437, 46.220688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610447, 35.990196, 46.158558>,  <38.377697, 35.945053, 46.121281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610447, 35.990196, 46.158558>,  <38.998363, 36.065437, 46.220688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610447, 35.990196, 46.158558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156373, 0.009357, -0.987654,
		0.187231, -0.982105, 0.020339,
		-0.969790, -0.188100, -0.155327,
		38.319511, 35.933765, 46.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890320, 35.685940, 45.594440>,  <38.998363, 36.065437, 46.220688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890320, 35.685940, 45.594440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539513, 35.876415, 45.620003>,  <38.329029, 35.990700, 45.635342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539513, 35.876415, 45.620003>,  <38.890320, 35.685940, 45.594440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539513, 35.876415, 45.620003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015689, 0.161324, -0.986777,
		-0.480203, -0.864417, -0.148955,
		-0.877017, 0.476191, 0.063906,
		38.276409, 36.019272, 45.639175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667572, 35.541077, 44.925110>,  <38.890320, 35.685940, 45.594440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667572, 35.541077, 44.925110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435234, 35.833870, 45.067554>,  <38.295830, 36.009548, 45.153019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435234, 35.833870, 45.067554>,  <38.667572, 35.541077, 44.925110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435234, 35.833870, 45.067554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047366, 0.406340, -0.912493,
		-0.812633, -0.546887, -0.201350,
		-0.580847, 0.731985, 0.356109,
		38.260979, 36.053467, 45.174389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080414, 35.649536, 44.480816>,  <38.667572, 35.541077, 44.925110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080414, 35.649536, 44.480816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127728, 35.982445, 44.697460>,  <38.156116, 36.182190, 44.827446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127728, 35.982445, 44.697460>,  <38.080414, 35.649536, 44.480816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127728, 35.982445, 44.697460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080913, 0.551701, -0.830108,
		-0.989677, 0.054366, 0.132600,
		0.118285, 0.832268, 0.541607,
		38.163212, 36.232124, 44.859943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514568, 35.967312, 44.383350>,  <38.080414, 35.649536, 44.480816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514568, 35.967312, 44.383350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777905, 36.249519, 44.488285>,  <37.935905, 36.418846, 44.551247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777905, 36.249519, 44.488285>,  <37.514568, 35.967312, 44.383350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777905, 36.249519, 44.488285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150328, 0.464731, -0.872598,
		-0.737552, 0.535035, 0.412013,
		0.658345, 0.705523, 0.262333,
		37.975407, 36.461178, 44.566986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228870, 36.492664, 44.132847>,  <37.514568, 35.967312, 44.383350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228870, 36.492664, 44.132847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606331, 36.612862, 44.188309>,  <37.832809, 36.684978, 44.221584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606331, 36.612862, 44.188309>,  <37.228870, 36.492664, 44.132847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606331, 36.612862, 44.188309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034908, 0.507008, -0.861234,
		-0.329091, 0.807866, 0.488929,
		0.943653, 0.300492, 0.138651,
		37.889427, 36.703011, 44.229904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238785, 37.202320, 43.818775>,  <37.228870, 36.492664, 44.132847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238785, 37.202320, 43.818775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626503, 37.104950, 43.832733>,  <37.859135, 37.046528, 43.841110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626503, 37.104950, 43.832733>,  <37.238785, 37.202320, 43.818775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626503, 37.104950, 43.832733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156038, 0.499131, -0.852361,
		0.190066, 0.831633, 0.521787,
		0.969292, -0.243423, 0.034898,
		37.917290, 37.031921, 43.843204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641247, 37.867767, 43.666161>,  <37.238785, 37.202320, 43.818775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641247, 37.867767, 43.666161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887012, 37.560898, 43.592464>,  <38.034470, 37.376778, 43.548244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887012, 37.560898, 43.592464>,  <37.641247, 37.867767, 43.666161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887012, 37.560898, 43.592464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198985, 0.376644, -0.904734,
		0.763482, 0.519216, 0.384069,
		0.614410, -0.767173, -0.184245,
		38.071335, 37.330746, 43.537189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167381, 38.122993, 43.381584>,  <37.641247, 37.867767, 43.666161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167381, 38.122993, 43.381584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191349, 37.744682, 43.253895>,  <38.205730, 37.517696, 43.177280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191349, 37.744682, 43.253895>,  <38.167381, 38.122993, 43.381584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191349, 37.744682, 43.253895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259914, 0.323552, -0.909813,
		0.963771, -0.028453, 0.265210,
		0.059922, -0.945783, -0.319225,
		38.209324, 37.460949, 43.158127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858173, 38.071030, 43.028667>,  <38.167381, 38.122993, 43.381584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858173, 38.071030, 43.028667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618572, 37.791794, 42.871761>,  <38.474812, 37.624252, 42.777618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618572, 37.791794, 42.871761>,  <38.858173, 38.071030, 43.028667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618572, 37.791794, 42.871761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137155, 0.393187, -0.909171,
		0.788913, -0.598398, -0.139775,
		-0.599003, -0.698086, -0.392264,
		38.438869, 37.582367, 42.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.582001, 43.757923, 37.218655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207214, 43.748535, 37.079205>,  <43.982342, 43.742905, 36.995537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207214, 43.748535, 37.079205>,  <44.582001, 43.757923, 37.218655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207214, 43.748535, 37.079205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186081, -0.877997, -0.441016,
		-0.295740, -0.478091, 0.827023,
		-0.936969, -0.023467, -0.348623,
		43.926125, 43.741493, 36.974617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184845, 43.228764, 37.475605>,  <44.582001, 43.757923, 37.218655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184845, 43.228764, 37.475605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989677, 43.321491, 37.138988>,  <43.872578, 43.377129, 36.937019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989677, 43.321491, 37.138988>,  <44.184845, 43.228764, 37.475605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989677, 43.321491, 37.138988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013664, -0.965999, -0.258185,
		-0.872783, -0.114474, 0.474495,
		-0.487917, 0.231823, -0.841543,
		43.843304, 43.391037, 36.886524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759937, 42.685440, 37.404484>,  <44.184845, 43.228764, 37.475605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759937, 42.685440, 37.404484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758751, 42.871712, 37.050503>,  <43.758038, 42.983475, 36.838116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758751, 42.871712, 37.050503>,  <43.759937, 42.685440, 37.404484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758751, 42.871712, 37.050503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188569, -0.869338, -0.456830,
		-0.982055, 0.165519, 0.090391,
		-0.002966, 0.465677, -0.884950,
		43.757862, 43.011414, 36.785019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060318, 42.550045, 37.030472>,  <43.759937, 42.685440, 37.404484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060318, 42.550045, 37.030472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350433, 42.634590, 36.768394>,  <43.524502, 42.685318, 36.611149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350433, 42.634590, 36.768394>,  <43.060318, 42.550045, 37.030472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350433, 42.634590, 36.768394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120717, -0.897913, -0.423297,
		-0.677775, 0.386107, -0.625734,
		0.725292, 0.211363, -0.655193,
		43.568020, 42.697998, 36.571838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854591, 42.287758, 36.397793>,  <43.060318, 42.550045, 37.030472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854591, 42.287758, 36.397793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253979, 42.289795, 36.375740>,  <43.493610, 42.291019, 36.362511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253979, 42.289795, 36.375740>,  <42.854591, 42.287758, 36.397793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253979, 42.289795, 36.375740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021256, -0.884166, -0.466689,
		-0.051122, 0.467145, -0.882702,
		0.998466, 0.005095, -0.055130,
		43.553520, 42.291325, 36.359200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921593, 41.904034, 35.802132>,  <42.854591, 42.287758, 36.397793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921593, 41.904034, 35.802132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304295, 41.928562, 35.915878>,  <43.533916, 41.943279, 35.984127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304295, 41.928562, 35.915878>,  <42.921593, 41.904034, 35.802132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304295, 41.928562, 35.915878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224933, -0.775833, -0.589482,
		0.184475, 0.627952, -0.756072,
		0.956752, 0.061321, 0.284369,
		43.591320, 41.946957, 36.001190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414429, 41.797302, 35.159172>,  <42.921593, 41.904034, 35.802132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414429, 41.797302, 35.159172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647858, 41.725983, 35.476070>,  <43.787914, 41.683189, 35.666210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647858, 41.725983, 35.476070>,  <43.414429, 41.797302, 35.159172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647858, 41.725983, 35.476070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459083, -0.732296, -0.502976,
		0.669836, 0.657230, -0.345496,
		0.583577, -0.178300, 0.792242,
		43.822929, 41.672493, 35.713741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070312, 41.606071, 34.895996>,  <43.414429, 41.797302, 35.159172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070312, 41.606071, 34.895996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.062626, 41.470757, 35.272335>,  <44.058014, 41.389568, 35.498138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.062626, 41.470757, 35.272335>,  <44.070312, 41.606071, 34.895996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062626, 41.470757, 35.272335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487845, -0.824571, -0.286513,
		0.872719, 0.453482, 0.180877,
		-0.019217, -0.338285, 0.940847,
		44.056862, 41.369270, 35.554588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777359, 41.342628, 35.149944>,  <44.070312, 41.606071, 34.895996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777359, 41.342628, 35.149944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474648, 41.154774, 35.331810>,  <44.293018, 41.042061, 35.440929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474648, 41.154774, 35.331810>,  <44.777359, 41.342628, 35.149944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474648, 41.154774, 35.331810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434908, -0.881026, -0.186142,
		0.487989, 0.056868, 0.870995,
		-0.756783, -0.469638, 0.454664,
		44.247612, 41.013882, 35.468208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096893, 40.867569, 35.577679>,  <44.777359, 41.342628, 35.149944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096893, 40.867569, 35.577679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718632, 40.745575, 35.532574>,  <44.491673, 40.672379, 35.505512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718632, 40.745575, 35.532574>,  <45.096893, 40.867569, 35.577679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718632, 40.745575, 35.532574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324966, -0.874354, -0.360418,
		0.011327, -0.377477, 0.925950,
		-0.945658, -0.304985, -0.112764,
		44.434933, 40.654079, 35.498745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082996, 40.220840, 35.925625>,  <45.096893, 40.867569, 35.577679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082996, 40.220840, 35.925625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757816, 40.204742, 35.693245>,  <44.562710, 40.195084, 35.553818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757816, 40.204742, 35.693245>,  <45.082996, 40.220840, 35.925625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757816, 40.204742, 35.693245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307747, -0.876614, -0.369918,
		-0.494380, -0.479508, 0.725024,
		-0.812945, -0.040244, -0.580948,
		44.513931, 40.192669, 35.518959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728668, 39.570976, 36.148502>,  <45.082996, 40.220840, 35.925625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728668, 39.570976, 36.148502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604107, 39.676250, 35.783260>,  <44.529369, 39.739414, 35.564114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604107, 39.676250, 35.783260>,  <44.728668, 39.570976, 36.148502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604107, 39.676250, 35.783260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231720, -0.910846, -0.341563,
		-0.921594, -0.317948, 0.222651,
		-0.311400, 0.263189, -0.913105,
		44.510685, 39.755207, 35.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350590, 38.955166, 35.934128>,  <44.728668, 39.570976, 36.148502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350590, 38.955166, 35.934128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438065, 39.162304, 35.603306>,  <44.490547, 39.286587, 35.404812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438065, 39.162304, 35.603306>,  <44.350590, 38.955166, 35.934128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438065, 39.162304, 35.603306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382354, -0.825264, -0.415626,
		-0.897766, -0.225336, -0.378471,
		0.218683, 0.517845, -0.827052,
		44.503670, 39.317657, 35.355190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110249, 38.561558, 35.407772>,  <44.350590, 38.955166, 35.934128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110249, 38.561558, 35.407772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363846, 38.802311, 35.213539>,  <44.516006, 38.946762, 35.097000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363846, 38.802311, 35.213539>,  <44.110249, 38.561558, 35.407772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363846, 38.802311, 35.213539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477733, -0.798586, -0.366105,
		-0.608127, 0.000133, -0.793840,
		0.633998, 0.601881, -0.485578,
		44.554047, 38.982876, 35.067867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136265, 38.246529, 34.668106>,  <44.110249, 38.561558, 35.407772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136265, 38.246529, 34.668106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453377, 38.485039, 34.718632>,  <44.643646, 38.628143, 34.748947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453377, 38.485039, 34.718632>,  <44.136265, 38.246529, 34.668106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453377, 38.485039, 34.718632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590177, -0.699202, -0.403494,
		-0.152276, 0.394428, -0.906222,
		0.792782, 0.596274, 0.126310,
		44.691212, 38.663921, 34.756523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395775, 38.095276, 34.123795>,  <44.136265, 38.246529, 34.668106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395775, 38.095276, 34.123795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669083, 38.238167, 34.378517>,  <44.833069, 38.323902, 34.531353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669083, 38.238167, 34.378517>,  <44.395775, 38.095276, 34.123795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669083, 38.238167, 34.378517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602114, -0.769013, -0.214657,
		0.413035, 0.530102, -0.740536,
		0.683272, 0.357226, 0.636811,
		44.874065, 38.345333, 34.569561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974453, 38.205200, 33.680706>,  <44.395775, 38.095276, 34.123795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974453, 38.205200, 33.680706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084442, 38.158016, 34.062382>,  <45.150436, 38.129704, 34.291386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084442, 38.158016, 34.062382>,  <44.974453, 38.205200, 33.680706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084442, 38.158016, 34.062382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557017, -0.789376, -0.258105,
		0.783660, 0.602471, -0.151348,
		0.274972, -0.117963, 0.954188,
		45.166935, 38.122627, 34.348637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695377, 38.204674, 33.633476>,  <44.974453, 38.205200, 33.680706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695377, 38.204674, 33.633476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635906, 38.045177, 33.995449>,  <45.600224, 37.949478, 34.212631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635906, 38.045177, 33.995449>,  <45.695377, 38.204674, 33.633476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635906, 38.045177, 33.995449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766335, -0.624824, -0.149417,
		0.625001, 0.671265, 0.398468,
		-0.148674, -0.398745, 0.904930,
		45.591305, 37.925552, 34.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392834, 38.005867, 33.908379>,  <45.695377, 38.204674, 33.633476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392834, 38.005867, 33.908379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115719, 37.788166, 34.097618>,  <45.949448, 37.657543, 34.211163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115719, 37.788166, 34.097618>,  <46.392834, 38.005867, 33.908379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115719, 37.788166, 34.097618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627488, -0.778270, 0.023546,
		0.355387, 0.313178, 0.880693,
		-0.692791, -0.544256, 0.473103,
		45.907883, 37.624889, 34.239548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787487, 37.621906, 34.364037>,  <46.392834, 38.005867, 33.908379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787487, 37.621906, 34.364037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.432713, 37.437248, 34.370068>,  <46.219849, 37.326454, 34.373688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.432713, 37.437248, 34.370068>,  <46.787487, 37.621906, 34.364037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432713, 37.437248, 34.370068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456249, -0.880728, -0.127105,
		0.071956, -0.105855, 0.991775,
		-0.886938, -0.461643, 0.015078,
		46.166630, 37.298756, 34.374592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767735, 36.956795, 34.791809>,  <46.787487, 37.621906, 34.364037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767735, 36.956795, 34.791809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.490425, 36.927380, 34.505043>,  <46.324039, 36.909729, 34.332985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.490425, 36.927380, 34.505043>,  <46.767735, 36.956795, 34.791809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490425, 36.927380, 34.505043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314318, -0.926034, -0.208960,
		-0.648519, -0.370205, 0.665109,
		-0.693272, -0.073541, -0.716914,
		46.282444, 36.905315, 34.289970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801010, 36.773056, 35.632961>,  <46.767735, 36.956795, 34.791809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801010, 36.773056, 35.632961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.985077, 36.517376, 35.879429>,  <47.095516, 36.363968, 36.027309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.985077, 36.517376, 35.879429>,  <46.801010, 36.773056, 35.632961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985077, 36.517376, 35.879429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285743, 0.550466, 0.784435,
		-0.840591, -0.537041, 0.070662,
		0.460171, -0.639198, 0.616173,
		47.123127, 36.325615, 36.064281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325130, 36.552570, 36.038284>,  <46.801010, 36.773056, 35.632961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325130, 36.552570, 36.038284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.664234, 36.513741, 36.246849>,  <46.867699, 36.490440, 36.371990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.664234, 36.513741, 36.246849>,  <46.325130, 36.552570, 36.038284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664234, 36.513741, 36.246849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359573, 0.617480, 0.699590,
		-0.389878, -0.780573, 0.488570,
		0.847763, -0.097078, 0.521415,
		46.918564, 36.484619, 36.403275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.111275, 36.517639, 36.628048>,  <46.325130, 36.552570, 36.038284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.111275, 36.517639, 36.628048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493057, 36.619400, 36.690395>,  <46.722126, 36.680458, 36.727802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493057, 36.619400, 36.690395>,  <46.111275, 36.517639, 36.628048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493057, 36.619400, 36.690395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280040, 0.583659, 0.762181,
		0.102927, -0.771116, 0.628319,
		0.954454, 0.254404, 0.155869,
		46.779392, 36.695721, 36.737156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134483, 36.578510, 37.374928>,  <46.111275, 36.517639, 36.628048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134483, 36.578510, 37.374928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.461540, 36.752224, 37.223743>,  <46.657776, 36.856453, 37.133034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.461540, 36.752224, 37.223743>,  <46.134483, 36.578510, 37.374928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.461540, 36.752224, 37.223743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104886, 0.757874, 0.643915,
		0.566087, -0.486851, 0.665222,
		0.817645, 0.434284, -0.377959,
		46.706833, 36.882511, 37.110355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591858, 36.741859, 38.013767>,  <46.134483, 36.578510, 37.374928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591858, 36.741859, 38.013767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.676521, 36.994976, 37.715832>,  <46.727318, 37.146847, 37.537071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.676521, 36.994976, 37.715832>,  <46.591858, 36.741859, 38.013767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676521, 36.994976, 37.715832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126027, 0.773411, 0.621251,
		0.969184, -0.037623, 0.243448,
		0.211659, 0.632787, -0.744836,
		46.740021, 37.184811, 37.492382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959682, 37.248955, 38.420166>,  <46.591858, 36.741859, 38.013767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959682, 37.248955, 38.420166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.837273, 37.409939, 38.075058>,  <46.763828, 37.506531, 37.867992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.837273, 37.409939, 38.075058>,  <46.959682, 37.248955, 38.420166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837273, 37.409939, 38.075058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231446, 0.847610, 0.477483,
		0.923462, 0.345806, -0.166240,
		-0.306023, 0.402462, -0.862771,
		46.745464, 37.530678, 37.816227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.300892, 37.940063, 38.457191>,  <46.959682, 37.248955, 38.420166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.300892, 37.940063, 38.457191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.001354, 37.954426, 38.192482>,  <46.821632, 37.963043, 38.033657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.001354, 37.954426, 38.192482>,  <47.300892, 37.940063, 38.457191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.001354, 37.954426, 38.192482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245583, 0.912413, 0.327402,
		0.615564, 0.407693, -0.674438,
		-0.748846, 0.035907, -0.661771,
		46.776699, 37.965199, 37.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306549, 38.660954, 38.269581>,  <47.300892, 37.940063, 38.457191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306549, 38.660954, 38.269581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.956276, 38.494263, 38.171993>,  <46.746113, 38.394249, 38.113441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.956276, 38.494263, 38.171993>,  <47.306549, 38.660954, 38.269581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956276, 38.494263, 38.171993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481005, 0.797377, 0.364451,
		0.042661, 0.436495, -0.898695,
		-0.875679, -0.416729, -0.243973,
		46.693573, 38.369244, 38.098801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075062, 39.144039, 37.942905>,  <47.306549, 38.660954, 38.269581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075062, 39.144039, 37.942905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.742374, 38.938099, 38.026020>,  <46.542763, 38.814533, 38.075890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.742374, 38.938099, 38.026020>,  <47.075062, 39.144039, 37.942905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742374, 38.938099, 38.026020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487422, 0.856313, 0.170731,
		-0.265832, 0.040719, -0.963159,
		-0.831717, -0.514850, 0.207788,
		46.492859, 38.783646, 38.088356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655506, 39.240471, 37.397163>,  <47.075062, 39.144039, 37.942905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655506, 39.240471, 37.397163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.428284, 39.149792, 37.713623>,  <46.291950, 39.095383, 37.903500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.428284, 39.149792, 37.713623>,  <46.655506, 39.240471, 37.397163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428284, 39.149792, 37.713623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457372, 0.886151, -0.074480,
		-0.684194, -0.404159, -0.607070,
		-0.568058, -0.226698, 0.791150,
		46.257866, 39.081783, 37.950970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069363, 39.552135, 37.206024>,  <46.655506, 39.240471, 37.397163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069363, 39.552135, 37.206024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007244, 39.458473, 37.589909>,  <45.969975, 39.402275, 37.820240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007244, 39.458473, 37.589909>,  <46.069363, 39.552135, 37.206024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007244, 39.458473, 37.589909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559202, 0.821702, 0.109996,
		-0.814356, -0.519593, -0.258548,
		-0.155297, -0.234157, 0.959715,
		45.960655, 39.388226, 37.877823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294147, 39.844364, 37.301743>,  <46.069363, 39.552135, 37.206024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294147, 39.844364, 37.301743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498314, 39.785728, 37.640678>,  <45.620811, 39.750546, 37.844040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498314, 39.785728, 37.640678>,  <45.294147, 39.844364, 37.301743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498314, 39.785728, 37.640678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237453, 0.923026, 0.302719,
		-0.826495, -0.355716, 0.436316,
		0.510413, -0.146591, 0.847342,
		45.651440, 39.741753, 37.894882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894104, 40.044712, 37.722660>,  <45.294147, 39.844364, 37.301743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894104, 40.044712, 37.722660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248985, 40.106071, 37.896717>,  <45.461914, 40.142887, 38.001152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248985, 40.106071, 37.896717>,  <44.894104, 40.044712, 37.722660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248985, 40.106071, 37.896717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252866, 0.950517, 0.180488,
		-0.385920, -0.270160, 0.882088,
		0.887200, 0.153396, 0.435138,
		45.515144, 40.152092, 38.027260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732113, 40.475403, 38.218014>,  <44.894104, 40.044712, 37.722660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732113, 40.475403, 38.218014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129723, 40.492939, 38.178032>,  <45.368290, 40.503460, 38.154045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129723, 40.492939, 38.178032>,  <44.732113, 40.475403, 38.218014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129723, 40.492939, 38.178032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006915, 0.939225, 0.343232,
		0.108925, -0.340490, 0.933917,
		0.994026, 0.043845, -0.099951,
		45.427929, 40.506092, 38.148048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962379, 40.790043, 38.855507>,  <44.732113, 40.475403, 38.218014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962379, 40.790043, 38.855507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246998, 40.860321, 38.583378>,  <45.417770, 40.902489, 38.420101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246998, 40.860321, 38.583378>,  <44.962379, 40.790043, 38.855507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246998, 40.860321, 38.583378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131812, 0.984421, 0.116368,
		0.690166, 0.006873, 0.723618,
		0.711545, 0.175694, -0.680320,
		45.460461, 40.913029, 38.379280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373238, 41.303936, 39.137226>,  <44.962379, 40.790043, 38.855507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373238, 41.303936, 39.137226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.437778, 41.331207, 38.743412>,  <45.476501, 41.347572, 38.507122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.437778, 41.331207, 38.743412>,  <45.373238, 41.303936, 39.137226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437778, 41.331207, 38.743412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068479, 0.995980, 0.057752,
		0.984518, 0.058102, 0.165374,
		0.161354, 0.068183, -0.984538,
		45.486183, 41.351662, 38.448051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784443, 41.956154, 39.025383>,  <45.373238, 41.303936, 39.137226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784443, 41.956154, 39.025383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695171, 41.879292, 38.643124>,  <45.641609, 41.833176, 38.413769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.695171, 41.879292, 38.643124>,  <45.784443, 41.956154, 39.025383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695171, 41.879292, 38.643124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182626, 0.971261, -0.152642,
		0.957516, 0.140459, -0.251861,
		-0.223183, -0.192154, -0.955649,
		45.628216, 41.821644, 38.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228390, 42.538551, 38.554977>,  <45.784443, 41.956154, 39.025383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228390, 42.538551, 38.554977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.905346, 42.389713, 38.371975>,  <45.711521, 42.300411, 38.262173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.905346, 42.389713, 38.371975>,  <46.228390, 42.538551, 38.554977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905346, 42.389713, 38.371975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291405, 0.926275, -0.238953,
		0.512689, -0.059662, -0.856499,
		-0.807610, -0.372096, -0.457505,
		45.663063, 42.278084, 38.234722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167179, 42.864403, 37.927048>,  <46.228390, 42.538551, 38.554977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167179, 42.864403, 37.927048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793827, 42.723179, 37.952831>,  <45.569817, 42.638443, 37.968304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793827, 42.723179, 37.952831>,  <46.167179, 42.864403, 37.927048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793827, 42.723179, 37.952831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358752, 0.912726, -0.195519,
		0.010193, -0.205619, -0.978579,
		-0.933377, -0.353060, 0.064463,
		45.513813, 42.617260, 37.972172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894238, 43.035507, 37.342289>,  <46.167179, 42.864403, 37.927048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894238, 43.035507, 37.342289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.583157, 42.981625, 37.587898>,  <45.396507, 42.949295, 37.735264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.583157, 42.981625, 37.587898>,  <45.894238, 43.035507, 37.342289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583157, 42.981625, 37.587898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354330, 0.900755, -0.251178,
		-0.519253, -0.412910, -0.748252,
		-0.777706, -0.134703, 0.614026,
		45.349846, 42.941216, 37.772106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271015, 43.023163, 37.059570>,  <45.894238, 43.035507, 37.342289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271015, 43.023163, 37.059570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181377, 43.129391, 37.434647>,  <45.127594, 43.193127, 37.659691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181377, 43.129391, 37.434647>,  <45.271015, 43.023163, 37.059570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181377, 43.129391, 37.434647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525869, 0.777116, -0.345764,
		-0.820515, -0.570584, -0.034494,
		-0.224093, 0.265566, 0.937687,
		45.114151, 43.209061, 37.715954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.776546, 39.948746, 38.980137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424061, 39.762482, 38.947609>,  <41.212570, 39.650723, 38.928093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424061, 39.762482, 38.947609>,  <41.776546, 39.948746, 38.980137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424061, 39.762482, 38.947609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046653, 0.085523, -0.995243,
		0.470403, -0.880820, -0.053640,
		-0.881217, -0.465663, -0.081323,
		41.159695, 39.622784, 38.923210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876400, 39.461029, 38.384724>,  <41.776546, 39.948746, 38.980137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876400, 39.461029, 38.384724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479523, 39.465534, 38.434395>,  <41.241394, 39.468235, 38.464199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479523, 39.465534, 38.434395>,  <41.876400, 39.461029, 38.384724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479523, 39.465534, 38.434395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119726, 0.192129, -0.974039,
		-0.034826, -0.981305, -0.189281,
		-0.992196, 0.011260, 0.124179,
		41.181866, 39.468910, 38.471649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510342, 39.013088, 37.937107>,  <41.876400, 39.461029, 38.384724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510342, 39.013088, 37.937107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226685, 39.279659, 38.029190>,  <41.056492, 39.439602, 38.084442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226685, 39.279659, 38.029190>,  <41.510342, 39.013088, 37.937107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226685, 39.279659, 38.029190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308602, 0.000200, -0.951191,
		-0.633944, -0.745571, 0.205518,
		-0.709140, 0.666425, 0.230211,
		41.013943, 39.479588, 38.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063404, 38.830101, 37.455196>,  <41.510342, 39.013088, 37.937107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063404, 38.830101, 37.455196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953308, 39.193993, 37.579536>,  <40.887249, 39.412327, 37.654140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953308, 39.193993, 37.579536>,  <41.063404, 38.830101, 37.455196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953308, 39.193993, 37.579536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466543, 0.156315, -0.870577,
		-0.840583, -0.384643, 0.381405,
		-0.275242, 0.909734, 0.310848,
		40.870735, 39.466911, 37.672791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425076, 38.925495, 37.232639>,  <41.063404, 38.830101, 37.455196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425076, 38.925495, 37.232639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549507, 39.297310, 37.311817>,  <40.624168, 39.520401, 37.359325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549507, 39.297310, 37.311817>,  <40.425076, 38.925495, 37.232639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549507, 39.297310, 37.311817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404297, 0.317928, -0.857593,
		-0.860100, 0.186754, 0.474712,
		0.311083, 0.929540, 0.197946,
		40.642834, 39.576172, 37.371201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807735, 39.339005, 37.279491>,  <40.425076, 38.925495, 37.232639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807735, 39.339005, 37.279491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104755, 39.590530, 37.187225>,  <40.282967, 39.741447, 37.131866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104755, 39.590530, 37.187225>,  <39.807735, 39.339005, 37.279491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104755, 39.590530, 37.187225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508853, 0.305691, -0.804750,
		-0.435530, 0.714941, 0.546967,
		0.742551, 0.628818, -0.230662,
		40.327522, 39.779175, 37.118027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459805, 39.911987, 37.084984>,  <39.807735, 39.339005, 37.279491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459805, 39.911987, 37.084984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818390, 39.942558, 36.910393>,  <40.033543, 39.960899, 36.805637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818390, 39.942558, 36.910393>,  <39.459805, 39.911987, 37.084984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818390, 39.942558, 36.910393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439504, 0.278899, -0.853845,
		0.056475, 0.957274, 0.283614,
		0.896463, 0.076428, -0.436477,
		40.087330, 39.965488, 36.779449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508881, 40.534409, 36.662514>,  <39.459805, 39.911987, 37.084984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508881, 40.534409, 36.662514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799000, 40.309582, 36.503506>,  <39.973072, 40.174683, 36.408100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799000, 40.309582, 36.503506>,  <39.508881, 40.534409, 36.662514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799000, 40.309582, 36.503506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330850, 0.221781, -0.917252,
		0.603723, 0.796799, -0.025104,
		0.725298, -0.562072, -0.397515,
		40.016590, 40.140961, 36.384251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807285, 40.924500, 36.035286>,  <39.508881, 40.534409, 36.662514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807285, 40.924500, 36.035286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905949, 40.539406, 35.990921>,  <39.965145, 40.308350, 35.964302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905949, 40.539406, 35.990921>,  <39.807285, 40.924500, 36.035286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905949, 40.539406, 35.990921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130742, 0.080348, -0.988155,
		0.960242, 0.258239, -0.106051,
		0.246659, -0.962734, -0.110916,
		39.979946, 40.250587, 35.957645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166794, 40.922718, 35.403526>,  <39.807285, 40.924500, 36.035286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166794, 40.922718, 35.403526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053871, 40.543606, 35.462872>,  <39.986118, 40.316139, 35.498478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053871, 40.543606, 35.462872>,  <40.166794, 40.922718, 35.403526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053871, 40.543606, 35.462872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193060, -0.095359, -0.976542,
		0.939698, -0.304323, -0.156059,
		-0.282303, -0.947784, 0.148361,
		39.969181, 40.259270, 35.507381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436768, 40.475437, 34.785275>,  <40.166794, 40.922718, 35.403526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436768, 40.475437, 34.785275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132057, 40.259998, 34.929283>,  <39.949230, 40.130737, 35.015686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132057, 40.259998, 34.929283>,  <40.436768, 40.475437, 34.785275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132057, 40.259998, 34.929283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403353, -0.040556, -0.914145,
		0.506954, -0.841589, -0.186348,
		-0.761777, -0.538594, 0.360018,
		39.903522, 40.098419, 35.037289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376358, 39.836052, 34.407017>,  <40.436768, 40.475437, 34.785275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376358, 39.836052, 34.407017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028667, 39.971184, 34.551414>,  <39.820053, 40.052261, 34.638054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028667, 39.971184, 34.551414>,  <40.376358, 39.836052, 34.407017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028667, 39.971184, 34.551414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427850, -0.148079, -0.891637,
		-0.247767, -0.929485, 0.273255,
		-0.869227, 0.337830, 0.360992,
		39.767899, 40.072533, 34.659714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667564, 39.535366, 33.803375>,  <40.376358, 39.836052, 34.407017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667564, 39.535366, 33.803375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713856, 39.142078, 33.859776>,  <40.741631, 38.906105, 33.893616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713856, 39.142078, 33.859776>,  <40.667564, 39.535366, 33.803375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713856, 39.142078, 33.859776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452926, 0.074105, 0.888463,
		-0.884005, -0.166681, -0.436751,
		0.115725, -0.983222, 0.141003,
		40.748573, 38.847111, 33.902077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195507, 39.136997, 33.473438>,  <40.667564, 39.535366, 33.803375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195507, 39.136997, 33.473438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153553, 38.854519, 33.193356>,  <41.128380, 38.685032, 33.025307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153553, 38.854519, 33.193356>,  <41.195507, 39.136997, 33.473438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153553, 38.854519, 33.193356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552884, -0.543844, 0.631311,
		-0.826630, 0.453350, -0.333401,
		-0.104886, -0.706193, -0.700207,
		41.122086, 38.642662, 32.983292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478348, 38.928539, 33.453354>,  <41.195507, 39.136997, 33.473438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478348, 38.928539, 33.453354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737175, 38.634594, 33.372086>,  <40.892471, 38.458229, 33.323322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737175, 38.634594, 33.372086>,  <40.478348, 38.928539, 33.453354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737175, 38.634594, 33.372086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277062, -0.474902, 0.835287,
		-0.710307, -0.484198, -0.510897,
		0.647071, -0.734860, -0.203174,
		40.931297, 38.414135, 33.311134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209728, 38.357990, 33.430584>,  <40.478348, 38.928539, 33.453354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209728, 38.357990, 33.430584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587936, 38.255852, 33.511364>,  <40.814861, 38.194569, 33.559830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587936, 38.255852, 33.511364>,  <40.209728, 38.357990, 33.430584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587936, 38.255852, 33.511364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323290, -0.663426, 0.674795,
		-0.038331, -0.703322, -0.709837,
		0.945523, -0.255349, 0.201947,
		40.871593, 38.179249, 33.571949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126659, 37.689892, 33.623768>,  <40.209728, 38.357990, 33.430584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126659, 37.689892, 33.623768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488922, 37.791901, 33.759266>,  <40.706280, 37.853107, 33.840565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488922, 37.791901, 33.759266>,  <40.126659, 37.689892, 33.623768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488922, 37.791901, 33.759266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101799, -0.644756, 0.757580,
		0.411607, -0.720592, -0.557967,
		0.905658, 0.255024, 0.338742,
		40.760620, 37.868408, 33.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481373, 37.074478, 33.797630>,  <40.126659, 37.689892, 33.623768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481373, 37.074478, 33.797630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667290, 37.352779, 34.016678>,  <40.778839, 37.519760, 34.148106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667290, 37.352779, 34.016678>,  <40.481373, 37.074478, 33.797630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667290, 37.352779, 34.016678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049155, -0.597259, 0.800541,
		0.884053, -0.399006, -0.243403,
		0.464795, 0.695755, 0.547622,
		40.806728, 37.561504, 34.180965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007107, 36.659969, 34.176441>,  <40.481373, 37.074478, 33.797630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007107, 36.659969, 34.176441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963837, 37.003574, 34.376595>,  <40.937874, 37.209740, 34.496689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963837, 37.003574, 34.376595>,  <41.007107, 36.659969, 34.176441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963837, 37.003574, 34.376595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067147, -0.495878, 0.865793,
		0.991862, 0.127257, -0.004039,
		-0.108176, 0.859017, 0.500387,
		40.931385, 37.261280, 34.526711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434006, 36.659218, 34.745304>,  <41.007107, 36.659969, 34.176441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434006, 36.659218, 34.745304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176876, 36.946430, 34.852047>,  <41.022598, 37.118755, 34.916092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176876, 36.946430, 34.852047>,  <41.434006, 36.659218, 34.745304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176876, 36.946430, 34.852047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155394, -0.218898, 0.963295,
		0.750086, 0.660698, 0.029136,
		-0.642825, 0.718026, 0.266861,
		40.984028, 37.161839, 34.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737011, 37.074600, 35.273705>,  <41.434006, 36.659218, 34.745304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737011, 37.074600, 35.273705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346493, 37.154385, 35.307327>,  <41.112183, 37.202255, 35.327503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346493, 37.154385, 35.307327>,  <41.737011, 37.074600, 35.273705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346493, 37.154385, 35.307327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034868, -0.238352, 0.970553,
		0.213626, 0.950475, 0.225747,
		-0.976293, 0.199464, 0.084060,
		41.053604, 37.214222, 35.332546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746265, 37.304539, 35.903137>,  <41.737011, 37.074600, 35.273705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746265, 37.304539, 35.903137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355618, 37.241875, 35.844242>,  <41.121231, 37.204277, 35.808907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355618, 37.241875, 35.844242>,  <41.746265, 37.304539, 35.903137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355618, 37.241875, 35.844242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085319, -0.346202, 0.934272,
		-0.197336, 0.924988, 0.324740,
		-0.976616, -0.156659, -0.147237,
		41.062634, 37.194878, 35.800072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480923, 37.543911, 36.537495>,  <41.746265, 37.304539, 35.903137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480923, 37.543911, 36.537495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188679, 37.317581, 36.384624>,  <41.013332, 37.181782, 36.292904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188679, 37.317581, 36.384624>,  <41.480923, 37.543911, 36.537495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188679, 37.317581, 36.384624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250328, -0.298780, 0.920905,
		-0.635257, 0.768488, 0.076648,
		-0.730606, -0.565824, -0.382176,
		40.969498, 37.147835, 36.269970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962811, 37.687473, 36.993965>,  <41.480923, 37.543911, 36.537495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962811, 37.687473, 36.993965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855171, 37.348213, 36.811436>,  <40.790588, 37.144657, 36.701920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855171, 37.348213, 36.811436>,  <40.962811, 37.687473, 36.993965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855171, 37.348213, 36.811436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225107, -0.405289, 0.886041,
		-0.936437, 0.341152, -0.081863,
		-0.269096, -0.848149, -0.456323,
		40.774441, 37.093769, 36.674538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531933, 37.365223, 37.445808>,  <40.962811, 37.687473, 36.993965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531933, 37.365223, 37.445808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609894, 37.053860, 37.207115>,  <40.656670, 36.867043, 37.063900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609894, 37.053860, 37.207115>,  <40.531933, 37.365223, 37.445808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609894, 37.053860, 37.207115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204225, -0.627271, 0.751547,
		-0.959325, -0.024611, -0.281228,
		0.194903, -0.778412, -0.596731,
		40.668365, 36.820335, 37.028095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012680, 36.861118, 37.491882>,  <40.531933, 37.365223, 37.445808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012680, 36.861118, 37.491882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345623, 36.661602, 37.395218>,  <40.545387, 36.541893, 37.337219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345623, 36.661602, 37.395218>,  <40.012680, 36.861118, 37.491882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345623, 36.661602, 37.395218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051494, -0.503726, 0.862327,
		-0.551854, -0.705313, -0.444961,
		0.832349, -0.498791, -0.241664,
		40.595329, 36.511967, 37.322720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855465, 36.221985, 37.625355>,  <40.012680, 36.861118, 37.491882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855465, 36.221985, 37.625355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254887, 36.212341, 37.606113>,  <40.494537, 36.206554, 37.594570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254887, 36.212341, 37.606113>,  <39.855465, 36.221985, 37.625355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254887, 36.212341, 37.606113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033560, -0.419617, 0.907081,
		-0.042054, -0.907381, -0.418200,
		0.998551, -0.024112, -0.048099,
		40.554451, 36.205109, 37.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092968, 35.525913, 37.997257>,  <39.855465, 36.221985, 37.625355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092968, 35.525913, 37.997257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433472, 35.735737, 38.002918>,  <40.637775, 35.861629, 38.006317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433472, 35.735737, 38.002918>,  <40.092968, 35.525913, 37.997257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433472, 35.735737, 38.002918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171247, -0.303202, 0.937413,
		0.496018, -0.795556, -0.347932,
		0.851258, 0.524556, 0.014157,
		40.688850, 35.893105, 38.007164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186028, 34.867535, 37.536297>,  <40.092968, 35.525913, 37.997257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186028, 34.867535, 37.536297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039524, 34.497231, 37.498714>,  <39.951622, 34.275047, 37.476166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039524, 34.497231, 37.498714>,  <40.186028, 34.867535, 37.536297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039524, 34.497231, 37.498714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557838, 0.299263, -0.774118,
		0.744761, -0.231121, -0.626031,
		-0.366263, -0.925757, -0.093952,
		39.929646, 34.219505, 37.470528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194782, 34.773006, 36.928349>,  <40.186028, 34.867535, 37.536297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194782, 34.773006, 36.928349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922112, 34.503986, 37.043583>,  <39.758511, 34.342575, 37.112724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922112, 34.503986, 37.043583>,  <40.194782, 34.773006, 36.928349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922112, 34.503986, 37.043583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605248, 0.297121, -0.738508,
		0.411086, -0.677789, -0.609599,
		-0.681677, -0.672549, 0.288088,
		39.717609, 34.302223, 37.130009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025352, 34.461205, 36.236622>,  <40.194782, 34.773006, 36.928349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025352, 34.461205, 36.236622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734417, 34.360973, 36.492180>,  <39.559856, 34.300835, 36.645515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734417, 34.360973, 36.492180>,  <40.025352, 34.461205, 36.236622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734417, 34.360973, 36.492180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685630, 0.224837, -0.692358,
		0.029840, -0.941626, -0.335334,
		-0.727338, -0.250575, 0.638899,
		39.516216, 34.285801, 36.683849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535038, 34.071735, 35.938881>,  <40.025352, 34.461205, 36.236622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535038, 34.071735, 35.938881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337822, 34.221786, 36.252872>,  <39.219494, 34.311817, 36.441269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337822, 34.221786, 36.252872>,  <39.535038, 34.071735, 35.938881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337822, 34.221786, 36.252872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700970, 0.363144, -0.613814,
		-0.515319, -0.852881, 0.083909,
		-0.493039, 0.375128, 0.784979,
		39.189911, 34.334324, 36.488365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776485, 33.897148, 35.809952>,  <39.535038, 34.071735, 35.938881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776485, 33.897148, 35.809952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775009, 34.182339, 36.090424>,  <38.774124, 34.353451, 36.258705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775009, 34.182339, 36.090424>,  <38.776485, 33.897148, 35.809952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775009, 34.182339, 36.090424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688323, 0.506829, -0.518976,
		-0.725395, -0.484554, 0.488886,
		-0.003690, 0.712975, 0.701180,
		38.773903, 34.396233, 36.300777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055424, 34.091000, 35.859154>,  <38.776485, 33.897148, 35.809952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055424, 34.091000, 35.859154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260761, 34.382687, 36.040138>,  <38.383965, 34.557697, 36.148731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260761, 34.382687, 36.040138>,  <38.055424, 34.091000, 35.859154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260761, 34.382687, 36.040138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620769, 0.679571, -0.390933,
		-0.592556, -0.080193, 0.801527,
		0.513344, 0.729214, 0.452465,
		38.414764, 34.601452, 36.175877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552818, 34.555054, 36.192448>,  <38.055424, 34.091000, 35.859154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552818, 34.555054, 36.192448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877407, 34.788807, 36.193390>,  <38.072163, 34.929058, 36.193954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877407, 34.788807, 36.193390>,  <37.552818, 34.555054, 36.192448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877407, 34.788807, 36.193390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520278, 0.724280, -0.452470,
		-0.266119, 0.365945, 0.891777,
		0.811475, 0.584382, 0.002352,
		38.120850, 34.964123, 36.194096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329079, 35.118607, 36.547798>,  <37.552818, 34.555054, 36.192448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329079, 35.118607, 36.547798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648975, 35.244282, 36.343174>,  <37.840912, 35.319687, 36.220398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648975, 35.244282, 36.343174>,  <37.329079, 35.118607, 36.547798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648975, 35.244282, 36.343174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507370, 0.809233, -0.296172,
		0.320918, 0.496412, 0.806590,
		0.799742, 0.314193, -0.511562,
		37.888897, 35.338539, 36.189705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369202, 35.755199, 36.711994>,  <37.329079, 35.118607, 36.547798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369202, 35.755199, 36.711994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597942, 35.740406, 36.384186>,  <37.735188, 35.731529, 36.187500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597942, 35.740406, 36.384186>,  <37.369202, 35.755199, 36.711994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597942, 35.740406, 36.384186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397744, 0.861215, -0.316400,
		0.717486, 0.506894, 0.477778,
		0.571851, -0.036979, -0.819524,
		37.769497, 35.729313, 36.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684921, 36.410366, 36.573391>,  <37.369202, 35.755199, 36.711994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684921, 36.410366, 36.573391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671360, 36.232540, 36.215347>,  <37.663223, 36.125847, 36.000523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671360, 36.232540, 36.215347>,  <37.684921, 36.410366, 36.573391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671360, 36.232540, 36.215347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304642, 0.857596, -0.414394,
		0.951864, 0.258638, -0.164506,
		-0.033902, -0.444562, -0.895106,
		37.661190, 36.099171, 35.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019180, 36.897858, 36.114223>,  <37.684921, 36.410366, 36.573391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019180, 36.897858, 36.114223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778625, 36.653595, 35.908142>,  <37.634293, 36.507038, 35.784492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778625, 36.653595, 35.908142>,  <38.019180, 36.897858, 36.114223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778625, 36.653595, 35.908142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369346, 0.784293, -0.498465,
		0.708458, -0.109485, -0.697209,
		-0.601390, -0.610654, -0.515202,
		37.598209, 36.470398, 35.753582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042240, 37.152088, 35.435032>,  <38.019180, 36.897858, 36.114223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042240, 37.152088, 35.435032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706661, 36.934772, 35.422298>,  <37.505314, 36.804382, 35.414658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706661, 36.934772, 35.422298>,  <38.042240, 37.152088, 35.435032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706661, 36.934772, 35.422298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436453, 0.706603, -0.556975,
		0.325089, -0.453378, -0.829919,
		-0.838943, -0.543287, -0.031830,
		37.454979, 36.771786, 35.412750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.103134, 33.157757, 40.470119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.737637, 33.002907, 40.519432>,  <41.518337, 32.909996, 40.549019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.737637, 33.002907, 40.519432>,  <42.103134, 33.157757, 40.470119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737637, 33.002907, 40.519432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191670, 0.143190, -0.970958,
		0.358233, -0.910839, -0.205040,
		-0.913746, -0.387129, 0.123285,
		41.463512, 32.886768, 40.556419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072666, 32.697346, 39.862175>,  <42.103134, 33.157757, 40.470119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072666, 32.697346, 39.862175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.700531, 32.755219, 39.996956>,  <41.477249, 32.789940, 40.077824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.700531, 32.755219, 39.996956>,  <42.072666, 32.697346, 39.862175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700531, 32.755219, 39.996956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265837, 0.366843, -0.891492,
		-0.252589, -0.918964, -0.302827,
		-0.930339, 0.144678, 0.336955,
		41.421429, 32.798622, 40.098042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624687, 32.125492, 39.568607>,  <42.072666, 32.697346, 39.862175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624687, 32.125492, 39.568607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.457073, 32.481155, 39.642155>,  <41.356506, 32.694553, 39.686283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.457073, 32.481155, 39.642155>,  <41.624687, 32.125492, 39.568607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457073, 32.481155, 39.642155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275978, 0.068198, -0.958742,
		-0.865012, -0.452491, 0.216811,
		-0.419036, 0.889158, 0.183869,
		41.331364, 32.747902, 39.697315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160332, 32.161770, 39.091713>,  <41.624687, 32.125492, 39.568607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160332, 32.161770, 39.091713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.138271, 32.533669, 39.237328>,  <41.125034, 32.756809, 39.324696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.138271, 32.533669, 39.237328>,  <41.160332, 32.161770, 39.091713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138271, 32.533669, 39.237328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349117, 0.323625, -0.879422,
		-0.935455, -0.175593, 0.306744,
		-0.055150, 0.929749, 0.364039,
		41.121727, 32.812592, 39.346539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483356, 32.383396, 38.845909>,  <41.160332, 32.161770, 39.091713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483356, 32.383396, 38.845909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.665451, 32.729362, 38.930466>,  <40.774708, 32.936943, 38.981197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.665451, 32.729362, 38.930466>,  <40.483356, 32.383396, 38.845909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665451, 32.729362, 38.930466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481585, 0.438878, -0.758592,
		-0.748892, 0.243534, 0.616322,
		0.455233, 0.864915, 0.211390,
		40.802021, 32.988838, 38.993881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957531, 32.872898, 38.870724>,  <40.483356, 32.383396, 38.845909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957531, 32.872898, 38.870724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.271759, 33.116787, 38.828564>,  <40.460297, 33.263123, 38.803268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.271759, 33.116787, 38.828564>,  <39.957531, 32.872898, 38.870724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271759, 33.116787, 38.828564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507123, 0.536820, -0.674278,
		-0.354544, 0.583146, 0.730917,
		0.785573, 0.609726, -0.105401,
		40.507431, 33.299706, 38.796944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749706, 33.539860, 38.989628>,  <39.957531, 32.872898, 38.870724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749706, 33.539860, 38.989628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070122, 33.572552, 38.752422>,  <40.262371, 33.592167, 38.610100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070122, 33.572552, 38.752422>,  <39.749706, 33.539860, 38.989628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070122, 33.572552, 38.752422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509460, 0.613222, -0.603663,
		0.314311, 0.785671, 0.532850,
		0.801036, 0.081728, -0.593011,
		40.310432, 33.597069, 38.574520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756645, 34.244904, 38.762302>,  <39.749706, 33.539860, 38.989628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756645, 34.244904, 38.762302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.001427, 34.070889, 38.498100>,  <40.148296, 33.966480, 38.339581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.001427, 34.070889, 38.498100>,  <39.756645, 34.244904, 38.762302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001427, 34.070889, 38.498100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485090, 0.453148, -0.747894,
		0.624664, 0.778076, 0.066273,
		0.611950, -0.435034, -0.660502,
		40.185013, 33.940380, 38.299950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997417, 34.723858, 38.261524>,  <39.756645, 34.244904, 38.762302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997417, 34.723858, 38.261524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.043259, 34.384045, 38.055550>,  <40.070763, 34.180157, 37.931965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.043259, 34.384045, 38.055550>,  <39.997417, 34.723858, 38.261524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043259, 34.384045, 38.055550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512053, 0.393664, -0.763433,
		0.851274, 0.351166, -0.389891,
		0.114606, -0.849535, -0.514932,
		40.077641, 34.129185, 37.901070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592987, 35.075386, 38.431309>,  <39.997417, 34.723858, 38.261524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592987, 35.075386, 38.431309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814526, 35.408123, 38.416912>,  <40.947449, 35.607765, 38.408276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814526, 35.408123, 38.416912>,  <40.592987, 35.075386, 38.431309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814526, 35.408123, 38.416912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246140, -0.122283, 0.961490,
		0.795408, -0.541371, -0.272476,
		0.553842, 0.831844, -0.035988,
		40.980679, 35.657677, 38.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274086, 34.906494, 38.669792>,  <40.592987, 35.075386, 38.431309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274086, 34.906494, 38.669792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.192528, 35.294933, 38.719440>,  <41.143593, 35.527996, 38.749229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.192528, 35.294933, 38.719440>,  <41.274086, 34.906494, 38.669792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192528, 35.294933, 38.719440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159981, -0.092030, 0.982821,
		0.965834, 0.220246, -0.136593,
		-0.203891, 0.971093, 0.124121,
		41.131359, 35.586262, 38.756676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911621, 35.185574, 38.967651>,  <41.274086, 34.906494, 38.669792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911621, 35.185574, 38.967651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602711, 35.429054, 39.040398>,  <41.417366, 35.575142, 39.084045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602711, 35.429054, 39.040398>,  <41.911621, 35.185574, 38.967651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602711, 35.429054, 39.040398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289654, 0.082596, 0.953561,
		0.565414, 0.789088, -0.240100,
		-0.772274, 0.608702, 0.181862,
		41.371029, 35.611664, 39.094955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191643, 35.534199, 39.409218>,  <41.911621, 35.185574, 38.967651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191643, 35.534199, 39.409218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.814812, 35.651367, 39.474564>,  <41.588715, 35.721668, 39.513771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.814812, 35.651367, 39.474564>,  <42.191643, 35.534199, 39.409218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814812, 35.651367, 39.474564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234204, 0.225884, 0.945582,
		0.240084, 0.929070, -0.281404,
		-0.942076, 0.292925, 0.163361,
		41.532188, 35.739246, 39.523571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213760, 36.243847, 39.719498>,  <42.191643, 35.534199, 39.409218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213760, 36.243847, 39.719498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.892342, 36.021187, 39.803837>,  <41.699490, 35.887592, 39.854443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.892342, 36.021187, 39.803837>,  <42.213760, 36.243847, 39.719498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892342, 36.021187, 39.803837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283006, -0.045639, 0.958032,
		-0.523665, 0.829492, 0.194208,
		-0.803543, -0.556650, 0.210852,
		41.651279, 35.854191, 39.867092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936203, 36.471172, 40.402496>,  <42.213760, 36.243847, 39.719498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936203, 36.471172, 40.402496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.726635, 36.135124, 40.346344>,  <41.600895, 35.933495, 40.312653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.726635, 36.135124, 40.346344>,  <41.936203, 36.471172, 40.402496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726635, 36.135124, 40.346344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091544, -0.219390, 0.971333,
		-0.846836, 0.496047, 0.191850,
		-0.523916, -0.840123, -0.140377,
		41.569462, 35.883087, 40.304230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388676, 36.444790, 40.907589>,  <41.936203, 36.471172, 40.402496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388676, 36.444790, 40.907589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.451626, 36.069366, 40.784729>,  <41.489395, 35.844112, 40.711014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.451626, 36.069366, 40.784729>,  <41.388676, 36.444790, 40.907589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451626, 36.069366, 40.784729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002121, -0.310703, 0.950505,
		-0.987536, -0.150238, -0.046906,
		0.157376, -0.938558, -0.307149,
		41.498840, 35.787800, 40.692585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006107, 36.006901, 41.399307>,  <41.388676, 36.444790, 40.907589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006107, 36.006901, 41.399307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275970, 35.769291, 41.224049>,  <41.437889, 35.626724, 41.118893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275970, 35.769291, 41.224049>,  <41.006107, 36.006901, 41.399307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275970, 35.769291, 41.224049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240480, -0.384317, 0.891330,
		-0.697863, -0.706705, -0.116430,
		0.674653, -0.594027, -0.438149,
		41.478367, 35.591084, 41.092606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047195, 35.454315, 41.812767>,  <41.006107, 36.006901, 41.399307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047195, 35.454315, 41.812767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.374386, 35.361942, 41.602020>,  <41.570698, 35.306519, 41.475571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.374386, 35.361942, 41.602020>,  <41.047195, 35.454315, 41.812767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374386, 35.361942, 41.602020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312720, -0.590220, 0.744208,
		-0.482834, -0.773504, -0.410565,
		0.817972, -0.230937, -0.526869,
		41.619778, 35.292660, 41.443958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138966, 34.626331, 41.779320>,  <41.047195, 35.454315, 41.812767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138966, 34.626331, 41.779320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.486626, 34.811371, 41.709370>,  <41.695221, 34.922394, 41.667400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.486626, 34.811371, 41.709370>,  <41.138966, 34.626331, 41.779320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486626, 34.811371, 41.709370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441483, -0.566392, 0.695912,
		0.222878, -0.682057, -0.696508,
		0.869148, 0.462600, -0.174880,
		41.747372, 34.950150, 41.656906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684471, 34.073547, 41.746929>,  <41.138966, 34.626331, 41.779320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684471, 34.073547, 41.746929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.853439, 34.427727, 41.824436>,  <41.954819, 34.640232, 41.870941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.853439, 34.427727, 41.824436>,  <41.684471, 34.073547, 41.746929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853439, 34.427727, 41.824436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620971, -0.438433, 0.649747,
		0.660269, -0.154146, -0.735041,
		0.422422, 0.885447, 0.193763,
		41.980167, 34.693359, 41.882565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344425, 33.883156, 41.808266>,  <41.684471, 34.073547, 41.746929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344425, 33.883156, 41.808266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.317265, 34.244503, 41.977646>,  <42.300968, 34.461311, 42.079273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.317265, 34.244503, 41.977646>,  <42.344425, 33.883156, 41.808266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317265, 34.244503, 41.977646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700128, -0.259231, 0.665297,
		0.710781, 0.341647, -0.614872,
		-0.067903, 0.903370, 0.423453,
		42.296894, 34.515514, 42.104683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092609, 34.233395, 41.931198>,  <42.344425, 33.883156, 41.808266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092609, 34.233395, 41.931198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.822754, 34.390392, 42.181255>,  <42.660839, 34.484592, 42.331291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.822754, 34.390392, 42.181255>,  <43.092609, 34.233395, 41.931198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822754, 34.390392, 42.181255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519595, -0.349031, 0.779871,
		0.524291, 0.850955, 0.031531,
		-0.674640, 0.392496, 0.625146,
		42.620361, 34.508141, 42.368797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508015, 34.635090, 42.513630>,  <43.092609, 34.233395, 41.931198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508015, 34.635090, 42.513630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.138962, 34.553024, 42.644264>,  <42.917530, 34.503784, 42.722645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.138962, 34.553024, 42.644264>,  <43.508015, 34.635090, 42.513630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138962, 34.553024, 42.644264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380303, -0.343046, 0.858888,
		-0.064178, 0.916639, 0.394530,
		-0.922632, -0.205163, 0.326585,
		42.862171, 34.491474, 42.742241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.799171, 35.643887, 44.184235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.067783, 35.373627, 44.062550>,  <36.228951, 35.211472, 43.989536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.067783, 35.373627, 44.062550>,  <35.799171, 35.643887, 44.184235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067783, 35.373627, 44.062550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233075, 0.582322, -0.778830,
		0.703369, 0.452100, 0.548522,
		0.671526, -0.675652, -0.304215,
		36.269241, 35.170933, 43.971287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381950, 36.002575, 43.937180>,  <35.799171, 35.643887, 44.184235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381950, 36.002575, 43.937180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407276, 35.655155, 43.740566>,  <36.422470, 35.446701, 43.622597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407276, 35.655155, 43.740566>,  <36.381950, 36.002575, 43.937180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407276, 35.655155, 43.740566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196780, 0.493718, -0.847066,
		0.978401, -0.043094, 0.202173,
		0.063313, -0.868554, -0.491534,
		36.426270, 35.394588, 43.593105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001472, 36.074696, 43.512997>,  <36.381950, 36.002575, 43.937180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001472, 36.074696, 43.512997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804668, 35.768570, 43.346996>,  <36.686588, 35.584896, 43.247395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804668, 35.768570, 43.346996>,  <37.001472, 36.074696, 43.512997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804668, 35.768570, 43.346996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210932, 0.357695, -0.909704,
		0.844652, -0.535118, -0.014559,
		-0.492006, -0.765313, -0.415001,
		36.657066, 35.538975, 43.222496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459431, 35.902630, 43.072613>,  <37.001472, 36.074696, 43.512997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459431, 35.902630, 43.072613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115974, 35.735245, 42.954205>,  <36.909901, 35.634811, 42.883160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115974, 35.735245, 42.954205>,  <37.459431, 35.902630, 43.072613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115974, 35.735245, 42.954205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137503, 0.368298, -0.919483,
		0.493797, -0.830206, -0.258694,
		-0.858637, -0.418467, -0.296020,
		36.858383, 35.609707, 42.865398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601280, 35.514847, 42.404026>,  <37.459431, 35.902630, 43.072613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601280, 35.514847, 42.404026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209538, 35.595486, 42.398205>,  <36.974491, 35.643867, 42.394714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209538, 35.595486, 42.398205>,  <37.601280, 35.514847, 42.404026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209538, 35.595486, 42.398205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051546, 0.179506, -0.982405,
		-0.195438, -0.962879, -0.186193,
		-0.979360, 0.201597, -0.014550,
		36.915730, 35.655964, 42.393841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465675, 35.583019, 41.767475>,  <37.601280, 35.514847, 42.404026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465675, 35.583019, 41.767475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095409, 35.686546, 41.877869>,  <36.873249, 35.748661, 41.944103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095409, 35.686546, 41.877869>,  <37.465675, 35.583019, 41.767475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095409, 35.686546, 41.877869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197039, 0.292937, -0.935609,
		-0.322997, -0.920435, -0.220163,
		-0.925661, 0.258818, 0.275980,
		36.817711, 35.764191, 41.960663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948421, 35.257648, 41.302994>,  <37.465675, 35.583019, 41.767475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948421, 35.257648, 41.302994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810436, 35.597309, 41.462967>,  <36.727646, 35.801105, 41.558952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810436, 35.597309, 41.462967>,  <36.948421, 35.257648, 41.302994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810436, 35.597309, 41.462967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084131, 0.396403, -0.914214,
		-0.934840, -0.349013, -0.065303,
		-0.344959, 0.849149, 0.399936,
		36.706947, 35.852055, 41.582947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338760, 35.412315, 40.836666>,  <36.948421, 35.257648, 41.302994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338760, 35.412315, 40.836666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.408604, 35.751083, 41.037560>,  <36.450508, 35.954342, 41.158096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.408604, 35.751083, 41.037560>,  <36.338760, 35.412315, 40.836666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408604, 35.751083, 41.037560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187924, 0.529361, -0.827322,
		-0.966538, 0.050075, 0.251587,
		0.174609, 0.846918, 0.502237,
		36.460987, 36.005157, 41.188232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670963, 35.761154, 40.872990>,  <36.338760, 35.412315, 40.836666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670963, 35.761154, 40.872990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975468, 36.018559, 40.904930>,  <36.158173, 36.173000, 40.924095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975468, 36.018559, 40.904930>,  <35.670963, 35.761154, 40.872990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975468, 36.018559, 40.904930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346875, 0.508168, -0.788317,
		-0.547865, 0.572419, 0.610066,
		0.761264, 0.643507, 0.079850,
		36.203846, 36.211609, 40.928886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377144, 36.408142, 40.646351>,  <35.670963, 35.761154, 40.872990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377144, 36.408142, 40.646351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769505, 36.477665, 40.611450>,  <36.004921, 36.519379, 40.590508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769505, 36.477665, 40.611450>,  <35.377144, 36.408142, 40.646351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769505, 36.477665, 40.611450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158496, 0.454427, -0.876570,
		-0.112704, 0.873662, 0.473298,
		0.980906, 0.173809, -0.087256,
		36.063778, 36.529808, 40.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428467, 37.041355, 40.513527>,  <35.377144, 36.408142, 40.646351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428467, 37.041355, 40.513527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792782, 36.935257, 40.386967>,  <36.011372, 36.871597, 40.311031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792782, 36.935257, 40.386967>,  <35.428467, 37.041355, 40.513527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792782, 36.935257, 40.386967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196779, 0.394821, -0.897438,
		0.362960, 0.879638, 0.307404,
		0.910790, -0.265243, -0.316398,
		36.066017, 36.855682, 40.292046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690918, 37.591072, 40.261391>,  <35.428467, 37.041355, 40.513527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690918, 37.591072, 40.261391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932365, 37.330288, 40.077831>,  <36.077232, 37.173817, 39.967697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932365, 37.330288, 40.077831>,  <35.690918, 37.591072, 40.261391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932365, 37.330288, 40.077831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084377, 0.520113, -0.849919,
		0.792795, 0.551749, 0.258940,
		0.603620, -0.651963, -0.458898,
		36.113453, 37.134701, 39.940163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244354, 37.971085, 39.938480>,  <35.690918, 37.591072, 40.261391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244354, 37.971085, 39.938480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232517, 37.621929, 39.743668>,  <36.225414, 37.412437, 39.626781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232517, 37.621929, 39.743668>,  <36.244354, 37.971085, 39.938480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232517, 37.621929, 39.743668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024743, 0.487732, -0.872643,
		0.999256, -0.013770, -0.036029,
		-0.029589, -0.872885, -0.487029,
		36.223640, 37.360065, 39.597561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763050, 38.072037, 39.343056>,  <36.244354, 37.971085, 39.938480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763050, 38.072037, 39.343056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499660, 37.799065, 39.216122>,  <36.341625, 37.635281, 39.139961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499660, 37.799065, 39.216122>,  <36.763050, 38.072037, 39.343056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499660, 37.799065, 39.216122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003622, 0.424519, -0.905412,
		0.752592, -0.595044, -0.282008,
		-0.658477, -0.682427, -0.317334,
		36.302116, 37.594337, 39.120922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430893, 38.105042, 39.054852>,  <36.763050, 38.072037, 39.343056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430893, 38.105042, 39.054852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562584, 38.482647, 39.046329>,  <37.641598, 38.709209, 39.041218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562584, 38.482647, 39.046329>,  <37.430893, 38.105042, 39.054852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562584, 38.482647, 39.046329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247674, -0.064561, 0.966690,
		0.911189, -0.323541, -0.255062,
		0.329230, 0.944009, -0.021305,
		37.661354, 38.765850, 39.039936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201836, 38.125641, 39.195446>,  <37.430893, 38.105042, 39.054852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201836, 38.125641, 39.195446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084030, 38.495266, 39.292919>,  <38.013348, 38.717041, 39.351402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084030, 38.495266, 39.292919>,  <38.201836, 38.125641, 39.195446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084030, 38.495266, 39.292919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343233, -0.135693, 0.929397,
		0.891882, 0.357357, -0.277204,
		-0.294512, 0.924058, 0.243679,
		37.995678, 38.772484, 39.366024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701004, 38.388588, 39.575756>,  <38.201836, 38.125641, 39.195446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701004, 38.388588, 39.575756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407837, 38.633671, 39.694023>,  <38.231937, 38.780720, 39.764984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407837, 38.633671, 39.694023>,  <38.701004, 38.388588, 39.575756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407837, 38.633671, 39.694023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165150, -0.261369, 0.951006,
		0.659971, 0.745836, 0.090371,
		-0.732915, 0.612711, 0.295671,
		38.187962, 38.817486, 39.782722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998501, 38.656036, 40.134792>,  <38.701004, 38.388588, 39.575756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998501, 38.656036, 40.134792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601196, 38.693302, 40.162384>,  <38.362816, 38.715660, 40.178940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601196, 38.693302, 40.162384>,  <38.998501, 38.656036, 40.134792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601196, 38.693302, 40.162384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044187, -0.245875, 0.968294,
		0.107173, 0.964814, 0.240100,
		-0.993258, 0.093166, 0.068984,
		38.303219, 38.721252, 40.183079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872364, 39.019958, 40.735004>,  <38.998501, 38.656036, 40.134792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872364, 39.019958, 40.735004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517181, 38.841248, 40.691330>,  <38.304073, 38.734020, 40.665123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517181, 38.841248, 40.691330>,  <38.872364, 39.019958, 40.735004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517181, 38.841248, 40.691330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073510, -0.372217, 0.925230,
		-0.454016, 0.813537, 0.363355,
		-0.887956, -0.446779, -0.109190,
		38.250793, 38.707214, 40.658573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528580, 39.137569, 41.454700>,  <38.872364, 39.019958, 40.735004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528580, 39.137569, 41.454700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345333, 38.835548, 41.267071>,  <38.235386, 38.654335, 41.154495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345333, 38.835548, 41.267071>,  <38.528580, 39.137569, 41.454700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345333, 38.835548, 41.267071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059695, -0.500377, 0.863747,
		-0.886888, 0.423694, 0.184156,
		-0.458112, -0.755054, -0.469070,
		38.207901, 38.609032, 41.126350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059216, 38.913437, 41.990353>,  <38.528580, 39.137569, 41.454700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059216, 38.913437, 41.990353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064857, 38.601498, 41.740028>,  <38.068245, 38.414333, 41.589836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064857, 38.601498, 41.740028>,  <38.059216, 38.913437, 41.990353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064857, 38.601498, 41.740028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146328, -0.620743, 0.770238,
		-0.989136, 0.080707, -0.122870,
		0.014107, -0.779849, -0.625808,
		38.069088, 38.367542, 41.552284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427620, 38.458027, 42.013699>,  <38.059216, 38.913437, 41.990353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427620, 38.458027, 42.013699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739311, 38.240173, 41.889645>,  <37.926327, 38.109463, 41.815212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739311, 38.240173, 41.889645>,  <37.427620, 38.458027, 42.013699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739311, 38.240173, 41.889645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156494, -0.648242, 0.745180,
		-0.606889, -0.532130, -0.590359,
		0.779228, -0.544628, -0.310135,
		37.973080, 38.076782, 41.796604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195782, 37.844334, 42.256104>,  <37.427620, 38.458027, 42.013699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195782, 37.844334, 42.256104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.578072, 37.784058, 42.155010>,  <37.807446, 37.747890, 42.094353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.578072, 37.784058, 42.155010>,  <37.195782, 37.844334, 42.256104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578072, 37.784058, 42.155010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073996, -0.708222, 0.702102,
		-0.284793, -0.689720, -0.665717,
		0.955729, -0.150693, -0.252733,
		37.864792, 37.738850, 42.079189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357491, 37.054928, 42.087795>,  <37.195782, 37.844334, 42.256104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357491, 37.054928, 42.087795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707111, 37.217655, 42.194035>,  <37.916882, 37.315292, 42.257778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707111, 37.217655, 42.194035>,  <37.357491, 37.054928, 42.087795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707111, 37.217655, 42.194035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089523, -0.672171, 0.734964,
		0.477520, -0.618617, -0.623929,
		0.874048, 0.406816, 0.265594,
		37.969326, 37.339699, 42.273712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804390, 36.499729, 42.399193>,  <37.357491, 37.054928, 42.087795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804390, 36.499729, 42.399193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.984222, 36.842442, 42.500229>,  <38.092121, 37.048069, 42.560852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.984222, 36.842442, 42.500229>,  <37.804390, 36.499729, 42.399193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984222, 36.842442, 42.500229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219183, -0.379951, 0.898663,
		0.865932, -0.348656, -0.358610,
		0.449579, 0.856782, 0.252593,
		38.119095, 37.099476, 42.576008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464199, 36.281185, 42.675255>,  <37.804390, 36.499729, 42.399193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464199, 36.281185, 42.675255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372509, 36.637882, 42.831333>,  <38.317497, 36.851902, 42.924980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372509, 36.637882, 42.831333>,  <38.464199, 36.281185, 42.675255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372509, 36.637882, 42.831333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224524, -0.341620, 0.912625,
		0.947125, 0.296803, -0.121911,
		-0.229222, 0.891742, 0.390197,
		38.303741, 36.905403, 42.948391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842796, 36.312473, 43.367916>,  <38.464199, 36.281185, 42.675255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842796, 36.312473, 43.367916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596905, 36.625542, 43.406982>,  <38.449371, 36.813381, 43.430424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596905, 36.625542, 43.406982>,  <38.842796, 36.312473, 43.367916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596905, 36.625542, 43.406982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011245, -0.115117, 0.993288,
		0.788659, 0.611700, 0.061965,
		-0.614727, 0.782669, 0.097667,
		38.412487, 36.860344, 43.436283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222885, 36.797436, 43.791649>,  <38.842796, 36.312473, 43.367916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222885, 36.797436, 43.791649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.827023, 36.854317, 43.799305>,  <38.589504, 36.888447, 43.803898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.827023, 36.854317, 43.799305>,  <39.222885, 36.797436, 43.791649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827023, 36.854317, 43.799305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028739, -0.327111, 0.944549,
		0.140576, 0.934225, 0.327812,
		-0.989653, 0.142202, 0.019136,
		38.530128, 36.896976, 43.805046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741714, 37.201290, 44.111309>,  <39.222885, 36.797436, 43.791649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741714, 37.201290, 44.111309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.136761, 37.148186, 44.077881>,  <40.373791, 37.116322, 44.057823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.136761, 37.148186, 44.077881>,  <39.741714, 37.201290, 44.111309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136761, 37.148186, 44.077881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012358, 0.465225, -0.885106,
		0.156385, 0.875180, 0.457825,
		0.987619, -0.132760, -0.083569,
		40.433048, 37.108356, 44.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996449, 37.787388, 43.772732>,  <39.741714, 37.201290, 44.111309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996449, 37.787388, 43.772732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297153, 37.530602, 43.712418>,  <40.477577, 37.376530, 43.676231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297153, 37.530602, 43.712418>,  <39.996449, 37.787388, 43.772732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297153, 37.530602, 43.712418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236958, 0.476357, -0.846720,
		0.615394, 0.600800, 0.510225,
		0.751759, -0.641968, -0.150782,
		40.522682, 37.338013, 43.667183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556030, 38.158203, 43.538845>,  <39.996449, 37.787388, 43.772732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556030, 38.158203, 43.538845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645672, 37.784214, 43.428860>,  <40.699459, 37.559822, 43.362869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645672, 37.784214, 43.428860>,  <40.556030, 38.158203, 43.538845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645672, 37.784214, 43.428860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198404, 0.320002, -0.926409,
		0.954155, 0.153060, 0.257216,
		0.224106, -0.934971, -0.274964,
		40.712902, 37.503723, 43.346371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216522, 38.226509, 43.240719>,  <40.556030, 38.158203, 43.538845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216522, 38.226509, 43.240719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.050461, 37.896946, 43.086403>,  <40.950825, 37.699207, 42.993813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.050461, 37.896946, 43.086403>,  <41.216522, 38.226509, 43.240719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050461, 37.896946, 43.086403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057760, 0.399330, -0.914986,
		0.907917, -0.402140, -0.118194,
		-0.415151, -0.823905, -0.385786,
		40.925915, 37.649773, 42.970669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782288, 37.858818, 42.728397>,  <41.216522, 38.226509, 43.240719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782288, 37.858818, 42.728397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440891, 37.678379, 42.624039>,  <41.236053, 37.570114, 42.561424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440891, 37.678379, 42.624039>,  <41.782288, 37.858818, 42.728397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440891, 37.678379, 42.624039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172548, 0.227779, -0.958302,
		0.491715, -0.862918, -0.116571,
		-0.853489, -0.451098, -0.260897,
		41.184845, 37.543049, 42.545769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933418, 37.342606, 42.012890>,  <41.782288, 37.858818, 42.728397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933418, 37.342606, 42.012890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.549809, 37.454994, 42.027477>,  <41.319645, 37.522427, 42.036228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.549809, 37.454994, 42.027477>,  <41.933418, 37.342606, 42.012890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549809, 37.454994, 42.027477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001357, 0.133258, -0.991080,
		-0.283329, -0.950418, -0.128179,
		-0.959022, 0.280976, 0.036467,
		41.262100, 37.539288, 42.038418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708523, 37.160404, 41.462448>,  <41.933418, 37.342606, 42.012890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708523, 37.160404, 41.462448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413330, 37.416183, 41.548683>,  <41.236214, 37.569653, 41.600426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413330, 37.416183, 41.548683>,  <41.708523, 37.160404, 41.462448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413330, 37.416183, 41.548683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049231, 0.267611, -0.962269,
		-0.673019, -0.720754, -0.166012,
		-0.737985, 0.639452, 0.215590,
		41.191933, 37.608021, 41.613361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318783, 37.269119, 40.902531>,  <41.708523, 37.160404, 41.462448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318783, 37.269119, 40.902531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.204868, 37.583958, 41.121391>,  <41.136520, 37.772861, 41.252708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.204868, 37.583958, 41.121391>,  <41.318783, 37.269119, 40.902531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204868, 37.583958, 41.121391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032128, 0.562628, -0.826086,
		-0.958052, -0.252838, -0.134941,
		-0.284787, 0.787098, 0.547150,
		41.119431, 37.820087, 41.285538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672703, 37.531345, 40.565155>,  <41.318783, 37.269119, 40.902531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672703, 37.531345, 40.565155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849731, 37.828938, 40.765404>,  <40.955948, 38.007492, 40.885555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849731, 37.828938, 40.765404>,  <40.672703, 37.531345, 40.565155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849731, 37.828938, 40.765404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043252, 0.575339, -0.816771,
		-0.895687, 0.339830, 0.286809,
		0.442576, 0.743976, 0.500625,
		40.982506, 38.052132, 40.915592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192818, 38.160358, 40.530987>,  <40.672703, 37.531345, 40.565155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192818, 38.160358, 40.530987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558422, 38.288319, 40.630787>,  <40.777786, 38.365093, 40.690666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558422, 38.288319, 40.630787>,  <40.192818, 38.160358, 40.530987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558422, 38.288319, 40.630787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007430, 0.628090, -0.778105,
		-0.405620, 0.709343, 0.576458,
		0.914011, 0.319898, 0.249496,
		40.832626, 38.384289, 40.705635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135998, 38.948273, 40.541916>,  <40.192818, 38.160358, 40.530987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135998, 38.948273, 40.541916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513515, 38.828995, 40.484875>,  <40.740025, 38.757427, 40.450649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513515, 38.828995, 40.484875>,  <40.135998, 38.948273, 40.541916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513515, 38.828995, 40.484875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132047, 0.735655, -0.664361,
		0.303015, 0.608189, 0.733681,
		0.943793, -0.298191, -0.142605,
		40.796654, 38.739536, 40.442093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272369, 39.529968, 40.488033>,  <40.135998, 38.948273, 40.541916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272369, 39.529968, 40.488033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.554169, 39.291222, 40.334446>,  <40.723248, 39.147972, 40.242294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.554169, 39.291222, 40.334446>,  <40.272369, 39.529968, 40.488033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554169, 39.291222, 40.334446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074882, 0.600520, -0.796096,
		0.705745, 0.532095, 0.467760,
		0.704497, -0.596867, -0.383970,
		40.765518, 39.112160, 40.219254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800243, 40.008366, 40.106934>,  <40.272369, 39.529968, 40.488033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800243, 40.008366, 40.106934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835224, 39.644234, 39.945122>,  <40.856213, 39.425755, 39.848034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835224, 39.644234, 39.945122>,  <40.800243, 40.008366, 40.106934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835224, 39.644234, 39.945122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045508, 0.409316, -0.911257,
		0.995128, 0.061286, 0.077224,
		0.087456, -0.910332, -0.404533,
		40.861462, 39.371136, 39.823761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298016, 40.120171, 39.580891>,  <40.800243, 40.008366, 40.106934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298016, 40.120171, 39.580891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.121723, 39.780357, 39.464928>,  <41.015949, 39.576469, 39.395348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.121723, 39.780357, 39.464928>,  <41.298016, 40.120171, 39.580891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121723, 39.780357, 39.464928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056835, 0.348732, -0.935498,
		0.895839, -0.395825, -0.201980,
		-0.440730, -0.849535, -0.289911,
		40.989506, 39.525497, 39.377953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.146446, 37.609188, 41.058765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816263, 37.750381, 41.234955>,  <30.618153, 37.835098, 41.340668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816263, 37.750381, 41.234955>,  <31.146446, 37.609188, 41.058765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816263, 37.750381, 41.234955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523015, -0.184787, -0.832051,
		-0.212323, -0.917193, 0.337158,
		-0.825454, 0.353002, 0.440471,
		30.568626, 37.856277, 41.367100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571711, 37.071854, 41.031223>,  <31.146446, 37.609188, 41.058765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571711, 37.071854, 41.031223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415915, 37.440266, 41.031265>,  <30.322437, 37.661312, 41.031292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415915, 37.440266, 41.031265>,  <30.571711, 37.071854, 41.031223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415915, 37.440266, 41.031265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650620, -0.275056, -0.707840,
		-0.651915, -0.275763, 0.706373,
		-0.389488, 0.921031, 0.000104,
		30.299068, 37.716576, 41.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815521, 36.881638, 41.118099>,  <30.571711, 37.071854, 41.031223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815521, 36.881638, 41.118099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852278, 37.258030, 40.987801>,  <29.874332, 37.483864, 40.909622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852278, 37.258030, 40.987801>,  <29.815521, 36.881638, 41.118099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852278, 37.258030, 40.987801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739885, -0.154413, -0.654772,
		-0.666428, 0.301181, 0.682029,
		0.091891, 0.940982, -0.325745,
		29.879845, 37.540325, 40.890076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221056, 37.001568, 40.854622>,  <29.815521, 36.881638, 41.118099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221056, 37.001568, 40.854622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423758, 37.315891, 40.712803>,  <29.545378, 37.504486, 40.627712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423758, 37.315891, 40.712803>,  <29.221056, 37.001568, 40.854622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423758, 37.315891, 40.712803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626977, 0.053666, -0.777187,
		-0.591693, 0.616137, 0.519879,
		0.506753, 0.785809, -0.354550,
		29.575783, 37.551636, 40.606438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639486, 37.393009, 40.705715>,  <29.221056, 37.001568, 40.854622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639486, 37.393009, 40.705715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973976, 37.507507, 40.518616>,  <29.174669, 37.576206, 40.406357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973976, 37.507507, 40.518616>,  <28.639486, 37.393009, 40.705715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973976, 37.507507, 40.518616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465909, -0.079027, -0.881297,
		-0.289236, 0.954891, 0.067282,
		0.836225, 0.286250, -0.467749,
		29.224844, 37.593384, 40.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427338, 37.895409, 40.116936>,  <28.639486, 37.393009, 40.705715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427338, 37.895409, 40.116936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784378, 37.754448, 40.004452>,  <28.998602, 37.669872, 39.936962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784378, 37.754448, 40.004452>,  <28.427338, 37.895409, 40.116936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784378, 37.754448, 40.004452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361722, -0.187467, -0.913243,
		0.269113, 0.916879, -0.294806,
		0.892600, -0.352403, -0.281206,
		29.052158, 37.648727, 39.920090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544859, 38.090370, 39.390755>,  <28.427338, 37.895409, 40.116936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544859, 38.090370, 39.390755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790257, 37.782814, 39.462795>,  <28.937496, 37.598282, 39.506020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790257, 37.782814, 39.462795>,  <28.544859, 38.090370, 39.390755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790257, 37.782814, 39.462795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192233, -0.366611, -0.910298,
		0.765944, 0.523842, -0.372719,
		0.613495, -0.768886, 0.180104,
		28.974304, 37.552147, 39.516827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951065, 38.109341, 38.811558>,  <28.544859, 38.090370, 39.390755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951065, 38.109341, 38.811558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006704, 37.742489, 38.960968>,  <29.040087, 37.522377, 39.050613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006704, 37.742489, 38.960968>,  <28.951065, 38.109341, 38.811558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006704, 37.742489, 38.960968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203914, -0.395635, -0.895484,
		0.969057, 0.048392, -0.242048,
		0.139097, -0.917132, 0.373525,
		29.048433, 37.467350, 39.073025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307703, 37.758430, 38.301533>,  <28.951065, 38.109341, 38.811558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307703, 37.758430, 38.301533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119268, 37.484959, 38.524483>,  <29.006208, 37.320877, 38.658253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119268, 37.484959, 38.524483>,  <29.307703, 37.758430, 38.301533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119268, 37.484959, 38.524483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337613, -0.444015, -0.829981,
		0.814921, -0.579168, -0.021649,
		-0.471085, -0.683678, 0.557372,
		28.977943, 37.279854, 38.691696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464506, 37.107956, 37.985939>,  <29.307703, 37.758430, 38.301533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464506, 37.107956, 37.985939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138687, 37.058949, 38.212742>,  <28.943195, 37.029545, 38.348824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138687, 37.058949, 38.212742>,  <29.464506, 37.107956, 37.985939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138687, 37.058949, 38.212742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405907, -0.577917, -0.707991,
		0.414428, -0.806846, 0.421009,
		-0.814548, -0.122521, 0.567009,
		28.894323, 37.022194, 38.382843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296032, 36.338043, 37.937515>,  <29.464506, 37.107956, 37.985939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296032, 36.338043, 37.937515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969059, 36.543678, 38.041458>,  <28.772875, 36.667057, 38.103825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969059, 36.543678, 38.041458>,  <29.296032, 36.338043, 37.937515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969059, 36.543678, 38.041458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556769, -0.589470, -0.585263,
		-0.147698, -0.623090, 0.768078,
		-0.817431, 0.514085, 0.259854,
		28.723829, 36.697903, 38.119415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775766, 35.892063, 37.832996>,  <29.296032, 36.338043, 37.937515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775766, 35.892063, 37.832996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559998, 36.226154, 37.875744>,  <28.430536, 36.426609, 37.901390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559998, 36.226154, 37.875744>,  <28.775766, 35.892063, 37.832996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559998, 36.226154, 37.875744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648891, -0.331447, -0.684897,
		-0.536624, -0.438792, 0.720761,
		-0.539422, 0.835227, 0.106866,
		28.398170, 36.476723, 37.907803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136532, 35.647137, 37.975502>,  <28.775766, 35.892063, 37.832996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136532, 35.647137, 37.975502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128326, 36.008640, 37.804485>,  <28.123404, 36.225544, 37.701874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128326, 36.008640, 37.804485>,  <28.136532, 35.647137, 37.975502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128326, 36.008640, 37.804485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528381, -0.372834, -0.762764,
		-0.848760, 0.210259, 0.485179,
		-0.020513, 0.903762, -0.427543,
		28.122173, 36.279770, 37.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483408, 35.636086, 37.638020>,  <28.136532, 35.647137, 37.975502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483408, 35.636086, 37.638020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667540, 35.954296, 37.480415>,  <27.778019, 36.145222, 37.385853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667540, 35.954296, 37.480415>,  <27.483408, 35.636086, 37.638020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667540, 35.954296, 37.480415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327430, -0.260391, -0.908287,
		-0.825159, 0.547121, 0.140612,
		0.460328, 0.795522, -0.394008,
		27.805637, 36.192951, 37.362213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989668, 35.884384, 37.203724>,  <27.483408, 35.636086, 37.638020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989668, 35.884384, 37.203724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343403, 36.011860, 37.067261>,  <27.555643, 36.088345, 36.985382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343403, 36.011860, 37.067261>,  <26.989668, 35.884384, 37.203724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343403, 36.011860, 37.067261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275685, -0.233259, -0.932517,
		-0.376759, 0.918710, -0.118422,
		0.884336, 0.318687, -0.341157,
		27.608704, 36.107468, 36.964912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796078, 36.340218, 36.575104>,  <26.989668, 35.884384, 37.203724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796078, 36.340218, 36.575104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182522, 36.238194, 36.559238>,  <27.414389, 36.176979, 36.549717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182522, 36.238194, 36.559238>,  <26.796078, 36.340218, 36.575104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182522, 36.238194, 36.559238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113328, -0.281063, -0.952974,
		0.231914, 0.925175, -0.300443,
		0.966112, -0.255056, -0.039666,
		27.472355, 36.161678, 36.547340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000750, 36.630840, 35.982559>,  <26.796078, 36.340218, 36.575104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000750, 36.630840, 35.982559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259960, 36.338570, 36.068508>,  <27.415485, 36.163208, 36.120079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259960, 36.338570, 36.068508>,  <27.000750, 36.630840, 35.982559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259960, 36.338570, 36.068508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017017, -0.268163, -0.963223,
		0.761429, 0.627850, -0.161342,
		0.648026, -0.730680, 0.214871,
		27.454369, 36.119366, 36.132969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612974, 36.749294, 35.591118>,  <27.000750, 36.630840, 35.982559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612974, 36.749294, 35.591118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598127, 36.361526, 35.688160>,  <27.589218, 36.128868, 35.746384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598127, 36.361526, 35.688160>,  <27.612974, 36.749294, 35.591118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598127, 36.361526, 35.688160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016108, -0.242159, -0.970103,
		0.999181, -0.039916, -0.006627,
		-0.037118, -0.969415, 0.242604,
		27.586992, 36.070702, 35.760941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770943, 36.541798, 35.013111>,  <27.612974, 36.749294, 35.591118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770943, 36.541798, 35.013111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732824, 36.187424, 35.194675>,  <27.709953, 35.974800, 35.303616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732824, 36.187424, 35.194675>,  <27.770943, 36.541798, 35.013111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732824, 36.187424, 35.194675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004000, -0.456324, -0.889804,
		0.995441, -0.082977, 0.047029,
		-0.095294, -0.885936, 0.453912,
		27.704237, 35.921642, 35.330849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321297, 36.017811, 34.834545>,  <27.770943, 36.541798, 35.013111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321297, 36.017811, 34.834545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992872, 35.804878, 34.916992>,  <27.795818, 35.677120, 34.966461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992872, 35.804878, 34.916992>,  <28.321297, 36.017811, 34.834545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992872, 35.804878, 34.916992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256571, -0.666689, -0.699783,
		0.509934, -0.521679, 0.683972,
		-0.821060, -0.532331, 0.206119,
		27.746553, 35.645180, 34.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451729, 36.174915, 34.203922>,  <28.321297, 36.017811, 34.834545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451729, 36.174915, 34.203922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682095, 36.498325, 34.155582>,  <28.820314, 36.692371, 34.126579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682095, 36.498325, 34.155582>,  <28.451729, 36.174915, 34.203922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682095, 36.498325, 34.155582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713953, -0.425421, 0.556136,
		0.398238, -0.406570, -0.822257,
		0.575914, 0.808528, -0.120853,
		28.854868, 36.740883, 34.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016634, 35.888165, 34.065788>,  <28.451729, 36.174915, 34.203922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016634, 35.888165, 34.065788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101738, 36.244110, 34.227222>,  <29.152800, 36.457676, 34.324085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101738, 36.244110, 34.227222>,  <29.016634, 35.888165, 34.065788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101738, 36.244110, 34.227222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764844, -0.408714, 0.497962,
		0.608068, 0.202737, -0.767562,
		0.212758, 0.889860, 0.403588,
		29.165565, 36.511066, 34.348297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835152, 35.961464, 34.014912>,  <29.016634, 35.888165, 34.065788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835152, 35.961464, 34.014912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699221, 36.229027, 34.279358>,  <29.617662, 36.389565, 34.438026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699221, 36.229027, 34.279358>,  <29.835152, 35.961464, 34.014912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699221, 36.229027, 34.279358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706996, -0.281882, 0.648613,
		0.620219, 0.687827, -0.377123,
		-0.339830, 0.668907, 0.661120,
		29.597271, 36.429699, 34.477695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402203, 36.105076, 34.445583>,  <29.835152, 35.961464, 34.014912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402203, 36.105076, 34.445583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111292, 36.263672, 34.669678>,  <29.936745, 36.358829, 34.804134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111292, 36.263672, 34.669678>,  <30.402203, 36.105076, 34.445583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111292, 36.263672, 34.669678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543065, -0.166711, 0.822975,
		0.419698, 0.902776, -0.094074,
		-0.727279, 0.396489, 0.560234,
		29.893108, 36.382618, 34.837749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767965, 36.576004, 34.907101>,  <30.402203, 36.105076, 34.445583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767965, 36.576004, 34.907101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415474, 36.477505, 35.068497>,  <30.203979, 36.418407, 35.165333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415474, 36.477505, 35.068497>,  <30.767965, 36.576004, 34.907101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415474, 36.477505, 35.068497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439960, -0.115160, 0.890603,
		-0.172839, 0.962342, 0.209820,
		-0.881227, -0.246244, 0.403488,
		30.151106, 36.403633, 35.189545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819027, 36.870846, 35.478821>,  <30.767965, 36.576004, 34.907101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819027, 36.870846, 35.478821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.510845, 36.618710, 35.516926>,  <30.325935, 36.467430, 35.539787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.510845, 36.618710, 35.516926>,  <30.819027, 36.870846, 35.478821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510845, 36.618710, 35.516926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279830, -0.200130, 0.938959,
		-0.572797, 0.750081, 0.330578,
		-0.770454, -0.630338, 0.095261,
		30.279709, 36.429607, 35.545506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497086, 37.021767, 36.030056>,  <30.819027, 36.870846, 35.478821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497086, 37.021767, 36.030056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378103, 36.645767, 35.963226>,  <30.306713, 36.420166, 35.923130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378103, 36.645767, 35.963226>,  <30.497086, 37.021767, 36.030056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378103, 36.645767, 35.963226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245426, -0.244399, 0.938102,
		-0.922651, 0.238040, 0.303400,
		-0.297457, -0.940003, -0.167074,
		30.288866, 36.363766, 35.913105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921185, 36.849037, 36.516487>,  <30.497086, 37.021767, 36.030056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921185, 36.849037, 36.516487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.113316, 36.523182, 36.386467>,  <30.228594, 36.327671, 36.308456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.113316, 36.523182, 36.386467>,  <29.921185, 36.849037, 36.516487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113316, 36.523182, 36.386467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280706, -0.208326, 0.936912,
		-0.830957, -0.541267, 0.128608,
		0.480327, -0.814635, -0.325047,
		30.257414, 36.278790, 36.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715872, 36.422672, 37.052570>,  <29.921185, 36.849037, 36.516487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715872, 36.422672, 37.052570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.030684, 36.286915, 36.846504>,  <30.219570, 36.205460, 36.722862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.030684, 36.286915, 36.846504>,  <29.715872, 36.422672, 37.052570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030684, 36.286915, 36.846504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495803, -0.148942, 0.855567,
		-0.367106, -0.928777, 0.051051,
		0.787028, -0.339395, -0.515168,
		30.266792, 36.185097, 36.691956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986742, 35.954350, 37.554688>,  <29.715872, 36.422672, 37.052570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986742, 35.954350, 37.554688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271471, 36.006378, 37.278603>,  <30.442308, 36.037594, 37.112953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271471, 36.006378, 37.278603>,  <29.986742, 35.954350, 37.554688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271471, 36.006378, 37.278603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696041, -0.262127, 0.668443,
		-0.093980, -0.956228, -0.277120,
		0.711825, 0.130066, -0.690209,
		30.485018, 36.045399, 37.071541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430950, 35.468971, 37.706806>,  <29.986742, 35.954350, 37.554688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430950, 35.468971, 37.706806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.669230, 35.701569, 37.485172>,  <30.812197, 35.841125, 37.352192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.669230, 35.701569, 37.485172>,  <30.430950, 35.468971, 37.706806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669230, 35.701569, 37.485172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712919, -0.065017, 0.698226,
		0.369988, -0.810950, -0.453287,
		0.595698, 0.581492, -0.554086,
		30.847939, 35.876015, 37.318947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154856, 35.110291, 37.599556>,  <30.430950, 35.468971, 37.706806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154856, 35.110291, 37.599556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.172417, 35.508530, 37.566448>,  <31.182953, 35.747475, 37.546581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.172417, 35.508530, 37.566448>,  <31.154856, 35.110291, 37.599556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172417, 35.508530, 37.566448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758457, 0.020709, 0.651394,
		0.650243, -0.091378, -0.754211,
		0.043905, 0.995601, -0.082772,
		31.185589, 35.807209, 37.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839794, 35.185291, 37.817924>,  <31.154856, 35.110291, 37.599556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839794, 35.185291, 37.817924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713009, 35.564663, 37.816330>,  <31.636938, 35.792286, 37.815372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713009, 35.564663, 37.816330>,  <31.839794, 35.185291, 37.817924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713009, 35.564663, 37.816330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735921, 0.248589, 0.629781,
		0.598294, 0.196684, -0.776763,
		-0.316963, 0.948430, -0.003986,
		31.617920, 35.849194, 37.815136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454147, 35.663399, 37.589493>,  <31.839794, 35.185291, 37.817924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454147, 35.663399, 37.589493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182789, 35.870834, 37.797661>,  <32.019974, 35.995296, 37.922562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182789, 35.870834, 37.797661>,  <32.454147, 35.663399, 37.589493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182789, 35.870834, 37.797661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700414, 0.242674, 0.671215,
		0.221795, 0.819861, -0.527860,
		-0.678401, 0.518592, 0.520418,
		31.979269, 36.026413, 37.953785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786083, 36.258537, 37.758926>,  <32.454147, 35.663399, 37.589493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786083, 36.258537, 37.758926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495819, 36.224018, 38.031975>,  <32.321663, 36.203308, 38.195805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495819, 36.224018, 38.031975>,  <32.786083, 36.258537, 37.758926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495819, 36.224018, 38.031975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655772, 0.213592, 0.724115,
		-0.208289, 0.973104, -0.098406,
		-0.725658, -0.086293, 0.682623,
		32.278122, 36.198132, 38.236763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887341, 36.788353, 38.263901>,  <32.786083, 36.258537, 37.758926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887341, 36.788353, 38.263901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.634964, 36.548820, 38.461205>,  <32.483536, 36.405102, 38.579586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.634964, 36.548820, 38.461205>,  <32.887341, 36.788353, 38.263901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634964, 36.548820, 38.461205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477101, 0.201870, 0.855350,
		-0.611786, 0.775014, 0.158335,
		-0.630946, -0.598833, 0.493261,
		32.445679, 36.369171, 38.609184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707268, 37.168209, 38.882904>,  <32.887341, 36.788353, 38.263901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707268, 37.168209, 38.882904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645912, 36.783482, 38.973568>,  <32.609097, 36.552647, 39.027966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645912, 36.783482, 38.973568>,  <32.707268, 37.168209, 38.882904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645912, 36.783482, 38.973568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209246, 0.192562, 0.958716,
		-0.965757, 0.194489, 0.171719,
		-0.153394, -0.961818, 0.226664,
		32.599895, 36.494938, 39.041569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631428, 37.226532, 39.486668>,  <32.707268, 37.168209, 38.882904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631428, 37.226532, 39.486668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.671818, 36.829620, 39.457840>,  <32.696053, 36.591473, 39.440544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.671818, 36.829620, 39.457840>,  <32.631428, 37.226532, 39.486668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671818, 36.829620, 39.457840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140301, -0.057516, 0.988437,
		-0.984947, -0.109916, 0.133409,
		0.100972, -0.992275, -0.072071,
		32.702110, 36.531937, 39.436218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082756, 36.898579, 39.862640>,  <32.631428, 37.226532, 39.486668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082756, 36.898579, 39.862640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.396179, 36.652287, 39.829372>,  <32.584232, 36.504513, 39.809414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.396179, 36.652287, 39.829372>,  <32.082756, 36.898579, 39.862640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396179, 36.652287, 39.829372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097675, -0.010121, 0.995167,
		-0.613598, -0.787891, 0.052211,
		0.783554, -0.615732, -0.083167,
		32.631245, 36.467567, 39.804420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039974, 36.531818, 40.401352>,  <32.082756, 36.898579, 39.862640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039974, 36.531818, 40.401352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408646, 36.417793, 40.296093>,  <32.629848, 36.349377, 40.232937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408646, 36.417793, 40.296093>,  <32.039974, 36.531818, 40.401352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408646, 36.417793, 40.296093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271027, -0.012203, 0.962494,
		-0.277582, -0.958431, 0.066012,
		0.921679, -0.285062, -0.263148,
		32.685150, 36.332275, 40.217148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152187, 35.974064, 40.782345>,  <32.039974, 36.531818, 40.401352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152187, 35.974064, 40.782345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.517143, 36.089115, 40.665855>,  <32.736118, 36.158146, 40.595963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.517143, 36.089115, 40.665855>,  <32.152187, 35.974064, 40.782345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517143, 36.089115, 40.665855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338409, -0.129804, 0.932003,
		0.230272, -0.948904, -0.215770,
		0.912389, 0.287633, -0.291227,
		32.790859, 36.175404, 40.578487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543810, 35.667007, 40.556030>,  <32.152187, 35.974064, 40.782345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543810, 35.667007, 40.556030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550253, 35.272633, 40.489487>,  <31.554119, 35.036007, 40.449562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550253, 35.272633, 40.489487>,  <31.543810, 35.667007, 40.556030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550253, 35.272633, 40.489487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876587, 0.093959, -0.471982,
		0.480973, -0.138223, 0.865771,
		0.016108, -0.985934, -0.166356,
		31.555086, 34.976852, 40.439579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.001377, 35.484722, 43.494789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.816429, 35.132854, 43.450264>,  <42.705460, 34.921734, 43.423550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.816429, 35.132854, 43.450264>,  <43.001377, 35.484722, 43.494789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816429, 35.132854, 43.450264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046626, -0.149485, 0.987664,
		-0.885458, 0.451481, 0.110133,
		-0.462374, -0.879670, -0.111312,
		42.677715, 34.868954, 43.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575642, 35.546520, 43.974476>,  <43.001377, 35.484722, 43.494789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575642, 35.546520, 43.974476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.591156, 35.152256, 43.908791>,  <42.600464, 34.915695, 43.869381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.591156, 35.152256, 43.908791>,  <42.575642, 35.546520, 43.974476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591156, 35.152256, 43.908791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129893, -0.167912, 0.977207,
		-0.990769, -0.016575, -0.134543,
		0.038788, -0.985663, -0.164209,
		42.602791, 34.856556, 43.859528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176601, 35.117622, 44.549335>,  <42.575642, 35.546520, 43.974476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176601, 35.117622, 44.549335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.378536, 34.818848, 44.376259>,  <42.499699, 34.639584, 44.272411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.378536, 34.818848, 44.376259>,  <42.176601, 35.117622, 44.549335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378536, 34.818848, 44.376259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144530, -0.421040, 0.895453,
		-0.851028, -0.514597, -0.104603,
		0.504839, -0.746937, -0.432691,
		42.529987, 34.594765, 44.246452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816849, 34.454269, 44.693790>,  <42.176601, 35.117622, 44.549335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816849, 34.454269, 44.693790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.208832, 34.401016, 44.634514>,  <42.444023, 34.369064, 44.598946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.208832, 34.401016, 44.634514>,  <41.816849, 34.454269, 44.693790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208832, 34.401016, 44.634514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084277, -0.397001, 0.913941,
		-0.180504, -0.908112, -0.377824,
		0.979957, -0.133128, -0.148194,
		42.502819, 34.361076, 44.590057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908138, 34.007683, 45.170807>,  <41.816849, 34.454269, 44.693790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908138, 34.007683, 45.170807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.279850, 34.062744, 45.033695>,  <42.502876, 34.095779, 44.951427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.279850, 34.062744, 45.033695>,  <41.908138, 34.007683, 45.170807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279850, 34.062744, 45.033695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363217, -0.509341, 0.780157,
		-0.067203, -0.849485, -0.523316,
		0.929278, 0.137649, -0.342777,
		42.558632, 34.104038, 44.930862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253925, 33.431698, 45.071110>,  <41.908138, 34.007683, 45.170807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253925, 33.431698, 45.071110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.548553, 33.692375, 45.143509>,  <42.725330, 33.848782, 45.186951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.548553, 33.692375, 45.143509>,  <42.253925, 33.431698, 45.071110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548553, 33.692375, 45.143509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272714, -0.531051, 0.802254,
		0.618945, -0.541554, -0.568882,
		0.736569, 0.651693, 0.181002,
		42.769524, 33.887882, 45.197811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811077, 33.023800, 45.271572>,  <42.253925, 33.431698, 45.071110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811077, 33.023800, 45.271572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.904419, 33.385044, 45.415760>,  <42.960426, 33.601791, 45.502274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.904419, 33.385044, 45.415760>,  <42.811077, 33.023800, 45.271572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904419, 33.385044, 45.415760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224901, -0.410776, 0.883563,
		0.946025, -0.125117, -0.298968,
		0.233357, 0.903111, 0.360465,
		42.974426, 33.655979, 45.523899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555450, 33.051628, 45.651627>,  <42.811077, 33.023800, 45.271572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555450, 33.051628, 45.651627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.343502, 33.358566, 45.796082>,  <43.216331, 33.542728, 45.882755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.343502, 33.358566, 45.796082>,  <43.555450, 33.051628, 45.651627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343502, 33.358566, 45.796082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280270, -0.243466, 0.928533,
		0.800426, 0.593222, -0.086056,
		-0.529874, 0.767341, 0.361139,
		43.184540, 33.588768, 45.904423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992481, 33.347698, 46.121136>,  <43.555450, 33.051628, 45.651627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992481, 33.347698, 46.121136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.628754, 33.470337, 46.233658>,  <43.410515, 33.543922, 46.301170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.628754, 33.470337, 46.233658>,  <43.992481, 33.347698, 46.121136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628754, 33.470337, 46.233658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200724, -0.268966, 0.942002,
		0.364479, 0.913046, 0.183035,
		-0.909321, 0.306600, 0.281303,
		43.355957, 33.562317, 46.318050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092434, 33.525501, 46.782196>,  <43.992481, 33.347698, 46.121136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092434, 33.525501, 46.782196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.693249, 33.539219, 46.760685>,  <43.453739, 33.547451, 46.747776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.693249, 33.539219, 46.760685>,  <44.092434, 33.525501, 46.782196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693249, 33.539219, 46.760685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060953, -0.264221, 0.962534,
		0.018804, 0.963852, 0.265773,
		-0.997963, 0.034299, -0.053781,
		43.393860, 33.549507, 46.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897575, 33.845272, 47.300137>,  <44.092434, 33.525501, 46.782196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897575, 33.845272, 47.300137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.560532, 33.648632, 47.212193>,  <43.358307, 33.530647, 47.159428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.560532, 33.648632, 47.212193>,  <43.897575, 33.845272, 47.300137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560532, 33.648632, 47.212193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077984, -0.292568, 0.953060,
		-0.532848, 0.820203, 0.208183,
		-0.842610, -0.491601, -0.219857,
		43.307747, 33.501152, 47.146236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387840, 34.112198, 47.843716>,  <43.897575, 33.845272, 47.300137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387840, 34.112198, 47.843716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.221218, 33.776512, 47.703888>,  <43.121246, 33.575100, 47.619991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.221218, 33.776512, 47.703888>,  <43.387840, 34.112198, 47.843716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221218, 33.776512, 47.703888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178042, -0.301763, 0.936611,
		-0.891507, 0.452386, -0.023716,
		-0.416553, -0.839217, -0.349568,
		43.096252, 33.524746, 47.599018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226460, 33.714916, 48.458294>,  <43.387840, 34.112198, 47.843716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226460, 33.714916, 48.458294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.121777, 34.096619, 48.400448>,  <43.058968, 34.325638, 48.365742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.121777, 34.096619, 48.400448>,  <43.226460, 33.714916, 48.458294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121777, 34.096619, 48.400448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903915, 0.189812, -0.383287,
		-0.338304, -0.231025, -0.912238,
		-0.261703, 0.954253, -0.144613,
		43.043266, 34.382896, 48.357063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537476, 34.048122, 48.443249>,  <43.226460, 33.714916, 48.458294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537476, 34.048122, 48.443249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.292583, 34.096195, 48.755844>,  <42.145649, 34.125038, 48.943401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.292583, 34.096195, 48.755844>,  <42.537476, 34.048122, 48.443249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292583, 34.096195, 48.755844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654682, 0.477165, -0.586264,
		-0.443358, -0.870558, -0.213456,
		-0.612230, 0.120179, 0.781493,
		42.108913, 34.132248, 48.990292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935150, 33.638496, 48.287067>,  <42.537476, 34.048122, 48.443249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935150, 33.638496, 48.287067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.862427, 33.950520, 48.526550>,  <41.818794, 34.137733, 48.670242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.862427, 33.950520, 48.526550>,  <41.935150, 33.638496, 48.287067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862427, 33.950520, 48.526550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541452, 0.428832, -0.723141,
		-0.820839, -0.455644, 0.344401,
		-0.181805, 0.780059, 0.598711,
		41.807884, 34.184536, 48.706165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329247, 33.793640, 48.172722>,  <41.935150, 33.638496, 48.287067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329247, 33.793640, 48.172722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.466068, 34.145271, 48.305519>,  <41.548161, 34.356251, 48.385197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.466068, 34.145271, 48.305519>,  <41.329247, 33.793640, 48.172722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466068, 34.145271, 48.305519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427250, 0.460166, -0.778270,
		-0.836933, 0.124367, 0.532988,
		0.342055, 0.879079, 0.331992,
		41.568684, 34.408997, 48.405117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851067, 34.258438, 47.870262>,  <41.329247, 33.793640, 48.172722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851067, 34.258438, 47.870262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.159962, 34.482193, 47.990753>,  <41.345299, 34.616447, 48.063049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.159962, 34.482193, 47.990753>,  <40.851067, 34.258438, 47.870262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159962, 34.482193, 47.990753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183443, 0.650246, -0.737244,
		-0.608280, 0.514066, 0.604758,
		0.772233, 0.559389, 0.301230,
		41.391632, 34.650009, 48.081123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548447, 34.895523, 47.879398>,  <40.851067, 34.258438, 47.870262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548447, 34.895523, 47.879398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.943447, 34.958382, 47.884315>,  <41.180447, 34.996098, 47.887268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.943447, 34.958382, 47.884315>,  <40.548447, 34.895523, 47.879398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943447, 34.958382, 47.884315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103265, 0.703891, -0.702762,
		-0.119095, 0.692706, 0.711319,
		0.987498, 0.157149, 0.012298,
		41.239697, 35.005527, 47.888004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664608, 35.544907, 48.089748>,  <40.548447, 34.895523, 47.879398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664608, 35.544907, 48.089748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.979099, 35.438770, 47.866524>,  <41.167793, 35.375088, 47.732590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.979099, 35.438770, 47.866524>,  <40.664608, 35.544907, 48.089748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979099, 35.438770, 47.866524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225932, 0.717145, -0.659285,
		0.575148, 0.644435, 0.503893,
		0.786232, -0.265341, -0.558063,
		41.214970, 35.359169, 47.699104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865257, 36.173088, 47.817223>,  <40.664608, 35.544907, 48.089748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865257, 36.173088, 47.817223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.045441, 35.896748, 47.591015>,  <41.153549, 35.730942, 47.455292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.045441, 35.896748, 47.591015>,  <40.865257, 36.173088, 47.817223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045441, 35.896748, 47.591015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041512, 0.616532, -0.786235,
		0.891832, 0.377642, 0.249043,
		0.450458, -0.690851, -0.565520,
		41.180576, 35.689491, 47.421360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166653, 36.574783, 47.281612>,  <40.865257, 36.173088, 47.817223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166653, 36.574783, 47.281612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.206455, 36.207806, 47.127522>,  <41.230335, 35.987617, 47.035069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.206455, 36.207806, 47.127522>,  <41.166653, 36.574783, 47.281612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206455, 36.207806, 47.127522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061105, 0.380781, -0.922644,
		0.993159, 0.115345, -0.018171,
		0.099503, -0.917443, -0.385224,
		41.236305, 35.932571, 47.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673817, 36.631241, 46.773712>,  <41.166653, 36.574783, 47.281612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673817, 36.631241, 46.773712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.451706, 36.311790, 46.680870>,  <41.318439, 36.120121, 46.625164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.451706, 36.311790, 46.680870>,  <41.673817, 36.631241, 46.773712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451706, 36.311790, 46.680870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218276, 0.409246, -0.885931,
		0.802513, -0.441270, -0.401563,
		-0.555273, -0.798622, -0.232107,
		41.285126, 36.072205, 46.611237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842461, 36.381706, 46.028736>,  <41.673817, 36.631241, 46.773712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842461, 36.381706, 46.028736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.490070, 36.204498, 46.095200>,  <41.278637, 36.098171, 46.135078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.490070, 36.204498, 46.095200>,  <41.842461, 36.381706, 46.028736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490070, 36.204498, 46.095200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258182, 0.155802, -0.953451,
		0.396512, -0.882868, -0.251638,
		-0.880977, -0.443023, 0.166163,
		41.225777, 36.071590, 46.145050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787868, 35.959755, 45.430794>,  <41.842461, 36.381706, 46.028736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787868, 35.959755, 45.430794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428303, 36.040405, 45.586384>,  <41.212563, 36.088795, 45.679737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428303, 36.040405, 45.586384>,  <41.787868, 35.959755, 45.430794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428303, 36.040405, 45.586384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322401, 0.296747, -0.898888,
		-0.296663, -0.933429, -0.201746,
		-0.898915, 0.201623, 0.388972,
		41.158627, 36.100891, 45.703075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285057, 35.775986, 44.905075>,  <41.787868, 35.959755, 45.430794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285057, 35.775986, 44.905075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.074387, 36.004745, 45.156647>,  <40.947987, 36.142002, 45.307590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.074387, 36.004745, 45.156647>,  <41.285057, 35.775986, 44.905075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074387, 36.004745, 45.156647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502492, 0.387307, -0.772978,
		-0.685651, -0.723138, 0.083390,
		-0.526672, 0.571896, 0.628929,
		40.916386, 36.176315, 45.345325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606667, 35.709213, 44.685616>,  <41.285057, 35.775986, 44.905075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606667, 35.709213, 44.685616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.635597, 36.052212, 44.889366>,  <40.652954, 36.258011, 45.011616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.635597, 36.052212, 44.889366>,  <40.606667, 35.709213, 44.685616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635597, 36.052212, 44.889366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379040, 0.496028, -0.781207,
		-0.922550, -0.136577, 0.360900,
		0.072322, 0.857498, 0.509379,
		40.657295, 36.309460, 45.042179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943626, 36.005058, 44.579994>,  <40.606667, 35.709213, 44.685616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943626, 36.005058, 44.579994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185947, 36.294464, 44.712376>,  <40.331341, 36.468109, 44.791805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185947, 36.294464, 44.712376>,  <39.943626, 36.005058, 44.579994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185947, 36.294464, 44.712376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264796, 0.575610, -0.773664,
		-0.750261, 0.381049, 0.540288,
		0.605799, 0.723516, 0.330958,
		40.367687, 36.511520, 44.811665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742550, 36.728802, 44.661114>,  <39.943626, 36.005058, 44.579994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742550, 36.728802, 44.661114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.118290, 36.791004, 44.538841>,  <40.343735, 36.828323, 44.465477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.118290, 36.791004, 44.538841>,  <39.742550, 36.728802, 44.661114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118290, 36.791004, 44.538841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340426, 0.530973, -0.776001,
		0.041640, 0.832999, 0.551706,
		0.939349, 0.155503, -0.305684,
		40.400093, 36.837654, 44.447136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111748, 37.055305, 44.440445>,  <39.742550, 36.728802, 44.661114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111748, 37.055305, 44.440445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738064, 36.947441, 44.347034>,  <38.513855, 36.882721, 44.290989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738064, 36.947441, 44.347034>,  <39.111748, 37.055305, 44.440445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738064, 36.947441, 44.347034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142005, -0.319421, 0.936912,
		-0.327244, 0.908435, 0.260112,
		-0.934209, -0.269662, -0.233531,
		38.457802, 36.866543, 44.276974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794376, 37.386539, 44.877064>,  <39.111748, 37.055305, 44.440445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794376, 37.386539, 44.877064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.533974, 37.099941, 44.776802>,  <38.377731, 36.927982, 44.716644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.533974, 37.099941, 44.776802>,  <38.794376, 37.386539, 44.877064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533974, 37.099941, 44.776802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061316, -0.378768, 0.923458,
		-0.756594, 0.585806, 0.290512,
		-0.651004, -0.716496, -0.250654,
		38.338673, 36.884991, 44.701607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350792, 37.311050, 45.511127>,  <38.794376, 37.386539, 44.877064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350792, 37.311050, 45.511127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.293484, 36.974277, 45.303040>,  <38.259098, 36.772213, 45.178185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.293484, 36.974277, 45.303040>,  <38.350792, 37.311050, 45.511127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293484, 36.974277, 45.303040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115834, -0.507767, 0.853671,
		-0.982881, 0.182564, -0.024777,
		-0.143269, -0.841928, -0.520222,
		38.250504, 36.721699, 45.146973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726482, 37.115112, 45.749439>,  <38.350792, 37.311050, 45.511127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726482, 37.115112, 45.749439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888168, 36.802990, 45.558552>,  <37.985180, 36.615719, 45.444019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888168, 36.802990, 45.558552>,  <37.726482, 37.115112, 45.749439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888168, 36.802990, 45.558552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091568, -0.553646, 0.827702,
		-0.910069, -0.290871, -0.295243,
		0.404215, -0.780301, -0.477222,
		38.009434, 36.568901, 45.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182446, 36.609516, 45.886066>,  <37.726482, 37.115112, 45.749439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182446, 36.609516, 45.886066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.494328, 36.384853, 45.775364>,  <37.681458, 36.250053, 45.708942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.494328, 36.384853, 45.775364>,  <37.182446, 36.609516, 45.886066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494328, 36.384853, 45.775364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135928, -0.583295, 0.800806,
		-0.611220, -0.586770, -0.531142,
		0.779701, -0.561666, -0.276763,
		37.728241, 36.216354, 45.692337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018593, 35.877907, 45.965633>,  <37.182446, 36.609516, 45.886066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018593, 35.877907, 45.965633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416763, 35.886501, 46.002880>,  <37.655666, 35.891659, 46.025227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416763, 35.886501, 46.002880>,  <37.018593, 35.877907, 45.965633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416763, 35.886501, 46.002880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061549, -0.601249, 0.796688,
		0.073104, -0.798773, -0.597174,
		0.995424, 0.021485, 0.093118,
		37.715389, 35.892948, 46.030815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301289, 35.151180, 45.941689>,  <37.018593, 35.877907, 45.965633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301289, 35.151180, 45.941689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535679, 35.399986, 46.149433>,  <37.676311, 35.549271, 46.274078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535679, 35.399986, 46.149433>,  <37.301289, 35.151180, 45.941689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535679, 35.399986, 46.149433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001671, -0.641850, 0.766828,
		0.810326, -0.448476, -0.377148,
		0.585976, 0.622011, 0.519358,
		37.711472, 35.586590, 46.305241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719036, 34.761616, 46.338341>,  <37.301289, 35.151180, 45.941689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719036, 34.761616, 46.338341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723946, 35.117069, 46.521725>,  <37.726891, 35.330341, 46.631756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723946, 35.117069, 46.521725>,  <37.719036, 34.761616, 46.338341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723946, 35.117069, 46.521725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031275, -0.458613, 0.888086,
		0.999435, 0.003436, -0.033422,
		0.012276, 0.888629, 0.458461,
		37.727627, 35.383659, 46.659264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980034, 34.485699, 45.655544>,  <37.719036, 34.761616, 46.338341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980034, 34.485699, 45.655544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633389, 34.416439, 45.842731>,  <37.425400, 34.374882, 45.955044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633389, 34.416439, 45.842731>,  <37.980034, 34.485699, 45.655544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633389, 34.416439, 45.842731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466640, -0.050873, -0.882983,
		0.176696, -0.983581, -0.036711,
		-0.866617, -0.173151, 0.467967,
		37.373402, 34.364494, 45.983120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573254, 33.831894, 45.535515>,  <37.980034, 34.485699, 45.655544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573254, 33.831894, 45.535515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277916, 34.088634, 45.618328>,  <37.100712, 34.242680, 45.668015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277916, 34.088634, 45.618328>,  <37.573254, 33.831894, 45.535515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277916, 34.088634, 45.618328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413078, -0.187740, -0.891134,
		-0.533112, -0.743488, 0.403754,
		-0.738348, 0.641856, 0.207032,
		37.056412, 34.281193, 45.680439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890301, 33.515057, 45.376019>,  <37.573254, 33.831894, 45.535515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890301, 33.515057, 45.376019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839695, 33.910950, 45.349422>,  <36.809330, 34.148487, 45.333466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839695, 33.910950, 45.349422>,  <36.890301, 33.515057, 45.376019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839695, 33.910950, 45.349422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473586, -0.119166, -0.872649,
		-0.871613, -0.078916, 0.483800,
		-0.126518, 0.989733, -0.066493,
		36.801739, 34.207870, 45.329475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145477, 33.666626, 45.079708>,  <36.890301, 33.515057, 45.376019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145477, 33.666626, 45.079708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380337, 33.986721, 45.030918>,  <36.521252, 34.178776, 45.001644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380337, 33.986721, 45.030918>,  <36.145477, 33.666626, 45.079708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380337, 33.986721, 45.030918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404382, 0.159432, -0.900587,
		-0.701235, 0.578104, 0.417212,
		0.587150, 0.800236, -0.121976,
		36.556480, 34.226791, 44.994324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679951, 34.172611, 44.665890>,  <36.145477, 33.666626, 45.079708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679951, 34.172611, 44.665890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026062, 34.373127, 44.665840>,  <36.233730, 34.493435, 44.665810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026062, 34.373127, 44.665840>,  <35.679951, 34.172611, 44.665890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026062, 34.373127, 44.665840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158497, 0.273343, -0.948769,
		-0.475574, 0.820970, 0.315970,
		0.865279, 0.501290, -0.000126,
		36.285645, 34.523514, 44.665802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572765, 34.810505, 44.398899>,  <35.679951, 34.172611, 44.665890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572765, 34.810505, 44.398899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964134, 34.755085, 44.337589>,  <36.198956, 34.721832, 44.300804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964134, 34.755085, 44.337589>,  <35.572765, 34.810505, 44.398899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964134, 34.755085, 44.337589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133133, 0.144545, -0.980501,
		0.158002, 0.979751, 0.122981,
		0.978423, -0.138549, -0.153275,
		36.257660, 34.713520, 44.291607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.993481, 30.191477, 47.428368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.305790, 30.391481, 47.578236>,  <41.493176, 30.511484, 47.668156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.305790, 30.391481, 47.578236>,  <40.993481, 30.191477, 47.428368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305790, 30.391481, 47.578236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354846, 0.138706, -0.924578,
		-0.514270, 0.854838, -0.069129,
		0.780776, 0.500013, 0.374668,
		41.540024, 30.541485, 47.690636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358898, 30.304934, 46.726173>,  <40.993481, 30.191477, 47.428368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358898, 30.304934, 46.726173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.489357, 30.669870, 46.825176>,  <41.567631, 30.888832, 46.884579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.489357, 30.669870, 46.825176>,  <41.358898, 30.304934, 46.726173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489357, 30.669870, 46.825176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061067, 0.240947, -0.968615,
		-0.943345, 0.331024, 0.022870,
		0.326145, 0.912342, 0.247511,
		41.587200, 30.943573, 46.899429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785999, 30.775068, 46.488457>,  <41.358898, 30.304934, 46.726173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785999, 30.775068, 46.488457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.175053, 30.865089, 46.465359>,  <41.408485, 30.919102, 46.451500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.175053, 30.865089, 46.465359>,  <40.785999, 30.775068, 46.488457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175053, 30.865089, 46.465359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105167, 0.204808, -0.973136,
		-0.207181, 0.952578, 0.222871,
		0.972633, 0.225054, -0.057748,
		41.466843, 30.932606, 46.448036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754391, 31.417830, 46.185009>,  <40.785999, 30.775068, 46.488457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754391, 31.417830, 46.185009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.113228, 31.252829, 46.121685>,  <41.328529, 31.153828, 46.083691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.113228, 31.252829, 46.121685>,  <40.754391, 31.417830, 46.185009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113228, 31.252829, 46.121685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021516, 0.317098, -0.948149,
		0.441315, 0.853985, 0.275591,
		0.897094, -0.412503, -0.158314,
		41.382355, 31.129078, 46.074192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150517, 31.882170, 45.835884>,  <40.754391, 31.417830, 46.185009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150517, 31.882170, 45.835884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.364361, 31.559605, 45.734779>,  <41.492668, 31.366066, 45.674118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.364361, 31.559605, 45.734779>,  <41.150517, 31.882170, 45.835884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364361, 31.559605, 45.734779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015820, 0.289486, -0.957052,
		0.844950, 0.515649, 0.142005,
		0.534611, -0.806414, -0.252758,
		41.524746, 31.317680, 45.658951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629162, 32.211067, 45.462177>,  <41.150517, 31.882170, 45.835884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629162, 32.211067, 45.462177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.638748, 31.828146, 45.346943>,  <41.644501, 31.598392, 45.277802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.638748, 31.828146, 45.346943>,  <41.629162, 32.211067, 45.462177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638748, 31.828146, 45.346943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061751, 0.286205, -0.956177,
		0.997804, 0.040703, -0.052256,
		0.023963, -0.957304, -0.288090,
		41.645939, 31.540955, 45.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110931, 32.136097, 44.903896>,  <41.629162, 32.211067, 45.462177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110931, 32.136097, 44.903896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.872360, 31.816305, 44.875298>,  <41.729218, 31.624432, 44.858139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.872360, 31.816305, 44.875298>,  <42.110931, 32.136097, 44.903896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872360, 31.816305, 44.875298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089362, 0.154664, -0.983917,
		0.797677, -0.580446, -0.163689,
		-0.596428, -0.799476, -0.071502,
		41.693432, 31.576462, 44.853848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405357, 31.778370, 44.299770>,  <42.110931, 32.136097, 44.903896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405357, 31.778370, 44.299770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.033142, 31.644348, 44.358871>,  <41.809811, 31.563934, 44.394333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.033142, 31.644348, 44.358871>,  <42.405357, 31.778370, 44.299770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033142, 31.644348, 44.358871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131306, -0.071347, -0.988771,
		0.341834, -0.939494, 0.022397,
		-0.930542, -0.335054, 0.147750,
		41.753979, 31.543833, 44.403194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324566, 31.184891, 43.850784>,  <42.405357, 31.778370, 44.299770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324566, 31.184891, 43.850784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.965141, 31.329643, 43.950085>,  <41.749485, 31.416494, 44.009663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.965141, 31.329643, 43.950085>,  <42.324566, 31.184891, 43.850784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965141, 31.329643, 43.950085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240904, 0.066073, -0.968297,
		-0.366811, -0.929880, 0.027808,
		-0.898563, 0.361881, 0.248249,
		41.695572, 31.438208, 44.024559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832783, 30.751656, 43.500874>,  <42.324566, 31.184891, 43.850784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832783, 30.751656, 43.500874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.656227, 31.100420, 43.585678>,  <41.550293, 31.309679, 43.636562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.656227, 31.100420, 43.585678>,  <41.832783, 30.751656, 43.500874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656227, 31.100420, 43.585678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379567, 0.032676, -0.924587,
		-0.813085, -0.488574, 0.316526,
		-0.441386, 0.871910, 0.212015,
		41.523811, 31.361994, 43.649284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163200, 30.735973, 43.267433>,  <41.832783, 30.751656, 43.500874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163200, 30.735973, 43.267433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.227100, 31.129751, 43.296700>,  <41.265442, 31.366018, 43.314259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.227100, 31.129751, 43.296700>,  <41.163200, 30.735973, 43.267433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227100, 31.129751, 43.296700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360271, 0.127148, -0.924142,
		-0.919067, 0.121271, 0.374978,
		0.159750, 0.984442, 0.073167,
		41.275024, 31.425083, 43.318649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664085, 30.995272, 42.813019>,  <41.163200, 30.735973, 43.267433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664085, 30.995272, 42.813019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.905735, 31.309782, 42.864880>,  <41.050724, 31.498487, 42.895996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.905735, 31.309782, 42.864880>,  <40.664085, 30.995272, 42.813019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905735, 31.309782, 42.864880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184480, 0.296263, -0.937121,
		-0.775244, 0.542218, 0.324031,
		0.604122, 0.786275, 0.129648,
		41.086971, 31.545664, 42.903774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072628, 31.461098, 42.971935>,  <40.664085, 30.995272, 42.813019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072628, 31.461098, 42.971935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.721394, 31.273426, 43.009537>,  <39.510654, 31.160824, 43.032097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.721394, 31.273426, 43.009537>,  <40.072628, 31.461098, 42.971935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721394, 31.273426, 43.009537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178781, -0.139456, 0.973955,
		-0.443851, 0.872022, 0.206335,
		-0.878085, -0.469179, 0.094003,
		39.457970, 31.132671, 43.037739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724541, 31.787474, 43.526131>,  <40.072628, 31.461098, 42.971935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724541, 31.787474, 43.526131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.547329, 31.429380, 43.507023>,  <39.441002, 31.214523, 43.495560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.547329, 31.429380, 43.507023>,  <39.724541, 31.787474, 43.526131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547329, 31.429380, 43.507023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154305, -0.128633, 0.979614,
		-0.883129, 0.426623, 0.195127,
		-0.443026, -0.895235, -0.047770,
		39.414421, 31.160810, 43.492691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275711, 31.802597, 44.158707>,  <39.724541, 31.787474, 43.526131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275711, 31.802597, 44.158707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.283325, 31.419538, 44.043777>,  <39.287895, 31.189703, 43.974819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.283325, 31.419538, 44.043777>,  <39.275711, 31.802597, 44.158707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283325, 31.419538, 44.043777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163787, -0.286479, 0.943983,
		-0.986312, 0.029089, -0.162304,
		0.019037, -0.957645, -0.287322,
		39.289036, 31.132244, 43.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710857, 31.624546, 44.509811>,  <39.275711, 31.802597, 44.158707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710857, 31.624546, 44.509811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.878349, 31.275274, 44.410030>,  <38.978844, 31.065712, 44.350163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.878349, 31.275274, 44.410030>,  <38.710857, 31.624546, 44.509811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878349, 31.275274, 44.410030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211896, -0.361060, 0.908150,
		-0.883044, -0.327408, -0.336209,
		0.418727, -0.873178, -0.249455,
		39.003967, 31.013321, 44.335194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155487, 30.969448, 44.559952>,  <38.710857, 31.624546, 44.509811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155487, 30.969448, 44.559952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537121, 30.861673, 44.612305>,  <38.766102, 30.797009, 44.643715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537121, 30.861673, 44.612305>,  <38.155487, 30.969448, 44.559952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537121, 30.861673, 44.612305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195072, -0.227314, 0.954083,
		-0.227314, -0.935806, -0.269436,
		-0.954083, 0.269436, -0.130878,
		38.823345, 30.780842, 44.651569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121674, 30.315866, 44.977558>,  <38.155487, 30.969448, 44.559952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121674, 30.315866, 44.977558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.492699, 30.454346, 45.033798>,  <38.715313, 30.537434, 45.067543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.492699, 30.454346, 45.033798>,  <38.121674, 30.315866, 44.977558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492699, 30.454346, 45.033798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083715, -0.174168, 0.981151,
		0.364160, -0.921853, -0.132571,
		0.927566, 0.346197, 0.140598,
		38.770969, 30.558205, 45.075977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426304, 29.917673, 45.478374>,  <38.121674, 30.315866, 44.977558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426304, 29.917673, 45.478374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.668438, 30.234821, 45.506447>,  <38.813721, 30.425110, 45.523289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.668438, 30.234821, 45.506447>,  <38.426304, 29.917673, 45.478374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668438, 30.234821, 45.506447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064538, -0.136772, 0.988498,
		0.793348, -0.593846, -0.133964,
		0.605338, 0.792868, 0.070182,
		38.850040, 30.472681, 45.527500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912411, 29.686094, 45.985249>,  <38.426304, 29.917673, 45.478374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912411, 29.686094, 45.985249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.980686, 30.080139, 45.977036>,  <39.021652, 30.316566, 45.972107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.980686, 30.080139, 45.977036>,  <38.912411, 29.686094, 45.985249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980686, 30.080139, 45.977036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183822, -0.011361, 0.982894,
		0.968027, -0.171542, -0.183024,
		0.170687, 0.985111, -0.020536,
		39.031891, 30.375673, 45.970875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622398, 29.843857, 46.342388>,  <38.912411, 29.686094, 45.985249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622398, 29.843857, 46.342388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.381611, 30.163237, 46.346588>,  <39.237137, 30.354864, 46.349110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.381611, 30.163237, 46.346588>,  <39.622398, 29.843857, 46.342388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381611, 30.163237, 46.346588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139487, 0.092197, 0.985922,
		0.786239, 0.594963, -0.166873,
		-0.601973, 0.798447, 0.010500,
		39.201019, 30.402771, 46.349739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915257, 30.250492, 46.798874>,  <39.622398, 29.843857, 46.342388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915257, 30.250492, 46.798874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.564781, 30.438107, 46.754520>,  <39.354496, 30.550674, 46.727909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.564781, 30.438107, 46.754520>,  <39.915257, 30.250492, 46.798874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564781, 30.438107, 46.754520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093271, 0.060711, 0.993788,
		0.472854, 0.881090, -0.009447,
		-0.876190, 0.469035, -0.110887,
		39.301926, 30.578817, 46.721252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936588, 30.781111, 47.234169>,  <39.915257, 30.250492, 46.798874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936588, 30.781111, 47.234169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.543686, 30.715235, 47.198299>,  <39.307945, 30.675709, 47.176777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.543686, 30.715235, 47.198299>,  <39.936588, 30.781111, 47.234169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543686, 30.715235, 47.198299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121600, 0.195368, 0.973162,
		-0.142752, 0.966803, -0.211929,
		-0.982260, -0.164691, -0.089674,
		39.249008, 30.665827, 47.171398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682148, 31.383080, 47.535587>,  <39.936588, 30.781111, 47.234169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682148, 31.383080, 47.535587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.397049, 31.102964, 47.551521>,  <39.225990, 30.934895, 47.561081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.397049, 31.102964, 47.551521>,  <39.682148, 31.383080, 47.535587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397049, 31.102964, 47.551521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347058, 0.401442, 0.847582,
		-0.609543, 0.590287, -0.529167,
		-0.712747, -0.700289, 0.039832,
		39.183224, 30.892878, 47.563473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089779, 31.807266, 47.545483>,  <39.682148, 31.383080, 47.535587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089779, 31.807266, 47.545483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.003838, 31.452082, 47.708141>,  <38.952271, 31.238970, 47.805737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.003838, 31.452082, 47.708141>,  <39.089779, 31.807266, 47.545483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003838, 31.452082, 47.708141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568857, 0.452230, 0.686942,
		-0.793875, -0.083728, -0.602288,
		-0.214857, -0.887963, 0.406644,
		38.939381, 31.185694, 47.830135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292290, 31.813009, 47.734211>,  <39.089779, 31.807266, 47.545483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292290, 31.813009, 47.734211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494194, 31.527166, 47.927933>,  <38.615337, 31.355661, 48.044167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494194, 31.527166, 47.927933>,  <38.292290, 31.813009, 47.734211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494194, 31.527166, 47.927933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416829, 0.289530, 0.861641,
		-0.755957, -0.636795, -0.151726,
		0.504760, -0.714608, 0.484307,
		38.645622, 31.312784, 48.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598785, 31.950943, 48.116245>,  <38.292290, 31.813009, 47.734211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598785, 31.950943, 48.116245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416130, 32.114803, 48.432137>,  <37.306538, 32.213120, 48.621670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416130, 32.114803, 48.432137>,  <37.598785, 31.950943, 48.116245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416130, 32.114803, 48.432137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454933, 0.655323, -0.602982,
		-0.764539, -0.634616, -0.112880,
		-0.456635, 0.409650, 0.789728,
		37.279140, 32.237698, 48.669056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816872, 31.921051, 48.038029>,  <37.598785, 31.950943, 48.116245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816872, 31.921051, 48.038029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.988800, 32.229939, 48.225189>,  <37.091957, 32.415272, 48.337486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.988800, 32.229939, 48.225189>,  <36.816872, 31.921051, 48.038029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988800, 32.229939, 48.225189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340470, 0.618573, -0.708129,
		-0.836264, 0.145059, 0.528791,
		0.429816, 0.772221, 0.467902,
		37.117744, 32.461605, 48.365559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361885, 32.400932, 47.826775>,  <36.816872, 31.921051, 48.038029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361885, 32.400932, 47.826775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.672230, 32.605190, 47.974976>,  <36.858437, 32.727745, 48.063896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.672230, 32.605190, 47.974976>,  <36.361885, 32.400932, 47.826775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672230, 32.605190, 47.974976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188977, 0.748402, -0.635753,
		-0.601930, 0.423243, 0.677160,
		0.775866, 0.510646, 0.370502,
		36.904991, 32.758385, 48.086124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117519, 33.150192, 48.075809>,  <36.361885, 32.400932, 47.826775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117519, 33.150192, 48.075809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.514309, 33.178776, 48.034081>,  <36.752384, 33.195927, 48.009041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.514309, 33.178776, 48.034081>,  <36.117519, 33.150192, 48.075809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514309, 33.178776, 48.034081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113872, 0.863533, -0.491268,
		0.054984, 0.499204, 0.864738,
		0.991973, 0.071458, -0.104325,
		36.811901, 33.200214, 48.002785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249096, 33.885479, 48.079304>,  <36.117519, 33.150192, 48.075809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249096, 33.885479, 48.079304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.608463, 33.788105, 47.933105>,  <36.824081, 33.729683, 47.845387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.608463, 33.788105, 47.933105>,  <36.249096, 33.885479, 48.079304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608463, 33.788105, 47.933105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103227, 0.691911, -0.714565,
		0.426840, 0.679707, 0.596495,
		0.898416, -0.243431, -0.365499,
		36.877987, 33.715076, 47.823456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638145, 34.546024, 47.896416>,  <36.249096, 33.885479, 48.079304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638145, 34.546024, 47.896416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797489, 34.270111, 47.654587>,  <36.893097, 34.104565, 47.509487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797489, 34.270111, 47.654587>,  <36.638145, 34.546024, 47.896416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797489, 34.270111, 47.654587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097750, 0.623451, -0.775728,
		0.912005, 0.368116, 0.180933,
		0.398361, -0.689782, -0.604574,
		36.916996, 34.063175, 47.473213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238865, 34.858971, 47.572887>,  <36.638145, 34.546024, 47.896416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238865, 34.858971, 47.572887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095234, 34.558250, 47.351669>,  <37.009056, 34.377819, 47.218941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095234, 34.558250, 47.351669>,  <37.238865, 34.858971, 47.572887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095234, 34.558250, 47.351669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184851, 0.638111, -0.747425,
		0.914819, -0.166153, -0.368103,
		-0.359078, -0.751802, -0.553043,
		36.987511, 34.332710, 47.185757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163464, 34.846634, 48.321606>,  <37.238865, 34.858971, 47.572887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163464, 34.846634, 48.321606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.488590, 34.996872, 48.143501>,  <37.683666, 35.087013, 48.036640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.488590, 34.996872, 48.143501>,  <37.163464, 34.846634, 48.321606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488590, 34.996872, 48.143501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550272, -0.244295, 0.798449,
		0.191120, -0.894006, -0.405248,
		0.812819, 0.375596, -0.445257,
		37.732437, 35.109550, 48.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739784, 34.499718, 48.523163>,  <37.163464, 34.846634, 48.321606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739784, 34.499718, 48.523163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.949890, 34.795330, 48.354439>,  <38.075954, 34.972698, 48.253204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.949890, 34.795330, 48.354439>,  <37.739784, 34.499718, 48.523163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949890, 34.795330, 48.354439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727116, -0.132311, 0.673643,
		0.442034, -0.660550, -0.606861,
		0.525270, 0.739032, -0.421810,
		38.107471, 35.017040, 48.227894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503628, 34.330544, 48.360451>,  <37.739784, 34.499718, 48.523163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503628, 34.330544, 48.360451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476097, 34.726536, 48.409756>,  <38.459579, 34.964130, 48.439339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476097, 34.726536, 48.409756>,  <38.503628, 34.330544, 48.360451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476097, 34.726536, 48.409756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809101, -0.016893, 0.587427,
		0.583626, 0.140164, -0.799834,
		-0.068824, 0.989984, 0.123266,
		38.455448, 35.023533, 48.446735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228035, 34.585564, 48.345264>,  <38.503628, 34.330544, 48.360451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228035, 34.585564, 48.345264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.011726, 34.861786, 48.537388>,  <38.881939, 35.027519, 48.652660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.011726, 34.861786, 48.537388>,  <39.228035, 34.585564, 48.345264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011726, 34.861786, 48.537388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744998, 0.128074, 0.654657,
		0.390563, 0.711848, -0.583723,
		-0.540776, 0.690557, 0.480304,
		38.849495, 35.068954, 48.681480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742313, 35.112766, 48.467239>,  <39.228035, 34.585564, 48.345264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742313, 35.112766, 48.467239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.435181, 35.173687, 48.716152>,  <39.250900, 35.210239, 48.865501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.435181, 35.173687, 48.716152>,  <39.742313, 35.112766, 48.467239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435181, 35.173687, 48.716152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634218, 0.317993, 0.704732,
		-0.090552, 0.935781, -0.340757,
		-0.767833, 0.152299, 0.622284,
		39.204830, 35.219376, 48.902836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042690, 35.611927, 48.862396>,  <39.742313, 35.112766, 48.467239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042690, 35.611927, 48.862396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.729099, 35.522346, 49.093990>,  <39.540947, 35.468597, 49.232948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.729099, 35.522346, 49.093990>,  <40.042690, 35.611927, 48.862396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729099, 35.522346, 49.093990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537268, 0.222476, 0.813540,
		-0.311007, 0.948867, -0.054091,
		-0.783975, -0.223955, 0.578988,
		39.493908, 35.455158, 49.267685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979744, 36.215244, 49.295532>,  <40.042690, 35.611927, 48.862396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979744, 36.215244, 49.295532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.770832, 35.921089, 49.468239>,  <39.645485, 35.744595, 49.571865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.770832, 35.921089, 49.468239>,  <39.979744, 36.215244, 49.295532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770832, 35.921089, 49.468239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442981, 0.198683, 0.874238,
		-0.728691, 0.647863, 0.221995,
		-0.522280, -0.735390, 0.431770,
		39.614147, 35.700474, 49.597771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793716, 36.522400, 49.875641>,  <39.979744, 36.215244, 49.295532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793716, 36.522400, 49.875641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.764847, 36.128822, 49.940933>,  <39.747524, 35.892677, 49.980110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.764847, 36.128822, 49.940933>,  <39.793716, 36.522400, 49.875641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764847, 36.128822, 49.940933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523503, 0.101928, 0.845905,
		-0.848961, 0.146506, 0.507741,
		-0.072177, -0.983944, 0.163230,
		39.743195, 35.833637, 49.989902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691101, 36.421135, 50.536930>,  <39.793716, 36.522400, 49.875641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691101, 36.421135, 50.536930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.871796, 36.080509, 50.430523>,  <39.980213, 35.876133, 50.366676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.871796, 36.080509, 50.430523>,  <39.691101, 36.421135, 50.536930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871796, 36.080509, 50.430523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733601, 0.184874, 0.653950,
		-0.507702, -0.490568, 0.708224,
		0.451739, -0.851566, -0.266021,
		40.007317, 35.825039, 50.350716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.880871, 40.618000, 34.288639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253143, 40.491196, 34.361679>,  <37.476505, 40.415115, 34.405502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253143, 40.491196, 34.361679>,  <36.880871, 40.618000, 34.288639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253143, 40.491196, 34.361679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335714, -0.541737, 0.770596,
		-0.145366, -0.778478, -0.610607,
		0.930680, -0.317008, 0.182596,
		37.532349, 40.396091, 34.416458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828308, 39.919277, 34.421440>,  <36.880871, 40.618000, 34.288639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828308, 39.919277, 34.421440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179363, 40.039680, 34.570652>,  <37.389996, 40.111923, 34.660179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179363, 40.039680, 34.570652>,  <36.828308, 39.919277, 34.421440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179363, 40.039680, 34.570652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189718, -0.496537, 0.847029,
		0.440189, -0.814151, -0.378670,
		0.877634, 0.301012, 0.373029,
		37.442654, 40.129986, 34.682560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208302, 39.300671, 34.616005>,  <36.828308, 39.919277, 34.421440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208302, 39.300671, 34.616005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331612, 39.626297, 34.812885>,  <37.405598, 39.821674, 34.931011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331612, 39.626297, 34.812885>,  <37.208302, 39.300671, 34.616005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331612, 39.626297, 34.812885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163013, -0.464539, 0.870420,
		0.937227, -0.348562, -0.010502,
		0.308274, 0.814069, 0.492199,
		37.424095, 39.870518, 34.960545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626919, 39.013237, 35.060265>,  <37.208302, 39.300671, 34.616005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626919, 39.013237, 35.060265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569511, 39.381924, 35.204395>,  <37.535065, 39.603138, 35.290874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569511, 39.381924, 35.204395>,  <37.626919, 39.013237, 35.060265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569511, 39.381924, 35.204395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003483, -0.363625, 0.931539,
		0.989641, 0.134950, 0.048977,
		-0.143520, 0.921719, 0.360329,
		37.526455, 39.658440, 35.312492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132179, 39.112980, 35.660198>,  <37.626919, 39.013237, 35.060265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132179, 39.112980, 35.660198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865250, 39.402954, 35.728485>,  <37.705093, 39.576939, 35.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865250, 39.402954, 35.728485>,  <38.132179, 39.112980, 35.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865250, 39.402954, 35.728485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049487, -0.185549, 0.981388,
		0.743121, 0.663352, 0.087946,
		-0.667325, 0.724938, 0.170713,
		37.665051, 39.620434, 35.779697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353779, 39.584805, 36.240658>,  <38.132179, 39.112980, 35.660198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353779, 39.584805, 36.240658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954887, 39.611454, 36.227390>,  <37.715553, 39.627441, 36.219429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954887, 39.611454, 36.227390>,  <38.353779, 39.584805, 36.240658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954887, 39.611454, 36.227390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049020, -0.252740, 0.966292,
		0.055993, 0.965238, 0.255305,
		-0.997227, 0.066621, -0.033165,
		37.655720, 39.631439, 36.217442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289730, 40.087421, 36.725925>,  <38.353779, 39.584805, 36.240658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289730, 40.087421, 36.725925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949333, 39.881416, 36.684780>,  <37.745094, 39.757812, 36.660091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949333, 39.881416, 36.684780>,  <38.289730, 40.087421, 36.725925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949333, 39.881416, 36.684780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017405, -0.223417, 0.974568,
		-0.524894, 0.827556, 0.199089,
		-0.850989, -0.515010, -0.102867,
		37.694035, 39.726913, 36.653919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885155, 40.386467, 37.171371>,  <38.289730, 40.087421, 36.725925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885155, 40.386467, 37.171371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716656, 40.027294, 37.120342>,  <37.615555, 39.811790, 37.089725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716656, 40.027294, 37.120342>,  <37.885155, 40.386467, 37.171371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716656, 40.027294, 37.120342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179854, -0.220569, 0.958646,
		-0.888934, 0.380882, 0.254410,
		-0.421246, -0.897930, -0.127568,
		37.590282, 39.757915, 37.082073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532375, 40.318180, 37.723721>,  <37.885155, 40.386467, 37.171371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532375, 40.318180, 37.723721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537342, 39.929607, 37.628929>,  <37.540321, 39.696465, 37.572056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537342, 39.929607, 37.628929>,  <37.532375, 40.318180, 37.723721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537342, 39.929607, 37.628929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011671, -0.237119, 0.971411,
		-0.999855, -0.009297, -0.014282,
		0.012418, -0.971436, -0.236976,
		37.541069, 39.638176, 37.557835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069942, 39.995396, 38.138554>,  <37.532375, 40.318180, 37.723721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069942, 39.995396, 38.138554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290318, 39.686977, 38.010838>,  <37.422543, 39.501926, 37.934208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290318, 39.686977, 38.010838>,  <37.069942, 39.995396, 38.138554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290318, 39.686977, 38.010838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004577, -0.385376, 0.922748,
		-0.834531, -0.506920, -0.215849,
		0.550942, -0.771050, -0.319288,
		37.455601, 39.455662, 37.915051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777134, 39.397095, 38.405746>,  <37.069942, 39.995396, 38.138554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777134, 39.397095, 38.405746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143967, 39.266045, 38.314857>,  <37.364067, 39.187416, 38.260326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143967, 39.266045, 38.314857>,  <36.777134, 39.397095, 38.405746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143967, 39.266045, 38.314857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151203, -0.241535, 0.958540,
		-0.368921, -0.913413, -0.171969,
		0.917080, -0.327623, -0.227218,
		37.419090, 39.167759, 38.246693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856544, 38.619652, 38.636127>,  <36.777134, 39.397095, 38.405746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856544, 38.619652, 38.636127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208099, 38.810413, 38.631763>,  <37.419033, 38.924870, 38.629147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208099, 38.810413, 38.631763>,  <36.856544, 38.619652, 38.636127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208099, 38.810413, 38.631763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171865, -0.295235, 0.939840,
		0.444990, -0.827890, -0.341442,
		0.878889, 0.476902, -0.010908,
		37.471767, 38.953484, 38.628490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927025, 37.866165, 38.594475>,  <36.856544, 38.619652, 38.636127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927025, 37.866165, 38.594475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579327, 37.669285, 38.613033>,  <36.370708, 37.551155, 38.624168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579327, 37.669285, 38.613033>,  <36.927025, 37.866165, 38.594475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579327, 37.669285, 38.613033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101952, 0.086643, -0.991009,
		0.483759, -0.866157, -0.125495,
		-0.869243, -0.492203, 0.046392,
		36.318554, 37.521626, 38.626949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858543, 37.374229, 37.982738>,  <36.927025, 37.866165, 38.594475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858543, 37.374229, 37.982738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488277, 37.453838, 38.111443>,  <36.266117, 37.501602, 38.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488277, 37.453838, 38.111443>,  <36.858543, 37.374229, 37.982738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488277, 37.453838, 38.111443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314210, 0.069318, -0.946820,
		-0.210740, -0.977541, -0.001631,
		-0.925668, 0.199020, 0.321761,
		36.210579, 37.513546, 38.207970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331760, 36.950375, 37.543091>,  <36.858543, 37.374229, 37.982738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331760, 36.950375, 37.543091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150921, 37.267826, 37.705944>,  <36.042416, 37.458298, 37.803654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150921, 37.267826, 37.705944>,  <36.331760, 36.950375, 37.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150921, 37.267826, 37.705944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503512, 0.149690, -0.850923,
		-0.736261, -0.589699, 0.331926,
		-0.452102, 0.793630, 0.407131,
		36.015289, 37.505917, 37.828083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774281, 36.785610, 37.370823>,  <36.331760, 36.950375, 37.543091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774281, 36.785610, 37.370823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720924, 37.173347, 37.453373>,  <35.688911, 37.405991, 37.502903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720924, 37.173347, 37.453373>,  <35.774281, 36.785610, 37.370823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720924, 37.173347, 37.453373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783496, 0.024381, -0.620919,
		-0.606912, -0.244515, 0.756221,
		-0.133386, 0.969339, 0.206373,
		35.680908, 37.464149, 37.515285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028275, 36.819092, 37.475033>,  <35.774281, 36.785610, 37.370823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028275, 36.819092, 37.475033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153221, 37.195187, 37.420799>,  <35.228188, 37.420845, 37.388260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153221, 37.195187, 37.420799>,  <35.028275, 36.819092, 37.475033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153221, 37.195187, 37.420799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787095, 0.176247, -0.591116,
		-0.531894, 0.291359, 0.795109,
		0.312363, 0.940238, -0.135583,
		35.246929, 37.477257, 37.380123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452503, 37.327927, 37.621265>,  <35.028275, 36.819092, 37.475033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452503, 37.327927, 37.621265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703529, 37.522278, 37.377930>,  <34.854145, 37.638889, 37.231926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703529, 37.522278, 37.377930>,  <34.452503, 37.327927, 37.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703529, 37.522278, 37.377930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760862, 0.217090, -0.611523,
		-0.165061, 0.846638, 0.505925,
		0.627570, 0.485877, -0.608341,
		34.891800, 37.668041, 37.195427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112625, 37.944420, 37.397705>,  <34.452503, 37.327927, 37.621265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112625, 37.944420, 37.397705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396626, 37.847065, 37.133385>,  <34.567024, 37.788651, 36.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396626, 37.847065, 37.133385>,  <34.112625, 37.944420, 37.397705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396626, 37.847065, 37.133385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676190, 0.026394, -0.736254,
		0.196636, 0.969570, -0.145836,
		0.710001, -0.243387, -0.660804,
		34.609627, 37.774048, 36.935143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818703, 38.246513, 36.734482>,  <34.112625, 37.944420, 37.397705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818703, 38.246513, 36.734482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126858, 38.042660, 36.581238>,  <34.311752, 37.920349, 36.489292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126858, 38.042660, 36.581238>,  <33.818703, 38.246513, 36.734482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126858, 38.042660, 36.581238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453326, -0.015310, -0.891213,
		0.448328, 0.860254, -0.242826,
		0.770388, -0.509635, -0.383112,
		34.357975, 37.889771, 36.466305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944756, 38.490646, 35.990192>,  <33.818703, 38.246513, 36.734482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944756, 38.490646, 35.990192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115749, 38.131554, 36.032772>,  <34.218346, 37.916096, 36.058319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115749, 38.131554, 36.032772>,  <33.944756, 38.490646, 35.990192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115749, 38.131554, 36.032772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541800, -0.348676, -0.764773,
		0.723680, 0.269250, -0.635445,
		0.427480, -0.897735, 0.106450,
		34.243992, 37.862232, 36.064709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126282, 38.321892, 35.310242>,  <33.944756, 38.490646, 35.990192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126282, 38.321892, 35.310242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100464, 37.961113, 35.481037>,  <34.084972, 37.744644, 35.583515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100464, 37.961113, 35.481037>,  <34.126282, 38.321892, 35.310242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100464, 37.961113, 35.481037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603431, -0.305518, -0.736566,
		0.794799, -0.305200, -0.524545,
		-0.064542, -0.901949, 0.426992,
		34.081100, 37.690529, 35.609135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232101, 37.939793, 34.767395>,  <34.126282, 38.321892, 35.310242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232101, 37.939793, 34.767395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073467, 37.691692, 35.038097>,  <33.978287, 37.542831, 35.200520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073467, 37.691692, 35.038097>,  <34.232101, 37.939793, 34.767395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073467, 37.691692, 35.038097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660469, -0.319225, -0.679614,
		0.637572, -0.716506, -0.283057,
		-0.396588, -0.620254, 0.676759,
		33.954491, 37.505615, 35.241127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331646, 37.229042, 34.549419>,  <34.232101, 37.939793, 34.767395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331646, 37.229042, 34.549419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018085, 37.244698, 34.797279>,  <33.829948, 37.254089, 34.945995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018085, 37.244698, 34.797279>,  <34.331646, 37.229042, 34.549419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018085, 37.244698, 34.797279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572364, -0.432310, -0.696784,
		0.240608, -0.900875, 0.361292,
		-0.783906, 0.039139, 0.619645,
		33.782913, 37.256439, 34.983173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056034, 36.580833, 34.590981>,  <34.331646, 37.229042, 34.549419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056034, 36.580833, 34.590981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753242, 36.813072, 34.710903>,  <33.571568, 36.952415, 34.782856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753242, 36.813072, 34.710903>,  <34.056034, 36.580833, 34.590981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753242, 36.813072, 34.710903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629791, -0.525951, -0.571611,
		-0.174193, -0.621514, 0.763791,
		-0.756981, 0.580600, 0.299807,
		33.526150, 36.987251, 34.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496361, 36.148853, 34.704334>,  <34.056034, 36.580833, 34.590981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496361, 36.148853, 34.704334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291039, 36.491234, 34.679482>,  <33.167847, 36.696663, 34.664570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291039, 36.491234, 34.679482>,  <33.496361, 36.148853, 34.704334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291039, 36.491234, 34.679482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733925, -0.475344, -0.485183,
		-0.444822, -0.203458, 0.872203,
		-0.513311, 0.855951, -0.062121,
		33.137047, 36.748020, 34.660843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662735, 36.077869, 35.399689>,  <33.496361, 36.148853, 34.704334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662735, 36.077869, 35.399689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867264, 36.056065, 35.056625>,  <33.989983, 36.042980, 34.850788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867264, 36.056065, 35.056625>,  <33.662735, 36.077869, 35.399689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867264, 36.056065, 35.056625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538575, -0.757366, 0.369233,
		-0.669690, -0.650710, -0.357899,
		0.511324, -0.054516, -0.857657,
		34.020660, 36.039711, 34.799328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734097, 35.367805, 34.926296>,  <33.662735, 36.077869, 35.399689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734097, 35.367805, 34.926296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072838, 35.533836, 34.793301>,  <34.276085, 35.633453, 34.713505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072838, 35.533836, 34.793301>,  <33.734097, 35.367805, 34.926296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072838, 35.533836, 34.793301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512840, -0.802903, 0.303879,
		-0.140822, -0.427854, -0.892811,
		0.846856, 0.415076, -0.332486,
		34.326893, 35.658360, 34.693554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154537, 34.819286, 34.814350>,  <33.734097, 35.367805, 34.926296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154537, 34.819286, 34.814350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437222, 35.102097, 34.803944>,  <34.606831, 35.271782, 34.797699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437222, 35.102097, 34.803944>,  <34.154537, 34.819286, 34.814350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437222, 35.102097, 34.803944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686001, -0.675777, 0.269682,
		0.173093, -0.208431, -0.962598,
		0.706712, 0.707023, -0.026011,
		34.649235, 35.314205, 34.796139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610703, 34.509064, 34.556530>,  <34.154537, 34.819286, 34.814350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610703, 34.509064, 34.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818413, 34.807167, 34.723835>,  <34.943039, 34.986031, 34.824219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818413, 34.807167, 34.723835>,  <34.610703, 34.509064, 34.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818413, 34.807167, 34.723835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680199, -0.656714, 0.325663,
		0.517383, 0.115396, -0.847938,
		0.519272, 0.745259, 0.418265,
		34.974194, 35.030746, 34.849316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240635, 34.146912, 34.548752>,  <34.610703, 34.509064, 34.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240635, 34.146912, 34.548752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276951, 34.455437, 34.800732>,  <35.298740, 34.640553, 34.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276951, 34.455437, 34.800732>,  <35.240635, 34.146912, 34.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276951, 34.455437, 34.800732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715009, -0.490796, 0.497876,
		0.693194, 0.405217, -0.596055,
		0.090793, 0.771310, 0.629951,
		35.304188, 34.686829, 34.989716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957500, 34.206829, 34.708336>,  <35.240635, 34.146912, 34.548752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957500, 34.206829, 34.708336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771111, 34.375942, 35.019238>,  <35.659279, 34.477409, 35.205780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771111, 34.375942, 35.019238>,  <35.957500, 34.206829, 34.708336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771111, 34.375942, 35.019238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616064, -0.475505, 0.627981,
		0.635088, 0.771460, -0.038889,
		-0.465970, 0.422781, 0.777257,
		35.631321, 34.502777, 35.252415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480782, 34.258282, 35.169453>,  <35.957500, 34.206829, 34.708336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480782, 34.258282, 35.169453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172092, 34.316799, 35.417011>,  <35.986877, 34.351910, 35.565548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172092, 34.316799, 35.417011>,  <36.480782, 34.258282, 35.169453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172092, 34.316799, 35.417011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561014, -0.301716, 0.770863,
		0.299501, 0.942108, 0.150772,
		-0.771727, 0.146289, 0.618900,
		35.940575, 34.360687, 35.602680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758945, 34.555565, 35.779053>,  <36.480782, 34.258282, 35.169453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758945, 34.555565, 35.779053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414379, 34.390156, 35.897007>,  <36.207638, 34.290909, 35.967781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414379, 34.390156, 35.897007>,  <36.758945, 34.555565, 35.779053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414379, 34.390156, 35.897007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486133, -0.503151, 0.714502,
		-0.147090, 0.758839, 0.634451,
		-0.861417, -0.413524, 0.294888,
		36.155952, 34.266098, 35.985474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850216, 34.534599, 36.383450>,  <36.758945, 34.555565, 35.779053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850216, 34.534599, 36.383450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551670, 34.269634, 36.357677>,  <36.372543, 34.110653, 36.342213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551670, 34.269634, 36.357677>,  <36.850216, 34.534599, 36.383450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551670, 34.269634, 36.357677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364209, -0.487545, 0.793506,
		-0.557042, 0.568777, 0.605142,
		-0.746362, -0.662414, -0.064429,
		36.327763, 34.070911, 36.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626816, 34.537918, 37.064091>,  <36.850216, 34.534599, 36.383450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626816, 34.537918, 37.064091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488163, 34.207661, 36.886032>,  <36.404972, 34.009506, 36.779198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488163, 34.207661, 36.886032>,  <36.626816, 34.537918, 37.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488163, 34.207661, 36.886032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479582, -0.563850, 0.672365,
		-0.806133, 0.019576, 0.591411,
		-0.346629, -0.825645, -0.445150,
		36.384174, 33.959969, 36.752487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232246, 34.150558, 37.583408>,  <36.626816, 34.537918, 37.064091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232246, 34.150558, 37.583408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321575, 33.869324, 37.313358>,  <36.375172, 33.700581, 37.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321575, 33.869324, 37.313358>,  <36.232246, 34.150558, 37.583408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321575, 33.869324, 37.313358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239526, -0.631793, 0.737201,
		-0.944856, -0.326346, 0.027313,
		0.223326, -0.703091, -0.675121,
		36.388573, 33.658398, 37.110821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930508, 33.497437, 37.789677>,  <36.232246, 34.150558, 37.583408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930508, 33.497437, 37.789677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230553, 33.398678, 37.544281>,  <36.410580, 33.339424, 37.397041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230553, 33.398678, 37.544281>,  <35.930508, 33.497437, 37.789677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230553, 33.398678, 37.544281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308648, -0.689750, 0.654966,
		-0.584862, -0.680653, -0.441189,
		0.750115, -0.246893, -0.613491,
		36.455585, 33.324608, 37.360233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912468, 32.778187, 37.795589>,  <35.930508, 33.497437, 37.789677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912468, 32.778187, 37.795589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278831, 32.841019, 37.647835>,  <36.498650, 32.878719, 37.559181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278831, 32.841019, 37.647835>,  <35.912468, 32.778187, 37.795589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278831, 32.841019, 37.647835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342491, -0.785739, 0.515086,
		-0.209330, -0.598280, -0.773461,
		0.915904, 0.157081, -0.369384,
		36.553604, 32.888142, 37.537018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215832, 32.182423, 37.625431>,  <35.912468, 32.778187, 37.795589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215832, 32.182423, 37.625431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527775, 32.428017, 37.674164>,  <36.714939, 32.575375, 37.703403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527775, 32.428017, 37.674164>,  <36.215832, 32.182423, 37.625431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527775, 32.428017, 37.674164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464261, -0.697899, 0.545343,
		0.419861, -0.368728, -0.829311,
		0.779859, 0.613985, 0.121835,
		36.761734, 32.612213, 37.710712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758884, 31.760553, 37.801987>,  <36.215832, 32.182423, 37.625431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758884, 31.760553, 37.801987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911789, 32.117931, 37.896339>,  <37.003532, 32.332359, 37.952950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911789, 32.117931, 37.896339>,  <36.758884, 31.760553, 37.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911789, 32.117931, 37.896339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519862, -0.418965, 0.744454,
		0.763952, -0.161948, -0.624619,
		0.382257, 0.893443, 0.235878,
		37.026466, 32.385963, 37.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530342, 31.692047, 37.796509>,  <36.758884, 31.760553, 37.801987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530342, 31.692047, 37.796509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435596, 32.000542, 38.032845>,  <37.378750, 32.185638, 38.174644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435596, 32.000542, 38.032845>,  <37.530342, 31.692047, 37.796509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435596, 32.000542, 38.032845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497244, -0.426220, 0.755701,
		0.834651, 0.472791, -0.282536,
		-0.236866, 0.771236, 0.590838,
		37.364536, 32.231911, 38.210094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144596, 31.966019, 38.046082>,  <37.530342, 31.692047, 37.796509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144596, 31.966019, 38.046082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897583, 32.142841, 38.306309>,  <37.749374, 32.248936, 38.462444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897583, 32.142841, 38.306309>,  <38.144596, 31.966019, 38.046082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897583, 32.142841, 38.306309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556209, -0.339391, 0.758581,
		0.556131, 0.830302, -0.036288,
		-0.617535, 0.442054, 0.650567,
		37.712322, 32.275459, 38.501480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567104, 32.100491, 38.646946>,  <38.144596, 31.966019, 38.046082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567104, 32.100491, 38.646946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201679, 32.108997, 38.809399>,  <37.982422, 32.114101, 38.906872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201679, 32.108997, 38.809399>,  <38.567104, 32.100491, 38.646946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201679, 32.108997, 38.809399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388387, -0.250611, 0.886764,
		0.120638, 0.967854, 0.220691,
		-0.913566, 0.021264, 0.406135,
		37.927608, 32.115376, 38.931240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618774, 32.550552, 39.162952>,  <38.567104, 32.100491, 38.646946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618774, 32.550552, 39.162952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312546, 32.311008, 39.256989>,  <38.128811, 32.167282, 39.313412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312546, 32.311008, 39.256989>,  <38.618774, 32.550552, 39.162952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312546, 32.311008, 39.256989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327513, -0.048259, 0.943613,
		-0.553749, 0.799397, 0.233081,
		-0.765570, -0.598862, 0.235089,
		38.082874, 32.131351, 39.327515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576248, 32.736332, 39.802212>,  <38.618774, 32.550552, 39.162952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576248, 32.736332, 39.802212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377338, 32.390186, 39.777363>,  <38.257992, 32.182499, 39.762451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377338, 32.390186, 39.777363>,  <38.576248, 32.736332, 39.802212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377338, 32.390186, 39.777363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201281, -0.184725, 0.961958,
		-0.843922, 0.465852, 0.266040,
		-0.497274, -0.865366, -0.062126,
		38.228157, 32.130577, 39.758724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085983, 32.733250, 40.453487>,  <38.576248, 32.736332, 39.802212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085983, 32.733250, 40.453487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135281, 32.359447, 40.319916>,  <38.164860, 32.135166, 40.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135281, 32.359447, 40.319916>,  <38.085983, 32.733250, 40.453487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135281, 32.359447, 40.319916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384378, -0.265278, 0.884240,
		-0.914913, -0.237331, 0.326510,
		0.123242, -0.934506, -0.333931,
		38.172253, 32.079094, 40.219738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658466, 32.259731, 40.963791>,  <38.085983, 32.733250, 40.453487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658466, 32.259731, 40.963791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955990, 32.063316, 40.782406>,  <38.134502, 31.945467, 40.673576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955990, 32.063316, 40.782406>,  <37.658466, 32.259731, 40.963791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955990, 32.063316, 40.782406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355082, -0.284488, 0.890496,
		-0.566275, -0.823374, -0.037244,
		0.743807, -0.491041, -0.453464,
		38.179131, 31.916004, 40.646366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546379, 31.581520, 41.093456>,  <37.658466, 32.259731, 40.963791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546379, 31.581520, 41.093456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936691, 31.611061, 41.011097>,  <38.170879, 31.628786, 40.961681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936691, 31.611061, 41.011097>,  <37.546379, 31.581520, 41.093456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936691, 31.611061, 41.011097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214852, -0.500339, 0.838749,
		-0.041073, -0.862674, -0.504089,
		0.975782, 0.073855, -0.205898,
		38.229427, 31.633217, 40.949326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826672, 30.972874, 41.414196>,  <37.546379, 31.581520, 41.093456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826672, 30.972874, 41.414196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152699, 31.171093, 41.294125>,  <38.348312, 31.290024, 41.222084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152699, 31.171093, 41.294125>,  <37.826672, 30.972874, 41.414196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152699, 31.171093, 41.294125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545515, -0.481882, 0.685714,
		0.195155, -0.722649, -0.663093,
		0.815063, 0.495547, -0.300174,
		38.397217, 31.319757, 41.204071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441254, 30.512129, 41.263035>,  <37.826672, 30.972874, 41.414196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441254, 30.512129, 41.263035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594410, 30.862576, 41.380211>,  <38.686306, 31.072844, 41.450516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594410, 30.862576, 41.380211>,  <38.441254, 30.512129, 41.263035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594410, 30.862576, 41.380211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490402, -0.461508, 0.739267,
		0.782878, -0.139401, -0.606357,
		0.382893, 0.876115, 0.292942,
		38.709278, 31.125410, 41.468094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119125, 30.465086, 41.591526>,  <38.441254, 30.512129, 41.263035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119125, 30.465086, 41.591526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018394, 30.834335, 41.707752>,  <38.957954, 31.055885, 41.777489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018394, 30.834335, 41.707752>,  <39.119125, 30.465086, 41.591526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018394, 30.834335, 41.707752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418871, -0.166697, 0.892614,
		0.872427, 0.346496, -0.344690,
		-0.251829, 0.923121, 0.290568,
		38.942844, 31.111271, 41.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685242, 30.602571, 41.961102>,  <39.119125, 30.465086, 41.591526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685242, 30.602571, 41.961102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407646, 30.849703, 42.108974>,  <39.241089, 30.997982, 42.197701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407646, 30.849703, 42.108974>,  <39.685242, 30.602571, 41.961102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407646, 30.849703, 42.108974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332669, -0.180207, 0.925665,
		0.638523, 0.765384, -0.080471,
		-0.693989, 0.617829, 0.369686,
		39.199451, 31.035051, 42.219879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047428, 30.954752, 42.368774>,  <39.685242, 30.602571, 41.961102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047428, 30.954752, 42.368774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665680, 30.966295, 42.487667>,  <39.436630, 30.973221, 42.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665680, 30.966295, 42.487667>,  <40.047428, 30.954752, 42.368774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665680, 30.966295, 42.487667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295178, -0.059744, 0.953572,
		0.045274, 0.997796, 0.048501,
		-0.954369, 0.028856, 0.297233,
		39.379368, 30.974953, 42.576836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471481, 31.544216, 42.267147>,  <40.047428, 30.954752, 42.368774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471481, 31.544216, 42.267147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825180, 31.694035, 42.378735>,  <41.037399, 31.783926, 42.445686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825180, 31.694035, 42.378735>,  <40.471481, 31.544216, 42.267147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825180, 31.694035, 42.378735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013039, 0.616900, -0.786934,
		-0.466837, 0.692207, 0.550376,
		0.884247, 0.374546, 0.278966,
		41.090454, 31.806398, 42.462425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459190, 32.170494, 42.342033>,  <40.471481, 31.544216, 42.267147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459190, 32.170494, 42.342033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842476, 32.140667, 42.231564>,  <41.072445, 32.122772, 42.165283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842476, 32.140667, 42.231564>,  <40.459190, 32.170494, 42.342033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842476, 32.140667, 42.231564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182169, 0.585297, -0.790090,
		0.220558, 0.807383, 0.547254,
		0.958211, -0.074568, -0.276172,
		41.129940, 32.118298, 42.148712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640614, 32.880722, 42.138454>,  <40.459190, 32.170494, 42.342033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640614, 32.880722, 42.138454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916702, 32.640606, 41.976837>,  <41.082355, 32.496536, 41.879868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916702, 32.640606, 41.976837>,  <40.640614, 32.880722, 42.138454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916702, 32.640606, 41.976837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034329, 0.530588, -0.846934,
		0.722784, 0.598442, 0.345616,
		0.690221, -0.600286, -0.404045,
		41.123768, 32.460522, 41.855625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273804, 33.313747, 41.918682>,  <40.640614, 32.880722, 42.138454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273804, 33.313747, 41.918682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250031, 32.988956, 41.686420>,  <41.235767, 32.794083, 41.547062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250031, 32.988956, 41.686420>,  <41.273804, 33.313747, 41.918682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250031, 32.988956, 41.686420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162391, 0.566073, -0.808203,
		0.984935, -0.142331, 0.098212,
		-0.059437, -0.811975, -0.580658,
		41.232201, 32.745365, 41.512222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710682, 33.454330, 41.357124>,  <41.273804, 33.313747, 41.918682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710682, 33.454330, 41.357124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520267, 33.127304, 41.227524>,  <41.406017, 32.931087, 41.149765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520267, 33.127304, 41.227524>,  <41.710682, 33.454330, 41.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520267, 33.127304, 41.227524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159230, 0.282204, -0.946048,
		0.864889, -0.501947, -0.004159,
		-0.476039, -0.817564, -0.324000,
		41.377457, 32.882034, 41.130325>
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
