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
	<4.980454, 3.609045, 4.011642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.748009, 3.562143, 4.333775>,  <4.608541, 3.534002, 4.527054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.748009, 3.562143, 4.333775>,  <4.980454, 3.609045, 4.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.748009, 3.562143, 4.333775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093926, -0.973291, -0.209484,
		0.808385, -0.197375, 0.554578,
		-0.581113, -0.117255, 0.805332,
		4.573675, 3.526966, 4.575374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.271169, 3.148118, 4.641673>,  <4.980454, 3.609045, 4.011642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.271169, 3.148118, 4.641673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.871468, 3.136700, 4.631248>,  <4.631647, 3.129849, 4.624994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.871468, 3.136700, 4.631248>,  <5.271169, 3.148118, 4.641673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.871468, 3.136700, 4.631248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034012, -0.969684, -0.241983,
		-0.018364, -0.242689, 0.969930,
		-0.999253, -0.028546, -0.026061,
		4.571692, 3.128136, 4.623430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.986670, 2.489592, 4.867621>,  <5.271169, 3.148118, 4.641673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.986670, 2.489592, 4.867621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.713058, 2.627678, 4.610582>,  <4.548891, 2.710529, 4.456359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.713058, 2.627678, 4.610582>,  <4.986670, 2.489592, 4.867621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.713058, 2.627678, 4.610582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139313, -0.926537, -0.349458,
		-0.716027, -0.149518, 0.681872,
		-0.684030, 0.345215, -0.642596,
		4.507849, 2.731242, 4.417804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.358520, 2.080237, 4.756259>,  <4.986670, 2.489592, 4.867621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.358520, 2.080237, 4.756259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.366806, 2.266482, 4.402361>,  <4.371778, 2.378228, 4.190022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.366806, 2.266482, 4.402361>,  <4.358520, 2.080237, 4.756259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366806, 2.266482, 4.402361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158192, -0.872263, -0.462745,
		-0.987191, 0.149546, 0.055588,
		0.020715, 0.465612, -0.884747,
		4.373020, 2.406165, 4.136937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.730374, 1.848959, 4.387250>,  <4.358520, 2.080237, 4.756259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.730374, 1.848959, 4.387250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.002304, 1.966329, 4.118404>,  <4.165462, 2.036752, 3.957097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.002304, 1.966329, 4.118404>,  <3.730374, 1.848959, 4.387250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.002304, 1.966329, 4.118404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079435, -0.881616, -0.465235,
		-0.729059, 0.369668, -0.576036,
		0.679825, 0.293427, -0.672115,
		4.206252, 2.054357, 3.916770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435793, 1.721229, 3.641237>,  <3.730374, 1.848959, 4.387250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435793, 1.721229, 3.641237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834236, 1.741912, 3.612688>,  <4.073302, 1.754322, 3.595558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834236, 1.741912, 3.612688>,  <3.435793, 1.721229, 3.641237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.834236, 1.741912, 3.612688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011703, -0.880246, -0.474374,
		-0.087354, 0.471693, -0.877425,
		0.996109, 0.051707, -0.071373,
		4.133069, 1.757424, 3.591276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.629516, 1.521899, 2.968607>,  <3.435793, 1.721229, 3.641237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.629516, 1.521899, 2.968607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.964203, 1.467381, 3.180769>,  <4.165015, 1.434671, 3.308066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.964203, 1.467381, 3.180769>,  <3.629516, 1.521899, 2.968607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.964203, 1.467381, 3.180769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132032, -0.889759, -0.436916,
		0.531482, 0.435606, -0.726481,
		0.836716, -0.136294, 0.530405,
		4.215218, 1.426493, 3.339890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.233967, 1.260819, 2.498167>,  <3.629516, 1.521899, 2.968607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.233967, 1.260819, 2.498167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361626, 1.145598, 2.859314>,  <4.438221, 1.076465, 3.076002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.361626, 1.145598, 2.859314>,  <4.233967, 1.260819, 2.498167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361626, 1.145598, 2.859314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349985, -0.849521, -0.394746,
		0.880713, 0.441972, -0.170308,
		0.319147, -0.288053, 0.902868,
		4.457370, 1.059182, 3.130174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.778673, -0.317434, 4.235799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.734207, -0.039474, 3.951614>,  <3.707528, 0.127301, 3.781103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.734207, -0.039474, 3.951614>,  <3.778673, -0.317434, 4.235799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.734207, -0.039474, 3.951614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648214, 0.592588, 0.478182,
		0.753300, -0.407375, -0.516319,
		-0.111165, 0.694900, -0.710462,
		3.700858, 0.168995, 3.738476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.394300, -0.280120, 4.104192>,  <3.778673, -0.317434, 4.235799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.394300, -0.280120, 4.104192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.179993, 0.047504, 4.022129>,  <4.051408, 0.244079, 3.972891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.179993, 0.047504, 4.022129>,  <4.394300, -0.280120, 4.104192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.179993, 0.047504, 4.022129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742280, 0.572690, 0.347916,
		0.402456, 0.034118, -0.914803,
		-0.535770, 0.819061, -0.205157,
		4.019262, 0.293223, 3.960582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.863428, 0.186567, 3.743990>,  <4.394300, -0.280120, 4.104192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.863428, 0.186567, 3.743990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.557587, 0.368414, 3.926727>,  <4.374082, 0.477522, 4.036369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.557587, 0.368414, 3.926727>,  <4.863428, 0.186567, 3.743990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.557587, 0.368414, 3.926727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643783, 0.505272, 0.574669,
		0.030425, 0.733501, -0.679007,
		-0.764603, 0.454617, 0.456843,
		4.328206, 0.504799, 4.063780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.892132, 0.770655, 4.290099>,  <4.863428, 0.186567, 3.743990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.892132, 0.770655, 4.290099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.763428, 0.841242, 3.918007>,  <4.686205, 0.883594, 3.694752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.763428, 0.841242, 3.918007>,  <4.892132, 0.770655, 4.290099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763428, 0.841242, 3.918007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041391, 0.984161, 0.172380,
		0.945915, 0.016962, -0.323969,
		-0.321762, 0.176466, -0.930231,
		4.666899, 0.894182, 3.638938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.362246, 1.287282, 3.951712>,  <4.892132, 0.770655, 4.290099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.362246, 1.287282, 3.951712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.016159, 1.321894, 3.754162>,  <4.808507, 1.342661, 3.635632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.016159, 1.321894, 3.754162>,  <5.362246, 1.287282, 3.951712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.016159, 1.321894, 3.754162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020269, 0.978155, 0.206886,
		0.500989, 0.189012, -0.844562,
		-0.865216, 0.086529, -0.493876,
		4.756594, 1.347852, 3.605999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.406037, 1.836720, 3.424729>,  <5.362246, 1.287282, 3.951712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.406037, 1.836720, 3.424729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.014648, 1.812698, 3.503708>,  <4.779815, 1.798285, 3.551095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.014648, 1.812698, 3.503708>,  <5.406037, 1.836720, 3.424729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.014648, 1.812698, 3.503708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009259, 0.968536, 0.248701,
		-0.206170, 0.241518, -0.948242,
		-0.978472, -0.060055, 0.197447,
		4.721107, 1.794682, 3.562942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.162970, 2.432775, 3.031219>,  <5.406037, 1.836720, 3.424729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.162970, 2.432775, 3.031219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.893066, 2.329216, 3.307674>,  <4.731124, 2.267081, 3.473548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.893066, 2.329216, 3.307674>,  <5.162970, 2.432775, 3.031219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.893066, 2.329216, 3.307674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036075, 0.946904, 0.319486,
		-0.737156, 0.190643, -0.648271,
		-0.674759, -0.258897, 0.691139,
		4.690639, 2.251547, 3.515016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.430542, 2.845202, 2.939076>,  <5.162970, 2.432775, 3.031219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.430542, 2.845202, 2.939076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.540977, 2.746555, 3.310658>,  <4.607239, 2.687367, 3.533606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.540977, 2.746555, 3.310658>,  <4.430542, 2.845202, 2.939076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.540977, 2.746555, 3.310658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160891, 0.941023, 0.297640,
		-0.947570, -0.231635, 0.220128,
		0.276089, -0.246618, 0.928953,
		4.623804, 2.672570, 3.589344>
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
