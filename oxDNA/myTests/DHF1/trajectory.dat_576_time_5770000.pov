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
	<5.083863, 1.672071, -0.740085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.715214, 1.597046, -0.604186>,  <4.494024, 1.552031, -0.522646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.715214, 1.597046, -0.604186>,  <5.083863, 1.672071, -0.740085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.715214, 1.597046, -0.604186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387757, -0.480948, 0.786342,
		0.015913, 0.856452, 0.515982,
		-0.921624, -0.187563, 0.339748,
		4.438726, 1.540777, -0.502262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.995928, 1.751912, 0.068650>,  <5.083863, 1.672071, -0.740085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.995928, 1.751912, 0.068650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.710850, 1.504538, -0.063775>,  <4.539803, 1.356113, -0.143230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.710850, 1.504538, -0.063775>,  <4.995928, 1.751912, 0.068650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.710850, 1.504538, -0.063775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250073, -0.664941, 0.703788,
		-0.655385, 0.418796, 0.628554,
		-0.712695, -0.618436, -0.331063,
		4.497041, 1.319007, -0.163094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427310, 1.495382, 0.630325>,  <4.995928, 1.751912, 0.068650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427310, 1.495382, 0.630325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519718, 1.228878, 0.346712>,  <4.575163, 1.068976, 0.176544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519718, 1.228878, 0.346712>,  <4.427310, 1.495382, 0.630325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.519718, 1.228878, 0.346712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278276, -0.653056, 0.704330,
		-0.932305, -0.360021, 0.034535,
		0.231020, -0.666260, -0.709032,
		4.589025, 1.029000, 0.134002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.956214, 0.766590, 0.780503>,  <4.427310, 1.495382, 0.630325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.956214, 0.766590, 0.780503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293034, 0.730684, 0.567752>,  <4.495125, 0.709141, 0.440101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293034, 0.730684, 0.567752>,  <3.956214, 0.766590, 0.780503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293034, 0.730684, 0.567752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246297, -0.813276, 0.527181,
		-0.479885, -0.574913, -0.662710,
		0.842050, -0.089763, -0.531878,
		4.545649, 0.703755, 0.408188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.977129, 0.177906, 0.350623>,  <3.956214, 0.766590, 0.780503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.977129, 0.177906, 0.350623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.355461, 0.276272, 0.435411>,  <4.582460, 0.335291, 0.486285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.355461, 0.276272, 0.435411>,  <3.977129, 0.177906, 0.350623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.355461, 0.276272, 0.435411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191293, -0.949645, 0.248155,
		0.262323, -0.194163, -0.945245,
		0.945830, 0.245915, 0.211972,
		4.639210, 0.350046, 0.499003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.456993, -0.364951, 0.007582>,  <3.977129, 0.177906, 0.350623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.456993, -0.364951, 0.007582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643295, -0.198772, 0.320114>,  <4.755077, -0.099065, 0.507633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643295, -0.198772, 0.320114>,  <4.456993, -0.364951, 0.007582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643295, -0.198772, 0.320114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231567, -0.909398, 0.345503,
		0.854077, 0.020010, -0.519762,
		0.465757, 0.415446, 0.781329,
		4.783022, -0.074139, 0.554513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.078187, -0.635587, 0.064564>,  <4.456993, -0.364951, 0.007582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.078187, -0.635587, 0.064564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.026505, -0.489378, 0.433281>,  <4.995495, -0.401653, 0.654511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.026505, -0.489378, 0.433281>,  <5.078187, -0.635587, 0.064564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.026505, -0.489378, 0.433281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375622, -0.842270, 0.386639,
		0.917722, 0.396201, -0.028472,
		-0.129205, 0.365522, 0.921791,
		4.987743, -0.379721, 0.709818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.744417, -0.818672, 0.460870>,  <5.078187, -0.635587, 0.064564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.744417, -0.818672, 0.460870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.452942, -0.764460, 0.729390>,  <5.278057, -0.731932, 0.890502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.452942, -0.764460, 0.729390>,  <5.744417, -0.818672, 0.460870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.452942, -0.764460, 0.729390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331135, -0.788296, 0.518594,
		0.599469, 0.600185, 0.529543,
		-0.728688, 0.135530, 0.671301,
		5.234335, -0.723801, 0.930780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.032104, 2.881281, 1.146544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.978195, 3.075645, 1.491966>,  <4.945850, 3.192264, 1.699219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.978195, 3.075645, 1.491966>,  <5.032104, 2.881281, 1.146544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.978195, 3.075645, 1.491966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016831, 0.872503, -0.488319,
		-0.990734, -0.051276, -0.125766,
		-0.134771, 0.485911, 0.863555,
		4.937764, 3.221419, 1.751033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.527228, 3.398924, 1.061311>,  <5.032104, 2.881281, 1.146544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.527228, 3.398924, 1.061311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.773849, 3.523445, 1.350573>,  <4.921822, 3.598158, 1.524130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.773849, 3.523445, 1.350573>,  <4.527228, 3.398924, 1.061311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773849, 3.523445, 1.350573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110972, 0.943702, -0.311629,
		-0.779454, 0.111886, 0.616388,
		0.616553, 0.311302, 0.723155,
		4.958816, 3.616836, 1.567519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.204085, 3.966675, 1.309057>,  <4.527228, 3.398924, 1.061311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.204085, 3.966675, 1.309057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.589615, 3.986263, 1.413858>,  <4.820932, 3.998016, 1.476739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.589615, 3.986263, 1.413858>,  <4.204085, 3.966675, 1.309057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.589615, 3.986263, 1.413858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050849, 0.931142, -0.361094,
		-0.261646, 0.361353, 0.894967,
		0.963824, 0.048970, 0.262004,
		4.878762, 4.000954, 1.492460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.394482, 4.574151, 1.815546>,  <4.204085, 3.966675, 1.309057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.394482, 4.574151, 1.815546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.703056, 4.489414, 1.575542>,  <4.888201, 4.438572, 1.431540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.703056, 4.489414, 1.575542>,  <4.394482, 4.574151, 1.815546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.703056, 4.489414, 1.575542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029390, 0.953810, -0.298968,
		0.635627, 0.213000, 0.742030,
		0.771436, -0.211841, -0.600008,
		4.934487, 4.425862, 1.395540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.916012, 5.100530, 1.899179>,  <4.394482, 4.574151, 1.815546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.916012, 5.100530, 1.899179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.940681, 4.943169, 1.532261>,  <4.955483, 4.848752, 1.312110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.940681, 4.943169, 1.532261>,  <4.916012, 5.100530, 1.899179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.940681, 4.943169, 1.532261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190108, 0.897589, -0.397734,
		0.979824, 0.198915, -0.019433,
		0.061672, -0.393404, -0.917295,
		4.959183, 4.825148, 1.257072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383113, 5.483564, 1.599203>,  <4.916012, 5.100530, 1.899179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383113, 5.483564, 1.599203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.197838, 5.312225, 1.288855>,  <5.086673, 5.209422, 1.102646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.197838, 5.312225, 1.288855>,  <5.383113, 5.483564, 1.599203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.197838, 5.312225, 1.288855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146839, 0.900435, -0.409457,
		0.874010, -0.075729, -0.479971,
		-0.463191, -0.428348, -0.775869,
		5.058882, 5.183721, 1.056093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722647, 5.710885, 0.928164>,  <5.383113, 5.483564, 1.599203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722647, 5.710885, 0.928164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.333298, 5.626675, 0.891886>,  <5.099689, 5.576149, 0.870118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.333298, 5.626675, 0.891886>,  <5.722647, 5.710885, 0.928164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.333298, 5.626675, 0.891886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145346, 0.872770, -0.465990,
		0.177260, -0.440399, -0.880129,
		-0.973372, -0.210524, -0.090697,
		5.041286, 5.563517, 0.864677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.499473, 5.814281, 0.176196>,  <5.722647, 5.710885, 0.928164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.499473, 5.814281, 0.176196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.207855, 5.864300, 0.445375>,  <5.032885, 5.894311, 0.606883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.207855, 5.864300, 0.445375>,  <5.499473, 5.814281, 0.176196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.207855, 5.864300, 0.445375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248557, 0.867687, -0.430510,
		-0.637742, -0.481126, -0.601500,
		-0.729043, 0.125047, 0.672948,
		4.989142, 5.901814, 0.647260>
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
