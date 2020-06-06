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
	<24.325310, 34.795704, 34.888863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283970, 35.059635, 35.186573>,  <24.259167, 35.217995, 35.365200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283970, 35.059635, 35.186573>,  <24.325310, 34.795704, 34.888863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283970, 35.059635, 35.186573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505798, -0.679173, 0.531875,
		0.856439, -0.321486, 0.403930,
		-0.103348, 0.659826, 0.744278,
		24.252966, 35.257584, 35.409855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568977, 34.570358, 35.708172>,  <24.325310, 34.795704, 34.888863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568977, 34.570358, 35.708172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263498, 34.804504, 35.599281>,  <24.080210, 34.944992, 35.533947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263498, 34.804504, 35.599281>,  <24.568977, 34.570358, 35.708172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263498, 34.804504, 35.599281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644908, -0.672644, 0.362829,
		0.029278, 0.452652, 0.891207,
		-0.763700, 0.585369, -0.272225,
		24.034388, 34.980114, 35.517612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157461, 34.231232, 35.446377>,  <24.568977, 34.570358, 35.708172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157461, 34.231232, 35.446377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495550, 34.019745, 35.415230>,  <25.698402, 33.892853, 35.396542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495550, 34.019745, 35.415230>,  <25.157461, 34.231232, 35.446377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495550, 34.019745, 35.415230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371645, -0.686222, 0.625283,
		-0.384031, -0.499562, -0.776503,
		0.845222, -0.528712, -0.077871,
		25.749117, 33.861130, 35.391869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934837, 33.535183, 35.404411>,  <25.157461, 34.231232, 35.446377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934837, 33.535183, 35.404411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310953, 33.543770, 35.540287>,  <25.536623, 33.548923, 35.621815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310953, 33.543770, 35.540287>,  <24.934837, 33.535183, 35.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310953, 33.543770, 35.540287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233393, -0.685763, 0.689389,
		0.247751, -0.727509, -0.639805,
		0.940291, 0.021470, 0.339694,
		25.593040, 33.550209, 35.642197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071503, 32.903046, 35.443626>,  <24.934837, 33.535183, 35.404411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071503, 32.903046, 35.443626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336807, 33.059914, 35.698589>,  <25.495991, 33.154034, 35.851566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336807, 33.059914, 35.698589>,  <25.071503, 32.903046, 35.443626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336807, 33.059914, 35.698589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232009, -0.701997, 0.673329,
		0.711517, -0.594478, -0.374620,
		0.663261, 0.392170, 0.637406,
		25.535786, 33.177563, 35.889812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549212, 32.487427, 35.750916>,  <25.071503, 32.903046, 35.443626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549212, 32.487427, 35.750916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527767, 32.749439, 36.052395>,  <25.514900, 32.906647, 36.233284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527767, 32.749439, 36.052395>,  <25.549212, 32.487427, 35.750916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527767, 32.749439, 36.052395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193472, -0.747296, 0.635702,
		0.979640, -0.111738, 0.166794,
		-0.053612, 0.655029, 0.753700,
		25.511684, 32.945950, 36.278503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926298, 32.268082, 36.335407>,  <25.549212, 32.487427, 35.750916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926298, 32.268082, 36.335407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669018, 32.519882, 36.509769>,  <25.514648, 32.670963, 36.614388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669018, 32.519882, 36.509769>,  <25.926298, 32.268082, 36.335407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669018, 32.519882, 36.509769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216977, -0.695810, 0.684668,
		0.734310, 0.345797, 0.584134,
		-0.643202, 0.629502, 0.435910,
		25.476057, 32.708733, 36.640541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143709, 32.349686, 37.079300>,  <25.926298, 32.268082, 36.335407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143709, 32.349686, 37.079300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754128, 32.376507, 36.992661>,  <25.520378, 32.392597, 36.940678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754128, 32.376507, 36.992661>,  <26.143709, 32.349686, 37.079300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754128, 32.376507, 36.992661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191286, -0.755884, 0.626139,
		-0.121741, 0.651264, 0.749023,
		-0.973955, 0.067051, -0.216600,
		25.461941, 32.396622, 36.927681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872053, 32.198494, 37.714561>,  <26.143709, 32.349686, 37.079300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872053, 32.198494, 37.714561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581161, 32.113888, 37.453365>,  <25.406626, 32.063122, 37.296646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581161, 32.113888, 37.453365>,  <25.872053, 32.198494, 37.714561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581161, 32.113888, 37.453365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099092, -0.909016, 0.404810,
		-0.679202, 0.359097, 0.640104,
		-0.727231, -0.211519, -0.652989,
		25.362991, 32.050430, 37.257469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373144, 31.868607, 38.165428>,  <25.872053, 32.198494, 37.714561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373144, 31.868607, 38.165428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297298, 31.755789, 37.789238>,  <25.251791, 31.688099, 37.563522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297298, 31.755789, 37.789238>,  <25.373144, 31.868607, 38.165428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297298, 31.755789, 37.789238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185760, -0.930251, 0.316427,
		-0.964127, 0.234702, 0.123995,
		-0.189612, -0.282042, -0.940478,
		25.240416, 31.671177, 37.507095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687246, 31.424078, 38.130497>,  <25.373144, 31.868607, 38.165428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687246, 31.424078, 38.130497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896763, 31.323280, 37.805008>,  <25.022472, 31.262802, 37.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896763, 31.323280, 37.805008>,  <24.687246, 31.424078, 38.130497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896763, 31.323280, 37.805008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107178, -0.967147, 0.230519,
		-0.845078, -0.033530, -0.533590,
		0.523790, -0.251996, -0.813722,
		25.053900, 31.247681, 37.560890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.454855, 30.832233, 37.841572>,  <24.687246, 31.424078, 38.130497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.454855, 30.832233, 37.841572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833145, 30.832642, 37.711582>,  <25.060120, 30.832886, 37.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833145, 30.832642, 37.711582>,  <24.454855, 30.832233, 37.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.833145, 30.832642, 37.711582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059718, -0.983511, 0.170707,
		-0.319438, -0.180848, -0.930190,
		0.945724, 0.001018, -0.324970,
		25.116861, 30.832947, 37.614090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551363, 30.365807, 37.265240>,  <24.454855, 30.832233, 37.841572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551363, 30.365807, 37.265240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884642, 30.407631, 37.482441>,  <25.084608, 30.432726, 37.612762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884642, 30.407631, 37.482441>,  <24.551363, 30.365807, 37.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884642, 30.407631, 37.482441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028449, -0.972556, 0.230926,
		0.552246, -0.207854, -0.807355,
		0.833196, 0.104559, 0.543003,
		25.134600, 30.438999, 37.645340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125387, 29.925600, 37.003231>,  <24.551363, 30.365807, 37.265240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125387, 29.925600, 37.003231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168507, 30.003025, 37.393291>,  <25.194378, 30.049480, 37.627327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168507, 30.003025, 37.393291>,  <25.125387, 29.925600, 37.003231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168507, 30.003025, 37.393291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050406, -0.978538, 0.199806,
		0.992894, -0.070692, -0.095726,
		0.107796, 0.193561, 0.975148,
		25.200846, 30.061094, 37.685837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620283, 29.551697, 37.263565>,  <25.125387, 29.925600, 37.003231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620283, 29.551697, 37.263565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353483, 29.618214, 37.554070>,  <25.193403, 29.658123, 37.728374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353483, 29.618214, 37.554070>,  <25.620283, 29.551697, 37.263565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353483, 29.618214, 37.554070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010441, -0.972593, 0.232281,
		0.744986, 0.162514, 0.646982,
		-0.666999, 0.166291, 0.726264,
		25.153383, 29.668100, 37.771950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862568, 30.384102, 37.121536>,  <25.620283, 29.551697, 37.263565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862568, 30.384102, 37.121536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499460, 30.534592, 37.195740>,  <25.281595, 30.624886, 37.240261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499460, 30.534592, 37.195740>,  <25.862568, 30.384102, 37.121536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499460, 30.534592, 37.195740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348645, 0.922605, -0.165066,
		-0.233249, -0.085167, -0.968680,
		-0.907767, 0.376227, 0.185504,
		25.227131, 30.647459, 37.251392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615393, 30.866417, 36.498905>,  <25.862568, 30.384102, 37.121536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615393, 30.866417, 36.498905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403624, 30.981737, 36.818054>,  <25.276562, 31.050930, 37.009544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403624, 30.981737, 36.818054>,  <25.615393, 30.866417, 36.498905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403624, 30.981737, 36.818054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082647, 0.918485, -0.386724,
		-0.844324, -0.270682, -0.462438,
		-0.529421, 0.288301, 0.797870,
		25.244797, 31.068228, 37.057415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024128, 31.232527, 36.283436>,  <25.615393, 30.866417, 36.498905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024128, 31.232527, 36.283436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116486, 31.363094, 36.650074>,  <25.171900, 31.441435, 36.870056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116486, 31.363094, 36.650074>,  <25.024128, 31.232527, 36.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116486, 31.363094, 36.650074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083875, 0.931862, -0.352984,
		-0.969357, 0.158381, 0.187783,
		0.230894, 0.326417, 0.916591,
		25.185755, 31.461020, 36.925053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450035, 31.742393, 36.334816>,  <25.024128, 31.232527, 36.283436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450035, 31.742393, 36.334816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709795, 31.841984, 36.622231>,  <24.865650, 31.901737, 36.794678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709795, 31.841984, 36.622231>,  <24.450035, 31.742393, 36.334816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709795, 31.841984, 36.622231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021790, 0.938404, -0.344853,
		-0.760135, 0.239604, 0.603974,
		0.649399, 0.248974, 0.718535,
		24.904615, 31.916676, 36.837791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188545, 32.345543, 36.726772>,  <24.450035, 31.742393, 36.334816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188545, 32.345543, 36.726772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579819, 32.371750, 36.805626>,  <24.814583, 32.387474, 36.852940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579819, 32.371750, 36.805626>,  <24.188545, 32.345543, 36.726772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579819, 32.371750, 36.805626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006086, 0.939516, -0.342450,
		-0.207648, 0.336179, 0.918622,
		0.978185, 0.065519, 0.197135,
		24.873274, 32.391407, 36.864765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389772, 32.946495, 37.191986>,  <24.188545, 32.345543, 36.726772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389772, 32.946495, 37.191986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676466, 32.822044, 36.942348>,  <24.848482, 32.747375, 36.792564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676466, 32.822044, 36.942348>,  <24.389772, 32.946495, 37.191986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676466, 32.822044, 36.942348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177849, 0.946916, -0.267807,
		0.674285, 0.080953, 0.734021,
		0.716736, -0.311123, -0.624093,
		24.891487, 32.728706, 36.755119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651058, 33.570000, 37.040756>,  <24.389772, 32.946495, 37.191986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651058, 33.570000, 37.040756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912804, 33.291698, 36.922279>,  <25.069851, 33.124718, 36.851192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912804, 33.291698, 36.922279>,  <24.651058, 33.570000, 37.040756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912804, 33.291698, 36.922279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556553, 0.708300, -0.434235,
		0.511914, 0.119302, 0.850712,
		0.654365, -0.695757, -0.296191,
		25.109114, 33.082970, 36.833424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366787, 33.738110, 37.281277>,  <24.651058, 33.570000, 37.040756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366787, 33.738110, 37.281277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402384, 33.507298, 36.956532>,  <25.423742, 33.368809, 36.761684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402384, 33.507298, 36.956532>,  <25.366787, 33.738110, 37.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402384, 33.507298, 36.956532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646954, 0.653230, -0.393371,
		0.757318, -0.490229, 0.431445,
		0.088991, -0.577032, -0.811859,
		25.429081, 33.334187, 36.712975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148537, 33.653477, 37.122360>,  <25.366787, 33.738110, 37.281277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148537, 33.653477, 37.122360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927992, 33.556107, 36.803177>,  <25.795666, 33.497684, 36.611668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927992, 33.556107, 36.803177>,  <26.148537, 33.653477, 37.122360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927992, 33.556107, 36.803177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673927, 0.433836, -0.598004,
		0.491755, -0.867485, -0.075148,
		-0.551361, -0.243427, -0.797963,
		25.762583, 33.483078, 36.563789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415649, 34.023319, 36.521378>,  <26.148537, 33.653477, 37.122360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415649, 34.023319, 36.521378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164375, 33.774620, 36.334270>,  <26.013611, 33.625401, 36.222008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164375, 33.774620, 36.334270>,  <26.415649, 34.023319, 36.521378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164375, 33.774620, 36.334270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349831, 0.311301, -0.883578,
		0.694982, -0.718692, 0.021952,
		-0.628187, -0.621750, -0.467769,
		25.975920, 33.588097, 36.193939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792868, 33.652271, 36.047729>,  <26.415649, 34.023319, 36.521378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792868, 33.652271, 36.047729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420811, 33.589939, 35.914734>,  <26.197577, 33.552540, 35.834934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420811, 33.589939, 35.914734>,  <26.792868, 33.652271, 36.047729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420811, 33.589939, 35.914734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278878, 0.289264, -0.915725,
		0.238875, -0.944481, -0.225600,
		-0.930143, -0.155829, -0.332493,
		26.141768, 33.543190, 35.814987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908974, 33.243053, 35.392208>,  <26.792868, 33.652271, 36.047729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908974, 33.243053, 35.392208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554598, 33.428028, 35.377949>,  <26.341972, 33.539013, 35.369392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554598, 33.428028, 35.377949>,  <26.908974, 33.243053, 35.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554598, 33.428028, 35.377949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223145, 0.357591, -0.906827,
		-0.406597, -0.811347, -0.419993,
		-0.885937, 0.462432, -0.035653,
		26.288816, 33.566757, 35.367252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569096, 33.261272, 34.633278>,  <26.908974, 33.243053, 35.392208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569096, 33.261272, 34.633278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408625, 33.562122, 34.842415>,  <26.312342, 33.742634, 34.967896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408625, 33.562122, 34.842415>,  <26.569096, 33.261272, 34.633278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408625, 33.562122, 34.842415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275246, 0.643390, -0.714346,
		-0.873669, -0.142669, -0.465133,
		-0.401177, 0.752127, 0.522840,
		26.288271, 33.787762, 34.999268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887274, 33.858559, 34.861748>,  <26.569096, 33.261272, 34.633278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887274, 33.858559, 34.861748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255610, 33.992222, 34.942142>,  <27.476610, 34.072422, 34.990379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255610, 33.992222, 34.942142>,  <26.887274, 33.858559, 34.861748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255610, 33.992222, 34.942142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385707, -0.704732, -0.595469,
		-0.057340, 0.625852, -0.777831,
		0.920838, 0.334160, 0.200986,
		27.531860, 34.092468, 35.002438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216612, 34.096954, 34.310020>,  <26.887274, 33.858559, 34.861748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216612, 34.096954, 34.310020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471329, 33.931519, 34.570309>,  <27.624159, 33.832256, 34.726482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471329, 33.931519, 34.570309>,  <27.216612, 34.096954, 34.310020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471329, 33.931519, 34.570309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329974, -0.616578, -0.714807,
		0.696857, 0.669905, -0.256158,
		0.636794, -0.413593, 0.650718,
		27.662367, 33.807442, 34.765526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731096, 34.158817, 33.970543>,  <27.216612, 34.096954, 34.310020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731096, 34.158817, 33.970543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818367, 33.837158, 34.191719>,  <27.870729, 33.644161, 34.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818367, 33.837158, 34.191719>,  <27.731096, 34.158817, 33.970543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818367, 33.837158, 34.191719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405179, -0.440804, -0.800951,
		0.887822, 0.398789, 0.229651,
		0.218179, -0.804151, 0.552936,
		27.883821, 33.595913, 34.357601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371696, 34.165558, 33.644054>,  <27.731096, 34.158817, 33.970543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371696, 34.165558, 33.644054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259672, 33.842300, 33.851311>,  <28.192457, 33.648346, 33.975666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259672, 33.842300, 33.851311>,  <28.371696, 34.165558, 33.644054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259672, 33.842300, 33.851311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626000, -0.562938, -0.539653,
		0.727797, 0.173219, 0.663556,
		-0.280063, -0.808144, 0.518139,
		28.175653, 33.599857, 34.006752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984529, 33.717285, 33.870636>,  <28.371696, 34.165558, 33.644054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984529, 33.717285, 33.870636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689137, 33.447769, 33.880909>,  <28.511902, 33.286060, 33.887074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689137, 33.447769, 33.880909>,  <28.984529, 33.717285, 33.870636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689137, 33.447769, 33.880909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527078, -0.600600, -0.601223,
		0.420519, -0.430456, 0.798669,
		-0.738480, -0.673786, 0.025680,
		28.467592, 33.245632, 33.888615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257729, 33.077354, 34.082523>,  <28.984529, 33.717285, 33.870636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257729, 33.077354, 34.082523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914824, 32.990749, 33.895664>,  <28.709082, 32.938786, 33.783550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914824, 32.990749, 33.895664>,  <29.257729, 33.077354, 34.082523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914824, 32.990749, 33.895664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494130, -0.600945, -0.628252,
		-0.144703, -0.769406, 0.622153,
		-0.857261, -0.216515, -0.467145,
		28.657644, 32.925797, 33.755520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768353, 32.434460, 33.982006>,  <29.257729, 33.077354, 34.082523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768353, 32.434460, 33.982006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403175, 32.383652, 33.826881>,  <28.184069, 32.353165, 33.733807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403175, 32.383652, 33.826881>,  <28.768353, 32.434460, 33.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403175, 32.383652, 33.826881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407652, -0.240009, -0.881031,
		0.018834, -0.962424, 0.270897,
		-0.912943, -0.127025, -0.387814,
		28.129292, 32.345543, 33.710537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542988, 31.705793, 33.943649>,  <28.768353, 32.434460, 33.982006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542988, 31.705793, 33.943649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393459, 31.961861, 33.675190>,  <28.303741, 32.115501, 33.514114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393459, 31.961861, 33.675190>,  <28.542988, 31.705793, 33.943649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393459, 31.961861, 33.675190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420540, -0.527967, -0.737833,
		-0.826682, -0.558064, -0.071850,
		-0.373823, 0.640169, -0.671149,
		28.281313, 32.153912, 33.473846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382729, 31.330938, 33.343204>,  <28.542988, 31.705793, 33.943649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382729, 31.330938, 33.343204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450933, 31.697863, 33.199280>,  <28.491856, 31.918018, 33.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450933, 31.697863, 33.199280>,  <28.382729, 31.330938, 33.343204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450933, 31.697863, 33.199280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474776, -0.396461, -0.785752,
		-0.863431, -0.036850, -0.503119,
		0.170512, 0.917312, -0.359812,
		28.502087, 31.973057, 33.091335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262375, 31.320171, 32.594765>,  <28.382729, 31.330938, 33.343204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262375, 31.320171, 32.594765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491117, 31.647308, 32.620430>,  <28.628363, 31.843590, 32.635830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491117, 31.647308, 32.620430>,  <28.262375, 31.320171, 32.594765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491117, 31.647308, 32.620430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614539, -0.375263, -0.693916,
		-0.543437, 0.436249, -0.717191,
		0.571855, 0.817842, 0.064160,
		28.662674, 31.892660, 32.639679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344875, 31.767012, 31.889778>,  <28.262375, 31.320171, 32.594765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344875, 31.767012, 31.889778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643763, 31.737797, 32.153999>,  <28.823095, 31.720268, 32.312531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643763, 31.737797, 32.153999>,  <28.344875, 31.767012, 31.889778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643763, 31.737797, 32.153999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550829, -0.488038, -0.677057,
		0.371825, 0.869761, -0.324440,
		0.747217, -0.073036, 0.660554,
		28.867928, 31.715887, 32.352165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860836, 32.005489, 31.641502>,  <28.344875, 31.767012, 31.889778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860836, 32.005489, 31.641502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048952, 31.770657, 31.905067>,  <29.161821, 31.629759, 32.063206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048952, 31.770657, 31.905067>,  <28.860836, 32.005489, 31.641502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048952, 31.770657, 31.905067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654133, -0.269295, -0.706817,
		0.592398, 0.763427, 0.257379,
		0.470292, -0.587077, 0.658913,
		29.190041, 31.594534, 32.102741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625181, 31.976717, 31.487871>,  <28.860836, 32.005489, 31.641502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625181, 31.976717, 31.487871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585052, 31.662573, 31.732212>,  <29.560976, 31.474087, 31.878817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585052, 31.662573, 31.732212>,  <29.625181, 31.976717, 31.487871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585052, 31.662573, 31.732212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714250, -0.484265, -0.505306,
		0.692663, 0.385610, 0.609527,
		-0.100322, -0.785361, 0.610854,
		29.554956, 31.426964, 31.915468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025999, 31.967411, 32.160954>,  <29.625181, 31.976717, 31.487871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025999, 31.967411, 32.160954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683149, 32.130806, 32.035431>,  <29.477440, 32.228844, 31.960117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683149, 32.130806, 32.035431>,  <30.025999, 31.967411, 32.160954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683149, 32.130806, 32.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256995, 0.188856, 0.947780,
		0.446421, 0.893012, -0.056894,
		-0.857124, 0.408487, -0.313810,
		29.426012, 32.253353, 31.941288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888298, 32.386337, 32.705853>,  <30.025999, 31.967411, 32.160954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888298, 32.386337, 32.705853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548977, 32.371681, 32.494556>,  <29.345385, 32.362888, 32.367779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548977, 32.371681, 32.494556>,  <29.888298, 32.386337, 32.705853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548977, 32.371681, 32.494556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517570, 0.268025, 0.812579,
		0.111809, 0.962715, -0.246331,
		-0.848304, -0.036640, -0.528240,
		29.294485, 32.360691, 32.336086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424997, 32.954163, 32.741146>,  <29.888298, 32.386337, 32.705853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424997, 32.954163, 32.741146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209557, 32.617985, 32.717297>,  <29.080292, 32.416279, 32.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209557, 32.617985, 32.717297>,  <29.424997, 32.954163, 32.741146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209557, 32.617985, 32.717297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593866, 0.328480, 0.734455,
		-0.597687, 0.430986, -0.676034,
		-0.538603, -0.840447, -0.059620,
		29.047976, 32.365852, 32.699409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676254, 33.225975, 32.782742>,  <29.424997, 32.954163, 32.741146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676254, 33.225975, 32.782742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627901, 32.838505, 32.869507>,  <28.598888, 32.606022, 32.921566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627901, 32.838505, 32.869507>,  <28.676254, 33.225975, 32.782742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627901, 32.838505, 32.869507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506582, 0.248120, 0.825718,
		-0.853675, -0.010069, -0.520708,
		-0.120884, -0.968677, 0.216915,
		28.591637, 32.547901, 32.934582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941650, 33.016815, 32.791004>,  <28.676254, 33.225975, 32.782742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941650, 33.016815, 32.791004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181843, 32.817051, 33.040806>,  <28.325958, 32.697193, 33.190689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181843, 32.817051, 33.040806>,  <27.941650, 33.016815, 32.791004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181843, 32.817051, 33.040806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445183, 0.439968, 0.779897,
		-0.664254, -0.746334, 0.041863,
		0.600482, -0.499413, 0.624506,
		28.361988, 32.667229, 33.228157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561300, 32.576111, 33.250648>,  <27.941650, 33.016815, 32.791004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561300, 32.576111, 33.250648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913748, 32.677448, 33.410370>,  <28.125216, 32.738251, 33.506203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913748, 32.677448, 33.410370>,  <27.561300, 32.576111, 33.250648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913748, 32.677448, 33.410370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448322, 0.178863, 0.875794,
		0.150445, -0.950700, 0.271175,
		0.881121, 0.253332, 0.399311,
		28.178083, 32.753452, 33.530163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594034, 32.316135, 34.003258>,  <27.561300, 32.576111, 33.250648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594034, 32.316135, 34.003258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840311, 32.627846, 33.956509>,  <27.988077, 32.814873, 33.928459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840311, 32.627846, 33.956509>,  <27.594034, 32.316135, 34.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840311, 32.627846, 33.956509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482901, 0.490343, 0.725514,
		0.622680, -0.390256, 0.678211,
		0.615692, 0.779271, -0.116872,
		28.025019, 32.861626, 33.921448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834543, 32.537098, 34.682331>,  <27.594034, 32.316135, 34.003258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834543, 32.537098, 34.682331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915365, 32.850788, 34.447670>,  <27.963858, 33.039001, 34.306873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915365, 32.850788, 34.447670>,  <27.834543, 32.537098, 34.682331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915365, 32.850788, 34.447670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124237, 0.614695, 0.778919,
		0.971462, -0.084500, 0.221632,
		0.202054, 0.784225, -0.586656,
		27.975981, 33.086056, 34.271675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242571, 32.770145, 35.236679>,  <27.834543, 32.537098, 34.682331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242571, 32.770145, 35.236679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129490, 33.049274, 34.973431>,  <28.061642, 33.216751, 34.815483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129490, 33.049274, 34.973431>,  <28.242571, 32.770145, 35.236679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129490, 33.049274, 34.973431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034104, 0.692986, 0.720144,
		0.958601, 0.181143, -0.219708,
		-0.282704, 0.697823, -0.658119,
		28.044680, 33.258621, 34.775993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685249, 33.418736, 35.381939>,  <28.242571, 32.770145, 35.236679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685249, 33.418736, 35.381939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344263, 33.520340, 35.199169>,  <28.139671, 33.581303, 35.089508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344263, 33.520340, 35.199169>,  <28.685249, 33.418736, 35.381939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344263, 33.520340, 35.199169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189718, 0.664131, 0.723143,
		0.487142, 0.703143, -0.517960,
		-0.852467, 0.254007, -0.456925,
		28.088524, 33.596542, 35.062092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589432, 33.973251, 35.776234>,  <28.685249, 33.418736, 35.381939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589432, 33.973251, 35.776234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258696, 33.964317, 35.551437>,  <28.060253, 33.958958, 35.416557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258696, 33.964317, 35.551437>,  <28.589432, 33.973251, 35.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258696, 33.964317, 35.551437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438988, 0.650278, 0.620022,
		0.351602, 0.759367, -0.547482,
		-0.826841, -0.022337, -0.561992,
		28.010643, 33.957615, 35.382839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323887, 33.683407, 35.594463>,  <28.589432, 33.973251, 35.776234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323887, 33.683407, 35.594463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460424, 33.308949, 35.628185>,  <29.542347, 33.084274, 35.648418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460424, 33.308949, 35.628185>,  <29.323887, 33.683407, 35.594463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460424, 33.308949, 35.628185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768114, 0.329513, 0.549019,
		-0.541743, -0.122652, 0.831547,
		0.341344, -0.936150, 0.084301,
		29.562828, 33.028103, 35.653477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361618, 33.587601, 36.376568>,  <29.323887, 33.683407, 35.594463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361618, 33.587601, 36.376568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604744, 33.339695, 36.177990>,  <29.750620, 33.190952, 36.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604744, 33.339695, 36.177990>,  <29.361618, 33.587601, 36.376568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604744, 33.339695, 36.177990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751979, 0.248371, 0.610606,
		-0.255126, -0.744452, 0.617011,
		0.607814, -0.619761, -0.496446,
		29.787088, 33.153767, 36.029057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703886, 33.131992, 36.919380>,  <29.361618, 33.587601, 36.376568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703886, 33.131992, 36.919380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899443, 33.203533, 36.577854>,  <30.016777, 33.246456, 36.372940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899443, 33.203533, 36.577854>,  <29.703886, 33.131992, 36.919380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899443, 33.203533, 36.577854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793886, 0.314455, 0.520445,
		0.361567, -0.932272, 0.011750,
		0.488891, 0.178847, -0.853814,
		30.046110, 33.257187, 36.321709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270481, 32.657711, 36.893936>,  <29.703886, 33.131992, 36.919380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270481, 32.657711, 36.893936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348747, 32.982544, 36.674030>,  <30.395706, 33.177444, 36.542088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348747, 32.982544, 36.674030>,  <30.270481, 32.657711, 36.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348747, 32.982544, 36.674030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824221, 0.167590, 0.540901,
		0.531390, -0.558963, -0.636541,
		0.195666, 0.812080, -0.549765,
		30.407448, 33.226170, 36.509102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008389, 32.781548, 36.704979>,  <30.270481, 32.657711, 36.893936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008389, 32.781548, 36.704979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823515, 33.135475, 36.728588>,  <30.712591, 33.347832, 36.742752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823515, 33.135475, 36.728588>,  <31.008389, 32.781548, 36.704979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823515, 33.135475, 36.728588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707128, 0.327569, 0.626632,
		0.535123, 0.331354, -0.777077,
		-0.462183, 0.884818, 0.059020,
		30.684860, 33.400921, 36.746296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412912, 33.423607, 36.419796>,  <31.008389, 32.781548, 36.704979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412912, 33.423607, 36.419796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155621, 33.502220, 36.715805>,  <31.001245, 33.549389, 36.893410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155621, 33.502220, 36.715805>,  <31.412912, 33.423607, 36.419796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155621, 33.502220, 36.715805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761394, 0.266228, 0.591102,
		-0.080844, 0.943662, -0.320883,
		-0.643229, 0.196531, 0.740022,
		30.962652, 33.561180, 36.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809416, 33.997627, 36.663040>,  <31.412912, 33.423607, 36.419796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809416, 33.997627, 36.663040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542345, 33.872158, 36.933098>,  <31.382103, 33.796879, 37.095131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542345, 33.872158, 36.933098>,  <31.809416, 33.997627, 36.663040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542345, 33.872158, 36.933098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581839, 0.345870, 0.736095,
		-0.464402, 0.884299, -0.048425,
		-0.667678, -0.313669, 0.675143,
		31.342041, 33.778057, 37.135639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421402, 33.827194, 36.317215>,  <31.809416, 33.997627, 36.663040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421402, 33.827194, 36.317215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367607, 33.769875, 36.709415>,  <32.335331, 33.735485, 36.944736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367607, 33.769875, 36.709415>,  <32.421402, 33.827194, 36.317215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367607, 33.769875, 36.709415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743850, 0.639135, 0.195433,
		-0.654676, 0.755628, 0.020636,
		-0.134486, -0.143295, 0.980500,
		32.327263, 33.726887, 37.003567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268505, 33.227596, 35.840031>,  <32.421402, 33.827194, 36.317215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268505, 33.227596, 35.840031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236572, 33.278988, 36.235428>,  <32.217411, 33.309822, 36.472668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236572, 33.278988, 36.235428>,  <32.268505, 33.227596, 35.840031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236572, 33.278988, 36.235428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276536, -0.949880, 0.145795,
		0.957681, 0.284994, 0.040306,
		-0.079836, 0.128479, 0.988493,
		32.212620, 33.317532, 36.531975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822601, 32.647903, 35.659920>,  <32.268505, 33.227596, 35.840031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822601, 32.647903, 35.659920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496548, 32.735512, 35.445412>,  <32.300915, 32.788078, 35.316708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496548, 32.735512, 35.445412>,  <32.822601, 32.647903, 35.659920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496548, 32.735512, 35.445412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239542, -0.715454, -0.656312,
		-0.527420, -0.663442, 0.530728,
		-0.815137, 0.219020, -0.536267,
		32.252007, 32.801220, 35.284531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153809, 31.994291, 35.455521>,  <32.822601, 32.647903, 35.659920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153809, 31.994291, 35.455521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473240, 31.753593, 35.460850>,  <33.664898, 31.609175, 35.464046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473240, 31.753593, 35.460850>,  <33.153809, 31.994291, 35.455521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473240, 31.753593, 35.460850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224110, 0.276722, -0.934452,
		0.558613, 0.749218, 0.355841,
		0.798577, -0.601745, 0.013327,
		33.712814, 31.573071, 35.464848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908306, 32.280304, 35.259918>,  <33.153809, 31.994291, 35.455521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908306, 32.280304, 35.259918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871735, 31.892668, 35.168255>,  <33.849792, 31.660088, 35.113258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871735, 31.892668, 35.168255>,  <33.908306, 32.280304, 35.259918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871735, 31.892668, 35.168255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189289, 0.209013, -0.959418,
		0.977656, -0.131092, 0.164328,
		-0.091425, -0.969086, -0.229157,
		33.844307, 31.601942, 35.099506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509140, 32.051899, 34.877460>,  <33.908306, 32.280304, 35.259918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509140, 32.051899, 34.877460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166779, 31.873291, 34.773109>,  <33.961361, 31.766127, 34.710499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166779, 31.873291, 34.773109>,  <34.509140, 32.051899, 34.877460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166779, 31.873291, 34.773109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125565, 0.309920, -0.942435,
		0.501665, -0.839387, -0.209193,
		-0.855900, -0.446519, -0.260874,
		33.910007, 31.739336, 34.694847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699814, 31.563843, 34.291416>,  <34.509140, 32.051899, 34.877460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699814, 31.563843, 34.291416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324619, 31.701498, 34.308132>,  <34.099503, 31.784090, 34.318161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324619, 31.701498, 34.308132>,  <34.699814, 31.563843, 34.291416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324619, 31.701498, 34.308132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095539, 0.372511, -0.923097,
		-0.333241, -0.861862, -0.382289,
		-0.937989, 0.344137, 0.041794,
		34.043224, 31.804739, 34.320671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504276, 31.449551, 33.695175>,  <34.699814, 31.563843, 34.291416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504276, 31.449551, 33.695175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244030, 31.733086, 33.804169>,  <34.087883, 31.903206, 33.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244030, 31.733086, 33.804169>,  <34.504276, 31.449551, 33.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244030, 31.733086, 33.804169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158730, 0.477820, -0.863998,
		-0.742629, -0.518884, -0.423393,
		-0.650620, 0.708836, 0.272481,
		34.048843, 31.945736, 33.885914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911755, 31.413645, 33.235554>,  <34.504276, 31.449551, 33.695175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911755, 31.413645, 33.235554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028366, 31.774441, 33.362942>,  <34.098335, 31.990917, 33.439377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028366, 31.774441, 33.362942>,  <33.911755, 31.413645, 33.235554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028366, 31.774441, 33.362942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204112, 0.266609, -0.941943,
		-0.934531, 0.339610, -0.106382,
		0.291531, 0.901989, 0.318473,
		34.115826, 32.045036, 33.458485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728779, 31.840794, 32.681801>,  <33.911755, 31.413645, 33.235554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728779, 31.840794, 32.681801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974796, 32.072578, 32.895699>,  <34.122406, 32.211651, 33.024036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974796, 32.072578, 32.895699>,  <33.728779, 31.840794, 32.681801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974796, 32.072578, 32.895699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238016, 0.510106, -0.826523,
		-0.751714, 0.635622, 0.175815,
		0.615041, 0.579462, 0.534742,
		34.159309, 32.246418, 33.056122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444191, 32.458424, 32.576790>,  <33.728779, 31.840794, 32.681801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444191, 32.458424, 32.576790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823124, 32.520107, 32.689068>,  <34.050484, 32.557117, 32.756435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823124, 32.520107, 32.689068>,  <33.444191, 32.458424, 32.576790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823124, 32.520107, 32.689068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162276, 0.524490, -0.835809,
		-0.276108, 0.837336, 0.471840,
		0.947328, 0.154205, 0.280696,
		34.107323, 32.566368, 32.773277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465454, 33.114426, 32.488014>,  <33.444191, 32.458424, 32.576790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465454, 33.114426, 32.488014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841419, 32.977863, 32.487667>,  <34.066998, 32.895924, 32.487461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841419, 32.977863, 32.487667>,  <33.465454, 33.114426, 32.488014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841419, 32.977863, 32.487667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191132, 0.528289, -0.827272,
		0.282894, 0.777400, 0.561801,
		0.939914, -0.341409, -0.000864,
		34.123394, 32.875439, 32.487408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960472, 33.736927, 32.367100>,  <33.465454, 33.114426, 32.488014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960472, 33.736927, 32.367100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160099, 33.407188, 32.260227>,  <34.279873, 33.209347, 32.196102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160099, 33.407188, 32.260227>,  <33.960472, 33.736927, 32.367100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160099, 33.407188, 32.260227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209772, 0.414077, -0.885741,
		0.840792, 0.385995, 0.379576,
		0.499065, -0.824347, -0.267182,
		34.309818, 33.159885, 32.180073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536137, 34.004009, 32.140987>,  <33.960472, 33.736927, 32.367100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536137, 34.004009, 32.140987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539833, 33.643097, 31.968571>,  <34.542049, 33.426548, 31.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539833, 33.643097, 31.968571>,  <34.536137, 34.004009, 32.140987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539833, 33.643097, 31.968571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263417, 0.418032, -0.869403,
		0.964638, -0.105512, 0.241539,
		0.009238, -0.902284, -0.431043,
		34.542606, 33.372410, 31.839258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030376, 34.012993, 31.728920>,  <34.536137, 34.004009, 32.140987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030376, 34.012993, 31.728920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856480, 33.684128, 31.581928>,  <34.752140, 33.486809, 31.493734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856480, 33.684128, 31.581928>,  <35.030376, 34.012993, 31.728920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856480, 33.684128, 31.581928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379290, 0.202935, -0.902749,
		0.816785, -0.531844, 0.223615,
		-0.434743, -0.822167, -0.367478,
		34.726055, 33.437477, 31.471685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541061, 33.570511, 31.236229>,  <35.030376, 34.012993, 31.728920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541061, 33.570511, 31.236229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158936, 33.504002, 31.138472>,  <34.929661, 33.464096, 31.079817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158936, 33.504002, 31.138472>,  <35.541061, 33.570511, 31.236229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158936, 33.504002, 31.138472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206570, 0.215856, -0.954324,
		0.211376, -0.962174, -0.171878,
		-0.955327, -0.166216, -0.244383,
		34.872341, 33.454121, 31.065153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609825, 33.204762, 30.634686>,  <35.541061, 33.570511, 31.236229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609825, 33.204762, 30.634686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234184, 33.340382, 30.657070>,  <35.008801, 33.421753, 30.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234184, 33.340382, 30.657070>,  <35.609825, 33.204762, 30.634686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234184, 33.340382, 30.657070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086155, 0.389960, -0.916792,
		-0.332660, -0.856141, -0.395424,
		-0.939103, 0.339047, 0.055963,
		34.952454, 33.442097, 30.673859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402969, 32.977150, 30.074093>,  <35.609825, 33.204762, 30.634686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402969, 32.977150, 30.074093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157608, 33.268902, 30.195244>,  <35.010391, 33.443954, 30.267935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157608, 33.268902, 30.195244>,  <35.402969, 32.977150, 30.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157608, 33.268902, 30.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100943, 0.307952, -0.946032,
		-0.783291, -0.610874, -0.115274,
		-0.613405, 0.729382, 0.302879,
		34.973587, 33.487717, 30.286108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771305, 33.063610, 29.554937>,  <35.402969, 32.977150, 30.074093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771305, 33.063610, 29.554937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809650, 33.422073, 29.728235>,  <34.832657, 33.637154, 29.832214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809650, 33.422073, 29.728235>,  <34.771305, 33.063610, 29.554937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809650, 33.422073, 29.728235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071490, 0.440326, -0.894987,
		-0.992824, 0.054822, 0.106278,
		0.095862, 0.896163, 0.433247,
		34.838409, 33.690922, 29.858210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701275, 33.464935, 28.972662>,  <34.771305, 33.063610, 29.554937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701275, 33.464935, 28.972662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745758, 33.742130, 29.257589>,  <34.772449, 33.908447, 29.428545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745758, 33.742130, 29.257589>,  <34.701275, 33.464935, 28.972662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745758, 33.742130, 29.257589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117553, 0.720905, -0.682991,
		-0.986820, -0.007779, 0.161635,
		0.111210, 0.692990, 0.712318,
		34.779121, 33.950027, 29.471285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128342, 33.922886, 28.914383>,  <34.701275, 33.464935, 28.972662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128342, 33.922886, 28.914383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443264, 34.119122, 29.063768>,  <34.632217, 34.236862, 29.153400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443264, 34.119122, 29.063768>,  <34.128342, 33.922886, 28.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443264, 34.119122, 29.063768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105478, 0.703955, -0.702368,
		-0.607477, 0.513585, 0.605973,
		0.787303, 0.490589, 0.373464,
		34.679455, 34.266300, 29.175808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022774, 34.535282, 28.622196>,  <34.128342, 33.922886, 28.914383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022774, 34.535282, 28.622196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399239, 34.586517, 28.747297>,  <34.625118, 34.617260, 28.822359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399239, 34.586517, 28.747297>,  <34.022774, 34.535282, 28.622196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399239, 34.586517, 28.747297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029256, 0.891047, -0.452967,
		-0.336699, 0.435463, 0.834868,
		0.941158, 0.128089, 0.312755,
		34.681587, 34.624943, 28.841124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057739, 35.161205, 29.036547>,  <34.022774, 34.535282, 28.622196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057739, 35.161205, 29.036547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432667, 35.103447, 28.909689>,  <34.657623, 35.068790, 28.833574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432667, 35.103447, 28.909689>,  <34.057739, 35.161205, 29.036547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432667, 35.103447, 28.909689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029220, 0.939468, -0.341388,
		0.347241, 0.310722, 0.884802,
		0.937320, -0.144398, -0.317143,
		34.713863, 35.060127, 28.814547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394234, 35.773865, 29.236876>,  <34.057739, 35.161205, 29.036547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394234, 35.773865, 29.236876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649490, 35.602310, 28.981115>,  <34.802647, 35.499378, 28.827660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649490, 35.602310, 28.981115>,  <34.394234, 35.773865, 29.236876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649490, 35.602310, 28.981115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138988, 0.881005, -0.452230,
		0.757268, 0.199719, 0.621818,
		0.638143, -0.428884, -0.639399,
		34.840935, 35.473644, 28.789295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185612, 36.140686, 29.256573>,  <34.394234, 35.773865, 29.236876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185612, 36.140686, 29.256573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126507, 35.952343, 28.908674>,  <35.091045, 35.839336, 28.699936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126507, 35.952343, 28.908674>,  <35.185612, 36.140686, 29.256573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126507, 35.952343, 28.908674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130496, 0.862428, -0.489069,
		0.980376, -0.185763, -0.065987,
		-0.147760, -0.470861, -0.869745,
		35.082180, 35.811085, 28.647751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534027, 36.570465, 28.888067>,  <35.185612, 36.140686, 29.256573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534027, 36.570465, 28.888067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335686, 36.369278, 28.604900>,  <35.216679, 36.248566, 28.434999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335686, 36.369278, 28.604900>,  <35.534027, 36.570465, 28.888067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335686, 36.369278, 28.604900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079199, 0.785604, -0.613640,
		0.864787, -0.360342, -0.349711,
		-0.495854, -0.502971, -0.707918,
		35.186928, 36.218388, 28.392525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916485, 36.570171, 28.239840>,  <35.534027, 36.570465, 28.888067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916485, 36.570171, 28.239840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568966, 36.444473, 28.086767>,  <35.360455, 36.369053, 27.994925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568966, 36.444473, 28.086767>,  <35.916485, 36.570171, 28.239840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568966, 36.444473, 28.086767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164821, 0.545233, -0.821921,
		0.466935, -0.777155, -0.421902,
		-0.868795, -0.314246, -0.382680,
		35.308327, 36.350201, 27.971962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083225, 36.357571, 27.581932>,  <35.916485, 36.570171, 28.239840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083225, 36.357571, 27.581932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693413, 36.444664, 27.603428>,  <35.459526, 36.496922, 27.616325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693413, 36.444664, 27.603428>,  <36.083225, 36.357571, 27.581932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693413, 36.444664, 27.603428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111658, 0.678877, -0.725712,
		-0.194494, -0.701226, -0.685897,
		-0.974528, 0.217732, 0.053740,
		35.401054, 36.509983, 27.619551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870533, 36.468689, 26.896383>,  <36.083225, 36.357571, 27.581932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870533, 36.468689, 26.896383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618736, 36.659649, 27.141600>,  <35.467659, 36.774227, 27.288731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618736, 36.659649, 27.141600>,  <35.870533, 36.468689, 26.896383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618736, 36.659649, 27.141600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177426, 0.856455, -0.484773,
		-0.756476, -0.196393, -0.623838,
		-0.629495, 0.477405, 0.613042,
		35.429886, 36.802872, 27.325512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503811, 36.851841, 26.472015>,  <35.870533, 36.468689, 26.896383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503811, 36.851841, 26.472015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401638, 37.033993, 26.813162>,  <35.340336, 37.143284, 27.017849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401638, 37.033993, 26.813162>,  <35.503811, 36.851841, 26.472015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401638, 37.033993, 26.813162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099169, 0.865136, -0.491636,
		-0.961728, -0.210156, -0.175821,
		-0.255429, 0.455384, 0.852867,
		35.325008, 37.170609, 27.069021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825073, 37.232121, 26.396700>,  <35.503811, 36.851841, 26.472015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825073, 37.232121, 26.396700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049999, 37.407185, 26.677343>,  <35.184956, 37.512222, 26.845730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049999, 37.407185, 26.677343>,  <34.825073, 37.232121, 26.396700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049999, 37.407185, 26.677343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318885, 0.897601, -0.304344,
		-0.762964, -0.052595, 0.644298,
		0.562315, 0.437661, 0.701608,
		35.218693, 37.538483, 26.887825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543152, 37.795578, 26.413031>,  <34.825073, 37.232121, 26.396700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543152, 37.795578, 26.413031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884399, 37.896198, 26.595854>,  <35.089149, 37.956570, 26.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884399, 37.896198, 26.595854>,  <34.543152, 37.795578, 26.413031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884399, 37.896198, 26.595854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098806, 0.938128, -0.331894,
		-0.512269, 0.237986, 0.825193,
		0.853123, 0.251553, 0.457059,
		35.140335, 37.971664, 26.732971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439533, 38.470585, 26.769613>,  <34.543152, 37.795578, 26.413031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439533, 38.470585, 26.769613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838436, 38.442295, 26.760811>,  <35.077778, 38.425320, 26.755529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838436, 38.442295, 26.760811>,  <34.439533, 38.470585, 26.769613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838436, 38.442295, 26.760811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062363, 0.962016, -0.265773,
		0.039968, 0.263670, 0.963784,
		0.997253, -0.070727, -0.022007,
		35.137611, 38.421078, 26.754210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647137, 39.091415, 27.148045>,  <34.439533, 38.470585, 26.769613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647137, 39.091415, 27.148045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954330, 38.962475, 26.926672>,  <35.138649, 38.885113, 26.793848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954330, 38.962475, 26.926672>,  <34.647137, 39.091415, 27.148045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954330, 38.962475, 26.926672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060630, 0.896820, -0.438222,
		0.637590, 0.302994, 0.708289,
		0.767986, -0.322350, -0.553433,
		35.184727, 38.865768, 26.760643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260838, 39.621014, 27.275955>,  <34.647137, 39.091415, 27.148045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260838, 39.621014, 27.275955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286770, 39.435223, 26.922670>,  <35.302330, 39.323750, 26.710699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286770, 39.435223, 26.922670>,  <35.260838, 39.621014, 27.275955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286770, 39.435223, 26.922670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066771, 0.885108, -0.460571,
		0.995660, -0.029114, 0.088395,
		0.064830, -0.464474, -0.883211,
		35.306217, 39.295879, 26.657707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506771, 40.184242, 26.930447>,  <35.260838, 39.621014, 27.275955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506771, 40.184242, 26.930447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452934, 39.901352, 26.652824>,  <35.420631, 39.731617, 26.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452934, 39.901352, 26.652824>,  <35.506771, 40.184242, 26.930447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452934, 39.901352, 26.652824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305930, 0.636551, -0.707961,
		0.942492, -0.307620, 0.130686,
		-0.134595, -0.707228, -0.694055,
		35.412556, 39.689182, 26.444609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185963, 40.221241, 26.472977>,  <35.506771, 40.184242, 26.930447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185963, 40.221241, 26.472977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875023, 40.065975, 26.274963>,  <35.688461, 39.972816, 26.156155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875023, 40.065975, 26.274963>,  <36.185963, 40.221241, 26.472977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875023, 40.065975, 26.274963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144446, 0.655762, -0.741021,
		0.612261, -0.647537, -0.453687,
		-0.777349, -0.388165, -0.495032,
		35.641819, 39.949524, 26.126453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517437, 40.094578, 25.805874>,  <36.185963, 40.221241, 26.472977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517437, 40.094578, 25.805874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118698, 40.095314, 25.774158>,  <35.879456, 40.095757, 25.755129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118698, 40.095314, 25.774158>,  <36.517437, 40.094578, 25.805874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118698, 40.095314, 25.774158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067519, 0.544250, -0.836201,
		0.041612, -0.838921, -0.542660,
		-0.996850, 0.001844, -0.079290,
		35.819645, 40.095867, 25.750372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432922, 39.933353, 25.198277>,  <36.517437, 40.094578, 25.805874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432922, 39.933353, 25.198277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103264, 40.143616, 25.282625>,  <35.905468, 40.269775, 25.333235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103264, 40.143616, 25.282625>,  <36.432922, 39.933353, 25.198277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103264, 40.143616, 25.282625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127603, 0.535072, -0.835114,
		-0.551818, -0.661347, -0.508052,
		-0.824145, 0.525660, 0.210873,
		35.856022, 40.301315, 25.345886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134476, 39.960926, 24.569384>,  <36.432922, 39.933353, 25.198277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134476, 39.960926, 24.569384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965626, 40.261257, 24.772581>,  <35.864315, 40.441456, 24.894501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965626, 40.261257, 24.772581>,  <36.134476, 39.960926, 24.569384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965626, 40.261257, 24.772581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112578, 0.599450, -0.792456,
		-0.899519, -0.277328, -0.337572,
		-0.422127, 0.750832, 0.507996,
		35.838989, 40.486507, 24.924980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572697, 40.237713, 24.123270>,  <36.134476, 39.960926, 24.569384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572697, 40.237713, 24.123270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637974, 40.521999, 24.396984>,  <35.677139, 40.692574, 24.561213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637974, 40.521999, 24.396984>,  <35.572697, 40.237713, 24.123270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637974, 40.521999, 24.396984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049147, 0.698578, -0.713845,
		-0.985369, 0.082865, 0.148933,
		0.163194, 0.710720, 0.684284,
		35.686932, 40.735214, 24.602270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040939, 40.753307, 24.007633>,  <35.572697, 40.237713, 24.123270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040939, 40.753307, 24.007633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347843, 40.929058, 24.194504>,  <35.531986, 41.034508, 24.306625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347843, 40.929058, 24.194504>,  <35.040939, 40.753307, 24.007633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347843, 40.929058, 24.194504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084191, 0.791145, -0.605807,
		-0.635783, 0.425481, 0.644008,
		0.767263, 0.439381, 0.467175,
		35.578022, 41.060871, 24.334656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770275, 41.496571, 24.186577>,  <35.040939, 40.753307, 24.007633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770275, 41.496571, 24.186577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169151, 41.496159, 24.216516>,  <35.408478, 41.495911, 24.234480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169151, 41.496159, 24.216516>,  <34.770275, 41.496571, 24.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169151, 41.496159, 24.216516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029876, 0.922306, -0.385305,
		-0.068634, 0.386460, 0.919749,
		0.997194, -0.001033, 0.074848,
		35.468311, 41.495850, 24.238972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070244, 42.136570, 24.494671>,  <34.770275, 41.496571, 24.186577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070244, 42.136570, 24.494671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354866, 41.981853, 24.260038>,  <35.525639, 41.889023, 24.119259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354866, 41.981853, 24.260038>,  <35.070244, 42.136570, 24.494671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354866, 41.981853, 24.260038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160322, 0.902196, -0.400424,
		0.684090, 0.190884, 0.703977,
		0.711560, -0.386789, -0.586581,
		35.568333, 41.865818, 24.084064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574238, 42.662083, 24.428099>,  <35.070244, 42.136570, 24.494671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574238, 42.662083, 24.428099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637383, 42.432095, 24.106977>,  <35.675270, 42.294102, 23.914305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637383, 42.432095, 24.106977>,  <35.574238, 42.662083, 24.428099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637383, 42.432095, 24.106977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157645, 0.817242, -0.554313,
		0.974797, -0.039054, 0.219650,
		0.157859, -0.574969, -0.802802,
		35.684738, 42.259605, 23.866137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117672, 42.899990, 24.097340>,  <35.574238, 42.662083, 24.428099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117672, 42.899990, 24.097340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948460, 42.687119, 23.803993>,  <35.846931, 42.559395, 23.627985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948460, 42.687119, 23.803993>,  <36.117672, 42.899990, 24.097340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948460, 42.687119, 23.803993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154851, 0.754987, -0.637194,
		0.892787, -0.383113, -0.236971,
		-0.423027, -0.532183, -0.733369,
		35.821552, 42.527462, 23.583982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530125, 42.947495, 23.529596>,  <36.117672, 42.899990, 24.097340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530125, 42.947495, 23.529596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179420, 42.854404, 23.361254>,  <35.968998, 42.798550, 23.260248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179420, 42.854404, 23.361254>,  <36.530125, 42.947495, 23.529596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179420, 42.854404, 23.361254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075817, 0.797279, -0.598830,
		0.474905, -0.556941, -0.681382,
		-0.876765, -0.232727, -0.420858,
		35.916389, 42.784588, 23.234997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624577, 43.110184, 22.795744>,  <36.530125, 42.947495, 23.529596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624577, 43.110184, 22.795744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225777, 43.105091, 22.826292>,  <35.986496, 43.102036, 22.844622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225777, 43.105091, 22.826292>,  <36.624577, 43.110184, 22.795744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225777, 43.105091, 22.826292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057226, 0.785551, -0.616145,
		-0.052150, -0.618666, -0.783921,
		-0.996998, -0.012729, 0.076370,
		35.926678, 43.101273, 22.849203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315426, 43.248234, 22.046654>,  <36.624577, 43.110184, 22.795744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315426, 43.248234, 22.046654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017136, 43.343658, 22.295485>,  <35.838161, 43.400913, 22.444784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017136, 43.343658, 22.295485>,  <36.315426, 43.248234, 22.046654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017136, 43.343658, 22.295485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116073, 0.872898, -0.473895,
		-0.656066, -0.425602, -0.623250,
		-0.745724, 0.238564, 0.622079,
		35.793419, 43.415226, 22.482109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907845, 43.653706, 21.644144>,  <36.315426, 43.248234, 22.046654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907845, 43.653706, 21.644144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770073, 43.742085, 22.009123>,  <35.687412, 43.795113, 22.228109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770073, 43.742085, 22.009123>,  <35.907845, 43.653706, 21.644144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770073, 43.742085, 22.009123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048354, 0.966448, -0.252272,
		-0.937568, -0.131009, -0.322185,
		-0.344425, 0.220943, 0.912445,
		35.666744, 43.808369, 22.282856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288021, 44.037079, 21.538042>,  <35.907845, 43.653706, 21.644144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288021, 44.037079, 21.538042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426537, 44.123936, 21.903103>,  <35.509647, 44.176048, 22.122139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426537, 44.123936, 21.903103>,  <35.288021, 44.037079, 21.538042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426537, 44.123936, 21.903103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174219, 0.970806, -0.164874,
		-0.921808, -0.101907, 0.374013,
		0.346293, 0.217142, 0.912651,
		35.530426, 44.189079, 22.176899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660442, 44.436424, 21.920435>,  <35.288021, 44.037079, 21.538042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660442, 44.436424, 21.920435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032898, 44.517635, 22.041605>,  <35.256371, 44.566364, 22.114307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032898, 44.517635, 22.041605>,  <34.660442, 44.436424, 21.920435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032898, 44.517635, 22.041605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170236, 0.976618, -0.131287,
		-0.322498, 0.070677, 0.943928,
		0.931136, 0.203030, 0.302926,
		35.312241, 44.578545, 22.132483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676212, 44.842083, 22.591906>,  <34.660442, 44.436424, 21.920435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676212, 44.842083, 22.591906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969780, 44.925667, 22.333387>,  <35.145920, 44.975815, 22.178276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969780, 44.925667, 22.333387>,  <34.676212, 44.842083, 22.591906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969780, 44.925667, 22.333387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404228, 0.899029, -0.168364,
		0.545858, 0.384817, 0.744282,
		0.733920, 0.208957, -0.646296,
		35.189957, 44.988354, 22.139498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837803, 45.518055, 22.751043>,  <34.676212, 44.842083, 22.591906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837803, 45.518055, 22.751043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935055, 45.422970, 22.374878>,  <34.993404, 45.365917, 22.149179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935055, 45.422970, 22.374878>,  <34.837803, 45.518055, 22.751043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935055, 45.422970, 22.374878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220886, 0.930465, -0.292308,
		0.944508, 0.278794, 0.173717,
		0.243131, -0.237716, -0.940414,
		35.007996, 45.351654, 22.092754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417088, 46.093307, 22.582426>,  <34.837803, 45.518055, 22.751043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417088, 46.093307, 22.582426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387878, 45.700542, 22.512554>,  <34.370354, 45.464882, 22.470631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387878, 45.700542, 22.512554>,  <34.417088, 46.093307, 22.582426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387878, 45.700542, 22.512554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894901, -0.012800, 0.446081,
		-0.440249, 0.188895, -0.877781,
		-0.073027, -0.981914, -0.174678,
		34.365971, 45.405968, 22.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689381, 46.795883, 22.777693>,  <34.417088, 46.093307, 22.582426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689381, 46.795883, 22.777693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940716, 47.103184, 22.728722>,  <35.091518, 47.287563, 22.699339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940716, 47.103184, 22.728722>,  <34.689381, 46.795883, 22.777693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940716, 47.103184, 22.728722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665041, 0.612106, 0.427841,
		0.403625, -0.187410, 0.895525,
		0.628338, 0.768248, -0.122425,
		35.129215, 47.333656, 22.691994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840961, 47.096077, 23.409309>,  <34.689381, 46.795883, 22.777693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840961, 47.096077, 23.409309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872444, 47.374573, 23.123919>,  <34.891335, 47.541672, 22.952684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872444, 47.374573, 23.123919>,  <34.840961, 47.096077, 23.409309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872444, 47.374573, 23.123919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801273, 0.469983, 0.370238,
		0.593099, 0.542551, 0.594871,
		0.078706, 0.696243, -0.713478,
		34.896057, 47.583447, 22.909876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131687, 46.766350, 23.380249>,  <34.840961, 47.096077, 23.409309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131687, 46.766350, 23.380249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857685, 46.671410, 23.655764>,  <33.693283, 46.614445, 23.821074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857685, 46.671410, 23.655764>,  <34.131687, 46.766350, 23.380249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857685, 46.671410, 23.655764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514982, -0.826503, 0.227345,
		0.515325, 0.510446, 0.688392,
		-0.685006, -0.237353, 0.688789,
		33.652184, 46.600204, 23.862400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570625, 46.376118, 23.826427>,  <34.131687, 46.766350, 23.380249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570625, 46.376118, 23.826427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201324, 46.285133, 23.950277>,  <33.979744, 46.230545, 24.024588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201324, 46.285133, 23.950277>,  <34.570625, 46.376118, 23.826427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201324, 46.285133, 23.950277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321431, -0.898747, 0.298222,
		0.210440, 0.374857, 0.902883,
		-0.923254, -0.227456, 0.309623,
		33.924347, 46.216896, 24.043163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597328, 46.135235, 24.539192>,  <34.570625, 46.376118, 23.826427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597328, 46.135235, 24.539192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293598, 45.945801, 24.360693>,  <34.111359, 45.832138, 24.253593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293598, 45.945801, 24.360693>,  <34.597328, 46.135235, 24.539192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293598, 45.945801, 24.360693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369929, -0.878361, 0.302712,
		-0.535329, 0.064777, 0.842156,
		-0.759326, -0.473588, -0.446249,
		34.065800, 45.803726, 24.226818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199917, 45.617710, 24.968008>,  <34.597328, 46.135235, 24.539192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199917, 45.617710, 24.968008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159233, 45.445534, 24.609261>,  <34.134823, 45.342228, 24.394012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159233, 45.445534, 24.609261>,  <34.199917, 45.617710, 24.968008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159233, 45.445534, 24.609261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556013, -0.772183, 0.307544,
		-0.824926, -0.467389, 0.317874,
		-0.101714, -0.430443, -0.896868,
		34.128719, 45.316402, 24.340200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918995, 45.015297, 24.923500>,  <34.199917, 45.617710, 24.968008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918995, 45.015297, 24.923500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228786, 45.068329, 24.676081>,  <34.414661, 45.100147, 24.527628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228786, 45.068329, 24.676081>,  <33.918995, 45.015297, 24.923500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228786, 45.068329, 24.676081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491274, -0.742060, 0.456067,
		-0.398537, -0.657092, -0.639843,
		0.774479, 0.132578, -0.618550,
		34.461132, 45.108101, 24.490515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130508, 44.406654, 24.893528>,  <33.918995, 45.015297, 24.923500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130508, 44.406654, 24.893528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434940, 44.596848, 24.717041>,  <34.617599, 44.710964, 24.611149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434940, 44.596848, 24.717041>,  <34.130508, 44.406654, 24.893528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434940, 44.596848, 24.717041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645693, -0.620274, 0.445355,
		-0.061918, -0.623842, -0.779094,
		0.761083, 0.475480, -0.441216,
		34.663265, 44.739491, 24.584677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522816, 43.843929, 24.537806>,  <34.130508, 44.406654, 24.893528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522816, 43.843929, 24.537806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758915, 44.159512, 24.606108>,  <34.900574, 44.348862, 24.647089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758915, 44.159512, 24.606108>,  <34.522816, 43.843929, 24.537806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758915, 44.159512, 24.606108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681357, -0.600372, 0.418695,
		0.432846, -0.130791, -0.891929,
		0.590251, 0.788953, 0.170753,
		34.935989, 44.396198, 24.657333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141544, 43.589931, 24.395750>,  <34.522816, 43.843929, 24.537806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141544, 43.589931, 24.395750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228977, 43.922497, 24.600094>,  <35.281437, 44.122036, 24.722700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228977, 43.922497, 24.600094>,  <35.141544, 43.589931, 24.395750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228977, 43.922497, 24.600094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596492, -0.528164, 0.604351,
		0.772282, 0.172626, -0.611376,
		0.218580, 0.831410, 0.510862,
		35.294552, 44.171921, 24.753353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835312, 43.629044, 24.467108>,  <35.141544, 43.589931, 24.395750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835312, 43.629044, 24.467108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687763, 43.857620, 24.760336>,  <35.599236, 43.994766, 24.936274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687763, 43.857620, 24.760336>,  <35.835312, 43.629044, 24.467108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687763, 43.857620, 24.760336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709367, -0.336557, 0.619296,
		0.600609, 0.748457, -0.281213,
		-0.368873, 0.571438, 0.733070,
		35.577103, 44.029053, 24.980257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457603, 43.933372, 24.866220>,  <35.835312, 43.629044, 24.467108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457603, 43.933372, 24.866220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125099, 43.928082, 25.088509>,  <35.925594, 43.924908, 25.221882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125099, 43.928082, 25.088509>,  <36.457603, 43.933372, 24.866220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125099, 43.928082, 25.088509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548906, -0.177365, 0.816850,
		0.087760, 0.984056, 0.154699,
		-0.831264, -0.013228, 0.555720,
		35.875721, 43.924114, 25.255224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724411, 44.172104, 25.465454>,  <36.457603, 43.933372, 24.866220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724411, 44.172104, 25.465454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364418, 44.033249, 25.570927>,  <36.148422, 43.949936, 25.634211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364418, 44.033249, 25.570927>,  <36.724411, 44.172104, 25.465454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364418, 44.033249, 25.570927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374069, -0.304389, 0.876025,
		-0.223841, 0.887041, 0.403799,
		-0.899982, -0.347139, 0.263680,
		36.094425, 43.929108, 25.650030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710949, 44.392101, 26.188061>,  <36.724411, 44.172104, 25.465454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710949, 44.392101, 26.188061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453190, 44.096088, 26.111012>,  <36.298534, 43.918480, 26.064783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453190, 44.096088, 26.111012>,  <36.710949, 44.392101, 26.188061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453190, 44.096088, 26.111012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367260, -0.520452, 0.770876,
		-0.670722, 0.426012, 0.607163,
		-0.644401, -0.740030, -0.192621,
		36.259869, 43.874081, 26.053225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570751, 44.178661, 26.839012>,  <36.710949, 44.392101, 26.188061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570751, 44.178661, 26.839012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444492, 43.875908, 26.610104>,  <36.368736, 43.694256, 26.472759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444492, 43.875908, 26.610104>,  <36.570751, 44.178661, 26.839012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444492, 43.875908, 26.610104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233004, -0.646464, 0.726494,
		-0.919825, 0.095971, 0.380409,
		-0.315643, -0.756884, -0.572272,
		36.349800, 43.648842, 26.438421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146511, 43.766518, 27.325157>,  <36.570751, 44.178661, 26.839012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146511, 43.766518, 27.325157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261368, 43.515587, 27.035604>,  <36.330284, 43.365028, 26.861874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261368, 43.515587, 27.035604>,  <36.146511, 43.766518, 27.325157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261368, 43.515587, 27.035604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164998, -0.712017, 0.682501,
		-0.943569, -0.315416, -0.100944,
		0.287146, -0.627331, -0.723880,
		36.347511, 43.327389, 26.818439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758396, 43.195026, 27.340586>,  <36.146511, 43.766518, 27.325157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758396, 43.195026, 27.340586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087032, 43.061001, 27.156096>,  <36.284214, 42.980587, 27.045403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087032, 43.061001, 27.156096>,  <35.758396, 43.195026, 27.340586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087032, 43.061001, 27.156096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066299, -0.747400, 0.661058,
		-0.566213, -0.573696, -0.591841,
		0.821588, -0.335062, -0.461223,
		36.333508, 42.960484, 27.017729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776085, 42.407921, 27.322287>,  <35.758396, 43.195026, 27.340586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776085, 42.407921, 27.322287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161167, 42.462620, 27.228909>,  <36.392216, 42.495438, 27.172882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161167, 42.462620, 27.228909>,  <35.776085, 42.407921, 27.322287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161167, 42.462620, 27.228909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240147, -0.829317, 0.504542,
		-0.124604, -0.541787, -0.831228,
		0.962706, 0.136749, -0.233445,
		36.449978, 42.503643, 27.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020023, 41.748558, 27.109499>,  <35.776085, 42.407921, 27.322287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020023, 41.748558, 27.109499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335396, 41.967342, 27.222076>,  <36.524620, 42.098614, 27.289623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335396, 41.967342, 27.222076>,  <36.020023, 41.748558, 27.109499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335396, 41.967342, 27.222076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299971, -0.741331, 0.600372,
		0.537022, -0.388927, -0.748561,
		0.788432, 0.546959, 0.281444,
		36.571926, 42.131432, 27.306509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574093, 41.334217, 27.006468>,  <36.020023, 41.748558, 27.109499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574093, 41.334217, 27.006468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704185, 41.594879, 27.280571>,  <36.782242, 41.751274, 27.445032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704185, 41.594879, 27.280571>,  <36.574093, 41.334217, 27.006468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704185, 41.594879, 27.280571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549126, -0.720100, 0.424166,
		0.769861, 0.238340, -0.592037,
		0.325230, 0.651652, 0.685256,
		36.801754, 41.790375, 27.486147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295555, 41.108730, 27.104094>,  <36.574093, 41.334217, 27.006468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295555, 41.108730, 27.104094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198746, 41.325821, 27.425808>,  <37.140659, 41.456074, 27.618837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198746, 41.325821, 27.425808>,  <37.295555, 41.108730, 27.104094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198746, 41.325821, 27.425808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476614, -0.655530, 0.585764,
		0.845142, 0.525102, -0.100016,
		-0.242022, 0.542723, 0.804287,
		37.126141, 41.488636, 27.667093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920742, 41.103256, 27.613230>,  <37.295555, 41.108730, 27.104094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920742, 41.103256, 27.613230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589298, 41.175854, 27.825068>,  <37.390434, 41.219414, 27.952171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589298, 41.175854, 27.825068>,  <37.920742, 41.103256, 27.613230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589298, 41.175854, 27.825068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232984, -0.748381, 0.621002,
		0.509050, 0.637953, 0.577827,
		-0.828605, 0.181497, 0.529596,
		37.340717, 41.230305, 27.983946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072807, 41.005611, 28.313505>,  <37.920742, 41.103256, 27.613230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072807, 41.005611, 28.313505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673515, 41.011150, 28.336617>,  <37.433941, 41.014473, 28.350483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673515, 41.011150, 28.336617>,  <38.072807, 41.005611, 28.313505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673515, 41.011150, 28.336617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039259, -0.576206, 0.816361,
		0.044593, 0.817187, 0.574645,
		-0.998233, 0.013844, 0.057777,
		37.374046, 41.015305, 28.353951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905094, 41.141617, 28.970398>,  <38.072807, 41.005611, 28.313505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905094, 41.141617, 28.970398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580921, 40.940483, 28.850161>,  <37.386417, 40.819801, 28.778019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580921, 40.940483, 28.850161>,  <37.905094, 41.141617, 28.970398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580921, 40.940483, 28.850161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089228, -0.613068, 0.784975,
		-0.578995, 0.609350, 0.541718,
		-0.810434, -0.502833, -0.300592,
		37.337791, 40.789635, 28.759983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435165, 41.000404, 29.568880>,  <37.905094, 41.141617, 28.970398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435165, 41.000404, 29.568880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311131, 40.724308, 29.307375>,  <37.236710, 40.558651, 29.150471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311131, 40.724308, 29.307375>,  <37.435165, 41.000404, 29.568880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311131, 40.724308, 29.307375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088682, -0.663662, 0.742758,
		-0.946563, 0.288296, 0.144580,
		-0.310086, -0.690246, -0.653764,
		37.218105, 40.517235, 29.111246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835258, 40.710819, 29.810066>,  <37.435165, 41.000404, 29.568880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835258, 40.710819, 29.810066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937366, 40.431534, 29.542534>,  <36.998631, 40.263962, 29.382013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937366, 40.431534, 29.542534>,  <36.835258, 40.710819, 29.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937366, 40.431534, 29.542534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130329, -0.710285, 0.691744,
		-0.958046, -0.089412, -0.272310,
		0.255268, -0.698213, -0.668833,
		37.013947, 40.222069, 29.341885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281063, 40.281418, 29.724785>,  <36.835258, 40.710819, 29.810066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281063, 40.281418, 29.724785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584274, 40.064594, 29.579697>,  <36.766201, 39.934502, 29.492643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584274, 40.064594, 29.579697>,  <36.281063, 40.281418, 29.724785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584274, 40.064594, 29.579697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248393, -0.754146, 0.607919,
		-0.603070, -0.370724, -0.706308,
		0.758029, -0.542059, -0.362718,
		36.811684, 39.901978, 29.470881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013363, 39.594345, 29.558542>,  <36.281063, 40.281418, 29.724785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013363, 39.594345, 29.558542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408695, 39.535957, 29.575920>,  <36.645897, 39.500923, 29.586348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408695, 39.535957, 29.575920>,  <36.013363, 39.594345, 29.558542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408695, 39.535957, 29.575920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150937, -0.900693, 0.407394,
		-0.020337, -0.409199, -0.912219,
		0.988334, -0.145972, 0.043446,
		36.705196, 39.492165, 29.588953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123314, 38.959072, 29.282978>,  <36.013363, 39.594345, 29.558542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123314, 38.959072, 29.282978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443443, 39.037498, 29.509617>,  <36.635521, 39.084557, 29.645599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443443, 39.037498, 29.509617>,  <36.123314, 38.959072, 29.282978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443443, 39.037498, 29.509617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098662, -0.889067, 0.447019,
		0.591389, -0.413663, -0.692201,
		0.800328, 0.196068, 0.566598,
		36.683540, 39.096317, 29.679596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540794, 38.373917, 29.338242>,  <36.123314, 38.959072, 29.282978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540794, 38.373917, 29.338242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639038, 38.589317, 29.660656>,  <36.697983, 38.718555, 29.854105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639038, 38.589317, 29.660656>,  <36.540794, 38.373917, 29.338242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639038, 38.589317, 29.660656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210953, -0.781886, 0.586646,
		0.946136, -0.314122, -0.078441,
		0.245611, 0.538499, 0.806036,
		36.712723, 38.750866, 29.902468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943375, 37.979919, 29.742907>,  <36.540794, 38.373917, 29.338242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943375, 37.979919, 29.742907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847507, 38.252396, 30.019613>,  <36.789986, 38.415882, 30.185637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847507, 38.252396, 30.019613>,  <36.943375, 37.979919, 29.742907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847507, 38.252396, 30.019613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155946, -0.730292, 0.665097,
		0.958248, 0.051526, 0.281259,
		-0.239671, 0.681189, 0.691765,
		36.775604, 38.456753, 30.227142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363182, 37.892105, 30.349894>,  <36.943375, 37.979919, 29.742907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363182, 37.892105, 30.349894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029560, 38.072624, 30.476814>,  <36.829388, 38.180935, 30.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029560, 38.072624, 30.476814>,  <37.363182, 37.892105, 30.349894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029560, 38.072624, 30.476814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127947, -0.717711, 0.684485,
		0.536640, 0.530300, 0.656353,
		-0.834055, 0.451300, 0.317302,
		36.779343, 38.208015, 30.572004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395241, 37.901283, 31.108187>,  <37.363182, 37.892105, 30.349894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395241, 37.901283, 31.108187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016796, 37.961979, 30.993755>,  <36.789730, 37.998394, 30.925097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016796, 37.961979, 30.993755>,  <37.395241, 37.901283, 31.108187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016796, 37.961979, 30.993755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317894, -0.603534, 0.731225,
		-0.061704, 0.782766, 0.619249,
		-0.946116, 0.151737, -0.286077,
		36.732960, 38.007500, 30.907932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040108, 37.730503, 31.694843>,  <37.395241, 37.901283, 31.108187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040108, 37.730503, 31.694843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744572, 37.750839, 31.426060>,  <36.567249, 37.763039, 31.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744572, 37.750839, 31.426060>,  <37.040108, 37.730503, 31.694843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744572, 37.750839, 31.426060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563077, -0.594384, 0.574154,
		-0.370212, 0.802573, 0.467781,
		-0.738842, 0.050838, -0.671958,
		36.522919, 37.766090, 31.224472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450790, 38.006149, 32.010338>,  <37.040108, 37.730503, 31.694843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450790, 38.006149, 32.010338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344978, 37.764160, 31.709930>,  <36.281490, 37.618969, 31.529686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344978, 37.764160, 31.709930>,  <36.450790, 38.006149, 32.010338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344978, 37.764160, 31.709930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560650, -0.537165, 0.630179,
		-0.784662, 0.587762, -0.197080,
		-0.264531, -0.604970, -0.751022,
		36.265617, 37.582668, 31.484623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749348, 37.812878, 32.071602>,  <36.450790, 38.006149, 32.010338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749348, 37.812878, 32.071602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869743, 37.524059, 31.822424>,  <35.941982, 37.350769, 31.672916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869743, 37.524059, 31.822424>,  <35.749348, 37.812878, 32.071602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869743, 37.524059, 31.822424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592175, -0.653546, 0.471387,
		-0.747485, 0.227009, -0.624286,
		0.300990, -0.722041, -0.622945,
		35.960041, 37.307446, 31.635540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132378, 37.360802, 31.884441>,  <35.749348, 37.812878, 32.071602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132378, 37.360802, 31.884441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434795, 37.126503, 31.767620>,  <35.616245, 36.985924, 31.697527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434795, 37.126503, 31.767620>,  <35.132378, 37.360802, 31.884441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434795, 37.126503, 31.767620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523988, -0.809060, 0.266193,
		-0.392208, -0.048224, -0.918612,
		0.756049, -0.585744, -0.292051,
		35.661610, 36.950779, 31.680004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771496, 36.898388, 31.589767>,  <35.132378, 37.360802, 31.884441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771496, 36.898388, 31.589767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123711, 36.735737, 31.687181>,  <35.335041, 36.638145, 31.745630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123711, 36.735737, 31.687181>,  <34.771496, 36.898388, 31.589767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123711, 36.735737, 31.687181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467456, -0.829974, 0.304349,
		0.078371, -0.381832, -0.920903,
		0.880536, -0.406629, 0.243536,
		35.387871, 36.613747, 31.760242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668423, 36.083389, 31.320864>,  <34.771496, 36.898388, 31.589767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668423, 36.083389, 31.320864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981529, 36.102673, 31.569040>,  <35.169395, 36.114243, 31.717947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981529, 36.102673, 31.569040>,  <34.668423, 36.083389, 31.320864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981529, 36.102673, 31.569040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369643, -0.766043, 0.525872,
		0.500635, -0.640979, -0.581817,
		0.782770, 0.048205, 0.620441,
		35.216362, 36.117134, 31.755173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782375, 35.377209, 31.483591>,  <34.668423, 36.083389, 31.320864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782375, 35.377209, 31.483591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961380, 35.590195, 31.770985>,  <35.068783, 35.717987, 31.943420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961380, 35.590195, 31.770985>,  <34.782375, 35.377209, 31.483591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961380, 35.590195, 31.770985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318913, -0.655575, 0.684482,
		0.835483, -0.535444, -0.123564,
		0.447507, 0.532466, 0.718482,
		35.095631, 35.749935, 31.986528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197319, 34.917603, 31.878912>,  <34.782375, 35.377209, 31.483591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197319, 34.917603, 31.878912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104679, 35.237251, 32.100819>,  <35.049095, 35.429039, 32.233963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104679, 35.237251, 32.100819>,  <35.197319, 34.917603, 31.878912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104679, 35.237251, 32.100819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273842, -0.600767, 0.751059,
		0.933474, 0.022025, 0.357969,
		-0.231598, 0.799121, 0.554769,
		35.035198, 35.476986, 32.267250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416931, 34.765049, 32.584061>,  <35.197319, 34.917603, 31.878912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416931, 34.765049, 32.584061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136551, 35.050289, 32.589119>,  <34.968323, 35.221432, 32.592155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136551, 35.050289, 32.589119>,  <35.416931, 34.765049, 32.584061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136551, 35.050289, 32.589119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398900, -0.406680, 0.821882,
		0.591228, 0.571051, 0.569517,
		-0.700948, 0.713100, 0.012648,
		34.926266, 35.264221, 32.592915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355469, 34.824959, 33.224907>,  <35.416931, 34.765049, 32.584061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355469, 34.824959, 33.224907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043434, 35.063305, 33.148579>,  <34.856213, 35.206314, 33.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043434, 35.063305, 33.148579>,  <35.355469, 34.824959, 33.224907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043434, 35.063305, 33.148579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490159, -0.392465, 0.778277,
		0.388859, 0.700654, 0.598225,
		-0.780085, 0.595866, -0.190818,
		34.809410, 35.242065, 33.091331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185616, 35.185116, 33.834438>,  <35.355469, 34.824959, 33.224907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185616, 35.185116, 33.834438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860279, 35.148262, 33.604660>,  <34.665077, 35.126152, 33.466793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860279, 35.148262, 33.604660>,  <35.185616, 35.185116, 33.834438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860279, 35.148262, 33.604660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497838, -0.400715, 0.769145,
		-0.301051, 0.911559, 0.280052,
		-0.813342, -0.092131, -0.574445,
		34.616276, 35.120621, 33.432327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701065, 35.302658, 34.293121>,  <35.185616, 35.185116, 33.834438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701065, 35.302658, 34.293121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523350, 35.107021, 33.992882>,  <34.416721, 34.989639, 33.812737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523350, 35.107021, 33.992882>,  <34.701065, 35.302658, 34.293121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523350, 35.107021, 33.992882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438374, -0.611990, 0.658253,
		-0.781303, 0.621497, 0.057496,
		-0.444290, -0.489090, -0.750598,
		34.390064, 34.960293, 33.767704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347706, 35.641945, 34.460571>,  <34.701065, 35.302658, 34.293121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347706, 35.641945, 34.460571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681622, 35.660866, 34.679981>,  <35.881973, 35.672218, 34.811626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681622, 35.660866, 34.679981>,  <35.347706, 35.641945, 34.460571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681622, 35.660866, 34.679981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176216, 0.920935, -0.347602,
		-0.521601, 0.386835, 0.760455,
		0.834794, 0.047305, 0.548527,
		35.932060, 35.675056, 34.844540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343250, 36.263493, 34.655960>,  <35.347706, 35.641945, 34.460571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343250, 36.263493, 34.655960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720673, 36.152290, 34.727985>,  <35.947124, 36.085571, 34.771202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720673, 36.152290, 34.727985>,  <35.343250, 36.263493, 34.655960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720673, 36.152290, 34.727985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329389, 0.844687, -0.421908,
		-0.034807, 0.457404, 0.888578,
		0.943553, -0.278002, 0.180065,
		36.003738, 36.068890, 34.782005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571316, 36.867027, 34.646137>,  <35.343250, 36.263493, 34.655960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571316, 36.867027, 34.646137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908695, 36.653946, 34.618355>,  <36.111122, 36.526096, 34.601685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908695, 36.653946, 34.618355>,  <35.571316, 36.867027, 34.646137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908695, 36.653946, 34.618355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412094, 0.724515, -0.552500,
		0.344643, 0.437381, 0.830614,
		0.843445, -0.532707, -0.069457,
		36.161728, 36.494133, 34.597519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096786, 37.101837, 35.082207>,  <35.571316, 36.867027, 34.646137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096786, 37.101837, 35.082207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242775, 36.923798, 34.755116>,  <36.330368, 36.816975, 34.558861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242775, 36.923798, 34.755116>,  <36.096786, 37.101837, 35.082207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242775, 36.923798, 34.755116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433682, 0.858484, -0.273725,
		0.823842, -0.254732, 0.506356,
		0.364972, -0.445103, -0.817728,
		36.352268, 36.790268, 34.509796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835361, 37.312065, 35.081425>,  <36.096786, 37.101837, 35.082207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835361, 37.312065, 35.081425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780403, 37.165028, 34.713512>,  <36.747429, 37.076805, 34.492764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780403, 37.165028, 34.713512>,  <36.835361, 37.312065, 35.081425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780403, 37.165028, 34.713512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620149, 0.692144, -0.369257,
		0.772357, -0.621137, 0.132862,
		-0.137399, -0.367593, -0.919781,
		36.739182, 37.054749, 34.437576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501102, 37.359818, 34.639027>,  <36.835361, 37.312065, 35.081425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501102, 37.359818, 34.639027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221989, 37.318092, 34.355556>,  <37.054520, 37.293056, 34.185474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221989, 37.318092, 34.355556>,  <37.501102, 37.359818, 34.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221989, 37.318092, 34.355556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431414, 0.728576, -0.532033,
		0.571820, -0.676975, -0.463387,
		-0.697785, -0.104315, -0.708671,
		37.012653, 37.286797, 34.142956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885769, 37.454910, 33.959087>,  <37.501102, 37.359818, 34.639027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885769, 37.454910, 33.959087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496998, 37.478359, 33.867947>,  <37.263737, 37.492428, 33.813263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496998, 37.478359, 33.867947>,  <37.885769, 37.454910, 33.959087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496998, 37.478359, 33.867947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213082, 0.629945, -0.746837,
		0.099751, -0.774424, -0.624754,
		-0.971929, 0.058626, -0.227854,
		37.205418, 37.495949, 33.799591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822678, 37.341988, 33.211861>,  <37.885769, 37.454910, 33.959087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822678, 37.341988, 33.211861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531498, 37.571194, 33.362457>,  <37.356792, 37.708717, 33.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531498, 37.571194, 33.362457>,  <37.822678, 37.341988, 33.211861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531498, 37.571194, 33.362457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189588, 0.695928, -0.692634,
		-0.658902, -0.432821, -0.615235,
		-0.727945, 0.573019, 0.376490,
		37.313114, 37.743099, 33.475403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581802, 37.754211, 32.634857>,  <37.822678, 37.341988, 33.211861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581802, 37.754211, 32.634857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409378, 37.948746, 32.938873>,  <37.305923, 38.065468, 33.121284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409378, 37.948746, 32.938873>,  <37.581802, 37.754211, 32.634857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409378, 37.948746, 32.938873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036218, 0.850965, -0.523972,
		-0.901597, -0.198334, -0.384429,
		-0.431057, 0.486335, 0.760045,
		37.280060, 38.094646, 33.166885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199654, 38.319305, 32.293644>,  <37.581802, 37.754211, 32.634857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199654, 38.319305, 32.293644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238983, 38.434574, 32.674652>,  <37.262581, 38.503735, 32.903255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238983, 38.434574, 32.674652>,  <37.199654, 38.319305, 32.293644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238983, 38.434574, 32.674652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219743, 0.927241, -0.303211,
		-0.970591, 0.239121, 0.027842,
		0.098321, 0.288176, 0.952517,
		37.268478, 38.521027, 32.960407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717468, 38.819473, 32.373615>,  <37.199654, 38.319305, 32.293644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717468, 38.819473, 32.373615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001068, 38.891491, 32.646351>,  <37.171230, 38.934704, 32.809990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001068, 38.891491, 32.646351>,  <36.717468, 38.819473, 32.373615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001068, 38.891491, 32.646351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125165, 0.919381, -0.372924,
		-0.694009, 0.349746, 0.629308,
		0.709003, 0.180046, 0.681835,
		37.213768, 38.945503, 32.850903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585129, 39.538677, 32.578392>,  <36.717468, 38.819473, 32.373615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585129, 39.538677, 32.578392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962559, 39.441422, 32.668331>,  <37.189014, 39.383068, 32.722294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962559, 39.441422, 32.668331>,  <36.585129, 39.538677, 32.578392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962559, 39.441422, 32.668331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294908, 0.925801, -0.236478,
		-0.150671, 0.289445, 0.945262,
		0.943572, -0.243135, 0.224851,
		37.245628, 39.368481, 32.735786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831604, 39.949257, 33.155602>,  <36.585129, 39.538677, 32.578392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831604, 39.949257, 33.155602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153103, 39.828503, 32.950527>,  <37.346004, 39.756050, 32.827480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153103, 39.828503, 32.950527>,  <36.831604, 39.949257, 33.155602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153103, 39.828503, 32.950527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128148, 0.929324, -0.346318,
		0.581002, 0.212653, 0.785631,
		0.803751, -0.301888, -0.512688,
		37.394230, 39.737938, 32.796722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297726, 40.403881, 33.241516>,  <36.831604, 39.949257, 33.155602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297726, 40.403881, 33.241516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440277, 40.223427, 32.914230>,  <37.525806, 40.115154, 32.717857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440277, 40.223427, 32.914230>,  <37.297726, 40.403881, 33.241516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440277, 40.223427, 32.914230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204512, 0.892138, -0.402820,
		0.911686, -0.023779, 0.410199,
		0.356376, -0.451136, -0.818213,
		37.547192, 40.088085, 32.668766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920708, 40.818687, 33.142807>,  <37.297726, 40.403881, 33.241516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920708, 40.818687, 33.142807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828224, 40.618717, 32.808952>,  <37.772732, 40.498734, 32.608639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828224, 40.618717, 32.808952>,  <37.920708, 40.818687, 33.142807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828224, 40.618717, 32.808952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352998, 0.756312, -0.550803,
		0.906606, -0.421976, 0.001607,
		-0.231211, -0.499929, -0.834633,
		37.758862, 40.468739, 32.558563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504002, 40.787914, 32.750416>,  <37.920708, 40.818687, 33.142807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504002, 40.787914, 32.750416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215923, 40.727127, 32.479645>,  <38.043076, 40.690655, 32.317184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215923, 40.727127, 32.479645>,  <38.504002, 40.787914, 32.750416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215923, 40.727127, 32.479645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453396, 0.635427, -0.625032,
		0.525119, -0.757059, -0.388729,
		-0.720195, -0.151968, -0.676923,
		37.999866, 40.681538, 32.276569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873325, 40.843124, 32.146133>,  <38.504002, 40.787914, 32.750416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873325, 40.843124, 32.146133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490513, 40.858952, 32.031223>,  <38.260826, 40.868446, 31.962278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490513, 40.858952, 32.031223>,  <38.873325, 40.843124, 32.146133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490513, 40.858952, 32.031223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249061, 0.619551, -0.744396,
		0.148527, -0.783958, -0.602784,
		-0.957031, 0.039568, -0.287273,
		38.203403, 40.870823, 31.945042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875286, 40.620644, 31.519157>,  <38.873325, 40.843124, 32.146133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875286, 40.620644, 31.519157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542553, 40.836182, 31.572372>,  <38.342915, 40.965504, 31.604301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542553, 40.836182, 31.572372>,  <38.875286, 40.620644, 31.519157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542553, 40.836182, 31.572372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218151, 0.537821, -0.814346,
		-0.510356, -0.648378, -0.564927,
		-0.831834, 0.538846, 0.133036,
		38.293003, 40.997837, 31.612284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525814, 40.612038, 30.849066>,  <38.875286, 40.620644, 31.519157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525814, 40.612038, 30.849066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370502, 40.931152, 31.033577>,  <38.277313, 41.122620, 31.144283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370502, 40.931152, 31.033577>,  <38.525814, 40.612038, 30.849066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370502, 40.931152, 31.033577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150017, 0.548595, -0.822519,
		-0.909248, -0.250170, -0.332691,
		-0.388282, 0.797783, 0.461279,
		38.254017, 41.170486, 31.171961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074482, 40.962357, 30.283203>,  <38.525814, 40.612038, 30.849066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074482, 40.962357, 30.283203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122662, 41.244534, 30.562588>,  <38.151569, 41.413841, 30.730219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122662, 41.244534, 30.562588>,  <38.074482, 40.962357, 30.283203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122662, 41.244534, 30.562588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108209, 0.690060, -0.715617,
		-0.986805, 0.161772, 0.006779,
		0.120445, 0.705441, 0.698460,
		38.158794, 41.456165, 30.772125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490696, 41.456951, 30.209093>,  <38.074482, 40.962357, 30.283203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490696, 41.456951, 30.209093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792557, 41.635590, 30.401365>,  <37.973671, 41.742771, 30.516729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792557, 41.635590, 30.401365>,  <37.490696, 41.456951, 30.209093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792557, 41.635590, 30.401365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032485, 0.706275, -0.707192,
		-0.655323, 0.549298, 0.518482,
		0.754650, 0.446596, 0.480682,
		38.018951, 41.769569, 30.545570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290737, 42.128490, 30.181166>,  <37.490696, 41.456951, 30.209093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290737, 42.128490, 30.181166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676777, 42.151016, 30.283464>,  <37.908401, 42.164532, 30.344845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676777, 42.151016, 30.283464>,  <37.290737, 42.128490, 30.181166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676777, 42.151016, 30.283464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115092, 0.786019, -0.607394,
		-0.235228, 0.615632, 0.752107,
		0.965102, 0.056315, 0.255748,
		37.966309, 42.167912, 30.360189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412987, 42.848728, 30.079491>,  <37.290737, 42.128490, 30.181166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412987, 42.848728, 30.079491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788467, 42.711288, 30.090618>,  <38.013756, 42.628826, 30.097294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788467, 42.711288, 30.090618>,  <37.412987, 42.848728, 30.079491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788467, 42.711288, 30.090618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270708, 0.684789, -0.676595,
		0.213430, 0.642653, 0.735830,
		0.938704, -0.343600, 0.027817,
		38.070080, 42.608208, 30.098963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878300, 43.492191, 30.099525>,  <37.412987, 42.848728, 30.079491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878300, 43.492191, 30.099525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073738, 43.174530, 29.954977>,  <38.191002, 42.983932, 29.868248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073738, 43.174530, 29.954977>,  <37.878300, 43.492191, 30.099525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073738, 43.174530, 29.954977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266118, 0.530079, -0.805107,
		0.830938, 0.297203, 0.470333,
		0.488594, -0.794158, -0.361372,
		38.220318, 42.936283, 29.846565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550232, 43.743587, 29.794979>,  <37.878300, 43.492191, 30.099525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550232, 43.743587, 29.794979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517811, 43.379829, 29.631794>,  <38.498356, 43.161575, 29.533882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517811, 43.379829, 29.631794>,  <38.550232, 43.743587, 29.794979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517811, 43.379829, 29.631794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356580, 0.355762, -0.863878,
		0.930742, -0.215492, 0.295436,
		-0.081054, -0.909394, -0.407963,
		38.493496, 43.107010, 29.509405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245071, 43.603703, 29.404142>,  <38.550232, 43.743587, 29.794979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245071, 43.603703, 29.404142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967148, 43.370342, 29.235910>,  <38.800392, 43.230328, 29.134972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967148, 43.370342, 29.235910>,  <39.245071, 43.603703, 29.404142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967148, 43.370342, 29.235910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425772, 0.137634, -0.894301,
		0.579619, -0.800440, 0.152765,
		-0.694809, -0.583397, -0.420581,
		38.758705, 43.195324, 29.109735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606552, 43.125664, 29.017881>,  <39.245071, 43.603703, 29.404142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606552, 43.125664, 29.017881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235729, 43.149284, 28.869787>,  <39.013233, 43.163456, 28.780931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235729, 43.149284, 28.869787>,  <39.606552, 43.125664, 29.017881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235729, 43.149284, 28.869787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373351, 0.055318, -0.926040,
		-0.034205, -0.996721, -0.073330,
		-0.927059, 0.059053, -0.370234,
		38.957611, 43.167000, 28.758717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777515, 42.887611, 28.446531>,  <39.606552, 43.125664, 29.017881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777515, 42.887611, 28.446531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407135, 43.036079, 28.418686>,  <39.184906, 43.125160, 28.401979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407135, 43.036079, 28.418686>,  <39.777515, 42.887611, 28.446531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407135, 43.036079, 28.418686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155492, 0.206738, -0.965961,
		-0.344141, -0.905260, -0.249143,
		-0.925953, 0.371166, -0.069614,
		39.129349, 43.147430, 28.397802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464725, 42.485126, 27.904835>,  <39.777515, 42.887611, 28.446531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464725, 42.485126, 27.904835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275639, 42.837177, 27.922396>,  <39.162186, 43.048409, 27.932932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275639, 42.837177, 27.922396>,  <39.464725, 42.485126, 27.904835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275639, 42.837177, 27.922396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177652, 0.143975, -0.973505,
		-0.863124, -0.452389, -0.224414,
		-0.472712, 0.880123, 0.043901,
		39.133823, 43.101215, 27.935566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040836, 42.462662, 27.337084>,  <39.464725, 42.485126, 27.904835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040836, 42.462662, 27.337084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078465, 42.845318, 27.447353>,  <39.101040, 43.074909, 27.513515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078465, 42.845318, 27.447353>,  <39.040836, 42.462662, 27.337084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078465, 42.845318, 27.447353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203962, 0.252512, -0.945853,
		-0.974449, 0.145204, -0.171364,
		0.094070, 0.956637, 0.275676,
		39.106686, 43.132309, 27.530056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659084, 42.853405, 26.810017>,  <39.040836, 42.462662, 27.337084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659084, 42.853405, 26.810017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902283, 43.114273, 26.991131>,  <39.048203, 43.270794, 27.099798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902283, 43.114273, 26.991131>,  <38.659084, 42.853405, 26.810017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902283, 43.114273, 26.991131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206512, 0.420763, -0.883352,
		-0.766612, 0.630579, 0.121141,
		0.607995, 0.652172, 0.452784,
		39.084682, 43.309925, 27.126966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379250, 43.456146, 26.630287>,  <38.659084, 42.853405, 26.810017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379250, 43.456146, 26.630287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753254, 43.536396, 26.747252>,  <38.977657, 43.584545, 26.817430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753254, 43.536396, 26.747252>,  <38.379250, 43.456146, 26.630287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753254, 43.536396, 26.747252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196153, 0.394341, -0.897786,
		-0.295430, 0.896796, 0.329359,
		0.935011, 0.200628, 0.292409,
		39.033756, 43.596584, 26.834974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492256, 44.134304, 26.516352>,  <38.379250, 43.456146, 26.630287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492256, 44.134304, 26.516352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857903, 43.972130, 26.514793>,  <39.077290, 43.874825, 26.513859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857903, 43.972130, 26.514793>,  <38.492256, 44.134304, 26.516352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857903, 43.972130, 26.514793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147415, 0.341281, -0.928330,
		0.377711, 0.848025, 0.371737,
		0.914113, -0.405440, -0.003893,
		39.132137, 43.850498, 26.513626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931843, 44.625015, 26.092392>,  <38.492256, 44.134304, 26.516352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931843, 44.625015, 26.092392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109516, 44.266647, 26.090067>,  <39.216118, 44.051628, 26.088671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109516, 44.266647, 26.090067>,  <38.931843, 44.625015, 26.092392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109516, 44.266647, 26.090067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151287, 0.081398, -0.985133,
		0.883072, 0.436696, 0.171696,
		0.444179, -0.895919, -0.005814,
		39.242771, 43.997871, 26.088322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480957, 44.735920, 25.667854>,  <38.931843, 44.625015, 26.092392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480957, 44.735920, 25.667854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453125, 44.337006, 25.677561>,  <39.436428, 44.097656, 25.683384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453125, 44.337006, 25.677561>,  <39.480957, 44.735920, 25.667854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453125, 44.337006, 25.677561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251114, -0.041049, -0.967087,
		0.965454, -0.061192, 0.253287,
		-0.069575, -0.997282, 0.024265,
		39.432251, 44.037823, 25.684841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049187, 44.549500, 25.368282>,  <39.480957, 44.735920, 25.667854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049187, 44.549500, 25.368282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832035, 44.214714, 25.340628>,  <39.701744, 44.013844, 25.324036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832035, 44.214714, 25.340628>,  <40.049187, 44.549500, 25.368282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832035, 44.214714, 25.340628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252707, -0.084294, -0.963864,
		0.800887, -0.540735, 0.257267,
		-0.542881, -0.836959, -0.069137,
		39.669170, 43.963627, 25.319887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541954, 44.142757, 25.074123>,  <40.049187, 44.549500, 25.368282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541954, 44.142757, 25.074123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162151, 44.027199, 25.025167>,  <39.934269, 43.957863, 24.995794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162151, 44.027199, 25.025167>,  <40.541954, 44.142757, 25.074123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162151, 44.027199, 25.025167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153103, -0.086137, -0.984449,
		0.273866, -0.953476, 0.126019,
		-0.949504, -0.288901, -0.122390,
		39.877300, 43.940529, 24.988451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629585, 43.512592, 24.680387>,  <40.541954, 44.142757, 25.074123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629585, 43.512592, 24.680387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261566, 43.656075, 24.617340>,  <40.040756, 43.742165, 24.579512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261566, 43.656075, 24.617340>,  <40.629585, 43.512592, 24.680387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261566, 43.656075, 24.617340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170778, 0.005078, -0.985296,
		-0.352635, -0.933435, -0.065932,
		-0.920045, 0.358710, -0.157620,
		39.985554, 43.763687, 24.570055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576378, 43.395569, 23.921707>,  <40.629585, 43.512592, 24.680387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576378, 43.395569, 23.921707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810001, 43.162521, 23.695635>,  <40.950176, 43.022694, 23.559992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810001, 43.162521, 23.695635>,  <40.576378, 43.395569, 23.921707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810001, 43.162521, 23.695635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133230, -0.618033, 0.774781,
		-0.800705, -0.527814, -0.283343,
		0.584055, -0.582621, -0.565183,
		40.985218, 42.987736, 23.526079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345406, 42.689690, 23.951967>,  <40.576378, 43.395569, 23.921707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345406, 42.689690, 23.951967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740963, 42.692440, 23.892591>,  <40.978298, 42.694092, 23.856966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740963, 42.692440, 23.892591>,  <40.345406, 42.689690, 23.951967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740963, 42.692440, 23.892591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112439, -0.687753, 0.717184,
		-0.097156, -0.725912, -0.680891,
		0.988898, 0.006880, -0.148440,
		41.037632, 42.694504, 23.848059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484653, 42.044258, 24.038925>,  <40.345406, 42.689690, 23.951967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484653, 42.044258, 24.038925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833626, 42.235462, 24.079660>,  <41.043011, 42.350185, 24.104101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833626, 42.235462, 24.079660>,  <40.484653, 42.044258, 24.038925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833626, 42.235462, 24.079660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285219, -0.667165, 0.688143,
		0.396883, -0.571310, -0.718393,
		0.872430, 0.478012, 0.101838,
		41.095356, 42.378864, 24.110212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976532, 41.553745, 23.910126>,  <40.484653, 42.044258, 24.038925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976532, 41.553745, 23.910126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123363, 41.849075, 24.136448>,  <41.211460, 42.026272, 24.272242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123363, 41.849075, 24.136448>,  <40.976532, 41.553745, 23.910126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123363, 41.849075, 24.136448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173352, -0.651912, 0.738214,
		0.913895, -0.172898, -0.367291,
		0.367077, 0.738321, 0.565807,
		41.233486, 42.070572, 24.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419086, 41.218971, 24.237900>,  <40.976532, 41.553745, 23.910126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419086, 41.218971, 24.237900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357372, 41.554123, 24.447342>,  <41.320343, 41.755215, 24.573008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357372, 41.554123, 24.447342>,  <41.419086, 41.218971, 24.237900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357372, 41.554123, 24.447342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152664, -0.503369, 0.850478,
		0.976161, 0.211149, -0.050253,
		-0.154282, 0.837876, 0.523604,
		41.311089, 41.805485, 24.604424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894371, 41.196445, 24.702744>,  <41.419086, 41.218971, 24.237900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894371, 41.196445, 24.702744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674313, 41.499527, 24.843163>,  <41.542278, 41.681374, 24.927414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674313, 41.499527, 24.843163>,  <41.894371, 41.196445, 24.702744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674313, 41.499527, 24.843163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004694, -0.423177, 0.906035,
		0.835058, 0.496799, 0.236364,
		-0.550141, 0.757702, 0.351045,
		41.509270, 41.726837, 24.948477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164227, 41.512753, 25.354486>,  <41.894371, 41.196445, 24.702744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164227, 41.512753, 25.354486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769985, 41.579571, 25.364944>,  <41.533440, 41.619663, 25.371220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769985, 41.579571, 25.364944>,  <42.164227, 41.512753, 25.354486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769985, 41.579571, 25.364944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055744, -0.467026, 0.882484,
		0.159626, 0.868321, 0.469614,
		-0.985602, 0.167046, 0.026146,
		41.474304, 41.629684, 25.372787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075237, 41.819424, 25.992411>,  <42.164227, 41.512753, 25.354486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075237, 41.819424, 25.992411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693703, 41.715275, 25.932550>,  <41.464783, 41.652786, 25.896633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693703, 41.715275, 25.932550>,  <42.075237, 41.819424, 25.992411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693703, 41.715275, 25.932550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038219, -0.389017, 0.920437,
		-0.297878, 0.883668, 0.361108,
		-0.953838, -0.260377, -0.149653,
		41.407551, 41.637161, 25.887655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721985, 42.114269, 26.502026>,  <42.075237, 41.819424, 25.992411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721985, 42.114269, 26.502026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507690, 41.800510, 26.376997>,  <41.379112, 41.612255, 26.301979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507690, 41.800510, 26.376997>,  <41.721985, 42.114269, 26.502026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507690, 41.800510, 26.376997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064690, -0.330963, 0.941424,
		-0.841903, 0.524576, 0.126566,
		-0.535737, -0.784400, -0.312574,
		41.346970, 41.565189, 26.283224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147694, 42.113125, 27.113520>,  <41.721985, 42.114269, 26.502026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147694, 42.113125, 27.113520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098877, 41.768623, 26.916201>,  <41.069588, 41.561920, 26.797810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098877, 41.768623, 26.916201>,  <41.147694, 42.113125, 27.113520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098877, 41.768623, 26.916201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455183, -0.393095, 0.798928,
		-0.881995, 0.322043, -0.344055,
		-0.122043, -0.861258, -0.493296,
		41.062263, 41.510246, 26.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370750, 41.922726, 27.078428>,  <41.147694, 42.113125, 27.113520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370750, 41.922726, 27.078428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581318, 41.585754, 27.032473>,  <40.707657, 41.383572, 27.004900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581318, 41.585754, 27.032473>,  <40.370750, 41.922726, 27.078428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581318, 41.585754, 27.032473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244330, -0.279316, 0.928593,
		-0.814362, -0.460758, -0.352868,
		0.526419, -0.842427, -0.114887,
		40.739243, 41.333027, 26.998007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904919, 41.472607, 27.435732>,  <40.370750, 41.922726, 27.078428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904919, 41.472607, 27.435732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237453, 41.257488, 27.379662>,  <40.436974, 41.128418, 27.346020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237453, 41.257488, 27.379662>,  <39.904919, 41.472607, 27.435732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237453, 41.257488, 27.379662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128834, -0.431838, 0.892702,
		-0.540628, -0.724078, -0.428290,
		0.831338, -0.537798, -0.140178,
		40.486855, 41.096149, 27.337608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691811, 40.737106, 27.475264>,  <39.904919, 41.472607, 27.435732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691811, 40.737106, 27.475264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082584, 40.758369, 27.557987>,  <40.317047, 40.771126, 27.607622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082584, 40.758369, 27.557987>,  <39.691811, 40.737106, 27.475264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082584, 40.758369, 27.557987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131948, -0.611198, 0.780401,
		0.167886, -0.789690, -0.590088,
		0.976936, 0.053158, 0.206810,
		40.375664, 40.774315, 27.620029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787960, 40.086979, 27.747950>,  <39.691811, 40.737106, 27.475264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787960, 40.086979, 27.747950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091869, 40.311337, 27.879494>,  <40.274216, 40.445950, 27.958420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091869, 40.311337, 27.879494>,  <39.787960, 40.086979, 27.747950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091869, 40.311337, 27.879494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085265, -0.415471, 0.905602,
		0.644576, -0.716090, -0.267838,
		0.759771, 0.560892, 0.328859,
		40.319801, 40.479603, 27.978151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326828, 39.613785, 28.051018>,  <39.787960, 40.086979, 27.747950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326828, 39.613785, 28.051018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366745, 39.974777, 28.218620>,  <40.390694, 40.191372, 28.319181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366745, 39.974777, 28.218620>,  <40.326828, 39.613785, 28.051018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366745, 39.974777, 28.218620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099839, -0.409901, 0.906649,
		0.989987, -0.132307, 0.049200,
		0.099789, 0.902483, 0.419006,
		40.396683, 40.245522, 28.344322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869957, 39.500839, 28.619978>,  <40.326828, 39.613785, 28.051018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869957, 39.500839, 28.619978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671848, 39.843540, 28.677490>,  <40.552982, 40.049160, 28.711998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671848, 39.843540, 28.677490>,  <40.869957, 39.500839, 28.619978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671848, 39.843540, 28.677490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214575, -0.281023, 0.935406,
		0.841821, 0.432428, 0.323022,
		-0.495272, 0.856757, 0.143782,
		40.523266, 40.100567, 28.720625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146118, 39.735165, 29.237036>,  <40.869957, 39.500839, 28.619978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146118, 39.735165, 29.237036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817833, 39.963673, 29.233513>,  <40.620861, 40.100777, 29.231400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817833, 39.963673, 29.233513>,  <41.146118, 39.735165, 29.237036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817833, 39.963673, 29.233513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128389, -0.169388, 0.977151,
		0.556726, 0.803093, 0.212364,
		-0.820715, 0.571270, -0.008806,
		40.571617, 40.135056, 29.230871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151611, 40.163578, 29.805309>,  <41.146118, 39.735165, 29.237036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151611, 40.163578, 29.805309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770699, 40.101887, 29.699961>,  <40.542149, 40.064873, 29.636751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770699, 40.101887, 29.699961>,  <41.151611, 40.163578, 29.805309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770699, 40.101887, 29.699961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224925, -0.228655, 0.947167,
		-0.206301, 0.961213, 0.183056,
		-0.952286, -0.154228, -0.263372,
		40.485012, 40.055618, 29.620949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692001, 40.564045, 30.331985>,  <41.151611, 40.163578, 29.805309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692001, 40.564045, 30.331985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474449, 40.266727, 30.176184>,  <40.343918, 40.088337, 30.082703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474449, 40.266727, 30.176184>,  <40.692001, 40.564045, 30.331985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474449, 40.266727, 30.176184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350549, -0.220478, 0.910222,
		-0.762437, 0.631592, -0.140646,
		-0.543879, -0.743291, -0.389505,
		40.311287, 40.043739, 30.059332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085110, 40.609329, 30.650209>,  <40.692001, 40.564045, 30.331985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085110, 40.609329, 30.650209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023102, 40.245743, 30.495419>,  <39.985897, 40.027592, 30.402544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023102, 40.245743, 30.495419>,  <40.085110, 40.609329, 30.650209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023102, 40.245743, 30.495419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346306, -0.316857, 0.882991,
		-0.925224, 0.270897, -0.265659,
		-0.155023, -0.908964, -0.386977,
		39.976593, 39.973053, 30.379326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470455, 40.525642, 31.072767>,  <40.085110, 40.609329, 30.650209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470455, 40.525642, 31.072767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609428, 40.200001, 30.886639>,  <39.692814, 40.004616, 30.774961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609428, 40.200001, 30.886639>,  <39.470455, 40.525642, 31.072767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609428, 40.200001, 30.886639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235314, -0.556051, 0.797141,
		-0.907698, -0.167459, -0.384762,
		0.347436, -0.814104, -0.465321,
		39.713657, 39.955769, 30.747042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855701, 39.962482, 31.088409>,  <39.470455, 40.525642, 31.072767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855701, 39.962482, 31.088409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213219, 39.784309, 31.067556>,  <39.427731, 39.677406, 31.055044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213219, 39.784309, 31.067556>,  <38.855701, 39.962482, 31.088409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213219, 39.784309, 31.067556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279877, -0.644839, 0.711233,
		-0.350420, -0.621108, -0.701021,
		0.893798, -0.445430, -0.052130,
		39.481358, 39.650681, 31.051918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658596, 39.342255, 31.200348>,  <38.855701, 39.962482, 31.088409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658596, 39.342255, 31.200348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051228, 39.318817, 31.273087>,  <39.286808, 39.304756, 31.316729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051228, 39.318817, 31.273087>,  <38.658596, 39.342255, 31.200348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051228, 39.318817, 31.273087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167452, -0.722108, 0.671207,
		0.091983, -0.689294, -0.718619,
		0.981580, -0.058595, 0.181846,
		39.345703, 39.301239, 31.327641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823906, 38.621830, 31.086637>,  <38.658596, 39.342255, 31.200348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823906, 38.621830, 31.086637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123783, 38.773460, 31.303619>,  <39.303711, 38.864437, 31.433809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123783, 38.773460, 31.303619>,  <38.823906, 38.621830, 31.086637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123783, 38.773460, 31.303619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022164, -0.833610, 0.551909,
		0.661411, -0.401741, -0.633356,
		0.749696, 0.379077, 0.542454,
		39.348694, 38.887184, 31.466356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171535, 38.110100, 31.246050>,  <38.823906, 38.621830, 31.086637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171535, 38.110100, 31.246050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305576, 38.373177, 31.515909>,  <39.386002, 38.531021, 31.677824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305576, 38.373177, 31.515909>,  <39.171535, 38.110100, 31.246050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305576, 38.373177, 31.515909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067031, -0.730877, 0.679210,
		0.939794, -0.182383, -0.289004,
		0.335103, 0.657690, 0.674648,
		39.406109, 38.570484, 31.718304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724537, 37.706581, 31.523775>,  <39.171535, 38.110100, 31.246050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724537, 37.706581, 31.523775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620403, 37.978111, 31.798418>,  <39.557922, 38.141029, 31.963203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620403, 37.978111, 31.798418>,  <39.724537, 37.706581, 31.523775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620403, 37.978111, 31.798418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086653, -0.691832, 0.716840,
		0.961623, 0.246111, 0.121283,
		-0.260330, 0.678821, 0.686608,
		39.542305, 38.181759, 32.004402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259705, 37.650139, 32.086704>,  <39.724537, 37.706581, 31.523775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259705, 37.650139, 32.086704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931797, 37.803040, 32.257286>,  <39.735054, 37.894779, 32.359634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931797, 37.803040, 32.257286>,  <40.259705, 37.650139, 32.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931797, 37.803040, 32.257286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081399, -0.659311, 0.747451,
		0.566883, 0.647449, 0.509366,
		-0.819767, 0.382255, 0.426454,
		39.685867, 37.917717, 32.385223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475464, 37.635700, 32.694332>,  <40.259705, 37.650139, 32.086704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475464, 37.635700, 32.694332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077541, 37.666924, 32.720451>,  <39.838787, 37.685658, 32.736122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077541, 37.666924, 32.720451>,  <40.475464, 37.635700, 32.694332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077541, 37.666924, 32.720451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002353, -0.623814, 0.781569,
		0.101744, 0.777665, 0.620392,
		-0.994808, 0.078060, 0.065299,
		39.779099, 37.690342, 32.740040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422337, 37.611000, 33.369019>,  <40.475464, 37.635700, 32.694332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422337, 37.611000, 33.369019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062088, 37.511417, 33.226521>,  <39.845940, 37.451668, 33.141022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062088, 37.511417, 33.226521>,  <40.422337, 37.611000, 33.369019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062088, 37.511417, 33.226521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136270, -0.616589, 0.775402,
		-0.412698, 0.746886, 0.521384,
		-0.900617, -0.248958, -0.356243,
		39.791904, 37.436729, 33.119648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782692, 37.747921, 33.924286>,  <40.422337, 37.611000, 33.369019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782692, 37.747921, 33.924286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677402, 37.465179, 33.661659>,  <39.614231, 37.295536, 33.504086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677402, 37.465179, 33.661659>,  <39.782692, 37.747921, 33.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677402, 37.465179, 33.661659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159095, -0.639439, 0.752201,
		-0.951527, 0.302451, 0.055857,
		-0.263221, -0.706853, -0.656562,
		39.598434, 37.253124, 33.464691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327782, 37.333508, 34.276028>,  <39.782692, 37.747921, 33.924286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327782, 37.333508, 34.276028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410484, 37.099335, 33.962463>,  <39.460106, 36.958832, 33.774323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410484, 37.099335, 33.962463>,  <39.327782, 37.333508, 34.276028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410484, 37.099335, 33.962463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054971, -0.806914, 0.588105,
		-0.976846, -0.078504, -0.199019,
		0.206760, -0.585429, -0.783916,
		39.472511, 36.923706, 33.727287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904102, 36.800083, 34.342110>,  <39.327782, 37.333508, 34.276028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904102, 36.800083, 34.342110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167713, 36.642868, 34.085606>,  <39.325878, 36.548538, 33.931705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167713, 36.642868, 34.085606>,  <38.904102, 36.800083, 34.342110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167713, 36.642868, 34.085606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033151, -0.866949, 0.497293,
		-0.751391, -0.306470, -0.584369,
		0.659024, -0.393034, -0.641258,
		39.365421, 36.524956, 33.893227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621166, 36.182755, 34.136456>,  <38.904102, 36.800083, 34.342110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621166, 36.182755, 34.136456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013443, 36.155399, 34.063164>,  <39.248810, 36.138988, 34.019188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013443, 36.155399, 34.063164>,  <38.621166, 36.182755, 34.136456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013443, 36.155399, 34.063164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032708, -0.866341, 0.498380,
		-0.192824, -0.494749, -0.847374,
		0.980688, -0.068384, -0.183234,
		39.307648, 36.134884, 34.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739166, 35.436001, 33.950592>,  <38.621166, 36.182755, 34.136456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739166, 35.436001, 33.950592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087490, 35.570721, 34.093842>,  <39.296486, 35.651554, 34.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087490, 35.570721, 34.093842>,  <38.739166, 35.436001, 33.950592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087490, 35.570721, 34.093842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203381, -0.910005, 0.361284,
		0.447576, -0.241775, -0.860942,
		0.870811, 0.336801, 0.358124,
		39.348732, 35.671761, 34.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171230, 34.895218, 33.747349>,  <38.739166, 35.436001, 33.950592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171230, 34.895218, 33.747349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368504, 35.082134, 34.040852>,  <39.486870, 35.194286, 34.216953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368504, 35.082134, 34.040852>,  <39.171230, 34.895218, 33.747349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368504, 35.082134, 34.040852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221289, -0.883121, 0.413676,
		0.841308, -0.041646, -0.538950,
		0.493186, 0.467293, 0.733761,
		39.516460, 35.222321, 34.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761131, 34.496605, 33.901337>,  <39.171230, 34.895218, 33.747349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761131, 34.496605, 33.901337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775196, 34.722069, 34.231441>,  <39.783634, 34.857346, 34.429504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775196, 34.722069, 34.231441>,  <39.761131, 34.496605, 33.901337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775196, 34.722069, 34.231441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288472, -0.796344, 0.531621,
		0.956842, 0.219370, -0.190602,
		0.035163, 0.563661, 0.825258,
		39.785744, 34.891167, 34.479019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314972, 34.312447, 34.293648>,  <39.761131, 34.496605, 33.901337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314972, 34.312447, 34.293648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083599, 34.499996, 34.560654>,  <39.944775, 34.612526, 34.720856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083599, 34.499996, 34.560654>,  <40.314972, 34.312447, 34.293648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083599, 34.499996, 34.560654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158392, -0.738167, 0.655761,
		0.800205, 0.485042, 0.352714,
		-0.578433, 0.468876, 0.667511,
		39.910069, 34.640659, 34.760906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756428, 34.367954, 34.834229>,  <40.314972, 34.312447, 34.293648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756428, 34.367954, 34.834229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375423, 34.394096, 34.953190>,  <40.146820, 34.409782, 35.024567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375423, 34.394096, 34.953190>,  <40.756428, 34.367954, 34.834229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375423, 34.394096, 34.953190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145415, -0.760496, 0.632850,
		0.267529, 0.646045, 0.714880,
		-0.952514, 0.065352, 0.297400,
		40.089668, 34.413700, 35.042408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771915, 34.265125, 35.561146>,  <40.756428, 34.367954, 34.834229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771915, 34.265125, 35.561146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388958, 34.175926, 35.487755>,  <40.159184, 34.122406, 35.443722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388958, 34.175926, 35.487755>,  <40.771915, 34.265125, 35.561146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388958, 34.175926, 35.487755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072604, -0.800823, 0.594484,
		-0.279501, 0.555836, 0.782896,
		-0.957396, -0.223000, -0.183475,
		40.101738, 34.109028, 35.432713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460865, 34.039242, 36.182964>,  <40.771915, 34.265125, 35.561146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460865, 34.039242, 36.182964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212284, 33.888180, 35.908398>,  <40.063133, 33.797543, 35.743656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212284, 33.888180, 35.908398>,  <40.460865, 34.039242, 36.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212284, 33.888180, 35.908398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016682, -0.882330, 0.470336,
		-0.783273, 0.280842, 0.554628,
		-0.621454, -0.377654, -0.686420,
		40.025848, 33.774883, 35.702473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155643, 33.497047, 36.354584>,  <40.460865, 34.039242, 36.182964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155643, 33.497047, 36.354584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975872, 33.428921, 36.003811>,  <39.868008, 33.388046, 35.793346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975872, 33.428921, 36.003811>,  <40.155643, 33.497047, 36.354584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975872, 33.428921, 36.003811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133667, -0.957784, 0.254524,
		-0.883259, 0.231607, 0.407692,
		-0.449430, -0.170316, -0.876929,
		39.841042, 33.377827, 35.740730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396896, 33.316544, 36.460815>,  <40.155643, 33.497047, 36.354584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396896, 33.316544, 36.460815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585384, 33.147598, 36.151089>,  <39.698479, 33.046230, 35.965252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585384, 33.147598, 36.151089>,  <39.396896, 33.316544, 36.460815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585384, 33.147598, 36.151089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110766, -0.899279, 0.423117,
		-0.875033, -0.113614, -0.470541,
		0.471219, -0.422361, -0.774314,
		39.726749, 33.020889, 35.918793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885124, 32.897663, 36.108150>,  <39.396896, 33.316544, 36.460815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885124, 32.897663, 36.108150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262421, 32.767391, 36.082123>,  <39.488800, 32.689228, 36.066505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262421, 32.767391, 36.082123>,  <38.885124, 32.897663, 36.108150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262421, 32.767391, 36.082123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261670, -0.849424, 0.458266,
		-0.204517, -0.415229, -0.886430,
		0.943240, -0.325675, -0.065069,
		39.545391, 32.669689, 36.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920601, 32.428131, 35.672653>,  <38.885124, 32.897663, 36.108150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920601, 32.428131, 35.672653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213497, 32.348564, 35.933193>,  <39.389233, 32.300823, 36.089520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213497, 32.348564, 35.933193>,  <38.920601, 32.428131, 35.672653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213497, 32.348564, 35.933193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465467, -0.844329, 0.265423,
		0.497161, -0.497536, -0.710836,
		0.732237, -0.198913, 0.651354,
		39.433167, 32.288891, 36.128601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875828, 31.616566, 35.792828>,  <38.920601, 32.428131, 35.672653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875828, 31.616566, 35.792828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103054, 31.755901, 36.091080>,  <39.239391, 31.839502, 36.270031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103054, 31.755901, 36.091080>,  <38.875828, 31.616566, 35.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103054, 31.755901, 36.091080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262208, -0.782185, 0.565184,
		0.780095, -0.516572, -0.352995,
		0.568065, 0.348339, 0.745628,
		39.273472, 31.860403, 36.314770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060337, 31.040688, 36.162945>,  <38.875828, 31.616566, 35.792828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060337, 31.040688, 36.162945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204094, 31.329266, 36.399708>,  <39.290348, 31.502413, 36.541767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204094, 31.329266, 36.399708>,  <39.060337, 31.040688, 36.162945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204094, 31.329266, 36.399708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087907, -0.605292, 0.791134,
		0.929039, -0.336357, -0.154114,
		0.359388, 0.721447, 0.591908,
		39.311909, 31.545700, 36.577282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521160, 30.706673, 36.705376>,  <39.060337, 31.040688, 36.162945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521160, 30.706673, 36.705376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385197, 31.048010, 36.863499>,  <39.303619, 31.252813, 36.958370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385197, 31.048010, 36.863499>,  <39.521160, 30.706673, 36.705376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385197, 31.048010, 36.863499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320474, -0.500272, 0.804379,
		0.884172, 0.146730, 0.443521,
		-0.339908, 0.853346, 0.395303,
		39.283226, 31.304014, 36.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621346, 30.609503, 37.476704>,  <39.521160, 30.706673, 36.705376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621346, 30.609503, 37.476704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352093, 30.899900, 37.420376>,  <39.190540, 31.074139, 37.386581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352093, 30.899900, 37.420376>,  <39.621346, 30.609503, 37.476704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352093, 30.899900, 37.420376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528397, -0.338935, 0.778408,
		0.517393, 0.598376, 0.611760,
		-0.673128, 0.725996, -0.140817,
		39.150154, 31.117699, 37.378132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613647, 31.045574, 38.105797>,  <39.621346, 30.609503, 37.476704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613647, 31.045574, 38.105797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270699, 31.075430, 37.902092>,  <39.064930, 31.093344, 37.779869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270699, 31.075430, 37.902092>,  <39.613647, 31.045574, 38.105797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270699, 31.075430, 37.902092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508768, 0.026901, 0.860483,
		0.077926, 0.996848, 0.014910,
		-0.857370, 0.074640, -0.509260,
		39.013489, 31.097822, 37.749313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234245, 31.458593, 38.527271>,  <39.613647, 31.045574, 38.105797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234245, 31.458593, 38.527271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948982, 31.268219, 38.321400>,  <38.777824, 31.153994, 38.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948982, 31.268219, 38.321400>,  <39.234245, 31.458593, 38.527271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948982, 31.268219, 38.321400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568096, -0.037770, 0.822095,
		-0.410704, 0.878669, -0.243441,
		-0.713154, -0.475935, -0.514681,
		38.735035, 31.125439, 38.166996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562660, 31.785984, 38.567387>,  <39.234245, 31.458593, 38.527271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562660, 31.785984, 38.567387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483196, 31.404409, 38.477463>,  <38.435520, 31.175465, 38.423508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483196, 31.404409, 38.477463>,  <38.562660, 31.785984, 38.567387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483196, 31.404409, 38.477463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612326, -0.058293, 0.788453,
		-0.765240, 0.294287, -0.572540,
		-0.198656, -0.953938, -0.224808,
		38.423599, 31.118229, 38.410019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866646, 31.609144, 38.719093>,  <38.562660, 31.785984, 38.567387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866646, 31.609144, 38.719093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013252, 31.237602, 38.697563>,  <38.101215, 31.014677, 38.684643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013252, 31.237602, 38.697563>,  <37.866646, 31.609144, 38.719093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013252, 31.237602, 38.697563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641243, -0.294101, 0.708740,
		-0.674146, -0.225248, -0.703413,
		0.366516, -0.928853, -0.053829,
		38.123207, 30.958946, 38.681416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367382, 31.238003, 38.909790>,  <37.866646, 31.609144, 38.719093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367382, 31.238003, 38.909790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662621, 30.968409, 38.922192>,  <37.839764, 30.806652, 38.929634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662621, 30.968409, 38.922192>,  <37.367382, 31.238003, 38.909790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662621, 30.968409, 38.922192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473766, -0.485020, 0.735052,
		-0.480341, -0.557259, -0.677300,
		0.738118, -0.673957, 0.031035,
		37.884048, 30.766212, 38.931492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083393, 30.557501, 38.950901>,  <37.367382, 31.238003, 38.909790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083393, 30.557501, 38.950901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460236, 30.495241, 39.069698>,  <37.686340, 30.457886, 39.140976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460236, 30.495241, 39.069698>,  <37.083393, 30.557501, 38.950901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460236, 30.495241, 39.069698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327999, -0.611758, 0.719839,
		0.069646, -0.775580, -0.627395,
		0.942107, -0.155651, 0.296996,
		37.742867, 30.448545, 39.158798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266129, 29.804373, 38.997532>,  <37.083393, 30.557501, 38.950901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266129, 29.804373, 38.997532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480633, 30.028582, 39.249958>,  <37.609337, 30.163107, 39.401413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480633, 30.028582, 39.249958>,  <37.266129, 29.804373, 38.997532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480633, 30.028582, 39.249958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161068, -0.665962, 0.728390,
		0.828541, -0.492252, -0.266848,
		0.536262, 0.560520, 0.631063,
		37.641510, 30.196737, 39.439278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729401, 29.446478, 39.304737>,  <37.266129, 29.804373, 38.997532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729401, 29.446478, 39.304737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627422, 29.754620, 39.538509>,  <37.566235, 29.939505, 39.678772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627422, 29.754620, 39.538509>,  <37.729401, 29.446478, 39.304737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627422, 29.754620, 39.538509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222793, -0.634936, 0.739742,
		0.940939, 0.058388, 0.333504,
		-0.254946, 0.770355, 0.584428,
		37.550938, 29.985725, 39.713837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701694, 29.175106, 39.939243>,  <37.729401, 29.446478, 39.304737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701694, 29.175106, 39.939243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553043, 29.528713, 40.052666>,  <37.463852, 29.740877, 40.120720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553043, 29.528713, 40.052666>,  <37.701694, 29.175106, 39.939243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553043, 29.528713, 40.052666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225911, -0.382360, 0.895972,
		0.900478, 0.268905, 0.341803,
		-0.371623, 0.884020, 0.283559,
		37.441555, 29.793919, 40.137733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084515, 29.411854, 40.499855>,  <37.701694, 29.175106, 39.939243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084515, 29.411854, 40.499855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719116, 29.573145, 40.521519>,  <37.499878, 29.669920, 40.534515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719116, 29.573145, 40.521519>,  <38.084515, 29.411854, 40.499855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719116, 29.573145, 40.521519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093975, -0.338634, 0.936214,
		0.395848, 0.850137, 0.347234,
		-0.913495, 0.403230, 0.054156,
		37.445068, 29.694115, 40.537766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146317, 29.721325, 41.192738>,  <38.084515, 29.411854, 40.499855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146317, 29.721325, 41.192738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759224, 29.696541, 41.095039>,  <37.526970, 29.681669, 41.036419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759224, 29.696541, 41.095039>,  <38.146317, 29.721325, 41.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759224, 29.696541, 41.095039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185714, -0.479745, 0.857528,
		-0.170310, 0.875217, 0.452758,
		-0.967732, -0.061962, -0.244246,
		37.468903, 29.677952, 41.021767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801022, 30.139490, 41.679474>,  <38.146317, 29.721325, 41.192738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801022, 30.139490, 41.679474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584511, 29.841366, 41.523766>,  <37.454605, 29.662491, 41.430340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584511, 29.841366, 41.523766>,  <37.801022, 30.139490, 41.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584511, 29.841366, 41.523766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070522, -0.501564, 0.862241,
		-0.837883, 0.439257, 0.324045,
		-0.541274, -0.745310, -0.389275,
		37.422127, 29.617773, 41.406982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232815, 29.998959, 42.075443>,  <37.801022, 30.139490, 41.679474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232815, 29.998959, 42.075443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299881, 29.655701, 41.881340>,  <37.340122, 29.449745, 41.764877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299881, 29.655701, 41.881340>,  <37.232815, 29.998959, 42.075443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299881, 29.655701, 41.881340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137632, -0.507783, 0.850420,
		-0.976189, -0.075801, -0.203247,
		0.167668, -0.858144, -0.485259,
		37.350182, 29.398258, 41.735764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647522, 29.335966, 42.318111>,  <37.232815, 29.998959, 42.075443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647522, 29.335966, 42.318111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490440, 28.997211, 42.461536>,  <37.396191, 28.793959, 42.547592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490440, 28.997211, 42.461536>,  <37.647522, 29.335966, 42.318111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490440, 28.997211, 42.461536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535852, -0.106160, -0.837611,
		0.747425, -0.521072, -0.412115,
		-0.392705, -0.846884, 0.358565,
		37.372627, 28.743147, 42.569107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791428, 28.515429, 42.132420>,  <37.647522, 29.335966, 42.318111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791428, 28.515429, 42.132420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416851, 28.645699, 42.184593>,  <37.192104, 28.723862, 42.215897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416851, 28.645699, 42.184593>,  <37.791428, 28.515429, 42.132420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416851, 28.645699, 42.184593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087426, 0.143420, -0.985793,
		-0.339757, -0.934540, -0.105832,
		-0.936441, 0.325678, 0.130431,
		37.135918, 28.743402, 42.223721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355072, 28.187698, 41.637592>,  <37.791428, 28.515429, 42.132420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355072, 28.187698, 41.637592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189888, 28.536879, 41.741451>,  <37.090778, 28.746387, 41.803768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189888, 28.536879, 41.741451>,  <37.355072, 28.187698, 41.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189888, 28.536879, 41.741451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071230, 0.253264, -0.964771,
		-0.907960, -0.416906, -0.042407,
		-0.412959, 0.872953, 0.259649,
		37.066002, 28.798765, 41.819347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858139, 28.408936, 41.083977>,  <37.355072, 28.187698, 41.637592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858139, 28.408936, 41.083977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892479, 28.735170, 41.312870>,  <36.913082, 28.930912, 41.450207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892479, 28.735170, 41.312870>,  <36.858139, 28.408936, 41.083977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892479, 28.735170, 41.312870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146006, 0.578450, -0.802545,
		-0.985552, -0.014653, 0.168738,
		0.085847, 0.815586, 0.572232,
		36.918232, 28.979847, 41.484539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429379, 28.922476, 40.789330>,  <36.858139, 28.408936, 41.083977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429379, 28.922476, 40.789330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714973, 29.113953, 40.993713>,  <36.886330, 29.228840, 41.116344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714973, 29.113953, 40.993713>,  <36.429379, 28.922476, 40.789330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714973, 29.113953, 40.993713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091747, 0.659518, -0.746069,
		-0.694126, 0.579560, 0.426966,
		0.713983, 0.478693, 0.510961,
		36.929169, 29.257561, 41.147003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227634, 29.567148, 40.842236>,  <36.429379, 28.922476, 40.789330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227634, 29.567148, 40.842236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624664, 29.588629, 40.885895>,  <36.862881, 29.601517, 40.912090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624664, 29.588629, 40.885895>,  <36.227634, 29.567148, 40.842236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624664, 29.588629, 40.885895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038899, 0.710028, -0.703098,
		-0.115254, 0.702123, 0.702666,
		0.992574, 0.053702, 0.109145,
		36.922436, 29.604740, 40.918640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332245, 30.274872, 40.650032>,  <36.227634, 29.567148, 40.842236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332245, 30.274872, 40.650032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673046, 30.072319, 40.596863>,  <36.877525, 29.950787, 40.564960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673046, 30.072319, 40.596863>,  <36.332245, 30.274872, 40.650032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673046, 30.072319, 40.596863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245550, 0.610751, -0.752787,
		0.462385, 0.608735, 0.644703,
		0.852001, -0.506384, -0.132927,
		36.928646, 29.920404, 40.556984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669384, 30.782877, 40.418171>,  <36.332245, 30.274872, 40.650032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669384, 30.782877, 40.418171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937157, 30.496706, 40.338150>,  <37.097820, 30.325003, 40.290138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937157, 30.496706, 40.338150>,  <36.669384, 30.782877, 40.418171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937157, 30.496706, 40.338150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311747, 0.514989, -0.798498,
		0.674296, 0.472173, 0.567783,
		0.669432, -0.715429, -0.200057,
		37.137985, 30.282078, 40.278133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354729, 31.103273, 40.331242>,  <36.669384, 30.782877, 40.418171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354729, 31.103273, 40.331242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329601, 30.766649, 40.116642>,  <37.314526, 30.564674, 39.987885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329601, 30.766649, 40.116642>,  <37.354729, 31.103273, 40.331242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329601, 30.766649, 40.116642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185181, 0.518396, -0.834850,
		0.980695, -0.151791, 0.123278,
		-0.062816, -0.841561, -0.536497,
		37.310757, 30.514181, 39.955692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058506, 30.915661, 40.197971>,  <37.354729, 31.103273, 40.331242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058506, 30.915661, 40.197971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022751, 30.540468, 40.063988>,  <38.001297, 30.315351, 39.983597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022751, 30.540468, 40.063988>,  <38.058506, 30.915661, 40.197971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022751, 30.540468, 40.063988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429644, 0.267091, -0.862594,
		0.898563, -0.221020, 0.379123,
		-0.089391, -0.937983, -0.334958,
		37.995934, 30.259073, 39.963501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782421, 30.667479, 39.968311>,  <38.058506, 30.915661, 40.197971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782421, 30.667479, 39.968311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489647, 30.443949, 39.812374>,  <38.313984, 30.309830, 39.718811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489647, 30.443949, 39.812374>,  <38.782421, 30.667479, 39.968311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489647, 30.443949, 39.812374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354419, 0.176409, -0.918296,
		0.581941, -0.810304, 0.068939,
		-0.731937, -0.558827, -0.389847,
		38.270065, 30.276300, 39.695419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971073, 30.163378, 39.491352>,  <38.782421, 30.667479, 39.968311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971073, 30.163378, 39.491352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592243, 30.236923, 39.386101>,  <38.364944, 30.281050, 39.322948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592243, 30.236923, 39.386101>,  <38.971073, 30.163378, 39.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592243, 30.236923, 39.386101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306015, 0.269593, -0.913058,
		-0.096939, -0.945259, -0.311591,
		-0.947078, 0.183862, -0.263129,
		38.308121, 30.292082, 39.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827946, 29.864931, 38.773048>,  <38.971073, 30.163378, 39.491352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827946, 29.864931, 38.773048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565285, 30.157047, 38.848400>,  <38.407688, 30.332317, 38.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565285, 30.157047, 38.848400>,  <38.827946, 29.864931, 38.773048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565285, 30.157047, 38.848400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125698, 0.352256, -0.927424,
		-0.743649, -0.585312, -0.323104,
		-0.656648, 0.730291, 0.188383,
		38.368290, 30.376135, 38.904915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336933, 29.774343, 38.284100>,  <38.827946, 29.864931, 38.773048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336933, 29.774343, 38.284100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314335, 30.153135, 38.410618>,  <38.300774, 30.380409, 38.486526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314335, 30.153135, 38.410618>,  <38.336933, 29.774343, 38.284100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314335, 30.153135, 38.410618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039913, 0.314403, -0.948450,
		-0.997605, -0.066210, 0.020033,
		-0.056499, 0.946978, 0.316292,
		38.297386, 30.437229, 38.505505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898232, 30.146769, 37.817802>,  <38.336933, 29.774343, 38.284100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898232, 30.146769, 37.817802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106915, 30.433317, 38.003117>,  <38.232124, 30.605247, 38.114304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106915, 30.433317, 38.003117>,  <37.898232, 30.146769, 37.817802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106915, 30.433317, 38.003117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029661, 0.527486, -0.849046,
		-0.852611, 0.456692, 0.253944,
		0.521704, 0.716373, 0.463286,
		38.263424, 30.648230, 38.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010948, 30.624104, 37.220577>,  <37.898232, 30.146769, 37.817802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010948, 30.624104, 37.220577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171047, 30.825237, 37.527031>,  <38.267105, 30.945917, 37.710903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171047, 30.825237, 37.527031>,  <38.010948, 30.624104, 37.220577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171047, 30.825237, 37.527031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355689, 0.685238, -0.635559,
		-0.844563, 0.526887, 0.095413,
		0.400248, 0.502832, 0.766134,
		38.291122, 30.976088, 37.756870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871262, 31.373301, 37.139576>,  <38.010948, 30.624104, 37.220577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871262, 31.373301, 37.139576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208923, 31.296406, 37.339752>,  <38.411522, 31.250269, 37.459858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208923, 31.296406, 37.339752>,  <37.871262, 31.373301, 37.139576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208923, 31.296406, 37.339752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515588, 0.546857, -0.659634,
		-0.146866, 0.814857, 0.560748,
		0.844156, -0.192237, 0.500445,
		38.462170, 31.238735, 37.489887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243748, 31.994387, 37.490829>,  <37.871262, 31.373301, 37.139576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243748, 31.994387, 37.490829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539761, 31.726910, 37.461998>,  <38.717369, 31.566423, 37.444698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539761, 31.726910, 37.461998>,  <38.243748, 31.994387, 37.490829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539761, 31.726910, 37.461998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524841, 0.641180, -0.559849,
		0.420583, 0.376479, 0.825454,
		0.740035, -0.668695, -0.072078,
		38.761772, 31.526300, 37.440376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892101, 32.353020, 37.591679>,  <38.243748, 31.994387, 37.490829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892101, 32.353020, 37.591679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026192, 32.028355, 37.400333>,  <39.106644, 31.833555, 37.285526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026192, 32.028355, 37.400333>,  <38.892101, 32.353020, 37.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026192, 32.028355, 37.400333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404120, 0.582534, -0.705224,
		0.851065, 0.043093, 0.523288,
		0.335224, -0.811663, -0.478359,
		39.126759, 31.784855, 37.256824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499336, 32.625443, 37.209972>,  <38.892101, 32.353020, 37.591679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499336, 32.625443, 37.209972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475929, 32.258930, 37.051479>,  <39.461884, 32.039021, 36.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475929, 32.258930, 37.051479>,  <39.499336, 32.625443, 37.209972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475929, 32.258930, 37.051479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479144, 0.322424, -0.816373,
		0.875783, -0.237626, 0.420163,
		-0.058521, -0.916284, -0.396230,
		39.458374, 31.984045, 36.932610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139889, 32.432335, 37.161972>,  <39.499336, 32.625443, 37.209972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139889, 32.432335, 37.161972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919373, 32.226452, 36.899323>,  <39.787064, 32.102921, 36.741734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919373, 32.226452, 36.899323>,  <40.139889, 32.432335, 37.161972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919373, 32.226452, 36.899323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493066, 0.433883, -0.754076,
		0.673026, -0.739475, 0.014589,
		-0.551290, -0.514706, -0.656625,
		39.753986, 32.072041, 36.702335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585968, 32.246098, 36.628738>,  <40.139889, 32.432335, 37.161972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585968, 32.246098, 36.628738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227024, 32.224739, 36.453514>,  <40.011658, 32.211922, 36.348377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227024, 32.224739, 36.453514>,  <40.585968, 32.246098, 36.628738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227024, 32.224739, 36.453514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340025, 0.549098, -0.763462,
		0.281309, -0.834050, -0.474580,
		-0.897357, -0.053400, -0.438063,
		39.957817, 32.208717, 36.322094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706505, 32.140110, 35.880280>,  <40.585968, 32.246098, 36.628738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706505, 32.140110, 35.880280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352310, 32.317219, 35.936646>,  <40.139793, 32.423485, 35.970467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352310, 32.317219, 35.936646>,  <40.706505, 32.140110, 35.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352310, 32.317219, 35.936646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183842, 0.612365, -0.768903,
		-0.426744, -0.654949, -0.623644,
		-0.885490, 0.442776, 0.140916,
		40.086662, 32.450050, 35.978920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519566, 32.477802, 35.152527>,  <40.706505, 32.140110, 35.880280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519566, 32.477802, 35.152527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296001, 32.645733, 35.438568>,  <40.161861, 32.746490, 35.610191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296001, 32.645733, 35.438568>,  <40.519566, 32.477802, 35.152527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296001, 32.645733, 35.438568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020186, 0.869002, -0.494397,
		-0.828983, -0.261888, -0.494167,
		-0.558909, 0.419822, 0.715101,
		40.128330, 32.771679, 35.653099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313217, 31.903856, 34.702263>,  <40.519566, 32.477802, 35.152527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313217, 31.903856, 34.702263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228386, 31.520370, 34.626488>,  <40.177486, 31.290279, 34.581024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228386, 31.520370, 34.626488>,  <40.313217, 31.903856, 34.702263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228386, 31.520370, 34.626488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949443, -0.248049, 0.192432,
		-0.231477, -0.139047, 0.962852,
		-0.212078, -0.958717, -0.189435,
		40.164764, 31.232756, 34.569656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522793, 31.403725, 35.191544>,  <40.313217, 31.903856, 34.702263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522793, 31.403725, 35.191544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523899, 31.191111, 34.852730>,  <40.524563, 31.063541, 34.649441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523899, 31.191111, 34.852730>,  <40.522793, 31.403725, 35.191544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523899, 31.191111, 34.852730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950669, -0.261347, 0.167110,
		-0.310194, -0.805710, 0.504590,
		0.002769, -0.531535, -0.847032,
		40.524731, 31.031651, 34.598621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682224, 30.677109, 35.280548>,  <40.522793, 31.403725, 35.191544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682224, 30.677109, 35.280548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794163, 30.837339, 34.931557>,  <40.861328, 30.933477, 34.722160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794163, 30.837339, 34.931557>,  <40.682224, 30.677109, 35.280548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794163, 30.837339, 34.931557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959831, -0.097575, 0.263066,
		0.020245, -0.911053, -0.411791,
		0.279848, 0.400575, -0.872482,
		40.878117, 30.957512, 34.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244823, 30.361744, 35.064289>,  <40.682224, 30.677109, 35.280548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244823, 30.361744, 35.064289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306076, 30.703087, 34.864960>,  <41.342827, 30.907892, 34.745361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306076, 30.703087, 34.864960>,  <41.244823, 30.361744, 35.064289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306076, 30.703087, 34.864960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984150, -0.086053, 0.155056,
		0.089436, -0.514172, -0.853012,
		0.153130, 0.853359, -0.498326,
		41.352016, 30.959095, 34.715462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692844, 30.321276, 34.479568>,  <41.244823, 30.361744, 35.064289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692844, 30.321276, 34.479568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735378, 30.685852, 34.638550>,  <41.760899, 30.904598, 34.733940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735378, 30.685852, 34.638550>,  <41.692844, 30.321276, 34.479568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735378, 30.685852, 34.638550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987813, -0.142521, 0.062553,
		0.113659, 0.385957, -0.915488,
		0.106333, 0.911441, 0.397452,
		41.767277, 30.959284, 34.757786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228565, 30.708046, 34.092960>,  <41.692844, 30.321276, 34.479568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228565, 30.708046, 34.092960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189064, 30.798584, 34.480572>,  <42.165363, 30.852907, 34.713139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189064, 30.798584, 34.480572>,  <42.228565, 30.708046, 34.092960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189064, 30.798584, 34.480572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936425, -0.308331, 0.167451,
		0.336684, 0.923958, -0.181508,
		-0.098754, 0.226346, 0.969028,
		42.159439, 30.866488, 34.771278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967331, 30.945898, 34.390720>,  <42.228565, 30.708046, 34.092960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967331, 30.945898, 34.390720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727161, 30.775736, 34.661579>,  <42.583061, 30.673639, 34.824093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727161, 30.775736, 34.661579>,  <42.967331, 30.945898, 34.390720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727161, 30.775736, 34.661579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790943, -0.440769, 0.424421,
		0.117913, 0.790414, 0.601118,
		-0.600422, -0.425405, 0.677144,
		42.547035, 30.648115, 34.864723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414040, 30.263531, 34.429314>,  <42.967331, 30.945898, 34.390720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414040, 30.263531, 34.429314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352978, 30.486206, 34.102684>,  <43.316341, 30.619812, 33.906708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352978, 30.486206, 34.102684>,  <43.414040, 30.263531, 34.429314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352978, 30.486206, 34.102684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636845, 0.687243, 0.349465,
		0.755728, -0.466683, -0.459436,
		-0.152655, 0.556691, -0.816574,
		43.307182, 30.653214, 33.857712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136814, 30.445776, 34.186863>,  <43.414040, 30.263531, 34.429314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136814, 30.445776, 34.186863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850025, 30.701246, 34.075119>,  <43.677952, 30.854528, 34.008072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850025, 30.701246, 34.075119>,  <44.136814, 30.445776, 34.186863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850025, 30.701246, 34.075119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519141, 0.756641, 0.397476,
		0.465231, 0.139955, -0.874055,
		-0.716974, 0.638676, -0.279357,
		43.634933, 30.892849, 33.991310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549397, 30.911110, 34.005970>,  <44.136814, 30.445776, 34.186863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549397, 30.911110, 34.005970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204617, 31.092051, 34.097553>,  <43.997749, 31.200615, 34.152504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204617, 31.092051, 34.097553>,  <44.549397, 30.911110, 34.005970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204617, 31.092051, 34.097553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506884, 0.759355, 0.407982,
		0.010691, 0.467715, -0.883815,
		-0.861948, 0.452353, 0.228959,
		43.946033, 31.227757, 34.166241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668816, 31.589752, 33.742519>,  <44.549397, 30.911110, 34.005970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668816, 31.589752, 33.742519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401905, 31.583698, 34.040382>,  <44.241760, 31.580067, 34.219101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401905, 31.583698, 34.040382>,  <44.668816, 31.589752, 33.742519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401905, 31.583698, 34.040382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476660, 0.759560, 0.442564,
		-0.572310, 0.650261, -0.499622,
		-0.667275, -0.015134, 0.744658,
		44.201721, 31.579159, 34.263779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426865, 32.215393, 33.912537>,  <44.668816, 31.589752, 33.742519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426865, 32.215393, 33.912537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409439, 31.997305, 34.247402>,  <44.398983, 31.866453, 34.448322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409439, 31.997305, 34.247402>,  <44.426865, 32.215393, 33.912537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409439, 31.997305, 34.247402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392744, 0.761147, 0.516147,
		-0.918615, 0.351277, 0.180971,
		-0.043565, -0.545216, 0.837163,
		44.396370, 31.833740, 34.498550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216930, 32.577377, 34.484718>,  <44.426865, 32.215393, 33.912537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216930, 32.577377, 34.484718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387669, 32.297356, 34.713707>,  <44.490112, 32.129341, 34.851101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387669, 32.297356, 34.713707>,  <44.216930, 32.577377, 34.484718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387669, 32.297356, 34.713707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546356, 0.704079, 0.453617,
		-0.720623, 0.119150, 0.683012,
		0.426846, -0.700054, 0.572474,
		44.515724, 32.087337, 34.885448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111828, 32.944275, 35.180630>,  <44.216930, 32.577377, 34.484718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111828, 32.944275, 35.180630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419754, 32.689167, 35.170517>,  <44.604511, 32.536102, 35.164452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419754, 32.689167, 35.170517>,  <44.111828, 32.944275, 35.180630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419754, 32.689167, 35.170517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625892, 0.746534, 0.225715,
		-0.125081, -0.189581, 0.973865,
		0.769815, -0.637767, -0.025280,
		44.650700, 32.497837, 35.162933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465298, 32.846283, 35.792828>,  <44.111828, 32.944275, 35.180630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465298, 32.846283, 35.792828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721912, 32.823013, 35.486874>,  <44.875881, 32.809052, 35.303303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721912, 32.823013, 35.486874>,  <44.465298, 32.846283, 35.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721912, 32.823013, 35.486874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548327, 0.732077, 0.404229,
		0.536438, -0.678733, 0.501553,
		0.641539, -0.058172, -0.764882,
		44.914375, 32.805561, 35.257408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997772, 33.271049, 35.460049>,  <44.465298, 32.846283, 35.792828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997772, 33.271049, 35.460049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109676, 33.488113, 35.776848>,  <45.176819, 33.618351, 35.966927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109676, 33.488113, 35.776848>,  <44.997772, 33.271049, 35.460049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109676, 33.488113, 35.776848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708582, 0.439915, -0.551712,
		-0.647802, 0.715540, -0.261448,
		0.279757, 0.542658, 0.791997,
		45.193604, 33.650909, 36.014446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005520, 34.040249, 35.394608>,  <44.997772, 33.271049, 35.460049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005520, 34.040249, 35.394608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287159, 33.941074, 35.660770>,  <45.456142, 33.881569, 35.820469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287159, 33.941074, 35.660770>,  <45.005520, 34.040249, 35.394608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287159, 33.941074, 35.660770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651598, 0.598042, -0.466654,
		-0.282241, 0.762150, 0.582638,
		0.704102, -0.247937, 0.665408,
		45.498390, 33.866692, 35.860394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280399, 34.614788, 35.831669>,  <45.005520, 34.040249, 35.394608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280399, 34.614788, 35.831669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568024, 34.343266, 35.772106>,  <45.740597, 34.180351, 35.736370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568024, 34.343266, 35.772106>,  <45.280399, 34.614788, 35.831669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568024, 34.343266, 35.772106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573004, 0.700350, -0.425647,
		0.393221, 0.220740, 0.892553,
		0.719057, -0.678810, -0.148907,
		45.783741, 34.139622, 35.727432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978664, 34.646778, 36.238464>,  <45.280399, 34.614788, 35.831669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978664, 34.646778, 36.238464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955853, 34.528728, 35.856964>,  <45.942165, 34.457897, 35.628063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955853, 34.528728, 35.856964>,  <45.978664, 34.646778, 36.238464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955853, 34.528728, 35.856964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548958, 0.788663, -0.276868,
		0.833902, -0.539362, 0.117032,
		-0.057033, -0.295126, -0.953755,
		45.938744, 34.440189, 35.570839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683968, 34.590885, 35.902615>,  <45.978664, 34.646778, 36.238464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683968, 34.590885, 35.902615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396694, 34.692165, 35.643353>,  <46.224331, 34.752934, 35.487797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396694, 34.692165, 35.643353>,  <46.683968, 34.590885, 35.902615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396694, 34.692165, 35.643353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605613, 0.686168, -0.402998,
		0.342706, -0.681957, -0.646132,
		-0.718182, 0.253196, -0.648156,
		46.181240, 34.768124, 35.448906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046539, 34.764980, 35.192379>,  <46.683968, 34.590885, 35.902615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046539, 34.764980, 35.192379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.699009, 34.952812, 35.255157>,  <46.490490, 35.065510, 35.292824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.699009, 34.952812, 35.255157>,  <47.046539, 34.764980, 35.192379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699009, 34.952812, 35.255157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420641, 0.867274, -0.266263,
		-0.261147, -0.165319, -0.951037,
		-0.868829, 0.469579, 0.156946,
		46.438362, 35.093685, 35.302242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.826195, 34.721199, 35.057243>,  <47.046539, 34.764980, 35.192379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.826195, 34.721199, 35.057243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558636, 35.015194, 35.101723>,  <47.398098, 35.191589, 35.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558636, 35.015194, 35.101723>,  <47.826195, 34.721199, 35.057243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558636, 35.015194, 35.101723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134989, 0.026998, -0.990479,
		-0.730992, -0.677542, 0.081157,
		-0.668901, 0.734988, 0.111196,
		47.357967, 35.235691, 35.135082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.612083, 36.881580, 25.828499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220448, 36.886272, 25.747255>,  <37.985466, 36.889088, 25.698509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220448, 36.886272, 25.747255>,  <38.612083, 36.881580, 25.828499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220448, 36.886272, 25.747255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175904, -0.550436, 0.816136,
		-0.102223, 0.834795, 0.540988,
		-0.979085, 0.011734, -0.203111,
		37.926723, 36.889793, 25.686321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246933, 37.081768, 26.479374>,  <38.612083, 36.881580, 25.828499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246933, 37.081768, 26.479374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.984138, 36.881485, 26.253925>,  <37.826462, 36.761314, 26.118656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.984138, 36.881485, 26.253925>,  <38.246933, 37.081768, 26.479374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984138, 36.881485, 26.253925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164710, -0.634213, 0.755410,
		-0.735691, 0.589127, 0.334197,
		-0.656985, -0.500703, -0.563620,
		37.787045, 36.731274, 26.084839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631359, 37.073990, 26.814636>,  <38.246933, 37.081768, 26.479374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631359, 37.073990, 26.814636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603184, 36.754147, 26.576088>,  <37.586277, 36.562241, 26.432959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603184, 36.754147, 26.576088>,  <37.631359, 37.073990, 26.814636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603184, 36.754147, 26.576088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223191, -0.570065, 0.790704,
		-0.972227, 0.188799, -0.138312,
		-0.070438, -0.799613, -0.596370,
		37.582054, 36.514263, 26.397177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022678, 36.773289, 26.978012>,  <37.631359, 37.073990, 26.814636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022678, 36.773289, 26.978012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252941, 36.501560, 26.795961>,  <37.391098, 36.338524, 26.686731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252941, 36.501560, 26.795961>,  <37.022678, 36.773289, 26.978012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252941, 36.501560, 26.795961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114521, -0.618093, 0.777719,
		-0.809632, -0.395578, -0.433606,
		0.575657, -0.679323, -0.455126,
		37.425640, 36.297764, 26.659424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731571, 36.226788, 27.081755>,  <37.022678, 36.773289, 26.978012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731571, 36.226788, 27.081755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093597, 36.081013, 26.994078>,  <37.310814, 35.993549, 26.941471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093597, 36.081013, 26.994078>,  <36.731571, 36.226788, 27.081755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093597, 36.081013, 26.994078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041985, -0.589466, 0.806701,
		-0.423195, -0.720914, -0.548806,
		0.905065, -0.364434, -0.219192,
		37.365116, 35.971684, 26.928320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681812, 35.425999, 27.190603>,  <36.731571, 36.226788, 27.081755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681812, 35.425999, 27.190603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066795, 35.517071, 27.249714>,  <37.297787, 35.571712, 27.285181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066795, 35.517071, 27.249714>,  <36.681812, 35.425999, 27.190603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066795, 35.517071, 27.249714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059043, -0.707002, 0.704742,
		0.264934, -0.669559, -0.693903,
		0.962457, 0.227680, 0.147776,
		37.355534, 35.585377, 27.294046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037243, 34.802952, 27.275778>,  <36.681812, 35.425999, 27.190603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037243, 34.802952, 27.275778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263386, 35.085876, 27.445520>,  <37.399071, 35.255630, 27.547367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263386, 35.085876, 27.445520>,  <37.037243, 34.802952, 27.275778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263386, 35.085876, 27.445520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166069, -0.601543, 0.781388,
		0.807954, -0.371292, -0.457550,
		0.565359, 0.707311, 0.424359,
		37.432995, 35.298069, 27.572828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591755, 34.463634, 27.525562>,  <37.037243, 34.802952, 27.275778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591755, 34.463634, 27.525562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632927, 34.819405, 27.703697>,  <37.657631, 35.032867, 27.810579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632927, 34.819405, 27.703697>,  <37.591755, 34.463634, 27.525562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632927, 34.819405, 27.703697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426221, -0.443968, 0.788181,
		0.898745, 0.108687, -0.424788,
		0.102927, 0.889426, 0.445338,
		37.663807, 35.086231, 27.837299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313099, 34.501999, 27.858824>,  <37.591755, 34.463634, 27.525562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313099, 34.501999, 27.858824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048836, 34.740143, 28.041721>,  <37.890278, 34.883030, 28.151461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048836, 34.740143, 28.041721>,  <38.313099, 34.501999, 27.858824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048836, 34.740143, 28.041721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107634, -0.527685, 0.842594,
		0.742927, 0.605885, 0.284540,
		-0.660662, 0.595359, 0.457245,
		37.850636, 34.918751, 28.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621433, 34.650223, 28.543694>,  <38.313099, 34.501999, 27.858824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621433, 34.650223, 28.543694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222675, 34.674446, 28.563801>,  <37.983421, 34.688980, 28.575865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222675, 34.674446, 28.563801>,  <38.621433, 34.650223, 28.543694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222675, 34.674446, 28.563801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000364, -0.642277, 0.766472,
		0.078699, 0.764076, 0.640308,
		-0.996898, 0.060554, 0.050268,
		37.923607, 34.692612, 28.578880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509933, 34.579109, 29.322517>,  <38.621433, 34.650223, 28.543694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509933, 34.579109, 29.322517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151024, 34.519577, 29.156265>,  <37.935677, 34.483856, 29.056513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151024, 34.519577, 29.156265>,  <38.509933, 34.579109, 29.322517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151024, 34.519577, 29.156265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262943, -0.576095, 0.773935,
		-0.354629, 0.803719, 0.477781,
		-0.897273, -0.148831, -0.415632,
		37.881844, 34.474926, 29.031576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100536, 34.658306, 29.828283>,  <38.509933, 34.579109, 29.322517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100536, 34.658306, 29.828283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897736, 34.449333, 29.554052>,  <37.776054, 34.323952, 29.389515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897736, 34.449333, 29.554052>,  <38.100536, 34.658306, 29.828283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897736, 34.449333, 29.554052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173592, -0.717198, 0.674902,
		-0.844281, 0.461190, 0.272934,
		-0.507006, -0.522428, -0.685576,
		37.745632, 34.292606, 29.348379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697464, 34.300758, 30.255054>,  <38.100536, 34.658306, 29.828283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697464, 34.300758, 30.255054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604649, 34.116032, 29.912621>,  <37.548958, 34.005196, 29.707159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604649, 34.116032, 29.912621>,  <37.697464, 34.300758, 30.255054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604649, 34.116032, 29.912621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056124, -0.872285, 0.485766,
		-0.971086, 0.160764, 0.176487,
		-0.232040, -0.461815, -0.856086,
		37.535038, 33.977486, 29.655794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094326, 33.931328, 30.395767>,  <37.697464, 34.300758, 30.255054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094326, 33.931328, 30.395767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255337, 33.748791, 30.078348>,  <37.351944, 33.639267, 29.887896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255337, 33.748791, 30.078348>,  <37.094326, 33.931328, 30.395767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255337, 33.748791, 30.078348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162790, -0.888748, 0.428516,
		-0.900815, -0.043310, -0.432039,
		0.402533, -0.456345, -0.793547,
		37.376095, 33.611889, 29.840284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543331, 33.395077, 30.036510>,  <37.094326, 33.931328, 30.395767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543331, 33.395077, 30.036510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935120, 33.325478, 29.995806>,  <37.170193, 33.283718, 29.971384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935120, 33.325478, 29.995806>,  <36.543331, 33.395077, 30.036510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935120, 33.325478, 29.995806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063616, -0.745871, 0.663046,
		-0.191271, -0.642962, -0.741630,
		0.979474, -0.174001, -0.101760,
		37.228962, 33.273277, 29.965277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630905, 32.699821, 30.172247>,  <36.543331, 33.395077, 30.036510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630905, 32.699821, 30.172247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994198, 32.865952, 30.192703>,  <37.212173, 32.965630, 30.204977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994198, 32.865952, 30.192703>,  <36.630905, 32.699821, 30.172247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994198, 32.865952, 30.192703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193167, -0.524525, 0.829192,
		0.371210, -0.743222, -0.556619,
		0.908234, 0.415325, 0.051143,
		37.266666, 32.990551, 30.208046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069221, 32.128399, 30.042429>,  <36.630905, 32.699821, 30.172247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069221, 32.128399, 30.042429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238907, 32.429901, 30.243185>,  <37.340717, 32.610802, 30.363640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238907, 32.429901, 30.243185>,  <37.069221, 32.128399, 30.042429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238907, 32.429901, 30.243185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227329, -0.625126, 0.746685,
		0.876562, -0.202663, -0.436540,
		0.424218, 0.753754, 0.501891,
		37.366173, 32.656029, 30.393753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559135, 31.799639, 30.291862>,  <37.069221, 32.128399, 30.042429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559135, 31.799639, 30.291862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572514, 32.133625, 30.511576>,  <37.580540, 32.334019, 30.643404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572514, 32.133625, 30.511576>,  <37.559135, 31.799639, 30.291862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572514, 32.133625, 30.511576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208015, -0.543372, 0.813312,
		0.977554, 0.087060, -0.191857,
		0.033443, 0.834966, 0.549285,
		37.582546, 32.384113, 30.676361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113823, 31.672005, 30.663445>,  <37.559135, 31.799639, 30.291862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113823, 31.672005, 30.663445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914909, 31.948458, 30.873224>,  <37.795563, 32.114330, 30.999092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914909, 31.948458, 30.873224>,  <38.113823, 31.672005, 30.663445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914909, 31.948458, 30.873224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160407, -0.520827, 0.838456,
		0.852632, 0.501073, 0.148135,
		-0.497281, 0.691133, 0.524449,
		37.765724, 32.155796, 31.030560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564415, 31.731571, 31.137486>,  <38.113823, 31.672005, 30.663445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564415, 31.731571, 31.137486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.226406, 31.892193, 31.278730>,  <38.023602, 31.988565, 31.363478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.226406, 31.892193, 31.278730>,  <38.564415, 31.731571, 31.137486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226406, 31.892193, 31.278730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141099, -0.469510, 0.871580,
		0.515775, 0.786331, 0.340089,
		-0.845025, 0.401552, 0.353112,
		37.972900, 32.012657, 31.384665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767750, 32.066906, 31.675608>,  <38.564415, 31.731571, 31.137486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767750, 32.066906, 31.675608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380959, 31.984316, 31.735357>,  <38.148884, 31.934761, 31.771208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380959, 31.984316, 31.735357>,  <38.767750, 32.066906, 31.675608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380959, 31.984316, 31.735357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230065, -0.455155, 0.860177,
		-0.109617, 0.866141, 0.487630,
		-0.966982, -0.206477, 0.149376,
		38.090862, 31.922373, 31.780170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559486, 32.303024, 32.379063>,  <38.767750, 32.066906, 31.675608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559486, 32.303024, 32.379063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305611, 32.014755, 32.267494>,  <38.153286, 31.841793, 32.200554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305611, 32.014755, 32.267494>,  <38.559486, 32.303024, 32.379063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305611, 32.014755, 32.267494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132526, -0.457104, 0.879485,
		-0.761319, 0.521235, 0.385627,
		-0.634689, -0.720674, -0.278925,
		38.115204, 31.798553, 32.183815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311722, 32.646225, 33.081451>,  <38.559486, 32.303024, 32.379063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311722, 32.646225, 33.081451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.699558, 32.638817, 33.179070>,  <38.932259, 32.634373, 33.237640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.699558, 32.638817, 33.179070>,  <38.311722, 32.646225, 33.081451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699558, 32.638817, 33.179070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179621, 0.731164, -0.658130,
		-0.166247, 0.681950, 0.712254,
		0.969587, -0.018524, 0.244046,
		38.990433, 32.633259, 33.252285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501362, 33.342266, 33.203587>,  <38.311722, 32.646225, 33.081451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501362, 33.342266, 33.203587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853432, 33.163265, 33.140285>,  <39.064674, 33.055866, 33.102306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853432, 33.163265, 33.140285>,  <38.501362, 33.342266, 33.203587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853432, 33.163265, 33.140285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271959, 0.748699, -0.604556,
		0.389018, 0.489076, 0.780685,
		0.880172, -0.447497, -0.158249,
		39.117485, 33.029015, 33.092812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071255, 33.821182, 33.313549>,  <38.501362, 33.342266, 33.203587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071255, 33.821182, 33.313549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267769, 33.552299, 33.091999>,  <39.385677, 33.390968, 32.959068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267769, 33.552299, 33.091999>,  <39.071255, 33.821182, 33.313549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267769, 33.552299, 33.091999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149600, 0.691583, -0.706634,
		0.858057, 0.264296, 0.440325,
		0.491282, -0.672205, -0.553879,
		39.415154, 33.350639, 32.925835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624023, 34.127102, 33.171616>,  <39.071255, 33.821182, 33.313549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624023, 34.127102, 33.171616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.621685, 33.829128, 32.904774>,  <39.620281, 33.650345, 32.744667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.621685, 33.829128, 32.904774>,  <39.624023, 34.127102, 33.171616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621685, 33.829128, 32.904774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262379, 0.642604, -0.719873,
		0.964947, -0.179241, 0.191702,
		-0.005842, -0.744938, -0.667108,
		39.619934, 33.605648, 32.704639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244694, 34.187859, 32.757526>,  <39.624023, 34.127102, 33.171616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244694, 34.187859, 32.757526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971401, 33.989956, 32.542709>,  <39.807426, 33.871212, 32.413818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971401, 33.989956, 32.542709>,  <40.244694, 34.187859, 32.757526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971401, 33.989956, 32.542709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102433, 0.663251, -0.741354,
		0.722987, -0.561523, -0.402470,
		-0.683226, -0.494763, -0.537041,
		39.766434, 33.841526, 32.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512520, 34.076187, 32.158611>,  <40.244694, 34.187859, 32.757526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512520, 34.076187, 32.158611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132683, 34.015797, 32.048721>,  <39.904781, 33.979561, 31.982788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132683, 34.015797, 32.048721>,  <40.512520, 34.076187, 32.158611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132683, 34.015797, 32.048721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195027, 0.401571, -0.894821,
		0.245419, -0.903297, -0.351886,
		-0.949597, -0.150978, -0.274721,
		39.847805, 33.970501, 31.966305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551418, 33.829647, 31.363178>,  <40.512520, 34.076187, 32.158611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551418, 33.829647, 31.363178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176258, 33.934608, 31.453945>,  <39.951164, 33.997585, 31.508406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176258, 33.934608, 31.453945>,  <40.551418, 33.829647, 31.363178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176258, 33.934608, 31.453945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083922, 0.463059, -0.882345,
		-0.336605, -0.846594, -0.412281,
		-0.937899, 0.262402, 0.226916,
		39.894890, 34.013329, 31.522020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169559, 33.723930, 30.767654>,  <40.551418, 33.829647, 31.363178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169559, 33.723930, 30.767654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971096, 33.997654, 30.981401>,  <39.852020, 34.161888, 31.109650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971096, 33.997654, 30.981401>,  <40.169559, 33.723930, 30.767654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971096, 33.997654, 30.981401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005190, 0.617791, -0.786325,
		-0.868219, -0.387366, -0.310071,
		-0.496155, 0.684312, 0.534367,
		39.822250, 34.202946, 31.141712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543713, 33.877228, 30.393093>,  <40.169559, 33.723930, 30.767654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543713, 33.877228, 30.393093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634510, 34.196198, 30.616734>,  <39.688988, 34.387577, 30.750917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634510, 34.196198, 30.616734>,  <39.543713, 33.877228, 30.393093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634510, 34.196198, 30.616734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086385, 0.588311, -0.804007,
		-0.970058, 0.134205, 0.202427,
		0.226992, 0.797420, 0.559102,
		39.702606, 34.435425, 30.784464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079189, 34.402740, 30.118156>,  <39.543713, 33.877228, 30.393093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079189, 34.402740, 30.118156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335747, 34.614964, 30.339832>,  <39.489681, 34.742298, 30.472837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335747, 34.614964, 30.339832>,  <39.079189, 34.402740, 30.118156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335747, 34.614964, 30.339832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021332, 0.709727, -0.704154,
		-0.766919, 0.463459, 0.443894,
		0.641390, 0.530560, 0.554189,
		39.528164, 34.774132, 30.506088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791012, 35.071892, 30.205637>,  <39.079189, 34.402740, 30.118156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791012, 35.071892, 30.205637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.178268, 35.152000, 30.265762>,  <39.410622, 35.200066, 30.301838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.178268, 35.152000, 30.265762>,  <38.791012, 35.071892, 30.205637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178268, 35.152000, 30.265762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099957, 0.859471, -0.501317,
		-0.229589, 0.470320, 0.852107,
		0.968141, 0.200271, 0.150314,
		39.468712, 35.212082, 30.310856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804623, 35.771381, 30.516220>,  <38.791012, 35.071892, 30.205637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804623, 35.771381, 30.516220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184330, 35.724995, 30.399302>,  <39.412155, 35.697163, 30.329151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184330, 35.724995, 30.399302>,  <38.804623, 35.771381, 30.516220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184330, 35.724995, 30.399302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031887, 0.889232, -0.456343,
		0.312837, 0.442514, 0.840425,
		0.949271, -0.115962, -0.292295,
		39.469112, 35.690205, 30.311613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057446, 36.417374, 30.530996>,  <38.804623, 35.771381, 30.516220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057446, 36.417374, 30.530996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355038, 36.238373, 30.332504>,  <39.533592, 36.130974, 30.213409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355038, 36.238373, 30.332504>,  <39.057446, 36.417374, 30.530996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355038, 36.238373, 30.332504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053413, 0.780081, -0.623395,
		0.666066, 0.437287, 0.604265,
		0.743978, -0.447498, -0.496228,
		39.578232, 36.104122, 30.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670959, 36.882362, 30.486328>,  <39.057446, 36.417374, 30.530996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670959, 36.882362, 30.486328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668858, 36.613411, 30.190252>,  <39.667599, 36.452042, 30.012606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668858, 36.613411, 30.190252>,  <39.670959, 36.882362, 30.486328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668858, 36.613411, 30.190252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085383, 0.737197, -0.670262,
		0.996334, -0.066719, 0.053539,
		-0.005250, -0.672376, -0.740191,
		39.667282, 36.411697, 29.968195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143040, 36.978157, 30.055676>,  <39.670959, 36.882362, 30.486328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143040, 36.978157, 30.055676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887520, 36.767937, 29.830915>,  <39.734207, 36.641804, 29.696058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887520, 36.767937, 29.830915>,  <40.143040, 36.978157, 30.055676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887520, 36.767937, 29.830915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361429, 0.439746, -0.822188,
		0.679198, -0.728297, -0.090958,
		-0.638795, -0.525554, -0.561902,
		39.695881, 36.610271, 29.662344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593639, 36.748646, 29.550936>,  <40.143040, 36.978157, 30.055676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593639, 36.748646, 29.550936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215843, 36.750088, 29.419529>,  <39.989166, 36.750954, 29.340685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215843, 36.750088, 29.419529>,  <40.593639, 36.748646, 29.550936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215843, 36.750088, 29.419529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316088, 0.282627, -0.905655,
		0.089580, -0.959224, -0.268079,
		-0.944491, 0.003608, -0.328516,
		39.932495, 36.751171, 29.320974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649536, 36.408916, 28.914787>,  <40.593639, 36.748646, 29.550936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649536, 36.408916, 28.914787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299824, 36.601868, 28.893084>,  <40.089996, 36.717640, 28.880062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299824, 36.601868, 28.893084>,  <40.649536, 36.408916, 28.914787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299824, 36.601868, 28.893084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262223, 0.375257, -0.889056,
		-0.408502, -0.791512, -0.454571,
		-0.874280, 0.482380, -0.054260,
		40.037540, 36.746582, 28.876806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313107, 36.301888, 28.206472>,  <40.649536, 36.408916, 28.914787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313107, 36.301888, 28.206472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121990, 36.625938, 28.342363>,  <40.007320, 36.820370, 28.423897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121990, 36.625938, 28.342363>,  <40.313107, 36.301888, 28.206472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121990, 36.625938, 28.342363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010320, 0.381520, -0.924303,
		-0.878412, -0.445132, -0.173927,
		-0.477793, 0.810124, 0.339725,
		39.978653, 36.868977, 28.444281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.948936, 36.531624, 27.606359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891026, 36.848488, 27.843515>,  <39.856277, 37.038605, 27.985809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891026, 36.848488, 27.843515>,  <39.948936, 36.531624, 27.606359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891026, 36.848488, 27.843515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041003, 0.603494, -0.796313,
		-0.988614, -0.090977, -0.119853,
		-0.144777, 0.792161, 0.592892,
		39.847591, 37.086136, 28.021383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332005, 36.784889, 27.362511>,  <39.948936, 36.531624, 27.606359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332005, 36.784889, 27.362511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542492, 37.066124, 27.553825>,  <39.668785, 37.234867, 27.668613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542492, 37.066124, 27.553825>,  <39.332005, 36.784889, 27.362511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542492, 37.066124, 27.553825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065309, 0.594214, -0.801651,
		-0.847837, 0.390608, 0.358605,
		0.526220, 0.703090, 0.478286,
		39.700359, 37.277050, 27.697311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982349, 37.377594, 27.189199>,  <39.332005, 36.784889, 27.362511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982349, 37.377594, 27.189199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340244, 37.501541, 27.317844>,  <39.554981, 37.575909, 27.395031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340244, 37.501541, 27.317844>,  <38.982349, 37.377594, 27.189199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340244, 37.501541, 27.317844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039831, 0.661899, -0.748534,
		-0.444822, 0.682549, 0.579880,
		0.894733, 0.309867, 0.321614,
		39.608665, 37.594501, 27.414328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953445, 38.098793, 27.208809>,  <38.982349, 37.377594, 27.189199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953445, 38.098793, 27.208809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345070, 38.026466, 27.171421>,  <39.580044, 37.983070, 27.148989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345070, 38.026466, 27.171421>,  <38.953445, 38.098793, 27.208809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345070, 38.026466, 27.171421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041777, 0.627943, -0.777137,
		0.199212, 0.756963, 0.622351,
		0.979065, -0.180815, -0.093470,
		39.638790, 37.972221, 27.143379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373638, 38.779575, 27.145046>,  <38.953445, 38.098793, 27.208809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373638, 38.779575, 27.145046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609364, 38.499531, 26.983776>,  <39.750801, 38.331505, 26.887014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609364, 38.499531, 26.983776>,  <39.373638, 38.779575, 27.145046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609364, 38.499531, 26.983776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065527, 0.455974, -0.887577,
		0.805241, 0.549482, 0.222836,
		0.589316, -0.700112, -0.403175,
		39.786160, 38.289497, 26.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612999, 39.123383, 26.592676>,  <39.373638, 38.779575, 27.145046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612999, 39.123383, 26.592676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731663, 38.749290, 26.515385>,  <39.802860, 38.524834, 26.469009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731663, 38.749290, 26.515385>,  <39.612999, 39.123383, 26.592676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731663, 38.749290, 26.515385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111983, 0.235008, -0.965521,
		0.948396, 0.264788, 0.174447,
		0.296655, -0.935232, -0.193229,
		39.820660, 38.468719, 26.457417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327511, 39.203899, 26.344599>,  <39.612999, 39.123383, 26.592676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327511, 39.203899, 26.344599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185898, 38.858715, 26.200396>,  <40.100929, 38.651604, 26.113874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185898, 38.858715, 26.200396>,  <40.327511, 39.203899, 26.344599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185898, 38.858715, 26.200396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220378, 0.297640, -0.928894,
		0.908899, -0.408302, 0.084804,
		-0.354028, -0.862960, -0.360506,
		40.079689, 38.599827, 26.092243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799103, 38.956669, 25.932583>,  <40.327511, 39.203899, 26.344599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799103, 38.956669, 25.932583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.463615, 38.772610, 25.816092>,  <40.262321, 38.662174, 25.746197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.463615, 38.772610, 25.816092>,  <40.799103, 38.956669, 25.932583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463615, 38.772610, 25.816092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150728, 0.317735, -0.936123,
		0.523290, -0.829039, -0.197133,
		-0.838718, -0.460150, -0.291227,
		40.211998, 38.634563, 25.728724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040936, 38.590481, 25.486853>,  <40.799103, 38.956669, 25.932583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040936, 38.590481, 25.486853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648514, 38.613609, 25.412884>,  <40.413063, 38.627487, 25.368502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648514, 38.613609, 25.412884>,  <41.040936, 38.590481, 25.486853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648514, 38.613609, 25.412884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188470, 0.063490, -0.980025,
		-0.044926, -0.996306, -0.073184,
		-0.981051, 0.057822, -0.184921,
		40.354198, 38.630955, 25.357407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898781, 38.119030, 24.908691>,  <41.040936, 38.590481, 25.486853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898781, 38.119030, 24.908691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.619831, 38.405708, 24.910366>,  <40.452461, 38.577717, 24.911371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.619831, 38.405708, 24.910366>,  <40.898781, 38.119030, 24.908691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619831, 38.405708, 24.910366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092907, 0.096189, -0.991018,
		-0.710661, -0.690721, -0.133665,
		-0.697373, 0.716696, 0.004185,
		40.410618, 38.620716, 24.911621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433681, 38.003830, 24.277504>,  <40.898781, 38.119030, 24.908691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433681, 38.003830, 24.277504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369003, 38.378658, 24.401279>,  <40.330196, 38.603554, 24.475544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369003, 38.378658, 24.401279>,  <40.433681, 38.003830, 24.277504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369003, 38.378658, 24.401279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058261, 0.322083, -0.944917,
		-0.985120, -0.134756, -0.106672,
		-0.161691, 0.937072, 0.309439,
		40.320496, 38.659779, 24.494112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991707, 38.302708, 23.754320>,  <40.433681, 38.003830, 24.277504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991707, 38.302708, 23.754320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165031, 38.606998, 23.947620>,  <40.269028, 38.789574, 24.063601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165031, 38.606998, 23.947620>,  <39.991707, 38.302708, 23.754320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165031, 38.606998, 23.947620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213911, 0.434070, -0.875114,
		-0.875490, 0.482570, 0.025360,
		0.433312, 0.760729, 0.483251,
		40.295025, 38.835217, 24.092596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832951, 38.841446, 23.304291>,  <39.991707, 38.302708, 23.754320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832951, 38.841446, 23.304291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107151, 39.020172, 23.534229>,  <40.271671, 39.127407, 23.672192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107151, 39.020172, 23.534229>,  <39.832951, 38.841446, 23.304291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107151, 39.020172, 23.534229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186131, 0.655756, -0.731669,
		-0.703881, 0.608553, 0.366353,
		0.685497, 0.446818, 0.574845,
		40.312801, 39.154217, 23.706682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653183, 39.569935, 23.426321>,  <39.832951, 38.841446, 23.304291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653183, 39.569935, 23.426321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.041954, 39.579262, 23.519970>,  <40.275215, 39.584858, 23.576159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.041954, 39.579262, 23.519970>,  <39.653183, 39.569935, 23.426321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041954, 39.579262, 23.519970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098156, 0.864167, -0.493539,
		-0.213827, 0.502664, 0.837620,
		0.971928, 0.023315, 0.234122,
		40.333534, 39.586258, 23.590206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759048, 40.187454, 23.666691>,  <39.653183, 39.569935, 23.426321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759048, 40.187454, 23.666691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102711, 40.049549, 23.515434>,  <40.308907, 39.966805, 23.424681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102711, 40.049549, 23.515434>,  <39.759048, 40.187454, 23.666691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102711, 40.049549, 23.515434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075197, 0.816008, -0.573128,
		0.506159, 0.463972, 0.727003,
		0.859156, -0.344762, -0.378141,
		40.360458, 39.946121, 23.401993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334515, 40.684948, 23.841417>,  <39.759048, 40.187454, 23.666691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334515, 40.684948, 23.841417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442741, 40.484825, 23.512423>,  <40.507675, 40.364750, 23.315025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442741, 40.484825, 23.512423>,  <40.334515, 40.684948, 23.841417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442741, 40.484825, 23.512423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045759, 0.860072, -0.508116,
		0.961614, 0.099841, 0.255598,
		0.270563, -0.500307, -0.822489,
		40.523911, 40.334732, 23.265676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659344, 41.256668, 23.268351>,  <40.334515, 40.684948, 23.841417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659344, 41.256668, 23.268351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641056, 40.926701, 23.042990>,  <40.630081, 40.728722, 22.907774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641056, 40.926701, 23.042990>,  <40.659344, 41.256668, 23.268351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641056, 40.926701, 23.042990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047643, 0.561548, -0.826072,
		0.997817, -0.064613, 0.013626,
		-0.045723, -0.824918, -0.563400,
		40.627338, 40.679226, 22.873970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162052, 41.384281, 22.888983>,  <40.659344, 41.256668, 23.268351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162052, 41.384281, 22.888983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925064, 41.128918, 22.692450>,  <40.782871, 40.975700, 22.574530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925064, 41.128918, 22.692450>,  <41.162052, 41.384281, 22.888983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925064, 41.128918, 22.692450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046280, 0.635871, -0.770407,
		0.804263, -0.433702, -0.406279,
		-0.592468, -0.638413, -0.491336,
		40.747322, 40.937393, 22.545050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502525, 41.304199, 22.171492>,  <41.162052, 41.384281, 22.888983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502525, 41.304199, 22.171492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111992, 41.218754, 22.158033>,  <40.877670, 41.167484, 22.149958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111992, 41.218754, 22.158033>,  <41.502525, 41.304199, 22.171492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111992, 41.218754, 22.158033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114764, 0.643703, -0.756621,
		0.183285, -0.734857, -0.652987,
		-0.976338, -0.213617, -0.033647,
		40.819092, 41.154667, 22.147940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345467, 41.243282, 21.486265>,  <41.502525, 41.304199, 22.171492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345467, 41.243282, 21.486265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980831, 41.284943, 21.645338>,  <40.762051, 41.309940, 21.740782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980831, 41.284943, 21.645338>,  <41.345467, 41.243282, 21.486265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980831, 41.284943, 21.645338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237136, 0.656985, -0.715638,
		-0.335805, -0.746675, -0.574205,
		-0.911593, 0.104150, 0.397682,
		40.707352, 41.316189, 21.764643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874409, 41.080765, 20.938963>,  <41.345467, 41.243282, 21.486265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874409, 41.080765, 20.938963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676186, 41.300282, 21.208258>,  <40.557251, 41.431992, 21.369835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676186, 41.300282, 21.208258>,  <40.874409, 41.080765, 20.938963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676186, 41.300282, 21.208258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323878, 0.602452, -0.729489,
		-0.805931, -0.579552, -0.120809,
		-0.495559, 0.548790, 0.673239,
		40.527519, 41.464920, 21.410229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215927, 41.088856, 20.835564>,  <40.874409, 41.080765, 20.938963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215927, 41.088856, 20.835564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273354, 41.430489, 21.035536>,  <40.307808, 41.635468, 21.155519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273354, 41.430489, 21.035536>,  <40.215927, 41.088856, 20.835564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273354, 41.430489, 21.035536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218901, 0.520056, -0.825606,
		-0.965127, 0.009095, 0.261623,
		0.143568, 0.854084, 0.499929,
		40.316425, 41.686714, 21.185514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550850, 41.384285, 20.747679>,  <40.215927, 41.088856, 20.835564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550850, 41.384285, 20.747679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861324, 41.629269, 20.807585>,  <40.047607, 41.776260, 20.843529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861324, 41.629269, 20.807585>,  <39.550850, 41.384285, 20.747679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861324, 41.629269, 20.807585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136026, 0.394597, -0.908730,
		-0.615659, 0.684970, 0.389590,
		0.776183, 0.612462, 0.149763,
		40.094181, 41.813007, 20.852514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278225, 42.084038, 20.741386>,  <39.550850, 41.384285, 20.747679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278225, 42.084038, 20.741386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655170, 42.007690, 20.631466>,  <39.881336, 41.961880, 20.565514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655170, 42.007690, 20.631466>,  <39.278225, 42.084038, 20.741386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655170, 42.007690, 20.631466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181905, 0.397061, -0.899585,
		0.280819, 0.897725, 0.339456,
		0.942365, -0.190872, -0.274803,
		39.937881, 41.950428, 20.549025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085148, 42.743980, 20.842058>,  <39.278225, 42.084038, 20.741386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085148, 42.743980, 20.842058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699551, 42.697205, 20.746517>,  <38.468193, 42.669140, 20.689194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699551, 42.697205, 20.746517>,  <39.085148, 42.743980, 20.842058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699551, 42.697205, 20.746517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155083, -0.482425, 0.862099,
		-0.216043, 0.868096, 0.446917,
		-0.963989, -0.116941, -0.238851,
		38.410355, 42.662121, 20.674862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726757, 43.008427, 21.291723>,  <39.085148, 42.743980, 20.842058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726757, 43.008427, 21.291723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471222, 42.739834, 21.141525>,  <38.317902, 42.578678, 21.051407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471222, 42.739834, 21.141525>,  <38.726757, 43.008427, 21.291723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471222, 42.739834, 21.141525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108653, -0.404432, 0.908091,
		-0.761632, 0.620919, 0.185407,
		-0.638836, -0.671486, -0.375493,
		38.279572, 42.538387, 21.028877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198864, 43.040375, 21.773769>,  <38.726757, 43.008427, 21.291723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198864, 43.040375, 21.773769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.126396, 42.699856, 21.576803>,  <38.082916, 42.495544, 21.458624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.126396, 42.699856, 21.576803>,  <38.198864, 43.040375, 21.773769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126396, 42.699856, 21.576803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111354, -0.479724, 0.870325,
		-0.977128, 0.212507, -0.007885,
		-0.181167, -0.851297, -0.492415,
		38.072044, 42.444466, 21.429079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566975, 42.752537, 22.054228>,  <38.198864, 43.040375, 21.773769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566975, 42.752537, 22.054228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757889, 42.443077, 21.887533>,  <37.872437, 42.257401, 21.787516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757889, 42.443077, 21.887533>,  <37.566975, 42.752537, 22.054228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757889, 42.443077, 21.887533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332377, -0.597941, 0.729378,
		-0.813467, -0.209604, -0.542529,
		0.477281, -0.773649, -0.416738,
		37.901073, 42.210983, 21.762512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132492, 42.264668, 21.978071>,  <37.566975, 42.752537, 22.054228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132492, 42.264668, 21.978071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476898, 42.061234, 21.977425>,  <37.683540, 41.939175, 21.977036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476898, 42.061234, 21.977425>,  <37.132492, 42.264668, 21.978071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476898, 42.061234, 21.977425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399234, -0.677852, 0.617357,
		-0.315074, -0.530905, -0.786682,
		0.861011, -0.508584, -0.001618,
		37.735203, 41.908657, 21.976938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927315, 41.557228, 21.947758>,  <37.132492, 42.264668, 21.978071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927315, 41.557228, 21.947758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309574, 41.476990, 22.034004>,  <37.538929, 41.428848, 22.085752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309574, 41.476990, 22.034004>,  <36.927315, 41.557228, 21.947758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309574, 41.476990, 22.034004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293688, -0.703348, 0.647340,
		0.021799, -0.681956, -0.731068,
		0.955653, -0.200595, 0.215615,
		37.596272, 41.416813, 22.098688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934338, 40.868721, 22.086700>,  <36.927315, 41.557228, 21.947758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934338, 40.868721, 22.086700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281197, 40.994972, 22.240810>,  <37.489311, 41.070724, 22.333277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281197, 40.994972, 22.240810>,  <36.934338, 40.868721, 22.086700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281197, 40.994972, 22.240810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075684, -0.681072, 0.728295,
		0.492270, -0.660697, -0.566700,
		0.867146, 0.315628, 0.385276,
		37.541340, 41.089661, 22.356394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279930, 40.202335, 22.221685>,  <36.934338, 40.868721, 22.086700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279930, 40.202335, 22.221685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444611, 40.478455, 22.459673>,  <37.543419, 40.644127, 22.602465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444611, 40.478455, 22.459673>,  <37.279930, 40.202335, 22.221685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444611, 40.478455, 22.459673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070253, -0.626881, 0.775941,
		0.908609, -0.361251, -0.209589,
		0.411697, 0.690303, 0.594968,
		37.568119, 40.685547, 22.638163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949974, 39.950275, 22.602804>,  <37.279930, 40.202335, 22.221685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949974, 39.950275, 22.602804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802139, 40.259663, 22.808777>,  <37.713440, 40.445293, 22.932362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802139, 40.259663, 22.808777>,  <37.949974, 39.950275, 22.602804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802139, 40.259663, 22.808777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004046, -0.555503, 0.831504,
		0.929189, 0.305226, 0.208434,
		-0.369583, 0.773468, 0.514933,
		37.691265, 40.491703, 22.963257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364464, 40.062366, 23.169348>,  <37.949974, 39.950275, 22.602804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364464, 40.062366, 23.169348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037056, 40.267109, 23.273676>,  <37.840611, 40.389954, 23.336273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037056, 40.267109, 23.273676>,  <38.364464, 40.062366, 23.169348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037056, 40.267109, 23.273676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039814, -0.402380, 0.914607,
		0.573094, 0.759010, 0.308978,
		-0.818522, 0.511854, 0.260821,
		37.791500, 40.420666, 23.351923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599419, 40.286625, 23.867542>,  <38.364464, 40.062366, 23.169348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599419, 40.286625, 23.867542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206108, 40.265057, 23.797972>,  <37.970119, 40.252113, 23.756229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206108, 40.265057, 23.797972>,  <38.599419, 40.286625, 23.867542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206108, 40.265057, 23.797972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069498, -0.771718, 0.632156,
		-0.168312, 0.633675, 0.755068,
		-0.983281, -0.053924, -0.173928,
		37.911125, 40.248878, 23.745792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256298, 40.239868, 24.516682>,  <38.599419, 40.286625, 23.867542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256298, 40.239868, 24.516682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985844, 40.091816, 24.261858>,  <37.823570, 40.002983, 24.108963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985844, 40.091816, 24.261858>,  <38.256298, 40.239868, 24.516682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985844, 40.091816, 24.261858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065467, -0.831053, 0.552327,
		-0.733864, 0.415153, 0.537672,
		-0.676134, -0.370133, -0.637058,
		37.783005, 39.980778, 24.070740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838058, 39.793541, 24.942566>,  <38.256298, 40.239868, 24.516682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838058, 39.793541, 24.942566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781933, 39.647186, 24.574558>,  <37.748257, 39.559372, 24.353754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781933, 39.647186, 24.574558>,  <37.838058, 39.793541, 24.942566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781933, 39.647186, 24.574558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068053, -0.923452, 0.377631,
		-0.987766, 0.115595, 0.104670,
		-0.140311, -0.365888, -0.920021,
		37.739841, 39.537418, 24.298552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309437, 39.213882, 24.975863>,  <37.838058, 39.793541, 24.942566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309437, 39.213882, 24.975863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495300, 39.158894, 24.625961>,  <37.606819, 39.125900, 24.416019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495300, 39.158894, 24.625961>,  <37.309437, 39.213882, 24.975863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495300, 39.158894, 24.625961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042692, -0.990205, 0.132935,
		-0.884460, -0.024424, -0.465975,
		0.464658, -0.137469, -0.874754,
		37.634697, 39.117653, 24.363535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935509, 38.671722, 24.680254>,  <37.309437, 39.213882, 24.975863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935509, 38.671722, 24.680254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278603, 38.697323, 24.476219>,  <37.484459, 38.712685, 24.353798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278603, 38.697323, 24.476219>,  <36.935509, 38.671722, 24.680254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278603, 38.697323, 24.476219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130491, -0.986830, 0.095601,
		-0.497251, -0.148563, -0.854793,
		0.857738, 0.064005, -0.510088,
		37.535923, 38.716526, 24.323193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892288, 38.097546, 24.240431>,  <36.935509, 38.671722, 24.680254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892288, 38.097546, 24.240431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270428, 38.211880, 24.303181>,  <37.497311, 38.280479, 24.340830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270428, 38.211880, 24.303181>,  <36.892288, 38.097546, 24.240431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270428, 38.211880, 24.303181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273508, -0.957097, 0.095701,
		0.177499, -0.047564, -0.982971,
		0.945350, 0.285837, 0.156875,
		37.554031, 38.297630, 24.350243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330841, 37.780884, 23.836647>,  <36.892288, 38.097546, 24.240431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330841, 37.780884, 23.836647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543514, 37.882381, 24.159863>,  <37.671120, 37.943279, 24.353792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543514, 37.882381, 24.159863>,  <37.330841, 37.780884, 23.836647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543514, 37.882381, 24.159863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224334, -0.962180, 0.154543,
		0.816692, 0.099102, -0.568501,
		0.531685, 0.253748, 0.808037,
		37.703018, 37.958508, 24.402273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782200, 37.237114, 23.919151>,  <37.330841, 37.780884, 23.836647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782200, 37.237114, 23.919151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789413, 37.408672, 24.280422>,  <37.793739, 37.511608, 24.497185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789413, 37.408672, 24.280422>,  <37.782200, 37.237114, 23.919151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789413, 37.408672, 24.280422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044984, -0.902755, 0.427795,
		0.998825, 0.032914, -0.035572,
		0.018032, 0.428893, 0.903175,
		37.794823, 37.537342, 24.551374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138165, 36.861813, 24.346272>,  <37.782200, 37.237114, 23.919151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138165, 36.861813, 24.346272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970272, 37.072475, 24.641964>,  <37.869537, 37.198872, 24.819380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970272, 37.072475, 24.641964>,  <38.138165, 36.861813, 24.346272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970272, 37.072475, 24.641964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099646, -0.782786, 0.614261,
		0.902163, 0.331484, 0.276079,
		-0.419729, 0.526653, 0.739232,
		37.844353, 37.230473, 24.863733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577507, 36.714478, 24.858805>,  <38.138165, 36.861813, 24.346272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577507, 36.714478, 24.858805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226902, 36.827198, 25.014919>,  <38.016541, 36.894829, 25.108587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226902, 36.827198, 25.014919>,  <38.577507, 36.714478, 24.858805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226902, 36.827198, 25.014919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040879, -0.764254, 0.643618,
		0.479647, 0.580092, 0.658356,
		-0.876509, 0.281797, 0.390286,
		37.963951, 36.911736, 25.132006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.704144, 35.528542, 29.947956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315823, 35.566307, 30.036158>,  <40.082829, 35.588966, 30.089079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315823, 35.566307, 30.036158>,  <40.704144, 35.528542, 29.947956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315823, 35.566307, 30.036158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108561, -0.646804, 0.754890,
		0.213893, 0.756790, 0.617671,
		-0.970806, 0.094411, 0.220505,
		40.024582, 35.594631, 30.102308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659298, 35.592148, 30.700937>,  <40.704144, 35.528542, 29.947956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659298, 35.592148, 30.700937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.301907, 35.454788, 30.585161>,  <40.087471, 35.372372, 30.515696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.301907, 35.454788, 30.585161>,  <40.659298, 35.592148, 30.700937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301907, 35.454788, 30.585161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030303, -0.689105, 0.724028,
		-0.448088, 0.638130, 0.626105,
		-0.893476, -0.343401, -0.289442,
		40.033863, 35.351768, 30.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374313, 35.400730, 31.259968>,  <40.659298, 35.592148, 30.700937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374313, 35.400730, 31.259968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100140, 35.239311, 31.017538>,  <39.935635, 35.142460, 30.872080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100140, 35.239311, 31.017538>,  <40.374313, 35.400730, 31.259968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100140, 35.239311, 31.017538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131142, -0.750337, 0.647917,
		-0.716226, 0.523587, 0.461386,
		-0.685436, -0.403548, -0.606075,
		39.894508, 35.118248, 30.835716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713448, 35.434879, 31.602627>,  <40.374313, 35.400730, 31.259968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713448, 35.434879, 31.602627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719704, 35.128521, 31.345516>,  <39.723457, 34.944706, 31.191250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719704, 35.128521, 31.345516>,  <39.713448, 35.434879, 31.602627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719704, 35.128521, 31.345516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143395, -0.637929, 0.756626,
		-0.989542, 0.080340, -0.119799,
		0.015636, -0.765892, -0.642778,
		39.724396, 34.898754, 31.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087463, 35.050491, 31.735518>,  <39.713448, 35.434879, 31.602627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087463, 35.050491, 31.735518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318653, 34.784348, 31.546524>,  <39.457367, 34.624660, 31.433128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318653, 34.784348, 31.546524>,  <39.087463, 35.050491, 31.735518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318653, 34.784348, 31.546524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218985, -0.684205, 0.695636,
		-0.786125, -0.298593, -0.541157,
		0.577974, -0.665361, -0.472483,
		39.492046, 34.584740, 31.404779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678581, 34.494476, 31.670933>,  <39.087463, 35.050491, 31.735518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678581, 34.494476, 31.670933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049252, 34.352463, 31.621592>,  <39.271656, 34.267254, 31.591988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049252, 34.352463, 31.621592>,  <38.678581, 34.494476, 31.670933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049252, 34.352463, 31.621592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188684, -0.723285, 0.664272,
		-0.325057, -0.592293, -0.737243,
		0.926680, -0.355032, -0.123353,
		39.327255, 34.245953, 31.584585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598942, 33.767109, 31.820887>,  <38.678581, 34.494476, 31.670933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598942, 33.767109, 31.820887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992237, 33.839729, 31.827597>,  <39.228214, 33.883301, 31.831623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992237, 33.839729, 31.827597>,  <38.598942, 33.767109, 31.820887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992237, 33.839729, 31.827597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118799, -0.707727, 0.696426,
		0.138311, -0.682759, -0.717432,
		0.983238, 0.181554, 0.016775,
		39.287209, 33.894196, 31.832630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950985, 33.173252, 31.596935>,  <38.598942, 33.767109, 31.820887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950985, 33.173252, 31.596935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204884, 33.368446, 31.836592>,  <39.357224, 33.485561, 31.980385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204884, 33.368446, 31.836592>,  <38.950985, 33.173252, 31.596935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204884, 33.368446, 31.836592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013345, -0.782173, 0.622919,
		0.772606, -0.387399, -0.502993,
		0.634745, 0.487984, 0.599141,
		39.395306, 33.514843, 32.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565228, 32.685329, 31.751114>,  <38.950985, 33.173252, 31.596935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565228, 32.685329, 31.751114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569305, 32.954300, 32.047150>,  <39.571751, 33.115685, 32.224770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569305, 32.954300, 32.047150>,  <39.565228, 32.685329, 31.751114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569305, 32.954300, 32.047150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013743, -0.739964, 0.672506,
		0.999854, -0.017025, 0.001699,
		0.010192, 0.672431, 0.740090,
		39.572365, 33.156029, 32.269176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990261, 32.406109, 32.251465>,  <39.565228, 32.685329, 31.751114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990261, 32.406109, 32.251465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831917, 32.704788, 32.465282>,  <39.736912, 32.883995, 32.593575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831917, 32.704788, 32.465282>,  <39.990261, 32.406109, 32.251465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831917, 32.704788, 32.465282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045990, -0.597482, 0.800562,
		0.917160, 0.292324, 0.270858,
		-0.395857, 0.746701, 0.534543,
		39.713161, 32.928799, 32.625645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221519, 32.287666, 32.970791>,  <39.990261, 32.406109, 32.251465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221519, 32.287666, 32.970791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910309, 32.536423, 33.006413>,  <39.723583, 32.685677, 33.027786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910309, 32.536423, 33.006413>,  <40.221519, 32.287666, 32.970791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910309, 32.536423, 33.006413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258002, -0.445540, 0.857280,
		0.572811, 0.644009, 0.507090,
		-0.778025, 0.621889, 0.089054,
		39.676903, 32.722988, 33.033131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254055, 32.563141, 33.617615>,  <40.221519, 32.287666, 32.970791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254055, 32.563141, 33.617615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870674, 32.552006, 33.504063>,  <39.640644, 32.545326, 33.435932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870674, 32.552006, 33.504063>,  <40.254055, 32.563141, 33.617615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870674, 32.552006, 33.504063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252238, -0.382001, 0.889073,
		-0.133195, 0.923742, 0.359108,
		-0.958454, -0.027839, -0.283884,
		39.583138, 32.543655, 33.418896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705151, 33.013885, 34.095116>,  <40.254055, 32.563141, 33.617615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705151, 33.013885, 34.095116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595425, 32.670044, 33.922680>,  <39.529591, 32.463741, 33.819218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595425, 32.670044, 33.922680>,  <39.705151, 33.013885, 34.095116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595425, 32.670044, 33.922680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219633, -0.380434, 0.898349,
		-0.936223, 0.341110, -0.084439,
		-0.274312, -0.859601, -0.431090,
		39.513130, 32.412163, 33.793354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955864, 32.818626, 34.326408>,  <39.705151, 33.013885, 34.095116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955864, 32.818626, 34.326408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194527, 32.513966, 34.225304>,  <39.337727, 32.331169, 34.164642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194527, 32.513966, 34.225304>,  <38.955864, 32.818626, 34.326408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194527, 32.513966, 34.225304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213923, -0.454529, 0.864662,
		-0.773456, -0.461838, -0.434134,
		0.596660, -0.761649, -0.252760,
		39.373524, 32.285469, 34.149475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186192, 33.270466, 34.842148>,  <38.955864, 32.818626, 34.326408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186192, 33.270466, 34.842148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437847, 33.436153, 35.105236>,  <39.588840, 33.535568, 35.263088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437847, 33.436153, 35.105236>,  <39.186192, 33.270466, 34.842148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437847, 33.436153, 35.105236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185799, 0.901787, -0.390203,
		-0.754756, 0.123290, 0.644316,
		0.629144, 0.414221, 0.657723,
		39.626591, 33.560421, 35.302551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871944, 33.848885, 35.292881>,  <39.186192, 33.270466, 34.842148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871944, 33.848885, 35.292881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264862, 33.922009, 35.309238>,  <39.500614, 33.965881, 35.319054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264862, 33.922009, 35.309238>,  <38.871944, 33.848885, 35.292881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264862, 33.922009, 35.309238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166144, 0.951050, -0.260575,
		-0.086530, 0.249168, 0.964587,
		0.982298, 0.182808, 0.040897,
		39.559551, 33.976852, 35.321507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882988, 34.450096, 35.567829>,  <38.871944, 33.848885, 35.292881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882988, 34.450096, 35.567829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240990, 34.430855, 35.390446>,  <39.455791, 34.419312, 35.284016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240990, 34.430855, 35.390446>,  <38.882988, 34.450096, 35.567829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240990, 34.430855, 35.390446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120700, 0.930965, -0.344581,
		0.429414, 0.361927, 0.827413,
		0.895005, -0.048099, -0.443454,
		39.509491, 34.416424, 35.257408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018711, 35.139942, 35.566811>,  <38.882988, 34.450096, 35.567829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018711, 35.139942, 35.566811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298660, 34.991035, 35.322975>,  <39.466629, 34.901691, 35.176674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298660, 34.991035, 35.322975>,  <39.018711, 35.139942, 35.566811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298660, 34.991035, 35.322975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097944, 0.895400, -0.434356,
		0.707518, 0.244290, 0.663130,
		0.699876, -0.372264, -0.609585,
		39.508621, 34.879356, 35.140099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593334, 35.594158, 35.544163>,  <39.018711, 35.139942, 35.566811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593334, 35.594158, 35.544163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637684, 35.373581, 35.213436>,  <39.664291, 35.241234, 35.014999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637684, 35.373581, 35.213436>,  <39.593334, 35.594158, 35.544163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637684, 35.373581, 35.213436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122874, 0.833166, -0.539201,
		0.986210, -0.041813, 0.160130,
		0.110870, -0.551441, -0.826814,
		39.670944, 35.208149, 34.965393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278080, 35.765057, 35.154194>,  <39.593334, 35.594158, 35.544163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278080, 35.765057, 35.154194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044712, 35.599697, 34.874561>,  <39.904690, 35.500481, 34.706779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044712, 35.599697, 34.874561>,  <40.278080, 35.765057, 35.154194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044712, 35.599697, 34.874561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131159, 0.801508, -0.583423,
		0.801508, -0.432074, -0.413398,
		0.583423, 0.413398, 0.699085,
		39.869686, 35.475677, 34.664837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502781, 36.076412, 34.597343>,  <40.278080, 35.765057, 35.154194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502781, 36.076412, 34.597343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149239, 35.952179, 34.457432>,  <39.937115, 35.877640, 34.373486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149239, 35.952179, 34.457432>,  <40.502781, 36.076412, 34.597343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149239, 35.952179, 34.457432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007333, 0.756869, -0.653526,
		0.467707, -0.575056, -0.671238,
		-0.883853, -0.310581, -0.349776,
		39.884083, 35.859005, 34.352497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561668, 36.006149, 33.875267>,  <40.502781, 36.076412, 34.597343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561668, 36.006149, 33.875267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165970, 36.051750, 33.911900>,  <39.928551, 36.079109, 33.933880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165970, 36.051750, 33.911900>,  <40.561668, 36.006149, 33.875267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165970, 36.051750, 33.911900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033310, 0.785478, -0.617992,
		-0.142387, -0.608299, -0.780832,
		-0.989251, 0.114003, 0.091579,
		39.869194, 36.085953, 33.939373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334534, 36.049244, 33.223305>,  <40.561668, 36.006149, 33.875267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334534, 36.049244, 33.223305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041725, 36.213188, 33.440987>,  <39.866039, 36.311554, 33.571598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041725, 36.213188, 33.440987>,  <40.334534, 36.049244, 33.223305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041725, 36.213188, 33.440987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095741, 0.728985, -0.677801,
		-0.674520, -0.548268, -0.494393,
		-0.732022, 0.409857, 0.544207,
		39.822117, 36.336143, 33.604248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701591, 36.125965, 32.723152>,  <40.334534, 36.049244, 33.223305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701591, 36.125965, 32.723152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630165, 36.375687, 33.027351>,  <39.587311, 36.525520, 33.209873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630165, 36.375687, 33.027351>,  <39.701591, 36.125965, 32.723152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630165, 36.375687, 33.027351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255805, 0.716887, -0.648565,
		-0.950094, -0.310352, 0.031688,
		-0.178566, 0.624303, 0.760500,
		39.576595, 36.562977, 33.255501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065331, 36.512402, 32.535358>,  <39.701591, 36.125965, 32.723152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065331, 36.512402, 32.535358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246445, 36.718899, 32.826145>,  <39.355114, 36.842796, 33.000618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246445, 36.718899, 32.826145>,  <39.065331, 36.512402, 32.535358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246445, 36.718899, 32.826145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182167, 0.851694, -0.491359,
		-0.872812, 0.090051, 0.479677,
		0.452786, 0.516245, 0.726964,
		39.382282, 36.873772, 33.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650284, 37.064541, 32.586617>,  <39.065331, 36.512402, 32.535358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650284, 37.064541, 32.586617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005581, 37.172901, 32.735012>,  <39.218761, 37.237915, 32.824051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005581, 37.172901, 32.735012>,  <38.650284, 37.064541, 32.586617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005581, 37.172901, 32.735012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120060, 0.916441, -0.381734,
		-0.443400, 0.294533, 0.846550,
		0.888247, 0.270897, 0.370988,
		39.272057, 37.254169, 32.846310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506287, 37.724251, 32.827297>,  <38.650284, 37.064541, 32.586617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506287, 37.724251, 32.827297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905334, 37.711357, 32.802883>,  <39.144764, 37.703621, 32.788235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905334, 37.711357, 32.802883>,  <38.506287, 37.724251, 32.827297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905334, 37.711357, 32.802883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003730, 0.908131, -0.418670,
		0.068924, 0.417444, 0.906085,
		0.997615, -0.032236, -0.061035,
		39.204620, 37.701687, 32.784573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696213, 38.466263, 33.013485>,  <38.506287, 37.724251, 32.827297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696213, 38.466263, 33.013485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988827, 38.297180, 32.799500>,  <39.164394, 38.195732, 32.671108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988827, 38.297180, 32.799500>,  <38.696213, 38.466263, 33.013485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988827, 38.297180, 32.799500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022106, 0.798913, -0.601040,
		0.681449, 0.427854, 0.593774,
		0.731531, -0.422705, -0.534960,
		39.208286, 38.170368, 32.639011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456848, 39.156502, 33.102509>,  <38.696213, 38.466263, 33.013485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456848, 39.156502, 33.102509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080753, 39.222607, 32.983410>,  <37.855099, 39.262268, 32.911953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080753, 39.222607, 32.983410>,  <38.456848, 39.156502, 33.102509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080753, 39.222607, 32.983410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293751, -0.835894, 0.463671,
		-0.172257, 0.523422, 0.834480,
		-0.940233, 0.165259, -0.297744,
		37.798683, 39.272182, 32.894085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194809, 39.009315, 33.717449>,  <38.456848, 39.156502, 33.102509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194809, 39.009315, 33.717449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891747, 38.987179, 33.457325>,  <37.709911, 38.973896, 33.301250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891747, 38.987179, 33.457325>,  <38.194809, 39.009315, 33.717449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891747, 38.987179, 33.457325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425013, -0.714331, 0.555963,
		-0.495304, 0.697616, 0.517693,
		-0.757653, -0.055344, -0.650307,
		37.664452, 38.970577, 33.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454475, 39.029358, 34.106678>,  <38.194809, 39.009315, 33.717449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454475, 39.029358, 34.106678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396183, 38.839947, 33.759224>,  <37.361210, 38.726299, 33.550751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396183, 38.839947, 33.759224>,  <37.454475, 39.029358, 34.106678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396183, 38.839947, 33.759224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534576, -0.701108, 0.471885,
		-0.832461, 0.533121, -0.150965,
		-0.145729, -0.473528, -0.868639,
		37.352463, 38.697887, 33.498631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708935, 38.823204, 34.080574>,  <37.454475, 39.029358, 34.106678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708935, 38.823204, 34.080574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891121, 38.599251, 33.803711>,  <37.000431, 38.464878, 33.637592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891121, 38.599251, 33.803711>,  <36.708935, 38.823204, 34.080574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891121, 38.599251, 33.803711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390859, -0.824301, 0.409582,
		-0.799862, 0.083983, -0.594280,
		0.455468, -0.559888, -0.692153,
		37.027760, 38.431286, 33.596066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218643, 38.395195, 33.726501>,  <36.708935, 38.823204, 34.080574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218643, 38.395195, 33.726501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.569962, 38.205818, 33.699821>,  <36.780754, 38.092194, 33.683815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.569962, 38.205818, 33.699821>,  <36.218643, 38.395195, 33.726501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569962, 38.205818, 33.699821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434174, -0.848195, 0.303409,
		-0.200219, -0.237525, -0.950523,
		0.878297, -0.473441, -0.066698,
		36.833450, 38.063786, 33.679813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991512, 37.738258, 33.633244>,  <36.218643, 38.395195, 33.726501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991512, 37.738258, 33.633244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380962, 37.652843, 33.665405>,  <36.614632, 37.601593, 33.684700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380962, 37.652843, 33.665405>,  <35.991512, 37.738258, 33.633244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380962, 37.652843, 33.665405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228163, -0.907972, 0.351467,
		-0.002049, -0.360540, -0.932741,
		0.973621, -0.213537, 0.080402,
		36.673050, 37.588783, 33.689526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157547, 37.076591, 33.243217>,  <35.991512, 37.738258, 33.633244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157547, 37.076591, 33.243217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439816, 37.131985, 33.521168>,  <36.609177, 37.165218, 33.687939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439816, 37.131985, 33.521168>,  <36.157547, 37.076591, 33.243217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439816, 37.131985, 33.521168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080673, -0.958633, 0.272973,
		0.703932, -0.248687, -0.665308,
		0.705672, 0.138482, 0.694875,
		36.651516, 37.173531, 33.729630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648045, 36.500748, 33.226498>,  <36.157547, 37.076591, 33.243217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648045, 36.500748, 33.226498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651627, 36.663162, 33.592022>,  <36.653778, 36.760609, 33.811337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651627, 36.663162, 33.592022>,  <36.648045, 36.500748, 33.226498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651627, 36.663162, 33.592022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097548, -0.909138, 0.404911,
		0.995191, -0.092768, 0.031464,
		0.008958, 0.406032, 0.913815,
		36.654312, 36.784973, 33.866165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938152, 36.044495, 33.618145>,  <36.648045, 36.500748, 33.226498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938152, 36.044495, 33.618145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761806, 36.274174, 33.894096>,  <36.655998, 36.411980, 34.059666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761806, 36.274174, 33.894096>,  <36.938152, 36.044495, 33.618145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761806, 36.274174, 33.894096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310208, -0.818715, 0.483194,
		0.842263, -0.000982, 0.539065,
		-0.440866, 0.574199, 0.689878,
		36.629547, 36.446434, 34.101059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031933, 35.646866, 34.189049>,  <36.938152, 36.044495, 33.618145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031933, 35.646866, 34.189049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787220, 35.922531, 34.344372>,  <36.640392, 36.087929, 34.437565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787220, 35.922531, 34.344372>,  <37.031933, 35.646866, 34.189049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787220, 35.922531, 34.344372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333779, -0.669948, 0.663145,
		0.717156, 0.276094, 0.639890,
		-0.611783, 0.689160, 0.388303,
		36.603683, 36.129280, 34.460861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223503, 35.750282, 34.871975>,  <37.031933, 35.646866, 34.189049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223503, 35.750282, 34.871975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834751, 35.841759, 34.849491>,  <36.601501, 35.896645, 34.835999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834751, 35.841759, 34.849491>,  <37.223503, 35.750282, 34.871975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834751, 35.841759, 34.849491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181020, -0.572781, 0.799471,
		0.150631, 0.787162, 0.598069,
		-0.971876, 0.228688, -0.056213,
		36.543190, 35.910366, 34.832626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963223, 35.765999, 35.564571>,  <37.223503, 35.750282, 34.871975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963223, 35.765999, 35.564571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.649010, 35.711830, 35.323040>,  <36.460484, 35.679329, 35.178123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.649010, 35.711830, 35.323040>,  <36.963223, 35.765999, 35.564571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649010, 35.711830, 35.323040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400241, -0.633008, 0.662652,
		-0.471964, 0.762208, 0.443045,
		-0.785530, -0.135423, -0.603824,
		36.413349, 35.671204, 35.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.941578, 42.334076, 31.262859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635063, 42.198483, 31.044542>,  <38.451153, 42.117126, 30.913551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635063, 42.198483, 31.044542>,  <38.941578, 42.334076, 31.262859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635063, 42.198483, 31.044542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327697, -0.524484, 0.785832,
		-0.552645, 0.781029, 0.290822,
		-0.766289, -0.338984, -0.545794,
		38.405178, 42.096786, 30.880804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232410, 42.520214, 31.607563>,  <38.941578, 42.334076, 31.262859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232410, 42.520214, 31.607563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246616, 42.192898, 31.378080>,  <38.255142, 41.996510, 31.240391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246616, 42.192898, 31.378080>,  <38.232410, 42.520214, 31.607563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246616, 42.192898, 31.378080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481182, -0.517148, 0.707829,
		-0.875901, 0.250917, -0.412114,
		0.035517, -0.818290, -0.573707,
		38.257271, 41.947411, 31.205969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756207, 42.109798, 31.884266>,  <38.232410, 42.520214, 31.607563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756207, 42.109798, 31.884266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869263, 41.808865, 31.646240>,  <37.937096, 41.628304, 31.503424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869263, 41.808865, 31.646240>,  <37.756207, 42.109798, 31.884266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869263, 41.808865, 31.646240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360781, -0.658184, 0.660781,
		-0.888794, 0.027927, -0.457456,
		0.282637, -0.752339, -0.595065,
		37.954052, 41.583164, 31.467720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227219, 41.687805, 31.766472>,  <37.756207, 42.109798, 31.884266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227219, 41.687805, 31.766472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546471, 41.454765, 31.705072>,  <37.738022, 41.314941, 31.668232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546471, 41.454765, 31.705072>,  <37.227219, 41.687805, 31.766472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546471, 41.454765, 31.705072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312843, -0.618492, 0.720831,
		-0.514896, -0.527296, -0.675900,
		0.798130, -0.582603, -0.153498,
		37.785908, 41.279984, 31.659023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906219, 40.997543, 31.612898>,  <37.227219, 41.687805, 31.766472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906219, 40.997543, 31.612898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291019, 40.976677, 31.720110>,  <37.521900, 40.964157, 31.784437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291019, 40.976677, 31.720110>,  <36.906219, 40.997543, 31.612898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291019, 40.976677, 31.720110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176716, -0.867240, 0.465474,
		0.208163, -0.495150, -0.843501,
		0.961998, -0.052165, 0.268028,
		37.579620, 40.961029, 31.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184319, 40.375504, 31.363178>,  <36.906219, 40.997543, 31.612898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184319, 40.375504, 31.363178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428867, 40.479877, 31.662014>,  <37.575596, 40.542503, 31.841316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428867, 40.479877, 31.662014>,  <37.184319, 40.375504, 31.363178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428867, 40.479877, 31.662014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143291, -0.891966, 0.428794,
		0.778265, -0.369202, -0.507930,
		0.611368, 0.260933, 0.747089,
		37.612278, 40.558159, 31.886141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541088, 39.854340, 31.456242>,  <37.184319, 40.375504, 31.363178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541088, 39.854340, 31.456242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590965, 40.046398, 31.803555>,  <37.620892, 40.161633, 32.011944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590965, 40.046398, 31.803555>,  <37.541088, 39.854340, 31.456242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590965, 40.046398, 31.803555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059477, -0.869920, 0.489594,
		0.990411, -0.112692, -0.079915,
		0.124693, 0.480146, 0.868281,
		37.628372, 40.190441, 32.064037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195637, 39.567059, 31.705460>,  <37.541088, 39.854340, 31.456242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195637, 39.567059, 31.705460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973354, 39.716949, 32.002316>,  <37.839985, 39.806885, 32.180428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973354, 39.716949, 32.002316>,  <38.195637, 39.567059, 31.705460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973354, 39.716949, 32.002316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064753, -0.870440, 0.487997,
		0.828852, 0.319239, 0.459445,
		-0.555707, 0.374728, 0.742138,
		37.806641, 39.829369, 32.224957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522125, 39.287636, 32.393890>,  <38.195637, 39.567059, 31.705460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522125, 39.287636, 32.393890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169849, 39.445396, 32.498837>,  <37.958485, 39.540051, 32.561806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169849, 39.445396, 32.498837>,  <38.522125, 39.287636, 32.393890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169849, 39.445396, 32.498837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118295, -0.719443, 0.684403,
		0.458688, 0.571709, 0.680260,
		-0.880688, 0.394399, 0.262370,
		37.905643, 39.563717, 32.577549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133549, 39.106945, 32.831875>,  <38.522125, 39.287636, 32.393890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133549, 39.106945, 32.831875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226311, 38.817768, 32.571545>,  <39.281967, 38.644260, 32.415348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226311, 38.817768, 32.571545>,  <39.133549, 39.106945, 32.831875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226311, 38.817768, 32.571545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410763, 0.679263, -0.608175,
		0.881757, -0.126296, 0.454482,
		0.231903, -0.722946, -0.650822,
		39.295883, 38.600883, 32.376297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831699, 39.331356, 32.613750>,  <39.133549, 39.106945, 32.831875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831699, 39.331356, 32.613750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668583, 39.090771, 32.338959>,  <39.570713, 38.946419, 32.174084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668583, 39.090771, 32.338959>,  <39.831699, 39.331356, 32.613750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668583, 39.090771, 32.338959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333570, 0.602245, -0.725281,
		0.849964, -0.524918, -0.044958,
		-0.407789, -0.601466, -0.686984,
		39.546246, 38.910332, 32.132862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348114, 39.366867, 32.098141>,  <39.831699, 39.331356, 32.613750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348114, 39.366867, 32.098141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017464, 39.227993, 31.920986>,  <39.819073, 39.144669, 31.814693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017464, 39.227993, 31.920986>,  <40.348114, 39.366867, 32.098141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017464, 39.227993, 31.920986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210659, 0.538869, -0.815624,
		0.521818, -0.767522, -0.372313,
		-0.826637, -0.347176, -0.442877,
		39.769474, 39.123837, 31.788120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595348, 39.143555, 31.487986>,  <40.348114, 39.366867, 32.098141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595348, 39.143555, 31.487986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199356, 39.170105, 31.438143>,  <39.961761, 39.186035, 31.408237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199356, 39.170105, 31.438143>,  <40.595348, 39.143555, 31.487986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199356, 39.170105, 31.438143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138191, 0.274814, -0.951515,
		-0.028916, -0.959204, -0.281234,
		-0.989984, 0.066378, -0.124607,
		39.902363, 39.190018, 31.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527050, 38.848011, 30.875374>,  <40.595348, 39.143555, 31.487986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527050, 38.848011, 30.875374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217590, 39.097698, 30.918852>,  <40.031914, 39.247509, 30.944939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217590, 39.097698, 30.918852>,  <40.527050, 38.848011, 30.875374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217590, 39.097698, 30.918852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201770, 0.405337, -0.891623,
		-0.600624, -0.667875, -0.439538,
		-0.773654, 0.624216, 0.108698,
		39.985493, 39.284962, 30.951462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047791, 38.759445, 30.350388>,  <40.527050, 38.848011, 30.875374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047791, 38.759445, 30.350388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979866, 39.135353, 30.469044>,  <39.939114, 39.360897, 30.540237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979866, 39.135353, 30.469044>,  <40.047791, 38.759445, 30.350388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979866, 39.135353, 30.469044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150178, 0.322172, -0.934693,
		-0.973967, -0.114171, -0.195841,
		-0.169809, 0.939771, 0.296639,
		39.928925, 39.417286, 30.558035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533203, 38.925133, 29.902288>,  <40.047791, 38.759445, 30.350388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533203, 38.925133, 29.902288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706684, 39.262573, 30.028925>,  <39.810772, 39.465038, 30.104908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706684, 39.262573, 30.028925>,  <39.533203, 38.925133, 29.902288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706684, 39.262573, 30.028925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041258, 0.369581, -0.928282,
		-0.900110, 0.389538, 0.195094,
		0.433704, 0.843605, 0.316592,
		39.836796, 39.515656, 30.123903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450706, 39.284908, 29.427223>,  <39.533203, 38.925133, 29.902288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450706, 39.284908, 29.427223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682266, 39.544453, 29.624748>,  <39.821201, 39.700180, 29.743263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682266, 39.544453, 29.624748>,  <39.450706, 39.284908, 29.427223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682266, 39.544453, 29.624748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234580, 0.447479, -0.862980,
		-0.780925, 0.615421, 0.106837,
		0.578903, 0.648860, 0.493813,
		39.855938, 39.739109, 29.772892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264252, 39.942757, 29.187138>,  <39.450706, 39.284908, 29.427223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264252, 39.942757, 29.187138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636280, 39.991085, 29.325916>,  <39.859497, 40.020084, 29.409184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636280, 39.991085, 29.325916>,  <39.264252, 39.942757, 29.187138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636280, 39.991085, 29.325916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258557, 0.455631, -0.851791,
		-0.260998, 0.881930, 0.392528,
		0.930069, 0.120825, 0.346948,
		39.915302, 40.027332, 29.430000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396835, 40.672596, 29.153704>,  <39.264252, 39.942757, 29.187138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396835, 40.672596, 29.153704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763432, 40.514763, 29.180084>,  <39.983391, 40.420063, 29.195911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763432, 40.514763, 29.180084>,  <39.396835, 40.672596, 29.153704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763432, 40.514763, 29.180084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252730, 0.443264, -0.860026,
		0.310122, 0.804872, 0.505970,
		0.916489, -0.394587, 0.065949,
		40.038380, 40.396385, 29.199869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855267, 41.168991, 28.962769>,  <39.396835, 40.672596, 29.153704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855267, 41.168991, 28.962769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071144, 40.843292, 28.877218>,  <40.200668, 40.647873, 28.825888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071144, 40.843292, 28.877218>,  <39.855267, 41.168991, 28.962769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071144, 40.843292, 28.877218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317348, 0.432074, -0.844157,
		0.779759, 0.387711, 0.491585,
		0.539691, -0.814243, -0.213874,
		40.233051, 40.599018, 28.813055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571392, 41.468029, 28.743483>,  <39.855267, 41.168991, 28.962769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571392, 41.468029, 28.743483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560459, 41.079163, 28.650404>,  <40.553902, 40.845844, 28.594557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560459, 41.079163, 28.650404>,  <40.571392, 41.468029, 28.743483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560459, 41.079163, 28.650404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441166, 0.197158, -0.875501,
		0.897010, -0.126584, 0.423498,
		-0.027329, -0.972165, -0.232697,
		40.552261, 40.787514, 28.580595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292217, 41.279640, 28.452663>,  <40.571392, 41.468029, 28.743483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292217, 41.279640, 28.452663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998810, 41.038845, 28.326452>,  <40.822765, 40.894367, 28.250725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998810, 41.038845, 28.326452>,  <41.292217, 41.279640, 28.452663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998810, 41.038845, 28.326452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271906, 0.165558, -0.947976,
		0.622907, -0.781155, 0.042243,
		-0.733522, -0.601987, -0.315528,
		40.778751, 40.858250, 28.231794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603008, 40.776215, 28.021017>,  <41.292217, 41.279640, 28.452663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603008, 40.776215, 28.021017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224491, 40.791431, 27.892595>,  <40.997379, 40.800564, 27.815542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224491, 40.791431, 27.892595>,  <41.603008, 40.776215, 28.021017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224491, 40.791431, 27.892595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322127, 0.195591, -0.926271,
		0.027554, -0.979947, -0.197343,
		-0.946295, 0.038048, -0.321056,
		40.940601, 40.802845, 27.796278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.083008, 38.958336, 25.446901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215057, 39.171005, 25.758886>,  <35.294289, 39.298607, 25.946077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215057, 39.171005, 25.758886>,  <35.083008, 38.958336, 25.446901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215057, 39.171005, 25.758886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260739, -0.845498, 0.465991,
		0.907212, 0.049532, -0.417747,
		0.330123, 0.531676, 0.779961,
		35.314095, 39.330509, 25.992874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663040, 38.684864, 25.567333>,  <35.083008, 38.958336, 25.446901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663040, 38.684864, 25.567333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549580, 38.859341, 25.908924>,  <35.481503, 38.964027, 26.113878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549580, 38.859341, 25.908924>,  <35.663040, 38.684864, 25.567333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549580, 38.859341, 25.908924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294963, -0.807689, 0.510525,
		0.912435, 0.396704, 0.100441,
		-0.283653, 0.436195, 0.853976,
		35.464485, 38.990200, 26.165117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197010, 38.504101, 26.017485>,  <35.663040, 38.684864, 25.567333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197010, 38.504101, 26.017485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881973, 38.598755, 26.245064>,  <35.692951, 38.655548, 26.381611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881973, 38.598755, 26.245064>,  <36.197010, 38.504101, 26.017485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881973, 38.598755, 26.245064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115905, -0.849954, 0.513949,
		0.605197, 0.470726, 0.641991,
		-0.787593, 0.236631, 0.568949,
		35.645695, 38.669743, 26.415749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439220, 38.311935, 26.700748>,  <36.197010, 38.504101, 26.017485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439220, 38.311935, 26.700748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040218, 38.339245, 26.693510>,  <35.800819, 38.355629, 26.689167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040218, 38.339245, 26.693510>,  <36.439220, 38.311935, 26.700748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040218, 38.339245, 26.693510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066505, -0.821680, 0.566056,
		0.023776, 0.565846, 0.824168,
		-0.997503, 0.068270, -0.018095,
		35.740967, 38.359726, 26.688082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201538, 38.341595, 27.388414>,  <36.439220, 38.311935, 26.700748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201538, 38.341595, 27.388414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902958, 38.204910, 27.160013>,  <35.723808, 38.122902, 27.022972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902958, 38.204910, 27.160013>,  <36.201538, 38.341595, 27.388414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902958, 38.204910, 27.160013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016563, -0.867360, 0.497405,
		-0.665232, 0.361832, 0.653103,
		-0.746453, -0.341707, -0.571003,
		35.679024, 38.102398, 26.988712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800991, 38.043907, 27.876516>,  <36.201538, 38.341595, 27.388414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800991, 38.043907, 27.876516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627075, 37.889133, 27.551250>,  <35.522724, 37.796268, 27.356091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627075, 37.889133, 27.551250>,  <35.800991, 38.043907, 27.876516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627075, 37.889133, 27.551250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172713, -0.850392, 0.496994,
		-0.883814, 0.356533, 0.302916,
		-0.434792, -0.386933, -0.813166,
		35.496639, 37.773052, 27.307301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153328, 37.763680, 28.144173>,  <35.800991, 38.043907, 27.876516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153328, 37.763680, 28.144173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.193867, 37.576408, 27.793053>,  <35.218189, 37.464046, 27.582380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.193867, 37.576408, 27.793053>,  <35.153328, 37.763680, 28.144173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193867, 37.576408, 27.793053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382890, -0.832734, 0.399937,
		-0.918218, 0.295569, -0.263657,
		0.101347, -0.468181, -0.877802,
		35.224270, 37.435955, 27.529713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547005, 37.414757, 28.029963>,  <35.153328, 37.763680, 28.144173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547005, 37.414757, 28.029963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820972, 37.222324, 27.811075>,  <34.985352, 37.106865, 27.679743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820972, 37.222324, 27.811075>,  <34.547005, 37.414757, 28.029963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820972, 37.222324, 27.811075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464240, -0.866988, 0.181144,
		-0.561576, 0.129971, -0.817154,
		0.684919, -0.481081, -0.547217,
		35.026447, 37.077999, 27.646910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185326, 36.959949, 27.659420>,  <34.547005, 37.414757, 28.029963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185326, 36.959949, 27.659420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567047, 36.841316, 27.674088>,  <34.796082, 36.770134, 27.682888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567047, 36.841316, 27.674088>,  <34.185326, 36.959949, 27.659420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567047, 36.841316, 27.674088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295072, -0.915712, 0.272772,
		-0.047323, -0.271126, -0.961380,
		0.954302, -0.296585, 0.036668,
		34.853336, 36.752342, 27.685087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086720, 36.235504, 27.556488>,  <34.185326, 36.959949, 27.659420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086720, 36.235504, 27.556488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463310, 36.263390, 27.688402>,  <34.689266, 36.280121, 27.767551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463310, 36.263390, 27.688402>,  <34.086720, 36.235504, 27.556488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463310, 36.263390, 27.688402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081461, -0.902319, 0.423303,
		0.327082, -0.425395, -0.843834,
		0.941478, 0.069715, 0.329786,
		34.745754, 36.284306, 27.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427147, 35.563129, 27.522942>,  <34.086720, 36.235504, 27.556488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427147, 35.563129, 27.522942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.662804, 35.763500, 27.776548>,  <34.804199, 35.883724, 27.928713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.662804, 35.763500, 27.776548>,  <34.427147, 35.563129, 27.522942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662804, 35.763500, 27.776548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075933, -0.815499, 0.573755,
		0.804453, -0.289880, -0.518483,
		0.589143, 0.500929, 0.634019,
		34.839546, 35.913780, 27.966755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031517, 35.168652, 27.528812>,  <34.427147, 35.563129, 27.522942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031517, 35.168652, 27.528812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045898, 35.376865, 27.870045>,  <35.054527, 35.501793, 28.074783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045898, 35.376865, 27.870045>,  <35.031517, 35.168652, 27.528812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045898, 35.376865, 27.870045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251214, -0.830929, 0.496435,
		0.967264, 0.196457, -0.160641,
		0.035953, 0.520539, 0.853081,
		35.056686, 35.533028, 28.125969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666874, 35.032150, 27.918686>,  <35.031517, 35.168652, 27.528812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666874, 35.032150, 27.918686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403126, 35.152016, 28.194494>,  <35.244877, 35.223934, 28.359980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403126, 35.152016, 28.194494>,  <35.666874, 35.032150, 27.918686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403126, 35.152016, 28.194494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279430, -0.753753, 0.594790,
		0.697964, 0.584857, 0.413265,
		-0.659367, 0.299663, 0.689520,
		35.205315, 35.241913, 28.401350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989628, 34.978764, 28.518284>,  <35.666874, 35.032150, 27.918686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989628, 34.978764, 28.518284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605083, 34.990955, 28.627724>,  <35.374355, 34.998272, 28.693388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605083, 34.990955, 28.627724>,  <35.989628, 34.978764, 28.518284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605083, 34.990955, 28.627724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132552, -0.819810, 0.557083,
		0.241280, 0.571824, 0.784093,
		-0.961361, 0.030480, 0.273600,
		35.316677, 35.000099, 28.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692112, 35.143879, 28.783152>,  <35.989628, 34.978764, 28.518284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692112, 35.143879, 28.783152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049858, 34.980049, 28.711193>,  <37.264503, 34.881752, 28.668018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049858, 34.980049, 28.711193>,  <36.692112, 35.143879, 28.783152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049858, 34.980049, 28.711193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249025, 0.789917, -0.560373,
		0.371619, 0.456378, 0.808467,
		0.894363, -0.409574, -0.179898,
		37.318169, 34.857178, 28.657223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077473, 35.772011, 28.823683>,  <36.692112, 35.143879, 28.783152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077473, 35.772011, 28.823683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306194, 35.523655, 28.609190>,  <37.443428, 35.374641, 28.480494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306194, 35.523655, 28.609190>,  <37.077473, 35.772011, 28.823683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306194, 35.523655, 28.609190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185002, 0.734380, -0.653039,
		0.799262, 0.274203, 0.534783,
		0.571800, -0.620885, -0.536234,
		37.477734, 35.337391, 28.448320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594250, 36.210590, 28.556168>,  <37.077473, 35.772011, 28.823683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594250, 36.210590, 28.556168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639164, 35.875820, 28.341898>,  <37.666111, 35.674957, 28.213337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639164, 35.875820, 28.341898>,  <37.594250, 36.210590, 28.556168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639164, 35.875820, 28.341898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044840, 0.542801, -0.838663,
		0.992664, 0.070149, 0.098476,
		0.112284, -0.836926, -0.535674,
		37.672848, 35.624741, 28.181196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163258, 36.236946, 27.988480>,  <37.594250, 36.210590, 28.556168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163258, 36.236946, 27.988480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982849, 35.901714, 27.865707>,  <37.874603, 35.700577, 27.792044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982849, 35.901714, 27.865707>,  <38.163258, 36.236946, 27.988480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982849, 35.901714, 27.865707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143091, 0.271546, -0.951729,
		0.880968, -0.473169, -0.002552,
		-0.451022, -0.838077, -0.306930,
		37.847542, 35.650291, 27.773628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572552, 35.876450, 27.472845>,  <38.163258, 36.236946, 27.988480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572552, 35.876450, 27.472845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192272, 35.785923, 27.388029>,  <37.964104, 35.731606, 27.337139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192272, 35.785923, 27.388029>,  <38.572552, 35.876450, 27.472845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192272, 35.785923, 27.388029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080627, 0.479838, -0.873645,
		0.299464, -0.847666, -0.437932,
		-0.950695, -0.226316, -0.212038,
		37.907063, 35.718029, 27.324417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549477, 35.727772, 26.699598>,  <38.572552, 35.876450, 27.472845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549477, 35.727772, 26.699598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157017, 35.757935, 26.770779>,  <37.921543, 35.776031, 26.813486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157017, 35.757935, 26.770779>,  <38.549477, 35.727772, 26.699598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157017, 35.757935, 26.770779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123490, 0.463681, -0.877354,
		-0.148669, -0.882788, -0.445627,
		-0.981146, 0.075405, 0.177950,
		37.862675, 35.780556, 26.824163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312447, 35.500343, 26.058554>,  <38.549477, 35.727772, 26.699598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312447, 35.500343, 26.058554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026741, 35.719006, 26.233366>,  <37.855316, 35.850204, 26.338253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026741, 35.719006, 26.233366>,  <38.312447, 35.500343, 26.058554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026741, 35.719006, 26.233366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003925, 0.621300, -0.783563,
		-0.699864, -0.561387, -0.441627,
		-0.714265, 0.546655, 0.437029,
		37.812462, 35.883003, 26.364475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687973, 35.441555, 25.701820>,  <38.312447, 35.500343, 26.058554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687973, 35.441555, 25.701820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639954, 35.778427, 25.912085>,  <37.611141, 35.980549, 26.038242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639954, 35.778427, 25.912085>,  <37.687973, 35.441555, 25.701820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639954, 35.778427, 25.912085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146640, 0.508640, -0.848400,
		-0.981879, -0.178932, 0.062436,
		-0.120048, 0.842181, 0.525661,
		37.603939, 36.031082, 26.069782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115776, 35.815361, 25.424936>,  <37.687973, 35.441555, 25.701820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115776, 35.815361, 25.424936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345337, 36.088329, 25.606016>,  <37.483074, 36.252110, 25.714664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345337, 36.088329, 25.606016>,  <37.115776, 35.815361, 25.424936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345337, 36.088329, 25.606016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140094, 0.626464, -0.766757,
		-0.806849, 0.376626, 0.455134,
		0.573906, 0.682419, 0.452698,
		37.517509, 36.293056, 25.741825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761101, 36.500977, 25.338882>,  <37.115776, 35.815361, 25.424936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761101, 36.500977, 25.338882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127270, 36.616322, 25.451208>,  <37.346970, 36.685528, 25.518604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127270, 36.616322, 25.451208>,  <36.761101, 36.500977, 25.338882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127270, 36.616322, 25.451208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091986, 0.829085, -0.551504,
		-0.391852, 0.479026, 0.785485,
		0.915418, 0.288362, 0.280815,
		37.401894, 36.702831, 25.535452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811264, 37.113613, 25.643940>,  <36.761101, 36.500977, 25.338882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811264, 37.113613, 25.643940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175442, 37.083115, 25.481321>,  <37.393948, 37.064816, 25.383751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175442, 37.083115, 25.481321>,  <36.811264, 37.113613, 25.643940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175442, 37.083115, 25.481321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064303, 0.944826, -0.321199,
		0.408605, 0.318576, 0.855308,
		0.910443, -0.076245, -0.406546,
		37.448574, 37.060242, 25.359358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140827, 37.715515, 25.792477>,  <36.811264, 37.113613, 25.643940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140827, 37.715515, 25.792477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365124, 37.561485, 25.499277>,  <37.499702, 37.469067, 25.323359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365124, 37.561485, 25.499277>,  <37.140827, 37.715515, 25.792477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365124, 37.561485, 25.499277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161647, 0.919152, -0.359207,
		0.812057, 0.082936, 0.577655,
		0.560744, -0.385073, -0.732997,
		37.533348, 37.445965, 25.279377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677219, 38.109299, 25.705437>,  <37.140827, 37.715515, 25.792477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677219, 38.109299, 25.705437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700062, 37.943909, 25.341948>,  <37.713768, 37.844673, 25.123854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700062, 37.943909, 25.341948>,  <37.677219, 38.109299, 25.705437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700062, 37.943909, 25.341948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391432, 0.846605, -0.360612,
		0.918433, -0.335111, 0.210192,
		0.057105, -0.413474, -0.908723,
		37.717194, 37.819866, 25.069330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344280, 38.176266, 25.468920>,  <37.677219, 38.109299, 25.705437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344280, 38.176266, 25.468920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113792, 38.116787, 25.147459>,  <37.975498, 38.081100, 24.954582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113792, 38.116787, 25.147459>,  <38.344280, 38.176266, 25.468920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113792, 38.116787, 25.147459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225475, 0.916227, -0.331195,
		0.785576, -0.372045, -0.494421,
		-0.576221, -0.148700, -0.803653,
		37.940926, 38.072178, 24.906363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069267, 38.071747, 25.297209>,  <38.344280, 38.176266, 25.468920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069267, 38.071747, 25.297209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416893, 38.230030, 25.415960>,  <39.625469, 38.325001, 25.487211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416893, 38.230030, 25.415960>,  <39.069267, 38.071747, 25.297209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416893, 38.230030, 25.415960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011360, -0.584004, 0.811671,
		0.494565, -0.708769, -0.503043,
		0.869066, 0.395710, 0.296880,
		39.677612, 38.348743, 25.505024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488651, 37.505188, 25.572399>,  <39.069267, 38.071747, 25.297209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488651, 37.505188, 25.572399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.671749, 37.824188, 25.729610>,  <39.781609, 38.015587, 25.823936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.671749, 37.824188, 25.729610>,  <39.488651, 37.505188, 25.572399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671749, 37.824188, 25.729610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167253, -0.511407, 0.842905,
		0.873211, -0.320099, -0.367476,
		0.457743, 0.797496, 0.393029,
		39.809071, 38.063438, 25.847519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004593, 37.254658, 26.079468>,  <39.488651, 37.505188, 25.572399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004593, 37.254658, 26.079468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.940113, 37.629463, 26.203411>,  <39.901424, 37.854347, 26.277777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.940113, 37.629463, 26.203411>,  <40.004593, 37.254658, 26.079468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940113, 37.629463, 26.203411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122184, -0.292600, 0.948397,
		0.979329, 0.190745, -0.067321,
		-0.161204, 0.937018, 0.309857,
		39.891750, 37.910568, 26.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692966, 37.436359, 26.480553>,  <40.004593, 37.254658, 26.079468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692966, 37.436359, 26.480553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400345, 37.685860, 26.590656>,  <40.224773, 37.835560, 26.656717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400345, 37.685860, 26.590656>,  <40.692966, 37.436359, 26.480553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400345, 37.685860, 26.590656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195720, -0.194607, 0.961157,
		0.653085, 0.757012, 0.020286,
		-0.731555, 0.623747, 0.275257,
		40.180878, 37.872982, 26.673233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911110, 37.561466, 27.123163>,  <40.692966, 37.436359, 26.480553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911110, 37.561466, 27.123163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532890, 37.691658, 27.122654>,  <40.305958, 37.769775, 27.122349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532890, 37.691658, 27.122654>,  <40.911110, 37.561466, 27.123163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532890, 37.691658, 27.122654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123236, -0.354375, 0.926947,
		0.301254, 0.876629, 0.375189,
		-0.945547, 0.325483, -0.001275,
		40.249226, 37.789303, 27.122271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833946, 37.896923, 27.776094>,  <40.911110, 37.561466, 27.123163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833946, 37.896923, 27.776094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.452862, 37.828018, 27.675959>,  <40.224213, 37.786674, 27.615877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.452862, 37.828018, 27.675959>,  <40.833946, 37.896923, 27.776094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452862, 37.828018, 27.675959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171217, -0.376314, 0.910534,
		-0.251055, 0.910338, 0.329024,
		-0.952710, -0.172259, -0.250340,
		40.167049, 37.776340, 27.600857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478477, 38.153034, 28.351242>,  <40.833946, 37.896923, 27.776094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478477, 38.153034, 28.351242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.230984, 37.903130, 28.160727>,  <40.082489, 37.753189, 28.046417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.230984, 37.903130, 28.160727>,  <40.478477, 38.153034, 28.351242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230984, 37.903130, 28.160727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353715, -0.319795, 0.878986,
		-0.701467, 0.712326, -0.023118,
		-0.618732, -0.624758, -0.476287,
		40.045364, 37.715702, 28.017841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859097, 38.139313, 28.787401>,  <40.478477, 38.153034, 28.351242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859097, 38.139313, 28.787401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876541, 37.801472, 28.573956>,  <39.887009, 37.598766, 28.445889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876541, 37.801472, 28.573956>,  <39.859097, 38.139313, 28.787401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876541, 37.801472, 28.573956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342658, -0.514371, 0.786135,
		-0.938447, 0.148561, -0.311843,
		0.043614, -0.844602, -0.533616,
		39.889626, 37.548092, 28.413870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273933, 37.892876, 28.886562>,  <39.859097, 38.139313, 28.787401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273933, 37.892876, 28.886562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490192, 37.584911, 28.750957>,  <39.619949, 37.400131, 28.669594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490192, 37.584911, 28.750957>,  <39.273933, 37.892876, 28.886562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490192, 37.584911, 28.750957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300330, -0.553080, 0.777113,
		-0.785811, -0.318331, -0.530252,
		0.540651, -0.769914, -0.339012,
		39.652390, 37.353939, 28.649254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792191, 37.263237, 28.898434>,  <39.273933, 37.892876, 28.886562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792191, 37.263237, 28.898434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.171822, 37.137253, 28.895319>,  <39.399601, 37.061661, 28.893450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.171822, 37.137253, 28.895319>,  <38.792191, 37.263237, 28.898434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171822, 37.137253, 28.895319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189204, -0.589547, 0.785262,
		-0.251917, -0.743798, -0.619115,
		0.949073, -0.314959, -0.007788,
		39.456543, 37.042767, 28.892982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764290, 36.561680, 28.930040>,  <38.792191, 37.263237, 28.898434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764290, 36.561680, 28.930040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128845, 36.649693, 29.069151>,  <39.347580, 36.702499, 29.152617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128845, 36.649693, 29.069151>,  <38.764290, 36.561680, 28.930040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128845, 36.649693, 29.069151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038226, -0.796146, 0.603896,
		0.409758, -0.563681, -0.717191,
		0.911393, 0.220037, 0.347774,
		39.402264, 36.715702, 29.173483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038418, 35.877060, 28.852245>,  <38.764290, 36.561680, 28.930040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038418, 35.877060, 28.852245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240463, 36.119976, 29.097538>,  <39.361691, 36.265728, 29.244715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240463, 36.119976, 29.097538>,  <39.038418, 35.877060, 28.852245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240463, 36.119976, 29.097538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112834, -0.750908, 0.650696,
		0.855646, -0.259481, -0.447817,
		0.505113, 0.607294, 0.613233,
		39.391998, 36.302166, 29.281507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670464, 35.546566, 29.016731>,  <39.038418, 35.877060, 28.852245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670464, 35.546566, 29.016731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618515, 35.817120, 29.306734>,  <39.587345, 35.979450, 29.480736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618515, 35.817120, 29.306734>,  <39.670464, 35.546566, 29.016731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618515, 35.817120, 29.306734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208326, -0.696266, 0.686887,
		0.969398, 0.240246, -0.050482,
		-0.129873, 0.676384, 0.725009,
		39.579552, 36.020035, 29.524237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441910, 35.732281, 29.272860>,  <39.670464, 35.546566, 29.016731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441910, 35.732281, 29.272860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143620, 35.778278, 29.535362>,  <39.964645, 35.805878, 29.692863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143620, 35.778278, 29.535362>,  <40.441910, 35.732281, 29.272860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143620, 35.778278, 29.535362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398490, -0.712414, 0.577644,
		0.533951, 0.692275, 0.485441,
		-0.745723, 0.114990, 0.656258,
		39.919903, 35.812775, 29.732239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.569134, 40.352524, 27.298849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239674, 40.579300, 27.293530>,  <41.041996, 40.715366, 27.290337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239674, 40.579300, 27.293530>,  <41.569134, 40.352524, 27.298849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239674, 40.579300, 27.293530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156954, 0.205357, -0.966020,
		-0.544948, -0.797749, -0.258126,
		-0.823649, 0.566944, -0.013301,
		40.992580, 40.749382, 27.289539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270821, 40.178516, 26.718142>,  <41.569134, 40.352524, 27.298849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270821, 40.178516, 26.718142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120365, 40.535618, 26.817339>,  <41.030090, 40.749878, 26.876858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120365, 40.535618, 26.817339>,  <41.270821, 40.178516, 26.718142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120365, 40.535618, 26.817339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135518, 0.317777, -0.938431,
		-0.916598, -0.319377, -0.240515,
		-0.376143, 0.892758, 0.247993,
		41.007523, 40.803444, 26.891737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039722, 40.350220, 26.069191>,  <41.270821, 40.178516, 26.718142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039722, 40.350220, 26.069191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.033360, 40.685032, 26.287962>,  <41.029541, 40.885918, 26.419224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.033360, 40.685032, 26.287962>,  <41.039722, 40.350220, 26.069191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033360, 40.685032, 26.287962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019364, 0.547151, -0.836810,
		-0.999686, -0.002717, -0.024910,
		-0.015903, 0.837030, 0.546927,
		41.028587, 40.936142, 26.452040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466606, 40.713326, 25.834206>,  <41.039722, 40.350220, 26.069191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466606, 40.713326, 25.834206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.749008, 40.958939, 25.975355>,  <40.918449, 41.106308, 26.060045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.749008, 40.958939, 25.975355>,  <40.466606, 40.713326, 25.834206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749008, 40.958939, 25.975355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076727, 0.561647, -0.823811,
		-0.704043, 0.554536, 0.443637,
		0.706001, 0.614037, 0.352876,
		40.960808, 41.143150, 26.081219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192486, 41.331535, 25.603098>,  <40.466606, 40.713326, 25.834206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192486, 41.331535, 25.603098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571453, 41.431618, 25.682899>,  <40.798832, 41.491665, 25.730782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571453, 41.431618, 25.682899>,  <40.192486, 41.331535, 25.603098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571453, 41.431618, 25.682899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009343, 0.601549, -0.798781,
		-0.319871, 0.758642, 0.567578,
		0.947415, 0.250204, 0.199506,
		40.855679, 41.506680, 25.742752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296127, 42.030167, 25.570229>,  <40.192486, 41.331535, 25.603098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296127, 42.030167, 25.570229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.664532, 41.889050, 25.504177>,  <40.885574, 41.804379, 25.464546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.664532, 41.889050, 25.504177>,  <40.296127, 42.030167, 25.570229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664532, 41.889050, 25.504177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108347, 0.639210, -0.761362,
		0.374157, 0.683334, 0.626946,
		0.921014, -0.352796, -0.165128,
		40.940838, 41.783211, 25.454639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642258, 42.633057, 25.457718>,  <40.296127, 42.030167, 25.570229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642258, 42.633057, 25.457718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895794, 42.356148, 25.319733>,  <41.047916, 42.190002, 25.236940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895794, 42.356148, 25.319733>,  <40.642258, 42.633057, 25.457718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895794, 42.356148, 25.319733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190057, 0.571728, -0.798126,
		0.749746, 0.440326, 0.493958,
		0.633845, -0.692271, -0.344964,
		41.085949, 42.148468, 25.216244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268440, 42.868782, 25.385904>,  <40.642258, 42.633057, 25.457718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268440, 42.868782, 25.385904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295074, 42.558178, 25.135273>,  <41.311054, 42.371815, 24.984894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295074, 42.558178, 25.135273>,  <41.268440, 42.868782, 25.385904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295074, 42.558178, 25.135273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180567, 0.626982, -0.757819,
		0.981306, -0.062679, 0.181959,
		0.066586, -0.776508, -0.626579,
		41.315052, 42.325226, 24.947300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821636, 43.013130, 24.919317>,  <41.268440, 42.868782, 25.385904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821636, 43.013130, 24.919317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644321, 42.708511, 24.730196>,  <41.537933, 42.525742, 24.616722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644321, 42.708511, 24.730196>,  <41.821636, 43.013130, 24.919317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644321, 42.708511, 24.730196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128708, 0.467919, -0.874349,
		0.887089, -0.448444, -0.109408,
		-0.443291, -0.761544, -0.472804,
		41.511333, 42.480049, 24.588354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291698, 42.763058, 24.316900>,  <41.821636, 43.013130, 24.919317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291698, 42.763058, 24.316900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.919174, 42.645535, 24.230803>,  <41.695660, 42.575020, 24.179144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.919174, 42.645535, 24.230803>,  <42.291698, 42.763058, 24.316900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919174, 42.645535, 24.230803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162366, 0.194082, -0.967455,
		0.326023, -0.935953, -0.133046,
		-0.931314, -0.293811, -0.215243,
		41.639778, 42.557392, 24.166229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300156, 42.644154, 23.550989>,  <42.291698, 42.763058, 24.316900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300156, 42.644154, 23.550989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.910999, 42.657948, 23.642454>,  <41.677505, 42.666222, 23.697334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.910999, 42.657948, 23.642454>,  <42.300156, 42.644154, 23.550989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910999, 42.657948, 23.642454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197098, 0.393531, -0.897934,
		-0.120950, -0.918664, -0.376068,
		-0.972895, 0.034483, 0.228664,
		41.619129, 42.668293, 23.711054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959171, 42.423843, 22.853199>,  <42.300156, 42.644154, 23.550989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959171, 42.423843, 22.853199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.702957, 42.624737, 23.085567>,  <41.549229, 42.745274, 23.224989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.702957, 42.624737, 23.085567>,  <41.959171, 42.423843, 22.853199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702957, 42.624737, 23.085567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298308, 0.534337, -0.790883,
		-0.707618, -0.679885, -0.192442,
		-0.640538, 0.502236, 0.580922,
		41.510796, 42.775406, 23.259844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301678, 42.431393, 22.524460>,  <41.959171, 42.423843, 22.853199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301678, 42.431393, 22.524460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321621, 42.751995, 22.762823>,  <41.333588, 42.944355, 22.905842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321621, 42.751995, 22.762823>,  <41.301678, 42.431393, 22.524460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321621, 42.751995, 22.762823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321749, 0.577731, -0.750136,
		-0.945512, -0.154332, 0.286688,
		0.049858, 0.801504, 0.595908,
		41.336578, 42.992447, 22.941595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586140, 42.912209, 22.536190>,  <41.301678, 42.431393, 22.524460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586140, 42.912209, 22.536190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908428, 43.127598, 22.634872>,  <41.101803, 43.256832, 22.694082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908428, 43.127598, 22.634872>,  <40.586140, 42.912209, 22.536190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908428, 43.127598, 22.634872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305759, 0.734872, -0.605371,
		-0.507271, 0.412328, 0.756744,
		0.805722, 0.538469, 0.246706,
		41.150146, 43.289139, 22.708885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487518, 42.681622, 21.880568>,  <40.586140, 42.912209, 22.536190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487518, 42.681622, 21.880568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.374050, 42.369053, 21.658249>,  <40.305969, 42.181511, 21.524858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.374050, 42.369053, 21.658249>,  <40.487518, 42.681622, 21.880568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374050, 42.369053, 21.658249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124044, -0.604638, 0.786782,
		-0.950864, 0.154246, 0.268451,
		-0.283673, -0.781422, -0.555796,
		40.288948, 42.134624, 21.491510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019413, 42.199902, 22.330683>,  <40.487518, 42.681622, 21.880568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019413, 42.199902, 22.330683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190117, 41.972256, 22.049547>,  <40.292542, 41.835667, 21.880867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190117, 41.972256, 22.049547>,  <40.019413, 42.199902, 22.330683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190117, 41.972256, 22.049547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031301, -0.767401, 0.640403,
		-0.903822, -0.295299, -0.309684,
		0.426762, -0.569117, -0.702837,
		40.318146, 41.801521, 21.838696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587646, 41.622654, 22.371990>,  <40.019413, 42.199902, 22.330683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587646, 41.622654, 22.371990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.918880, 41.511925, 22.176996>,  <40.117622, 41.445488, 22.059999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.918880, 41.511925, 22.176996>,  <39.587646, 41.622654, 22.371990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918880, 41.511925, 22.176996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052315, -0.827625, 0.558838,
		-0.558154, -0.488269, -0.670863,
		0.828086, -0.276821, -0.487486,
		40.167305, 41.428879, 22.030750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503624, 40.831421, 22.060350>,  <39.587646, 41.622654, 22.371990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503624, 40.831421, 22.060350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.890404, 40.923805, 22.103544>,  <40.122471, 40.979237, 22.129459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.890404, 40.923805, 22.103544>,  <39.503624, 40.831421, 22.060350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890404, 40.923805, 22.103544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120393, -0.786958, 0.605147,
		0.224746, -0.572147, -0.788756,
		0.966951, 0.230965, 0.107983,
		40.180489, 40.993095, 22.135939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928616, 40.171951, 21.923929>,  <39.503624, 40.831421, 22.060350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928616, 40.171951, 21.923929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163170, 40.412830, 22.140636>,  <40.303902, 40.557358, 22.270660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163170, 40.412830, 22.140636>,  <39.928616, 40.171951, 21.923929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163170, 40.412830, 22.140636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237817, -0.767331, 0.595523,
		0.774336, -0.220364, -0.593163,
		0.586384, 0.602199, 0.541766,
		40.339085, 40.593491, 22.303165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423012, 39.703037, 22.129484>,  <39.928616, 40.171951, 21.923929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423012, 39.703037, 22.129484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526432, 40.010551, 22.363445>,  <40.588486, 40.195061, 22.503822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526432, 40.010551, 22.363445>,  <40.423012, 39.703037, 22.129484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526432, 40.010551, 22.363445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148930, -0.629977, 0.762200,
		0.954448, -0.109960, -0.277379,
		0.258553, 0.768790, 0.584904,
		40.603996, 40.241188, 22.538916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096855, 39.628777, 22.352797>,  <40.423012, 39.703037, 22.129484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096855, 39.628777, 22.352797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898453, 39.842140, 22.626863>,  <40.779411, 39.970158, 22.791304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898453, 39.842140, 22.626863>,  <41.096855, 39.628777, 22.352797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898453, 39.842140, 22.626863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075482, -0.759599, 0.645997,
		0.865031, 0.372137, 0.336504,
		-0.496007, 0.533408, 0.685166,
		40.749649, 40.002163, 22.832413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436333, 39.540974, 22.897264>,  <41.096855, 39.628777, 22.352797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436333, 39.540974, 22.897264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098747, 39.677185, 23.063044>,  <40.896198, 39.758911, 23.162512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098747, 39.677185, 23.063044>,  <41.436333, 39.540974, 22.897264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098747, 39.677185, 23.063044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080659, -0.683295, 0.725674,
		0.530305, 0.645870, 0.549208,
		-0.843962, 0.340529, 0.414450,
		40.845558, 39.779343, 23.187378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591660, 39.499920, 23.608477>,  <41.436333, 39.540974, 22.897264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591660, 39.499920, 23.608477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.192490, 39.501316, 23.582756>,  <40.952988, 39.502155, 23.567324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.192490, 39.501316, 23.582756>,  <41.591660, 39.499920, 23.608477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192490, 39.501316, 23.582756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047979, -0.706369, 0.706216,
		-0.042955, 0.707835, 0.705070,
		-0.997924, 0.003493, -0.064303,
		40.893112, 39.502365, 23.563465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270756, 39.714458, 24.286583>,  <41.591660, 39.499920, 23.608477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270756, 39.714458, 24.286583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.969170, 39.529999, 24.099445>,  <40.788219, 39.419323, 23.987164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.969170, 39.529999, 24.099445>,  <41.270756, 39.714458, 24.286583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969170, 39.529999, 24.099445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221327, -0.492216, 0.841866,
		-0.618508, 0.738283, 0.269047,
		-0.753964, -0.461153, -0.467842,
		40.742981, 39.391651, 23.959093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750668, 39.794765, 24.803684>,  <41.270756, 39.714458, 24.286583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750668, 39.794765, 24.803684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595730, 39.521660, 24.555878>,  <40.502769, 39.357796, 24.407194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595730, 39.521660, 24.555878>,  <40.750668, 39.794765, 24.803684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595730, 39.521660, 24.555878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610622, -0.313462, 0.727243,
		-0.690730, 0.659982, -0.295492,
		-0.387342, -0.682763, -0.619517,
		40.479527, 39.316830, 24.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058125, 39.875053, 24.838192>,  <40.750668, 39.794765, 24.803684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058125, 39.875053, 24.838192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.121414, 39.496685, 24.724915>,  <40.159389, 39.269665, 24.656948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.121414, 39.496685, 24.724915>,  <40.058125, 39.875053, 24.838192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121414, 39.496685, 24.724915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544623, -0.322837, 0.774055,
		-0.823620, 0.031759, -0.566252,
		0.158224, -0.945921, -0.283192,
		40.168880, 39.212910, 24.639957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471146, 39.518902, 25.022305>,  <40.058125, 39.875053, 24.838192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471146, 39.518902, 25.022305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748409, 39.231979, 24.994028>,  <39.914768, 39.059826, 24.977062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748409, 39.231979, 24.994028>,  <39.471146, 39.518902, 25.022305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748409, 39.231979, 24.994028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466109, -0.520895, 0.715129,
		-0.549793, -0.462747, -0.695408,
		0.693159, -0.717310, -0.070694,
		39.956356, 39.016788, 24.972820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078018, 38.857357, 25.170036>,  <39.471146, 39.518902, 25.022305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078018, 38.857357, 25.170036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467648, 38.777431, 25.212456>,  <39.701427, 38.729477, 25.237907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467648, 38.777431, 25.212456>,  <39.078018, 38.857357, 25.170036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467648, 38.777431, 25.212456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183311, -0.422519, 0.887623,
		-0.132555, -0.884053, -0.448195,
		0.974077, -0.199818, 0.106049,
		39.759872, 38.717487, 25.244270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846996, 38.719357, 24.507694>,  <39.078018, 38.857357, 25.170036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846996, 38.719357, 24.507694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470829, 38.598808, 24.444731>,  <38.245129, 38.526478, 24.406952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470829, 38.598808, 24.444731>,  <38.846996, 38.719357, 24.507694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470829, 38.598808, 24.444731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170676, 0.818841, -0.548060,
		0.294065, -0.488542, -0.821494,
		-0.940423, -0.301375, -0.157410,
		38.188702, 38.508396, 24.397509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697899, 38.845139, 23.777000>,  <38.846996, 38.719357, 24.507694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697899, 38.845139, 23.777000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334652, 38.809292, 23.940605>,  <38.116703, 38.787785, 24.038769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334652, 38.809292, 23.940605>,  <38.697899, 38.845139, 23.777000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334652, 38.809292, 23.940605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303405, 0.814028, -0.495281,
		-0.288563, -0.573870, -0.766423,
		-0.908117, -0.089617, 0.409014,
		38.062218, 38.782406, 24.063309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172039, 38.869244, 23.204828>,  <38.697899, 38.845139, 23.777000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172039, 38.869244, 23.204828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036423, 38.965576, 23.568598>,  <37.955055, 39.023376, 23.786860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036423, 38.965576, 23.568598>,  <38.172039, 38.869244, 23.204828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036423, 38.965576, 23.568598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272357, 0.900157, -0.339910,
		-0.900486, -0.362931, -0.239595,
		-0.339037, 0.240828, 0.909426,
		37.934711, 39.037827, 23.841425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405357, 39.100174, 23.110771>,  <38.172039, 38.869244, 23.204828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405357, 39.100174, 23.110771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508118, 39.242535, 23.470179>,  <37.569775, 39.327950, 23.685823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508118, 39.242535, 23.470179>,  <37.405357, 39.100174, 23.110771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508118, 39.242535, 23.470179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219962, 0.926854, -0.304234,
		-0.941073, -0.119482, 0.316394,
		0.256901, 0.355902, 0.898519,
		37.585190, 39.349304, 23.739735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866982, 39.601482, 23.234337>,  <37.405357, 39.100174, 23.110771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866982, 39.601482, 23.234337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153240, 39.708870, 23.492258>,  <37.324997, 39.773304, 23.647011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153240, 39.708870, 23.492258>,  <36.866982, 39.601482, 23.234337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153240, 39.708870, 23.492258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114827, 0.955838, -0.270534,
		-0.688958, 0.119566, 0.714871,
		0.715648, 0.268473, 0.644803,
		37.367935, 39.789413, 23.685699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613548, 40.228771, 23.474911>,  <36.866982, 39.601482, 23.234337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613548, 40.228771, 23.474911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004177, 40.235138, 23.560757>,  <37.238552, 40.238956, 23.612265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004177, 40.235138, 23.560757>,  <36.613548, 40.228771, 23.474911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004177, 40.235138, 23.560757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062987, 0.932449, -0.355770,
		-0.205780, 0.360952, 0.909598,
		0.976569, 0.015917, 0.214615,
		37.297150, 40.239914, 23.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721096, 40.884453, 23.852026>,  <36.613548, 40.228771, 23.474911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721096, 40.884453, 23.852026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052391, 40.744942, 23.676582>,  <37.251167, 40.661236, 23.571316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052391, 40.744942, 23.676582>,  <36.721096, 40.884453, 23.852026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052391, 40.744942, 23.676582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075981, 0.845369, -0.528751,
		0.555204, 0.404605, 0.726666,
		0.828236, -0.348778, -0.438610,
		37.300861, 40.640308, 23.545000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739361, 41.477783, 24.213934>,  <36.721096, 40.884453, 23.852026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739361, 41.477783, 24.213934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340630, 41.508469, 24.222368>,  <36.101391, 41.526878, 24.227428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340630, 41.508469, 24.222368>,  <36.739361, 41.477783, 24.213934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340630, 41.508469, 24.222368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028189, -0.588389, 0.808086,
		0.074396, 0.804931, 0.588687,
		-0.996830, 0.076713, 0.021083,
		36.041580, 41.531483, 24.228693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489040, 41.757732, 24.941715>,  <36.739361, 41.477783, 24.213934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489040, 41.757732, 24.941715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.213497, 41.538235, 24.752253>,  <36.048172, 41.406536, 24.638575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.213497, 41.538235, 24.752253>,  <36.489040, 41.757732, 24.941715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213497, 41.538235, 24.752253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076430, -0.594789, 0.800240,
		-0.720855, 0.587454, 0.367785,
		-0.688859, -0.548747, -0.473656,
		36.006840, 41.373611, 24.610155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988079, 41.671604, 25.441303>,  <36.489040, 41.757732, 24.941715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988079, 41.671604, 25.441303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876987, 41.396786, 25.172728>,  <35.810333, 41.231895, 25.011583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876987, 41.396786, 25.172728>,  <35.988079, 41.671604, 25.441303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876987, 41.396786, 25.172728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342967, -0.581962, 0.737356,
		-0.897352, 0.435066, -0.074007,
		-0.277729, -0.687050, -0.671438,
		35.793667, 41.190670, 24.971296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316505, 41.463669, 25.648705>,  <35.988079, 41.671604, 25.441303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316505, 41.463669, 25.648705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444191, 41.153675, 25.430529>,  <35.520802, 40.967678, 25.299623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444191, 41.153675, 25.430529>,  <35.316505, 41.463669, 25.648705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444191, 41.153675, 25.430529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439004, -0.630996, 0.639625,
		-0.839868, 0.035272, -0.541644,
		0.319214, -0.774984, -0.545438,
		35.539955, 40.921181, 25.266897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751507, 40.946705, 25.681498>,  <35.316505, 41.463669, 25.648705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751507, 40.946705, 25.681498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.095036, 40.761192, 25.594479>,  <35.301155, 40.649887, 25.542267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.095036, 40.761192, 25.594479>,  <34.751507, 40.946705, 25.681498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095036, 40.761192, 25.594479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265696, -0.766370, 0.584879,
		-0.437977, -0.444507, -0.781402,
		0.858826, -0.463779, -0.217549,
		35.352684, 40.622059, 25.529213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532421, 40.245426, 25.699951>,  <34.751507, 40.946705, 25.681498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532421, 40.245426, 25.699951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.930126, 40.218426, 25.733162>,  <35.168747, 40.202225, 25.753088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.930126, 40.218426, 25.733162>,  <34.532421, 40.245426, 25.699951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930126, 40.218426, 25.733162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101854, -0.834790, 0.541065,
		0.032790, -0.546415, -0.836872,
		0.994259, -0.067497, 0.083028,
		35.228405, 40.198177, 25.758070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593613, 39.560196, 25.486889>,  <34.532421, 40.245426, 25.699951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593613, 39.560196, 25.486889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917912, 39.672451, 25.692385>,  <35.112492, 39.739803, 25.815683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917912, 39.672451, 25.692385>,  <34.593613, 39.560196, 25.486889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917912, 39.672451, 25.692385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048942, -0.842026, 0.537211,
		0.583347, -0.460686, -0.668935,
		0.810747, 0.280642, 0.513741,
		35.161137, 39.756645, 25.846506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.719734, 44.120689, 24.352106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096901, 44.011543, 24.428469>,  <39.323200, 43.946056, 24.474287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096901, 44.011543, 24.428469>,  <38.719734, 44.120689, 24.352106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096901, 44.011543, 24.428469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281209, -0.345324, 0.895362,
		-0.178388, -0.897940, -0.402345,
		0.942920, -0.272864, 0.190907,
		39.379776, 43.929684, 24.485741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765141, 43.323299, 24.500477>,  <38.719734, 44.120689, 24.352106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765141, 43.323299, 24.500477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076244, 43.519276, 24.657982>,  <39.262905, 43.636864, 24.752485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076244, 43.519276, 24.657982>,  <38.765141, 43.323299, 24.500477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076244, 43.519276, 24.657982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241368, -0.345626, 0.906799,
		0.580374, -0.800312, -0.150557,
		0.777759, 0.489943, 0.393761,
		39.309570, 43.666260, 24.776110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823784, 42.964954, 25.211294>,  <38.765141, 43.323299, 24.500477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823784, 42.964954, 25.211294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076397, 43.274162, 25.235306>,  <39.227966, 43.459686, 25.249712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076397, 43.274162, 25.235306>,  <38.823784, 42.964954, 25.211294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076397, 43.274162, 25.235306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093237, -0.001144, 0.995643,
		0.769721, -0.634380, 0.071352,
		0.631535, 0.773021, 0.060028,
		39.265858, 43.506069, 25.253315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251942, 42.761772, 25.648769>,  <38.823784, 42.964954, 25.211294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251942, 42.761772, 25.648769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.291328, 43.159588, 25.662642>,  <39.314960, 43.398277, 25.670965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.291328, 43.159588, 25.662642>,  <39.251942, 42.761772, 25.648769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291328, 43.159588, 25.662642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099078, -0.044473, 0.994085,
		0.990196, -0.094452, -0.102916,
		0.098470, 0.994536, 0.034679,
		39.320869, 43.457947, 25.673044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922302, 42.826084, 26.084547>,  <39.251942, 42.761772, 25.648769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922302, 42.826084, 26.084547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.736462, 43.179802, 26.103140>,  <39.624958, 43.392033, 26.114296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.736462, 43.179802, 26.103140>,  <39.922302, 42.826084, 26.084547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736462, 43.179802, 26.103140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092755, -0.003605, 0.995682,
		0.880647, 0.466911, -0.080348,
		-0.464605, 0.884297, 0.046483,
		39.597080, 43.445091, 26.117085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269070, 43.267113, 26.560461>,  <39.922302, 42.826084, 26.084547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269070, 43.267113, 26.560461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917290, 43.456928, 26.545603>,  <39.706223, 43.570820, 26.536688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917290, 43.456928, 26.545603>,  <40.269070, 43.267113, 26.560461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917290, 43.456928, 26.545603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083144, -0.076307, 0.993612,
		0.468674, 0.876920, 0.106564,
		-0.879449, 0.474540, -0.037148,
		39.653454, 43.599289, 26.534458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285450, 43.829617, 27.121965>,  <40.269070, 43.267113, 26.560461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285450, 43.829617, 27.121965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905838, 43.753292, 27.021626>,  <39.678070, 43.707497, 26.961422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905838, 43.753292, 27.021626>,  <40.285450, 43.829617, 27.121965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905838, 43.753292, 27.021626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261226, 0.030902, 0.964783,
		-0.176339, 0.981140, -0.079172,
		-0.949034, -0.190811, -0.250850,
		39.621128, 43.696049, 26.946371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976303, 44.165470, 27.559719>,  <40.285450, 43.829617, 27.121965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976303, 44.165470, 27.559719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677887, 43.934559, 27.426949>,  <39.498837, 43.796013, 27.347286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677887, 43.934559, 27.426949>,  <39.976303, 44.165470, 27.559719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677887, 43.934559, 27.426949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325864, -0.118204, 0.937998,
		-0.580718, 0.807948, -0.099928,
		-0.746042, -0.577275, -0.331924,
		39.454075, 43.761375, 27.327372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370712, 44.351788, 27.897465>,  <39.976303, 44.165470, 27.559719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370712, 44.351788, 27.897465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.266846, 43.988174, 27.767096>,  <39.204525, 43.770004, 27.688873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.266846, 43.988174, 27.767096>,  <39.370712, 44.351788, 27.897465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266846, 43.988174, 27.767096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457904, -0.181247, 0.870330,
		-0.850234, 0.375237, -0.369188,
		-0.259666, -0.909036, -0.325924,
		39.188946, 43.715462, 27.669319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665722, 44.279957, 28.122000>,  <39.370712, 44.351788, 27.897465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665722, 44.279957, 28.122000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.775333, 43.902443, 28.048050>,  <38.841099, 43.675934, 28.003681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.775333, 43.902443, 28.048050>,  <38.665722, 44.279957, 28.122000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775333, 43.902443, 28.048050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418301, -0.290062, 0.860749,
		-0.865986, -0.158538, -0.474271,
		0.274029, -0.943785, -0.184873,
		38.857544, 43.619308, 27.992588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012054, 43.879230, 28.120745>,  <38.665722, 44.279957, 28.122000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012054, 43.879230, 28.120745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.335178, 43.663383, 28.215622>,  <38.529053, 43.533875, 28.272549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.335178, 43.663383, 28.215622>,  <38.012054, 43.879230, 28.120745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335178, 43.663383, 28.215622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437785, -0.279796, 0.854435,
		-0.394700, -0.794059, -0.462257,
		0.807810, -0.539615, 0.237191,
		38.577522, 43.501499, 28.286779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761887, 43.304192, 28.322861>,  <38.012054, 43.879230, 28.120745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761887, 43.304192, 28.322861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.133942, 43.254028, 28.460909>,  <38.357178, 43.223930, 28.543737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.133942, 43.254028, 28.460909>,  <37.761887, 43.304192, 28.322861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133942, 43.254028, 28.460909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364935, -0.419919, 0.830958,
		0.040713, -0.898855, -0.436350,
		0.930142, -0.125409, 0.345120,
		38.412983, 43.216404, 28.564445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641819, 42.797482, 27.756174>,  <37.761887, 43.304192, 28.322861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641819, 42.797482, 27.756174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331085, 42.591194, 27.611637>,  <37.144646, 42.467422, 27.524914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331085, 42.591194, 27.611637>,  <37.641819, 42.797482, 27.756174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331085, 42.591194, 27.611637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125982, 0.689509, -0.713236,
		0.616974, -0.508543, -0.600605,
		-0.776834, -0.515714, -0.361342,
		37.098034, 42.436478, 27.503235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709492, 42.762482, 26.967836>,  <37.641819, 42.797482, 27.756174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709492, 42.762482, 26.967836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321621, 42.684654, 27.026997>,  <37.088898, 42.637959, 27.062492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321621, 42.684654, 27.026997>,  <37.709492, 42.762482, 26.967836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321621, 42.684654, 27.026997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243426, 0.715047, -0.655325,
		0.021748, -0.671455, -0.740726,
		-0.969676, -0.194564, 0.147899,
		37.030720, 42.626286, 27.071367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368454, 42.713074, 26.259935>,  <37.709492, 42.762482, 26.967836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368454, 42.713074, 26.259935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.072269, 42.797565, 26.515152>,  <36.894558, 42.848259, 26.668282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.072269, 42.797565, 26.515152>,  <37.368454, 42.713074, 26.259935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072269, 42.797565, 26.515152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369891, 0.664550, -0.649272,
		-0.561154, -0.716768, -0.413944,
		-0.740464, 0.211227, 0.638041,
		36.850132, 42.860935, 26.706564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750919, 42.548717, 25.853977>,  <37.368454, 42.713074, 26.259935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750919, 42.548717, 25.853977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.640610, 42.787910, 26.155006>,  <36.574425, 42.931427, 26.335625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.640610, 42.787910, 26.155006>,  <36.750919, 42.548717, 25.853977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640610, 42.787910, 26.155006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426655, 0.625431, -0.653301,
		-0.861343, -0.501255, 0.082651,
		-0.275778, 0.597979, 0.752573,
		36.557877, 42.967304, 26.380779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086075, 42.646133, 25.695789>,  <36.750919, 42.548717, 25.853977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086075, 42.646133, 25.695789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.192127, 42.945950, 25.938406>,  <36.255760, 43.125839, 26.083977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.192127, 42.945950, 25.938406>,  <36.086075, 42.646133, 25.695789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192127, 42.945950, 25.938406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566256, 0.630190, -0.531238,
		-0.780421, -0.202609, 0.591516,
		0.265134, 0.749540, 0.606542,
		36.271667, 43.170811, 26.120369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410275, 42.858280, 25.809320>,  <36.086075, 42.646133, 25.695789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410275, 42.858280, 25.809320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677368, 43.147987, 25.878101>,  <35.837624, 43.321812, 25.919371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677368, 43.147987, 25.878101>,  <35.410275, 42.858280, 25.809320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677368, 43.147987, 25.878101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492137, 0.602818, -0.628022,
		-0.558514, 0.334725, 0.758960,
		0.667730, 0.724272, 0.171952,
		35.877686, 43.365269, 25.929688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001049, 43.514038, 26.154833>,  <35.410275, 42.858280, 25.809320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001049, 43.514038, 26.154833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344532, 43.635521, 25.989725>,  <35.550621, 43.708408, 25.890659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344532, 43.635521, 25.989725>,  <35.001049, 43.514038, 26.154833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344532, 43.635521, 25.989725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496016, 0.694990, -0.520536,
		0.128783, 0.651730, 0.747437,
		0.858710, 0.303705, -0.412771,
		35.602146, 43.726631, 25.865894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816250, 44.128967, 26.051388>,  <35.001049, 43.514038, 26.154833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816250, 44.128967, 26.051388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.142815, 44.078636, 25.825949>,  <35.338753, 44.048435, 25.690685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.142815, 44.078636, 25.825949>,  <34.816250, 44.128967, 26.051388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142815, 44.078636, 25.825949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340029, 0.684094, -0.645288,
		0.466750, 0.718459, 0.515715,
		0.816410, -0.125830, -0.563598,
		35.387737, 44.040886, 25.656870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099506, 44.721455, 25.959665>,  <34.816250, 44.128967, 26.051388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099506, 44.721455, 25.959665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.249203, 44.504803, 25.658579>,  <35.339020, 44.374813, 25.477926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.249203, 44.504803, 25.658579>,  <35.099506, 44.721455, 25.959665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249203, 44.504803, 25.658579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317938, 0.687563, -0.652819,
		0.871124, 0.483630, 0.085112,
		0.374243, -0.541627, -0.752717,
		35.361477, 44.342316, 25.432764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381081, 45.247799, 25.530659>,  <35.099506, 44.721455, 25.959665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381081, 45.247799, 25.530659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.371605, 44.920761, 25.300535>,  <35.365921, 44.724537, 25.162462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.371605, 44.920761, 25.300535>,  <35.381081, 45.247799, 25.530659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371605, 44.920761, 25.300535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245799, 0.562568, -0.789367,
		0.969032, 0.122709, -0.214291,
		-0.023690, -0.817594, -0.575308,
		35.364498, 44.675484, 25.127943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616890, 45.474705, 24.864990>,  <35.381081, 45.247799, 25.530659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616890, 45.474705, 24.864990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.411598, 45.140659, 24.785820>,  <35.288422, 44.940231, 24.738317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.411598, 45.140659, 24.785820>,  <35.616890, 45.474705, 24.864990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411598, 45.140659, 24.785820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383922, 0.429653, -0.817314,
		0.767591, -0.343485, -0.541131,
		-0.513234, -0.835115, -0.197926,
		35.257629, 44.890125, 24.726442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668434, 45.322823, 24.093966>,  <35.616890, 45.474705, 24.864990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668434, 45.322823, 24.093966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.345993, 45.171864, 24.276295>,  <35.152531, 45.081287, 24.385693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.345993, 45.171864, 24.276295>,  <35.668434, 45.322823, 24.093966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345993, 45.171864, 24.276295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591099, 0.476550, -0.650770,
		0.028377, -0.794022, -0.607226,
		-0.806100, -0.377398, 0.455823,
		35.104164, 45.058643, 24.413042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294922, 45.152901, 23.558191>,  <35.668434, 45.322823, 24.093966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294922, 45.152901, 23.558191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.044270, 45.164597, 23.869699>,  <34.893879, 45.171612, 24.056604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.044270, 45.164597, 23.869699>,  <35.294922, 45.152901, 23.558191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044270, 45.164597, 23.869699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690892, 0.441497, -0.572493,
		-0.360563, -0.896786, -0.256455,
		-0.626628, 0.029237, 0.778770,
		34.856281, 45.173367, 24.103331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761036, 44.572063, 23.397308>,  <35.294922, 45.152901, 23.558191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761036, 44.572063, 23.397308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695129, 44.435284, 23.027245>,  <35.655586, 44.353214, 22.805206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695129, 44.435284, 23.027245>,  <35.761036, 44.572063, 23.397308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695129, 44.435284, 23.027245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215618, -0.902806, 0.372089,
		-0.962476, 0.260790, 0.075025,
		-0.164770, -0.341950, -0.925160,
		35.645699, 44.332699, 22.749697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167007, 44.123230, 23.453043>,  <35.761036, 44.572063, 23.397308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167007, 44.123230, 23.453043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.328514, 44.009163, 23.105330>,  <35.425419, 43.940723, 22.896702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.328514, 44.009163, 23.105330>,  <35.167007, 44.123230, 23.453043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328514, 44.009163, 23.105330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236056, -0.950479, 0.202156,
		-0.883882, 0.123575, -0.451090,
		0.403771, -0.285164, -0.869282,
		35.449646, 43.923615, 22.844545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772560, 43.534065, 23.309397>,  <35.167007, 44.123230, 23.453043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772560, 43.534065, 23.309397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080910, 43.488346, 23.058739>,  <35.265919, 43.460915, 22.908344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080910, 43.488346, 23.058739>,  <34.772560, 43.534065, 23.309397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080910, 43.488346, 23.058739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003503, -0.984515, 0.175266,
		-0.636974, -0.132914, -0.759340,
		0.770877, -0.114300, -0.626645,
		35.312172, 43.454056, 22.870745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628414, 43.053505, 22.885475>,  <34.772560, 43.534065, 23.309397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628414, 43.053505, 22.885475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.027187, 43.040184, 22.857145>,  <35.266453, 43.032192, 22.840147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.027187, 43.040184, 22.857145>,  <34.628414, 43.053505, 22.885475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027187, 43.040184, 22.857145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016363, -0.973633, 0.227530,
		-0.076533, -0.225673, -0.971192,
		0.996933, -0.033306, -0.070823,
		35.326267, 43.030193, 22.835899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897270, 42.458370, 22.483427>,  <34.628414, 43.053505, 22.885475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897270, 42.458370, 22.483427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179203, 42.561405, 22.747810>,  <35.348362, 42.623226, 22.906441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179203, 42.561405, 22.747810>,  <34.897270, 42.458370, 22.483427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179203, 42.561405, 22.747810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150164, -0.964807, 0.215868,
		0.693301, -0.052899, -0.718704,
		0.704830, 0.257585, 0.660958,
		35.390652, 42.638680, 22.946098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432552, 41.872723, 22.503130>,  <34.897270, 42.458370, 22.483427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432552, 41.872723, 22.503130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504124, 42.066589, 22.845612>,  <35.547066, 42.182907, 23.051100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504124, 42.066589, 22.845612>,  <35.432552, 41.872723, 22.503130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504124, 42.066589, 22.845612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103896, -0.874690, 0.473416,
		0.978361, 0.004249, -0.206862,
		0.178929, 0.484663, 0.856204,
		35.557804, 42.211987, 23.102472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812317, 41.359623, 22.845629>,  <35.432552, 41.872723, 22.503130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812317, 41.359623, 22.845629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784187, 41.637592, 23.131884>,  <35.767311, 41.804375, 23.303637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784187, 41.637592, 23.131884>,  <35.812317, 41.359623, 22.845629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784187, 41.637592, 23.131884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242382, -0.684009, 0.688028,
		0.967629, 0.221843, -0.120334,
		-0.070324, 0.694922, 0.715638,
		35.763088, 41.846069, 23.346575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396099, 41.326134, 23.268007>,  <35.812317, 41.359623, 22.845629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396099, 41.326134, 23.268007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.123913, 41.498920, 23.504774>,  <35.960602, 41.602592, 23.646833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.123913, 41.498920, 23.504774>,  <36.396099, 41.326134, 23.268007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123913, 41.498920, 23.504774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064710, -0.769192, 0.635733,
		0.729916, 0.470898, 0.495457,
		-0.680467, 0.431971, 0.591917,
		35.919773, 41.628513, 23.682348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148201, 41.558186, 23.424536>,  <36.396099, 41.326134, 23.268007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148201, 41.558186, 23.424536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.337334, 41.226891, 23.304235>,  <37.450813, 41.028114, 23.232056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.337334, 41.226891, 23.304235>,  <37.148201, 41.558186, 23.424536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337334, 41.226891, 23.304235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483224, 0.529138, -0.697501,
		0.736837, 0.184468, 0.650417,
		0.472827, -0.828242, -0.300749,
		37.479183, 40.978416, 23.214010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833073, 41.783981, 23.323519>,  <37.148201, 41.558186, 23.424536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833073, 41.783981, 23.323519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789291, 41.447662, 23.111452>,  <37.763023, 41.245872, 22.984211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789291, 41.447662, 23.111452>,  <37.833073, 41.783981, 23.323519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789291, 41.447662, 23.111452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559409, 0.388780, -0.732060,
		0.821634, -0.376708, 0.427796,
		-0.109455, -0.840798, -0.530168,
		37.756454, 41.195423, 22.952402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489197, 41.544518, 23.063335>,  <37.833073, 41.783981, 23.323519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489197, 41.544518, 23.063335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.219894, 41.387398, 22.812759>,  <38.058311, 41.293125, 22.662413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.219894, 41.387398, 22.812759>,  <38.489197, 41.544518, 23.063335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219894, 41.387398, 22.812759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521697, 0.348030, -0.778914,
		0.523981, -0.851222, -0.029389,
		-0.673257, -0.392805, -0.626441,
		38.017918, 41.269558, 22.624826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825752, 41.395885, 22.461317>,  <38.489197, 41.544518, 23.063335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825752, 41.395885, 22.461317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.447159, 41.391388, 22.332291>,  <38.220005, 41.388687, 22.254875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.447159, 41.391388, 22.332291>,  <38.825752, 41.395885, 22.461317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447159, 41.391388, 22.332291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299019, 0.345679, -0.889434,
		0.121508, -0.938285, -0.323815,
		-0.946480, -0.011246, -0.322568,
		38.163216, 41.388012, 22.235519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795162, 41.162827, 21.797297>,  <38.825752, 41.395885, 22.461317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795162, 41.162827, 21.797297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463882, 41.382080, 21.844007>,  <38.265114, 41.513634, 21.872034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463882, 41.382080, 21.844007>,  <38.795162, 41.162827, 21.797297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463882, 41.382080, 21.844007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207613, 0.493614, -0.844537,
		-0.520561, -0.675200, -0.522610,
		-0.828199, 0.548133, 0.116776,
		38.215424, 41.546520, 21.879040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478508, 41.155159, 21.237516>,  <38.795162, 41.162827, 21.797297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478508, 41.155159, 21.237516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302174, 41.479088, 21.392357>,  <38.196373, 41.673447, 21.485260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302174, 41.479088, 21.392357>,  <38.478508, 41.155159, 21.237516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302174, 41.479088, 21.392357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127301, 0.483318, -0.866140,
		-0.888513, -0.332550, -0.316157,
		-0.440839, 0.809824, 0.387100,
		38.169922, 41.722034, 21.508488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937038, 41.325829, 20.740168>,  <38.478508, 41.155159, 21.237516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937038, 41.325829, 20.740168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987213, 41.660969, 20.952684>,  <38.017319, 41.862053, 21.080194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987213, 41.660969, 20.952684>,  <37.937038, 41.325829, 20.740168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987213, 41.660969, 20.952684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053811, 0.540479, -0.839635,
		-0.990641, 0.076735, 0.112884,
		0.125441, 0.837851, 0.531291,
		38.024845, 41.912323, 21.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473934, 41.647289, 20.514929>,  <37.937038, 41.325829, 20.740168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473934, 41.647289, 20.514929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.712856, 41.924057, 20.677151>,  <37.856209, 42.090118, 20.774483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.712856, 41.924057, 20.677151>,  <37.473934, 41.647289, 20.514929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712856, 41.924057, 20.677151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060881, 0.465093, -0.883166,
		-0.799700, 0.552210, 0.235678,
		0.597305, 0.691919, 0.405554,
		37.892048, 42.131634, 20.798817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237598, 42.211514, 20.325966>,  <37.473934, 41.647289, 20.514929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237598, 42.211514, 20.325966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.598480, 42.354942, 20.421844>,  <37.815010, 42.440998, 20.479372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.598480, 42.354942, 20.421844>,  <37.237598, 42.211514, 20.325966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598480, 42.354942, 20.421844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010777, 0.574311, -0.818566,
		-0.431174, 0.735931, 0.522010,
		0.902205, 0.358570, 0.239697,
		37.869141, 42.462513, 20.493753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.107880, 31.008711, 32.010765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419559, 31.249201, 32.081612>,  <37.606567, 31.393496, 32.124119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419559, 31.249201, 32.081612>,  <37.107880, 31.008711, 32.010765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419559, 31.249201, 32.081612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416250, 0.707659, -0.570924,
		-0.468593, 0.371142, 0.801670,
		0.779203, 0.601226, 0.177116,
		37.653320, 31.429569, 32.134747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803925, 31.721920, 31.998837>,  <37.107880, 31.008711, 32.010765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803925, 31.721920, 31.998837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188957, 31.810532, 31.936411>,  <37.419979, 31.863699, 31.898956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188957, 31.810532, 31.936411>,  <36.803925, 31.721920, 31.998837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188957, 31.810532, 31.936411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270877, 0.802421, -0.531739,
		0.007433, 0.554118, 0.832405,
		0.962585, 0.221527, -0.156063,
		37.477734, 31.876989, 31.889591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860229, 32.444084, 31.864199>,  <36.803925, 31.721920, 31.998837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860229, 32.444084, 31.864199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210529, 32.313255, 31.722160>,  <37.420708, 32.234756, 31.636936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210529, 32.313255, 31.722160>,  <36.860229, 32.444084, 31.864199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210529, 32.313255, 31.722160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013403, 0.751724, -0.659342,
		0.482587, 0.572656, 0.662703,
		0.875746, -0.327072, -0.355097,
		37.473251, 32.215134, 31.615631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111553, 33.121857, 31.644247>,  <36.860229, 32.444084, 31.864199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111553, 33.121857, 31.644247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.338379, 32.844391, 31.466587>,  <37.474472, 32.677910, 31.359991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.338379, 32.844391, 31.466587>,  <37.111553, 33.121857, 31.644247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338379, 32.844391, 31.466587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035935, 0.559552, -0.828016,
		0.822891, 0.453575, 0.342228,
		0.567062, -0.693665, -0.444151,
		37.508499, 32.636292, 31.333342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593132, 33.456905, 31.392656>,  <37.111553, 33.121857, 31.644247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593132, 33.456905, 31.392656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585972, 33.122475, 31.173330>,  <37.581676, 32.921814, 31.041735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585972, 33.122475, 31.173330>,  <37.593132, 33.456905, 31.392656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585972, 33.122475, 31.173330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040884, 0.547332, -0.835916,
		0.999003, -0.037377, 0.024387,
		-0.017897, -0.836080, -0.548315,
		37.580605, 32.871651, 31.008835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255035, 33.498573, 30.922432>,  <37.593132, 33.456905, 31.392656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255035, 33.498573, 30.922432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990364, 33.252075, 30.751589>,  <37.831562, 33.104176, 30.649082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990364, 33.252075, 30.751589>,  <38.255035, 33.498573, 30.922432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990364, 33.252075, 30.751589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165936, 0.435162, -0.884929,
		0.731194, -0.656413, -0.185681,
		-0.661681, -0.616244, -0.427110,
		37.791859, 33.067204, 30.623455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520714, 33.260303, 30.320780>,  <38.255035, 33.498573, 30.922432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520714, 33.260303, 30.320780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142033, 33.148720, 30.256363>,  <37.914825, 33.081768, 30.217712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.142033, 33.148720, 30.256363>,  <38.520714, 33.260303, 30.320780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142033, 33.148720, 30.256363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052342, 0.626552, -0.777620,
		0.317827, -0.727746, -0.607760,
		-0.946703, -0.278960, -0.161043,
		37.858021, 33.065033, 30.208050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458809, 33.076790, 29.564259>,  <38.520714, 33.260303, 30.320780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458809, 33.076790, 29.564259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089081, 33.138348, 29.703939>,  <37.867245, 33.175282, 29.787748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089081, 33.138348, 29.703939>,  <38.458809, 33.076790, 29.564259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089081, 33.138348, 29.703939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202180, 0.578609, -0.790148,
		-0.323650, -0.800955, -0.503708,
		-0.924323, 0.153892, 0.349204,
		37.811783, 33.184517, 29.808701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989471, 32.972988, 28.936796>,  <38.458809, 33.076790, 29.564259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989471, 32.972988, 28.936796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.818756, 33.188622, 29.227240>,  <37.716328, 33.318001, 29.401506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.818756, 33.188622, 29.227240>,  <37.989471, 32.972988, 28.936796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818756, 33.188622, 29.227240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178520, 0.736887, -0.652019,
		-0.886555, -0.407901, -0.218259,
		-0.426791, 0.539087, 0.726109,
		37.690720, 33.350349, 29.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401688, 33.171104, 28.661146>,  <37.989471, 32.972988, 28.936796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401688, 33.171104, 28.661146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470673, 33.440948, 28.948244>,  <37.512066, 33.602856, 29.120502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470673, 33.440948, 28.948244>,  <37.401688, 33.171104, 28.661146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470673, 33.440948, 28.948244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015695, 0.730454, -0.682781,
		-0.984891, 0.106491, 0.136566,
		0.172465, 0.674608, 0.717746,
		37.522411, 33.643330, 29.163568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942898, 33.697453, 28.525520>,  <37.401688, 33.171104, 28.661146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942898, 33.697453, 28.525520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187969, 33.886105, 28.779196>,  <37.335011, 33.999294, 28.931400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187969, 33.886105, 28.779196>,  <36.942898, 33.697453, 28.525520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187969, 33.886105, 28.779196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007091, 0.799119, -0.601131,
		-0.790300, 0.372798, 0.486259,
		0.612680, 0.471626, 0.634187,
		37.371773, 34.027592, 28.969452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601871, 34.412895, 28.657734>,  <36.942898, 33.697453, 28.525520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601871, 34.412895, 28.657734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989098, 34.421803, 28.757618>,  <37.221432, 34.427147, 28.817549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989098, 34.421803, 28.757618>,  <36.601871, 34.412895, 28.657734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989098, 34.421803, 28.757618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095245, 0.888701, -0.448486,
		-0.231902, 0.457947, 0.858199,
		0.968065, 0.022266, 0.249709,
		37.279518, 34.428482, 28.832531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959282, 34.483402, 29.028297>,  <36.601871, 34.412895, 28.657734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959282, 34.483402, 29.028297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572701, 34.586128, 29.027060>,  <35.340752, 34.647762, 29.026316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572701, 34.586128, 29.027060>,  <35.959282, 34.483402, 29.028297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572701, 34.586128, 29.027060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150789, -0.557608, 0.816295,
		0.207911, 0.789379, 0.577628,
		-0.966455, 0.256816, -0.003097,
		35.282764, 34.663174, 29.026131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736778, 34.820187, 29.681112>,  <35.959282, 34.483402, 29.028297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736778, 34.820187, 29.681112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396282, 34.682247, 29.522888>,  <35.191986, 34.599483, 29.427954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396282, 34.682247, 29.522888>,  <35.736778, 34.820187, 29.681112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396282, 34.682247, 29.522888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173853, -0.525887, 0.832597,
		-0.495141, 0.777510, 0.387703,
		-0.851240, -0.344850, -0.395560,
		35.140911, 34.578793, 29.404221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152550, 34.945244, 30.225225>,  <35.736778, 34.820187, 29.681112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152550, 34.945244, 30.225225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052338, 34.631847, 29.997763>,  <34.992210, 34.443810, 29.861284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052338, 34.631847, 29.997763>,  <35.152550, 34.945244, 30.225225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052338, 34.631847, 29.997763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175139, -0.541017, 0.822573,
		-0.952134, 0.305677, -0.001677,
		-0.250535, -0.783494, -0.568656,
		34.977177, 34.396801, 29.827166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734276, 34.686619, 30.637796>,  <35.152550, 34.945244, 30.225225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734276, 34.686619, 30.637796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762177, 34.380341, 30.382032>,  <34.778919, 34.196575, 30.228575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762177, 34.380341, 30.382032>,  <34.734276, 34.686619, 30.637796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762177, 34.380341, 30.382032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417287, -0.604594, 0.678483,
		-0.906094, 0.219489, -0.361689,
		0.069755, -0.765697, -0.639409,
		34.783104, 34.150631, 30.190210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002151, 34.405521, 30.490002>,  <34.734276, 34.686619, 30.637796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002151, 34.405521, 30.490002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307579, 34.150681, 30.447929>,  <34.490833, 33.997776, 30.422686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307579, 34.150681, 30.447929>,  <34.002151, 34.405521, 30.490002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307579, 34.150681, 30.447929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425429, -0.618884, 0.660298,
		-0.485773, -0.459435, -0.743602,
		0.763567, -0.637105, -0.105180,
		34.536648, 33.959549, 30.416374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692245, 33.706699, 30.610352>,  <34.002151, 34.405521, 30.490002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692245, 33.706699, 30.610352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086235, 33.646206, 30.643724>,  <34.322628, 33.609909, 30.663748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086235, 33.646206, 30.643724>,  <33.692245, 33.706699, 30.610352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086235, 33.646206, 30.643724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156653, -0.578712, 0.800345,
		-0.072757, -0.801386, -0.593706,
		0.984970, -0.151237, 0.083434,
		34.381725, 33.600834, 30.668755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740837, 32.995670, 30.784050>,  <33.692245, 33.706699, 30.610352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740837, 32.995670, 30.784050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103546, 33.135742, 30.877981>,  <34.321171, 33.219784, 30.934340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103546, 33.135742, 30.877981>,  <33.740837, 32.995670, 30.784050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103546, 33.135742, 30.877981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014877, -0.583185, 0.812203,
		0.421364, -0.732988, -0.534024,
		0.906769, 0.350178, 0.234829,
		34.375576, 33.240795, 30.948429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052044, 32.485249, 31.017044>,  <33.740837, 32.995670, 30.784050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052044, 32.485249, 31.017044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299671, 32.764587, 31.160746>,  <34.448246, 32.932190, 31.246967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299671, 32.764587, 31.160746>,  <34.052044, 32.485249, 31.017044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299671, 32.764587, 31.160746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103425, -0.525964, 0.844195,
		0.778498, -0.485458, -0.397834,
		0.619068, 0.698350, 0.359253,
		34.485390, 32.974091, 31.268522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542797, 32.130157, 31.375761>,  <34.052044, 32.485249, 31.017044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542797, 32.130157, 31.375761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553932, 32.501030, 31.525188>,  <34.560616, 32.723553, 31.614845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553932, 32.501030, 31.525188>,  <34.542797, 32.130157, 31.375761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553932, 32.501030, 31.525188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026100, -0.372914, 0.927499,
		0.999272, -0.035572, 0.013818,
		0.027840, 0.927184, 0.373571,
		34.562283, 32.779186, 31.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892300, 32.070896, 31.890108>,  <34.542797, 32.130157, 31.375761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892300, 32.070896, 31.890108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.721191, 32.421963, 31.976566>,  <34.618526, 32.632603, 32.028442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.721191, 32.421963, 31.976566>,  <34.892300, 32.070896, 31.890108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721191, 32.421963, 31.976566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088964, -0.278850, 0.956205,
		0.899498, 0.389810, 0.197365,
		-0.427773, 0.877662, 0.216146,
		34.592861, 32.685261, 32.041409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322777, 32.405991, 32.383781>,  <34.892300, 32.070896, 31.890108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322777, 32.405991, 32.383781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957253, 32.562946, 32.425713>,  <34.737938, 32.657120, 32.450871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957253, 32.562946, 32.425713>,  <35.322777, 32.405991, 32.383781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957253, 32.562946, 32.425713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006680, -0.272579, 0.962110,
		0.406094, 0.878483, 0.251706,
		-0.913807, 0.392388, 0.104825,
		34.683109, 32.680664, 32.457161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346809, 32.884808, 32.970268>,  <35.322777, 32.405991, 32.383781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346809, 32.884808, 32.970268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971745, 32.760605, 32.907822>,  <34.746704, 32.686085, 32.870354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971745, 32.760605, 32.907822>,  <35.346809, 32.884808, 32.970268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971745, 32.760605, 32.907822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077217, -0.251854, 0.964680,
		-0.338859, 0.916600, 0.212178,
		-0.937663, -0.310507, -0.156120,
		34.690445, 32.667454, 32.860985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136719, 32.872471, 33.603027>,  <35.346809, 32.884808, 32.970268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136719, 32.872471, 33.603027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806694, 32.711510, 33.444363>,  <34.608677, 32.614933, 33.349163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806694, 32.711510, 33.444363>,  <35.136719, 32.872471, 33.603027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806694, 32.711510, 33.444363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329794, -0.227066, 0.916339,
		-0.458807, 0.886855, 0.054634,
		-0.825065, -0.402404, -0.396659,
		34.559174, 32.590790, 33.325363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494209, 33.242874, 33.891376>,  <35.136719, 32.872471, 33.603027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494209, 33.242874, 33.891376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385990, 32.872784, 33.784977>,  <34.321056, 32.650730, 33.721138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385990, 32.872784, 33.784977>,  <34.494209, 33.242874, 33.891376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385990, 32.872784, 33.784977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360057, -0.159001, 0.919281,
		-0.892839, 0.344486, -0.290117,
		-0.270551, -0.925228, -0.265997,
		34.304825, 32.595215, 33.705177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035835, 33.761837, 34.241009>,  <34.494209, 33.242874, 33.891376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035835, 33.761837, 34.241009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801483, 34.014076, 34.037403>,  <33.660873, 34.165421, 33.915241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801483, 34.014076, 34.037403>,  <34.035835, 33.761837, 34.241009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801483, 34.014076, 34.037403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810323, 0.447316, -0.378530,
		-0.011009, -0.634239, -0.773059,
		-0.585880, 0.630595, -0.509014,
		33.625721, 34.203255, 33.884697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026413, 33.842896, 33.417072>,  <34.035835, 33.761837, 34.241009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026413, 33.842896, 33.417072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922123, 34.208477, 33.541470>,  <33.859550, 34.427826, 33.616108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922123, 34.208477, 33.541470>,  <34.026413, 33.842896, 33.417072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922123, 34.208477, 33.541470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550202, 0.405368, -0.730038,
		-0.793286, -0.019227, -0.608546,
		-0.260721, 0.913952, 0.310994,
		33.843906, 34.482662, 33.634769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654659, 34.269161, 32.875278>,  <34.026413, 33.842896, 33.417072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654659, 34.269161, 32.875278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837414, 34.517002, 33.130573>,  <33.947067, 34.665707, 33.283749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837414, 34.517002, 33.130573>,  <33.654659, 34.269161, 32.875278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837414, 34.517002, 33.130573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393866, 0.502421, -0.769703,
		-0.797576, 0.603044, -0.014494,
		0.456882, 0.619605, 0.638238,
		33.974480, 34.702885, 33.322044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655453, 34.989407, 32.613937>,  <33.654659, 34.269161, 32.875278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655453, 34.989407, 32.613937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944309, 35.036865, 32.886536>,  <34.117622, 35.065342, 33.050095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944309, 35.036865, 32.886536>,  <33.655453, 34.989407, 32.613937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944309, 35.036865, 32.886536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413041, 0.716327, -0.562381,
		-0.554900, 0.687603, 0.468282,
		0.722138, 0.118646, 0.681498,
		34.160950, 35.072460, 33.090984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639629, 35.707783, 32.831486>,  <33.655453, 34.989407, 32.613937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639629, 35.707783, 32.831486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003628, 35.542515, 32.845364>,  <34.222027, 35.443356, 32.853691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003628, 35.542515, 32.845364>,  <33.639629, 35.707783, 32.831486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003628, 35.542515, 32.845364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366551, 0.762560, -0.533051,
		0.193781, 0.497791, 0.845372,
		0.909994, -0.413167, 0.034696,
		34.276627, 35.418564, 32.855774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141071, 36.268147, 32.659920>,  <33.639629, 35.707783, 32.831486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141071, 36.268147, 32.659920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390945, 35.955849, 32.665668>,  <34.540871, 35.768471, 32.669117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390945, 35.955849, 32.665668>,  <34.141071, 36.268147, 32.659920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390945, 35.955849, 32.665668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739341, 0.585437, -0.332625,
		0.251281, 0.218413, 0.942950,
		0.624687, -0.780743, 0.014372,
		34.578350, 35.721626, 32.669979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888336, 36.517853, 32.997349>,  <34.141071, 36.268147, 32.659920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888336, 36.517853, 32.997349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926311, 36.198994, 32.758842>,  <34.949097, 36.007679, 32.615738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926311, 36.198994, 32.758842>,  <34.888336, 36.517853, 32.997349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926311, 36.198994, 32.758842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465830, 0.564922, -0.681076,
		0.879767, -0.213102, 0.424969,
		0.094935, -0.797152, -0.596269,
		34.954792, 35.959846, 32.579964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639839, 36.498581, 32.918148>,  <34.888336, 36.517853, 32.997349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639839, 36.498581, 32.918148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492958, 36.265911, 32.627819>,  <35.404827, 36.126308, 32.453621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492958, 36.265911, 32.627819>,  <35.639839, 36.498581, 32.918148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492958, 36.265911, 32.627819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525520, 0.514107, -0.677881,
		0.767455, -0.630354, 0.116900,
		-0.367206, -0.581676, -0.725819,
		35.382797, 36.091408, 32.410072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228966, 36.205841, 32.580658>,  <35.639839, 36.498581, 32.918148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228966, 36.205841, 32.580658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.943516, 36.168056, 32.303005>,  <35.772247, 36.145386, 32.136414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.943516, 36.168056, 32.303005>,  <36.228966, 36.205841, 32.580658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943516, 36.168056, 32.303005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552478, 0.533326, -0.640572,
		0.430704, -0.840620, -0.328410,
		-0.713627, -0.094458, -0.694129,
		35.729427, 36.139717, 32.094765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517094, 36.058090, 32.003689>,  <36.228966, 36.205841, 32.580658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517094, 36.058090, 32.003689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173412, 36.238400, 31.906879>,  <35.967205, 36.346584, 31.848795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173412, 36.238400, 31.906879>,  <36.517094, 36.058090, 32.003689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173412, 36.238400, 31.906879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493762, 0.606598, -0.623087,
		-0.134065, -0.654857, -0.743766,
		-0.859201, 0.450777, -0.242020,
		35.915653, 36.373634, 31.834274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571682, 36.165462, 31.333771>,  <36.517094, 36.058090, 32.003689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571682, 36.165462, 31.333771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267548, 36.410526, 31.420065>,  <36.085068, 36.557564, 31.471842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267548, 36.410526, 31.420065>,  <36.571682, 36.165462, 31.333771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267548, 36.410526, 31.420065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370073, 0.681564, -0.631282,
		-0.533799, -0.400146, -0.744944,
		-0.760332, 0.612661, 0.215735,
		36.039448, 36.594326, 31.484785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314682, 36.480671, 30.703812>,  <36.571682, 36.165462, 31.333771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314682, 36.480671, 30.703812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199085, 36.734356, 30.990658>,  <36.129726, 36.886566, 31.162766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199085, 36.734356, 30.990658>,  <36.314682, 36.480671, 30.703812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199085, 36.734356, 30.990658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109619, 0.766076, -0.633333,
		-0.951034, -0.104422, -0.290914,
		-0.288996, 0.634211, 0.717118,
		36.112385, 36.924618, 31.205793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921696, 36.898487, 30.433657>,  <36.314682, 36.480671, 30.703812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921696, 36.898487, 30.433657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013557, 37.113754, 30.758036>,  <36.068676, 37.242916, 30.952663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013557, 37.113754, 30.758036>,  <35.921696, 36.898487, 30.433657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013557, 37.113754, 30.758036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088365, 0.818245, -0.568037,
		-0.969252, 0.202113, 0.140361,
		0.229657, 0.538168, 0.810946,
		36.082455, 37.275204, 31.001320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654144, 37.601234, 30.297600>,  <35.921696, 36.898487, 30.433657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654144, 37.601234, 30.297600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917801, 37.661453, 30.592319>,  <36.075996, 37.697582, 30.769152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917801, 37.661453, 30.592319>,  <35.654144, 37.601234, 30.297600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917801, 37.661453, 30.592319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189918, 0.914676, -0.356789,
		-0.727643, 0.375106, 0.574310,
		0.659141, 0.150543, 0.736797,
		36.115543, 37.706615, 30.813358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454353, 38.196190, 30.709953>,  <35.654144, 37.601234, 30.297600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454353, 38.196190, 30.709953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848099, 38.146420, 30.759840>,  <36.084347, 38.116558, 30.789772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848099, 38.146420, 30.759840>,  <35.454353, 38.196190, 30.709953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848099, 38.146420, 30.759840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158620, 0.933983, -0.320181,
		-0.076644, 0.334956, 0.939111,
		0.984361, -0.124422, 0.124715,
		36.143406, 38.109093, 30.797255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685154, 38.920063, 30.936449>,  <35.454353, 38.196190, 30.709953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685154, 38.920063, 30.936449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020477, 38.721092, 30.847185>,  <36.221672, 38.601711, 30.793627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020477, 38.721092, 30.847185>,  <35.685154, 38.920063, 30.936449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020477, 38.721092, 30.847185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348894, 0.804009, -0.481500,
		0.418934, 0.325788, 0.847559,
		0.838312, -0.497425, -0.223161,
		36.271973, 38.571865, 30.780237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297989, 39.307274, 31.033274>,  <35.685154, 38.920063, 30.936449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297989, 39.307274, 31.033274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469147, 39.033661, 30.796967>,  <36.571842, 38.869492, 30.655182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469147, 39.033661, 30.796967>,  <36.297989, 39.307274, 31.033274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469147, 39.033661, 30.796967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337064, 0.727245, -0.597916,
		0.838627, 0.056717, 0.541745,
		0.427893, -0.684031, -0.590770,
		36.597515, 38.828453, 30.619736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115562, 39.378918, 30.926441>,  <36.297989, 39.307274, 31.033274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115562, 39.378918, 30.926441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961994, 39.190636, 30.608688>,  <36.869854, 39.077667, 30.418037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961994, 39.190636, 30.608688>,  <37.115562, 39.378918, 30.926441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961994, 39.190636, 30.608688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469438, 0.641333, -0.606894,
		0.795131, -0.605912, -0.025253,
		-0.383919, -0.470706, -0.794382,
		36.846817, 39.049423, 30.370375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663761, 39.318245, 30.478977>,  <37.115562, 39.378918, 30.926441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663761, 39.318245, 30.478977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349346, 39.273628, 30.235764>,  <37.160698, 39.246861, 30.089836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349346, 39.273628, 30.235764>,  <37.663761, 39.318245, 30.478977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349346, 39.273628, 30.235764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369847, 0.703281, -0.607131,
		0.495338, -0.702107, -0.511552,
		-0.786036, -0.111539, -0.608034,
		37.113537, 39.240166, 30.053352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961647, 39.241341, 29.678190>,  <37.663761, 39.318245, 30.478977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961647, 39.241341, 29.678190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572544, 39.333542, 29.668255>,  <37.339085, 39.388863, 29.662292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572544, 39.333542, 29.668255>,  <37.961647, 39.241341, 29.678190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572544, 39.333542, 29.668255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159325, 0.586829, -0.793881,
		-0.168412, -0.776210, -0.607565,
		-0.972755, 0.230499, -0.024841,
		37.280716, 39.402691, 29.660803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894447, 39.394978, 29.043798>,  <37.961647, 39.241341, 29.678190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894447, 39.394978, 29.043798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.557724, 39.555470, 29.188227>,  <37.355690, 39.651764, 29.274883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.557724, 39.555470, 29.188227>,  <37.894447, 39.394978, 29.043798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557724, 39.555470, 29.188227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031301, 0.704088, -0.709422,
		-0.538869, -0.585895, -0.605266,
		-0.841808, 0.401231, 0.361073,
		37.305183, 39.675838, 29.296549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401768, 39.345154, 28.428976>,  <37.894447, 39.394978, 29.043798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401768, 39.345154, 28.428976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273010, 39.614716, 28.694977>,  <37.195755, 39.776455, 28.854578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273010, 39.614716, 28.694977>,  <37.401768, 39.345154, 28.428976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273010, 39.614716, 28.694977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091820, 0.676857, -0.730366,
		-0.942313, -0.296161, -0.155998,
		-0.321894, 0.673909, 0.665004,
		37.176441, 39.816887, 28.894478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725800, 39.677006, 28.254419>,  <37.401768, 39.345154, 28.428976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725800, 39.677006, 28.254419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895866, 39.925606, 28.517622>,  <36.997906, 40.074764, 28.675545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895866, 39.925606, 28.517622>,  <36.725800, 39.677006, 28.254419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895866, 39.925606, 28.517622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053399, 0.742945, -0.667219,
		-0.903540, 0.248540, 0.349061,
		0.425164, 0.621499, 0.658008,
		37.023415, 40.112057, 28.715025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260155, 40.253422, 28.386116>,  <36.725800, 39.677006, 28.254419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260155, 40.253422, 28.386116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589108, 40.446465, 28.506636>,  <36.786480, 40.562290, 28.578947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589108, 40.446465, 28.506636>,  <36.260155, 40.253422, 28.386116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589108, 40.446465, 28.506636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211546, 0.750992, -0.625508,
		-0.528148, 0.450666, 0.719695,
		0.822380, 0.482609, 0.301298,
		36.835823, 40.591248, 28.597025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093365, 41.035789, 28.312159>,  <36.260155, 40.253422, 28.386116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093365, 41.035789, 28.312159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490284, 41.039665, 28.361563>,  <36.728436, 41.041992, 28.391205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490284, 41.039665, 28.361563>,  <36.093365, 41.035789, 28.312159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490284, 41.039665, 28.361563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063900, 0.814073, -0.577236,
		-0.106139, 0.580682, 0.807182,
		0.992296, 0.009688, 0.123511,
		36.787971, 41.042572, 28.398617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282345, 41.580246, 28.712109>,  <36.093365, 41.035789, 28.312159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282345, 41.580246, 28.712109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606995, 41.485085, 28.498693>,  <36.801785, 41.427986, 28.370644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606995, 41.485085, 28.498693>,  <36.282345, 41.580246, 28.712109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606995, 41.485085, 28.498693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027184, 0.896946, -0.441303,
		0.583545, 0.372676, 0.721517,
		0.811625, -0.237907, -0.533540,
		36.850483, 41.413712, 28.338631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757515, 42.073986, 28.832531>,  <36.282345, 41.580246, 28.712109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757515, 42.073986, 28.832531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855812, 41.917912, 28.477596>,  <36.914791, 41.824268, 28.264635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855812, 41.917912, 28.477596>,  <36.757515, 42.073986, 28.832531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855812, 41.917912, 28.477596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148283, 0.889503, -0.432200,
		0.957926, 0.237788, 0.160734,
		0.245745, -0.390182, -0.887337,
		36.929535, 41.800858, 28.211395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114281, 42.630146, 28.445225>,  <36.757515, 42.073986, 28.832531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114281, 42.630146, 28.445225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016411, 42.378571, 28.150045>,  <36.957687, 42.227627, 27.972937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016411, 42.378571, 28.150045>,  <37.114281, 42.630146, 28.445225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016411, 42.378571, 28.150045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173000, 0.777188, -0.605020,
		0.954047, -0.020367, -0.298963,
		-0.244673, -0.628939, -0.737951,
		36.943008, 42.189888, 27.928659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799366, 42.476124, 28.575108>,  <37.114281, 42.630146, 28.445225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799366, 42.476124, 28.575108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095642, 42.689854, 28.738024>,  <38.273407, 42.818092, 28.835773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095642, 42.689854, 28.738024>,  <37.799366, 42.476124, 28.575108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095642, 42.689854, 28.738024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077669, -0.534056, 0.841874,
		0.667347, -0.655198, -0.354068,
		0.740686, 0.534321, 0.407289,
		38.317848, 42.850151, 28.860210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204922, 41.987759, 28.900915>,  <37.799366, 42.476124, 28.575108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204922, 41.987759, 28.900915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303940, 42.328461, 29.085623>,  <38.363350, 42.532883, 29.196447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303940, 42.328461, 29.085623>,  <38.204922, 41.987759, 28.900915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303940, 42.328461, 29.085623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045870, -0.465763, 0.883720,
		0.967789, -0.239946, -0.076230,
		0.247550, 0.851757, 0.461767,
		38.378204, 42.583988, 29.224154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865421, 41.973961, 29.322653>,  <38.204922, 41.987759, 28.900915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865421, 41.973961, 29.322653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.669239, 42.280468, 29.488678>,  <38.551529, 42.464375, 29.588293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.669239, 42.280468, 29.488678>,  <38.865421, 41.973961, 29.322653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669239, 42.280468, 29.488678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014977, -0.483624, 0.875148,
		0.871335, 0.423009, 0.248675,
		-0.490460, 0.766271, 0.415063,
		38.522102, 42.510349, 29.613197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218262, 42.176476, 29.899784>,  <38.865421, 41.973961, 29.322653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218262, 42.176476, 29.899784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842842, 42.295963, 29.968933>,  <38.617588, 42.367657, 30.010422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842842, 42.295963, 29.968933>,  <39.218262, 42.176476, 29.899784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842842, 42.295963, 29.968933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055802, -0.625627, 0.778125,
		0.340598, 0.720663, 0.603852,
		-0.938552, 0.298724, 0.172873,
		38.561275, 42.385582, 30.020796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269650, 42.158703, 30.567358>,  <39.218262, 42.176476, 29.899784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269650, 42.158703, 30.567358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872833, 42.179813, 30.521616>,  <38.634743, 42.192478, 30.494171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872833, 42.179813, 30.521616>,  <39.269650, 42.158703, 30.567358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872833, 42.179813, 30.521616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125735, -0.467434, 0.875041,
		-0.007274, 0.882451, 0.470347,
		-0.992037, 0.052774, -0.114355,
		38.575222, 42.195644, 30.487309>
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
