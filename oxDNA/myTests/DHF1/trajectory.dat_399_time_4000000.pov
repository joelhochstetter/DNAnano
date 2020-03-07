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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.036741, 2.678034, 2.230478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.829216, 2.344116, 2.304184>,  <0.704701, 2.143766, 2.348408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.829216, 2.344116, 2.304184>,  <1.036741, 2.678034, 2.230478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.829216, 2.344116, 2.304184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853199, -0.519160, 0.050244,
		0.053720, 0.183282, 0.981591,
		-0.518811, -0.834794, 0.184266,
		0.673573, 2.093678, 2.359464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.401942, 2.265560, 2.828197>,  <1.036741, 2.678034, 2.230478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.401942, 2.265560, 2.828197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.179710, 2.014137, 2.610481>,  <1.046372, 1.863284, 2.479852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.179710, 2.014137, 2.610481>,  <1.401942, 2.265560, 2.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.179710, 2.014137, 2.610481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791229, -0.600842, -0.113776,
		-0.255516, -0.493868, 0.831147,
		-0.555579, -0.628556, -0.544288,
		1.013037, 1.825570, 2.447195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.564974, 1.629352, 3.072248>,  <1.401942, 2.265560, 2.828197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.564974, 1.629352, 3.072248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406799, 1.572662, 2.709251>,  <1.311894, 1.538648, 2.491453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.406799, 1.572662, 2.709251>,  <1.564974, 1.629352, 3.072248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.406799, 1.572662, 2.709251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722932, -0.657482, -0.212336,
		-0.566567, -0.740021, 0.362451,
		-0.395438, -0.141725, -0.907493,
		1.288168, 1.530145, 2.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.327930, 0.917791, 3.055948>,  <1.564974, 1.629352, 3.072248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.327930, 0.917791, 3.055948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469719, 1.093102, 2.725552>,  <1.554793, 1.198288, 2.527314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469719, 1.093102, 2.725552>,  <1.327930, 0.917791, 3.055948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469719, 1.093102, 2.725552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644682, -0.754389, -0.123619,
		-0.677298, -0.488682, -0.549960,
		0.354473, 0.438277, -0.825991,
		1.576061, 1.224585, 2.477754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.317344, 0.510284, 2.450070>,  <1.327930, 0.917791, 3.055948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.317344, 0.510284, 2.450070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603333, 0.771248, 2.349529>,  <1.774926, 0.927826, 2.289205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603333, 0.771248, 2.349529>,  <1.317344, 0.510284, 2.450070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.603333, 0.771248, 2.349529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533026, -0.741288, -0.407892,
		-0.452436, 0.157655, -0.877751,
		0.714972, 0.652409, -0.251351,
		1.817824, 0.966971, 2.274124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.540535, 0.344236, 1.737447>,  <1.317344, 0.510284, 2.450070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.540535, 0.344236, 1.737447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.846176, 0.554428, 1.887123>,  <2.029561, 0.680543, 1.976929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.846176, 0.554428, 1.887123>,  <1.540535, 0.344236, 1.737447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846176, 0.554428, 1.887123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626723, -0.742142, -0.237578,
		0.152860, 0.416048, -0.896403,
		0.764102, 0.525480, 0.374191,
		2.075407, 0.712072, 1.999380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.970988, 0.352360, 1.225634>,  <1.540535, 0.344236, 1.737447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.970988, 0.352360, 1.225634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.196381, 0.430779, 1.546646>,  <2.331616, 0.477830, 1.739253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.196381, 0.430779, 1.546646>,  <1.970988, 0.352360, 1.225634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.196381, 0.430779, 1.546646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667415, -0.680539, -0.302365,
		0.486875, 0.705997, -0.514315,
		0.563481, 0.196047, 0.802530,
		2.365425, 0.489593, 1.787405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.655471, 0.445496, 1.041791>,  <1.970988, 0.352360, 1.225634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.655471, 0.445496, 1.041791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.676186, 0.355171, 1.430908>,  <2.688614, 0.300976, 1.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.676186, 0.355171, 1.430908>,  <2.655471, 0.445496, 1.041791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.676186, 0.355171, 1.430908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576760, -0.788460, -0.213727,
		0.815271, 0.572136, 0.089408,
		0.051786, -0.225812, 0.972793,
		2.691721, 0.287428, 1.722746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.161178, -0.626695, 0.980414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.435059, -0.609810, 1.271454>,  <3.599387, -0.599679, 1.446078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.435059, -0.609810, 1.271454>,  <3.161178, -0.626695, 0.980414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.435059, -0.609810, 1.271454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386063, 0.867763, 0.312957,
		-0.618174, -0.495181, 0.610456,
		0.684702, 0.042213, 0.727600,
		3.640469, -0.597146, 1.489734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.932958, -0.609202, 1.642741>,  <3.161178, -0.626695, 0.980414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.932958, -0.609202, 1.642741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.224026, -0.335037, 1.653389>,  <3.398666, -0.170538, 1.659778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.224026, -0.335037, 1.653389>,  <2.932958, -0.609202, 1.642741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.224026, -0.335037, 1.653389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639996, 0.664469, 0.385858,
		0.246784, -0.297813, 0.922174,
		0.727670, 0.685411, 0.026619,
		3.442327, -0.129414, 1.661375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.979116, -0.249913, 2.338770>,  <2.932958, -0.609202, 1.642741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.979116, -0.249913, 2.338770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.133110, -0.006012, 2.061646>,  <3.225507, 0.140329, 1.895371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.133110, -0.006012, 2.061646>,  <2.979116, -0.249913, 2.338770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.133110, -0.006012, 2.061646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465597, 0.776462, 0.424648,
		0.796872, 0.159088, 0.582826,
		0.384985, 0.609752, -0.692812,
		3.248606, 0.176914, 1.853802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340708, 0.252435, 2.682510>,  <2.979116, -0.249913, 2.338770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340708, 0.252435, 2.682510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.188992, 0.363365, 2.329414>,  <3.097961, 0.429923, 2.117557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.188992, 0.363365, 2.329414>,  <3.340708, 0.252435, 2.682510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.188992, 0.363365, 2.329414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500729, 0.740734, 0.447865,
		0.778079, 0.611884, -0.142090,
		-0.379293, 0.277326, -0.882738,
		3.075204, 0.446563, 2.064593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.253728, 0.887022, 2.737898>,  <3.340708, 0.252435, 2.682510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.253728, 0.887022, 2.737898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.002254, 0.801346, 2.438866>,  <2.851370, 0.749940, 2.259446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.002254, 0.801346, 2.438866>,  <3.253728, 0.887022, 2.737898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.002254, 0.801346, 2.438866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591980, 0.755210, 0.281454,
		0.504296, 0.619499, -0.601586,
		-0.628684, -0.214191, -0.747582,
		2.813649, 0.737089, 2.214591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.035548, 1.452173, 2.491332>,  <3.253728, 0.887022, 2.737898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.035548, 1.452173, 2.491332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.752010, 1.226921, 2.321426>,  <2.581888, 1.091770, 2.219483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.752010, 1.226921, 2.321426>,  <3.035548, 1.452173, 2.491332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.752010, 1.226921, 2.321426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668277, 0.728849, 0.148949,
		0.225711, 0.389441, -0.892967,
		-0.708845, -0.563129, -0.424764,
		2.539357, 1.057982, 2.193997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.730035, 1.902659, 2.007540>,  <3.035548, 1.452173, 2.491332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.730035, 1.902659, 2.007540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.468941, 1.618141, 2.111847>,  <2.312284, 1.447431, 2.174431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.468941, 1.618141, 2.111847>,  <2.730035, 1.902659, 2.007540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.468941, 1.618141, 2.111847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715748, 0.691808, 0.095430,
		-0.248279, -0.124353, -0.960674,
		-0.652734, -0.711293, 0.260767,
		2.273120, 1.404753, 2.190077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.052057, 1.923704, 1.533789>,  <2.730035, 1.902659, 2.007540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.052057, 1.923704, 1.533789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.013084, 1.794044, 1.910179>,  <1.989701, 1.716249, 2.136013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.013084, 1.794044, 1.910179>,  <2.052057, 1.923704, 1.533789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.013084, 1.794044, 1.910179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663288, 0.726039, 0.181427,
		-0.741995, -0.606461, -0.285743,
		-0.097432, -0.324148, 0.940976,
		1.983855, 1.696800, 2.192472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
