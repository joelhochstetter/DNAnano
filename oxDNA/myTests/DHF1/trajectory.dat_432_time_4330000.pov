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
	<0.892390, 2.069648, -0.599195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.875507, 2.097771, -0.200542>,  <0.865378, 2.114644, 0.038649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.875507, 2.097771, -0.200542>,  <0.892390, 2.069648, -0.599195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.875507, 2.097771, -0.200542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434702, 0.896863, -0.081677,
		-0.899585, -0.436685, -0.007291,
		-0.042206, 0.070306, 0.996632,
		0.862845, 2.118863, 0.098447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.239197, 2.305175, -0.532966>,  <0.892390, 2.069648, -0.599195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.239197, 2.305175, -0.532966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.475044, 2.397064, -0.223236>,  <0.616552, 2.452198, -0.037398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.475044, 2.397064, -0.223236>,  <0.239197, 2.305175, -0.532966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.475044, 2.397064, -0.223236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359244, 0.933238, -0.003320,
		-0.723392, -0.276214, 0.632779,
		0.589617, 0.229724, 0.774325,
		0.651929, 2.465981, 0.009061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.163185, 2.578668, 0.062536>,  <0.239197, 2.305175, -0.532966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.163185, 2.578668, 0.062536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.207092, 2.729355, 0.048805>,  <0.429258, 2.819767, 0.040566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.207092, 2.729355, 0.048805>,  <-0.163185, 2.578668, 0.062536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.207092, 2.729355, 0.048805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368222, 0.918152, 0.146320,
		0.086639, -0.122807, 0.988642,
		0.925692, 0.376717, -0.034328,
		0.484800, 2.842370, 0.038507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.034167, 2.916779, 0.739252>,  <-0.163185, 2.578668, 0.062536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.034167, 2.916779, 0.739252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.176941, 3.081169, 0.403706>,  <0.262605, 3.179803, 0.202377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.176941, 3.081169, 0.403706>,  <0.034167, 2.916779, 0.739252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.176941, 3.081169, 0.403706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501564, 0.841910, 0.199052,
		0.788056, 0.349697, 0.506636,
		0.356934, 0.410975, -0.838867,
		0.284021, 3.204462, 0.152045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.075145, 3.656136, 0.916947>,  <0.034167, 2.916779, 0.739252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.075145, 3.656136, 0.916947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.071838, 3.636017, 0.517467>,  <0.069855, 3.623945, 0.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.071838, 3.636017, 0.517467>,  <0.075145, 3.656136, 0.916947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.071838, 3.636017, 0.517467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453490, 0.890313, -0.041086,
		0.891223, 0.452561, -0.030171,
		-0.008268, -0.050299, -0.998700,
		0.069359, 3.620927, 0.217857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.183756, 4.410843, 0.708290>,  <0.075145, 3.656136, 0.916947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.183756, 4.410843, 0.708290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.037319, 4.222984, 0.386940>,  <-0.050543, 4.110269, 0.194130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.037319, 4.222984, 0.386940>,  <0.183756, 4.410843, 0.708290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.037319, 4.222984, 0.386940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429215, 0.851209, -0.302021,
		0.825682, 0.234253, -0.513200,
		-0.366091, -0.469647, -0.803374,
		-0.072508, 4.082090, 0.145928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.244553, 4.951723, 0.125344>,  <0.183756, 4.410843, 0.708290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.244553, 4.951723, 0.125344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.036400, 4.685059, 0.025566>,  <-0.204972, 4.525060, -0.034301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.036400, 4.685059, 0.025566>,  <0.244553, 4.951723, 0.125344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.036400, 4.685059, 0.025566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677912, 0.733364, -0.051117,
		0.217012, 0.133198, -0.967039,
		-0.702382, -0.666660, -0.249446,
		-0.247115, 4.485061, -0.049268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.082085, 5.199658, -0.526863>,  <0.244553, 4.951723, 0.125344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.082085, 5.199658, -0.526863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.340855, 4.941277, -0.364761>,  <-0.496117, 4.786248, -0.267500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.340855, 4.941277, -0.364761>,  <-0.082085, 5.199658, -0.526863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.340855, 4.941277, -0.364761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715801, 0.697631, -0.030677,
		-0.262902, -0.309927, -0.913689,
		-0.646925, -0.645954, 0.405254,
		-0.534932, 4.747490, -0.243185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.848512, 5.833919, 5.027733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.577381, 5.540024, 5.038399>,  <3.414702, 5.363687, 5.044798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.577381, 5.540024, 5.038399>,  <3.848512, 5.833919, 5.027733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.577381, 5.540024, 5.038399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732798, -0.672208, 0.105559,
		-0.059635, 0.091090, 0.994055,
		-0.677827, -0.734738, 0.026663,
		3.374033, 5.319602, 5.046398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.984926, 5.296926, 5.626905>,  <3.848512, 5.833919, 5.027733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.984926, 5.296926, 5.626905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.763718, 5.140564, 5.332596>,  <3.630994, 5.046747, 5.156010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.763718, 5.140564, 5.332596>,  <3.984926, 5.296926, 5.626905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.763718, 5.140564, 5.332596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590118, -0.807183, -0.014697,
		-0.588159, -0.442321, 0.677068,
		-0.553019, -0.390906, -0.735773,
		3.597812, 5.023292, 5.111864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.805727, 4.593229, 5.747303>,  <3.984926, 5.296926, 5.626905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.805727, 4.593229, 5.747303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.815438, 4.646027, 5.350922>,  <3.821265, 4.677705, 5.113093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.815438, 4.646027, 5.350922>,  <3.805727, 4.593229, 5.747303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.815438, 4.646027, 5.350922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630591, -0.771193, -0.087274,
		-0.775735, -0.622767, -0.101958,
		0.024278, 0.131995, -0.990953,
		3.822721, 4.685625, 5.053636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.592829, 3.968714, 5.349829>,  <3.805727, 4.593229, 5.747303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.592829, 3.968714, 5.349829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.850529, 4.192078, 5.140785>,  <4.005149, 4.326096, 5.015359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.850529, 4.192078, 5.140785>,  <3.592829, 3.968714, 5.349829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.850529, 4.192078, 5.140785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591399, -0.797012, -0.122554,
		-0.484961, -0.230116, -0.843718,
		0.644251, 0.558408, -0.522610,
		4.043804, 4.359600, 4.984002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.851455, 3.533170, 4.725128>,  <3.592829, 3.968714, 5.349829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.851455, 3.533170, 4.725128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.115865, 3.829422, 4.773315>,  <4.274510, 4.007174, 4.802228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.115865, 3.829422, 4.773315>,  <3.851455, 3.533170, 4.725128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.115865, 3.829422, 4.773315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746267, -0.665642, -0.002541,
		0.078307, 0.091582, -0.992714,
		0.661024, 0.740631, 0.120469,
		4.314172, 4.051611, 4.809456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352389, 3.446183, 4.158333>,  <3.851455, 3.533170, 4.725128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352389, 3.446183, 4.158333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.510359, 3.643951, 4.468063>,  <4.605141, 3.762613, 4.653902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.510359, 3.643951, 4.468063>,  <4.352389, 3.446183, 4.158333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.510359, 3.643951, 4.468063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791972, -0.610392, -0.014177,
		0.465634, 0.618844, -0.632627,
		0.394924, 0.494422, 0.774327,
		4.628836, 3.792278, 4.700361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.899692, 3.607958, 3.909721>,  <4.352389, 3.446183, 4.158333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.899692, 3.607958, 3.909721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.937586, 3.600174, 4.307846>,  <4.960322, 3.595504, 4.546721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.937586, 3.600174, 4.307846>,  <4.899692, 3.607958, 3.909721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.937586, 3.600174, 4.307846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691891, -0.717569, -0.079883,
		0.715760, 0.696216, -0.054515,
		0.094734, -0.019459, 0.995312,
		4.966006, 3.594336, 4.606440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.580552, 3.808279, 4.048645>,  <4.899692, 3.607958, 3.909721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.580552, 3.808279, 4.048645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.451397, 3.586075, 4.355148>,  <5.373905, 3.452753, 4.539051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.451397, 3.586075, 4.355148>,  <5.580552, 3.808279, 4.048645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.451397, 3.586075, 4.355148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721863, -0.668159, -0.180212,
		0.612093, 0.494947, 0.616741,
		-0.322885, -0.555509, 0.766260,
		5.354532, 3.419422, 4.585026>
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
