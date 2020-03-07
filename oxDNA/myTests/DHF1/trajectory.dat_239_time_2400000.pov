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
	<1.866046, 0.677755, 5.154426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.234055, 0.596062, 5.288200>,  <2.454860, 0.547045, 5.368465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.234055, 0.596062, 5.288200>,  <1.866046, 0.677755, 5.154426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.234055, 0.596062, 5.288200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369238, 0.737630, -0.565301,
		-0.131237, 0.643576, 0.754047,
		0.920022, -0.204234, 0.334437,
		2.510061, 0.534791, 5.388532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.120051, 1.235344, 5.547754>,  <1.866046, 0.677755, 5.154426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.120051, 1.235344, 5.547754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.397709, 1.032455, 5.343445>,  <2.564304, 0.910722, 5.220859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.397709, 1.032455, 5.343445>,  <2.120051, 1.235344, 5.547754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.397709, 1.032455, 5.343445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273188, 0.842112, -0.464990,
		0.665981, 0.183234, 0.723115,
		0.694146, -0.507221, -0.510773,
		2.605953, 0.880289, 5.190213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.825245, 1.502204, 5.591243>,  <2.120051, 1.235344, 5.547754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.825245, 1.502204, 5.591243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.828087, 1.314560, 5.237999>,  <2.829792, 1.201973, 5.026052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.828087, 1.314560, 5.237999>,  <2.825245, 1.502204, 5.591243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.828087, 1.314560, 5.237999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198508, 0.866219, -0.458540,
		0.980073, -0.172047, 0.099277,
		0.007105, -0.469110, -0.883111,
		2.830218, 1.173827, 4.973066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.434656, 1.613525, 5.196700>,  <2.825245, 1.502204, 5.591243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.434656, 1.613525, 5.196700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.164547, 1.530418, 4.913620>,  <3.002481, 1.480554, 4.743772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.164547, 1.530418, 4.913620>,  <3.434656, 1.613525, 5.196700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.164547, 1.530418, 4.913620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431468, 0.666924, -0.607494,
		0.598200, -0.715573, -0.360710,
		-0.675272, -0.207768, -0.707700,
		2.961965, 1.468088, 4.701310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.732030, 1.814556, 4.620038>,  <3.434656, 1.613525, 5.196700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.732030, 1.814556, 4.620038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.340157, 1.806061, 4.540268>,  <3.105033, 1.800964, 4.492406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.340157, 1.806061, 4.540268>,  <3.732030, 1.814556, 4.620038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.340157, 1.806061, 4.540268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119104, 0.738421, -0.663738,
		0.161355, -0.674005, -0.720890,
		-0.979683, -0.021237, -0.199425,
		3.046252, 1.799690, 4.480441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.735821, 1.750331, 3.930369>,  <3.732030, 1.814556, 4.620038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.735821, 1.750331, 3.930369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.403542, 1.918327, 4.076546>,  <3.204174, 2.019125, 4.164252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.403542, 1.918327, 4.076546>,  <3.735821, 1.750331, 3.930369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.403542, 1.918327, 4.076546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168879, 0.815585, -0.553444,
		-0.530490, -0.398030, -0.748433,
		-0.830699, 0.419991, 0.365441,
		3.154332, 2.044325, 4.186178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.429204, 2.171958, 3.378291>,  <3.735821, 1.750331, 3.930369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.429204, 2.171958, 3.378291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.266048, 2.307877, 3.717270>,  <3.168155, 2.389427, 3.920657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.266048, 2.307877, 3.717270>,  <3.429204, 2.171958, 3.378291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.266048, 2.307877, 3.717270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167840, 0.940256, -0.296224,
		-0.897472, 0.021409, -0.440551,
		-0.407888, 0.339795, 0.847447,
		3.143682, 2.409815, 3.971504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.064952, 2.754922, 3.176104>,  <3.429204, 2.171958, 3.378291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.064952, 2.754922, 3.176104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106003, 2.797485, 3.571709>,  <3.130633, 2.823024, 3.809072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.106003, 2.797485, 3.571709>,  <3.064952, 2.754922, 3.176104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.106003, 2.797485, 3.571709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285993, 0.949125, -0.131795,
		-0.952720, 0.296377, 0.066973,
		0.102627, 0.106409, 0.989012,
		3.136791, 2.829408, 3.868412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.120920, 3.329162, 3.025885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.091087, 2.977348, 3.213867>,  <4.073188, 2.766260, 3.326656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.091087, 2.977348, 3.213867>,  <4.120920, 3.329162, 3.025885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.091087, 2.977348, 3.213867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862920, -0.179279, -0.472470,
		0.499807, -0.440771, -0.745597,
		-0.074581, -0.879534, 0.469954,
		4.068713, 2.713488, 3.354854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.980217, 3.721936, 3.564888>,  <4.120920, 3.329162, 3.025885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.980217, 3.721936, 3.564888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.869686, 3.766876, 3.946678>,  <3.803368, 3.793840, 4.175752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.869686, 3.766876, 3.946678>,  <3.980217, 3.721936, 3.564888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.869686, 3.766876, 3.946678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307932, -0.951135, 0.022808,
		0.910396, -0.287611, 0.297420,
		-0.276326, 0.112349, 0.954474,
		3.786788, 3.800581, 4.233020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.367733, 3.236999, 4.157020>,  <3.980217, 3.721936, 3.564888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.367733, 3.236999, 4.157020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.981050, 3.333046, 4.192390>,  <3.749041, 3.390674, 4.213613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.981050, 3.333046, 4.192390>,  <4.367733, 3.236999, 4.157020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981050, 3.333046, 4.192390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231017, -0.967598, 0.101911,
		0.110033, 0.078090, 0.990856,
		-0.966708, 0.240118, 0.088427,
		3.691038, 3.405081, 4.218919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.092240, 2.871394, 4.715758>,  <4.367733, 3.236999, 4.157020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.092240, 2.871394, 4.715758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.758554, 3.010391, 4.544487>,  <3.558343, 3.093790, 4.441725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.758554, 3.010391, 4.544487>,  <4.092240, 2.871394, 4.715758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.758554, 3.010391, 4.544487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449436, -0.878354, 0.162791,
		-0.319522, 0.328241, 0.888911,
		-0.834214, 0.347493, -0.428177,
		3.508290, 3.114639, 4.416034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.420645, 2.807029, 5.145693>,  <4.092240, 2.871394, 4.715758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.420645, 2.807029, 5.145693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.311642, 2.833145, 4.761719>,  <3.246240, 2.848815, 4.531334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.311642, 2.833145, 4.761719>,  <3.420645, 2.807029, 5.145693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.311642, 2.833145, 4.761719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598368, -0.792788, 0.115943,
		-0.753455, 0.605990, 0.255109,
		-0.272508, 0.065291, -0.959936,
		3.229889, 2.852732, 4.473738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.687647, 2.740765, 5.125423>,  <3.420645, 2.807029, 5.145693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.687647, 2.740765, 5.125423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.845642, 2.647469, 4.769989>,  <2.940439, 2.591491, 4.556728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.845642, 2.647469, 4.769989>,  <2.687647, 2.740765, 5.125423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.845642, 2.647469, 4.769989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400092, -0.914364, 0.062160,
		-0.826989, 0.330964, -0.454481,
		0.394988, -0.233240, -0.888585,
		2.964139, 2.577497, 4.503414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.151258, 2.692545, 4.629702>,  <2.687647, 2.740765, 5.125423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.151258, 2.692545, 4.629702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.479879, 2.477661, 4.553329>,  <2.677052, 2.348731, 4.507506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.479879, 2.477661, 4.553329>,  <2.151258, 2.692545, 4.629702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.479879, 2.477661, 4.553329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513594, -0.842746, 0.161248,
		-0.247531, -0.034413, -0.968269,
		0.821553, -0.537211, -0.190931,
		2.726345, 2.316498, 4.496050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.861950, 2.196803, 4.209782>,  <2.151258, 2.692545, 4.629702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.861950, 2.196803, 4.209782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.220432, 2.064796, 4.328377>,  <2.435522, 1.985593, 4.399534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.220432, 2.064796, 4.328377>,  <1.861950, 2.196803, 4.209782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.220432, 2.064796, 4.328377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392899, -0.900784, 0.184983,
		0.206024, -0.282273, -0.936950,
		0.896205, -0.330016, 0.296488,
		2.489294, 1.965792, 4.417323>
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
