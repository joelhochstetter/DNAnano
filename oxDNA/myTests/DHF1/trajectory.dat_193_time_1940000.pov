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
	<2.959161, 3.209723, 4.402342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.775524, 3.463600, 4.650986>,  <2.665342, 3.615927, 4.800172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.775524, 3.463600, 4.650986>,  <2.959161, 3.209723, 4.402342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.775524, 3.463600, 4.650986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837012, -0.543519, -0.063221,
		0.297731, -0.549319, 0.780772,
		-0.459093, 0.634693, 0.621609,
		2.637796, 3.654008, 4.837469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.663922, 2.787531, 5.007706>,  <2.959161, 3.209723, 4.402342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.663922, 2.787531, 5.007706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473927, 3.125252, 4.908478>,  <2.359929, 3.327884, 4.848941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.473927, 3.125252, 4.908478>,  <2.663922, 2.787531, 5.007706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.473927, 3.125252, 4.908478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834431, -0.521661, -0.177750,
		-0.279483, 0.122567, 0.952296,
		-0.474989, 0.844303, -0.248069,
		2.331430, 3.378543, 4.834057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.994567, 2.860229, 5.426441>,  <2.663922, 2.787531, 5.007706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.994567, 2.860229, 5.426441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.985096, 3.019814, 5.059776>,  <1.979413, 3.115564, 4.839777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.985096, 3.019814, 5.059776>,  <1.994567, 2.860229, 5.426441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.985096, 3.019814, 5.059776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888292, -0.429077, -0.163803,
		-0.458669, 0.810385, 0.364552,
		-0.023677, 0.398960, -0.916663,
		1.977993, 3.139502, 4.784778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.445476, 3.334600, 5.247572>,  <1.994567, 2.860229, 5.426441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.445476, 3.334600, 5.247572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.560886, 3.129906, 4.923874>,  <1.630133, 3.007089, 4.729655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.560886, 3.129906, 4.923874>,  <1.445476, 3.334600, 5.247572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.560886, 3.129906, 4.923874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928339, -0.356422, -0.105600,
		-0.234394, 0.781722, -0.577901,
		0.288527, -0.511736, -0.809246,
		1.647444, 2.976385, 4.681100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.067244, 3.473581, 4.559662>,  <1.445476, 3.334600, 5.247572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.067244, 3.473581, 4.559662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.191647, 3.095650, 4.600800>,  <1.266288, 2.868891, 4.625482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.191647, 3.095650, 4.600800>,  <1.067244, 3.473581, 4.559662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.191647, 3.095650, 4.600800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915218, -0.326905, -0.235603,
		0.256223, -0.020849, -0.966393,
		0.311007, -0.944827, 0.102843,
		1.284949, 2.812201, 4.631652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.818479, 3.109629, 3.983810>,  <1.067244, 3.473581, 4.559662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.818479, 3.109629, 3.983810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.840984, 2.866913, 4.300957>,  <0.854488, 2.721283, 4.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.840984, 2.866913, 4.300957>,  <0.818479, 3.109629, 3.983810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.840984, 2.866913, 4.300957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950680, -0.275173, -0.143130,
		0.305026, -0.745710, -0.592347,
		0.056265, -0.606792, 0.792867,
		0.857864, 2.684875, 4.538817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.253590, 2.595596, 3.916163>,  <0.818479, 3.109629, 3.983810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.253590, 2.595596, 3.916163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.337868, 2.555351, 4.305107>,  <0.388434, 2.531204, 4.538474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.337868, 2.555351, 4.305107>,  <0.253590, 2.595596, 3.916163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.337868, 2.555351, 4.305107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860788, -0.490523, 0.135763,
		0.463306, -0.865601, -0.189956,
		0.210694, -0.100612, 0.972361,
		0.401076, 2.525168, 4.596815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.008017, 1.899008, 4.014726>,  <0.253590, 2.595596, 3.916163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.008017, 1.899008, 4.014726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.022346, 2.076210, 4.373047>,  <0.030944, 2.182531, 4.588039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.022346, 2.076210, 4.373047>,  <0.008017, 1.899008, 4.014726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.022346, 2.076210, 4.373047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894009, -0.386388, 0.226833,
		0.446615, -0.808982, 0.382209,
		0.035823, 0.443005, 0.895803,
		0.033093, 2.209111, 4.641788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.384287, 2.014776, -0.139399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.465441, 2.339966, 0.078926>,  <3.514133, 2.535079, 0.209921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.465441, 2.339966, 0.078926>,  <3.384287, 2.014776, -0.139399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.465441, 2.339966, 0.078926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966487, -0.255793, 0.021742,
		0.157291, 0.523110, -0.837625,
		0.202885, 0.812973, 0.545813,
		3.526306, 2.583858, 0.242670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891444, 2.346080, -0.503247>,  <3.384287, 2.014776, -0.139399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891444, 2.346080, -0.503247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.897858, 2.412659, -0.108879>,  <3.901706, 2.452606, 0.127742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.897858, 2.412659, -0.108879>,  <3.891444, 2.346080, -0.503247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.897858, 2.412659, -0.108879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983102, -0.182457, 0.014816,
		0.182354, 0.969023, -0.166559,
		0.016033, 0.166446, 0.985920,
		3.902668, 2.462592, 0.186897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.360507, 2.864607, -0.425894>,  <3.891444, 2.346080, -0.503247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.360507, 2.864607, -0.425894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.337154, 2.665207, -0.079926>,  <4.323143, 2.545567, 0.127656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.337154, 2.665207, -0.079926>,  <4.360507, 2.864607, -0.425894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.337154, 2.665207, -0.079926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985195, -0.168662, -0.030710,
		0.161188, 0.850324, 0.500966,
		-0.058380, -0.498500, 0.864922,
		4.319640, 2.515657, 0.179551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.654552, 3.175249, 0.180447>,  <4.360507, 2.864607, -0.425894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.654552, 3.175249, 0.180447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.666441, 2.775528, 0.189484>,  <4.673574, 2.535695, 0.194905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.666441, 2.775528, 0.189484>,  <4.654552, 3.175249, 0.180447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666441, 2.775528, 0.189484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993186, 0.026978, -0.113373,
		0.112684, 0.025807, 0.993296,
		0.029723, -0.999303, 0.022591,
		4.675358, 2.475737, 0.196261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.143892, 2.889966, 0.758683>,  <4.654552, 3.175249, 0.180447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.143892, 2.889966, 0.758683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.091660, 2.661011, 0.434875>,  <5.060320, 2.523638, 0.240591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.091660, 2.661011, 0.434875>,  <5.143892, 2.889966, 0.758683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.091660, 2.661011, 0.434875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989576, -0.025228, -0.141787,
		0.060735, -0.819596, 0.569714,
		-0.130581, -0.572387, -0.809520,
		5.052485, 2.489295, 0.192020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.681573, 2.371474, 0.808325>,  <5.143892, 2.889966, 0.758683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.681573, 2.371474, 0.808325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.586586, 2.409485, 0.421631>,  <5.529594, 2.432292, 0.189614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.586586, 2.409485, 0.421631>,  <5.681573, 2.371474, 0.808325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.586586, 2.409485, 0.421631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969009, -0.046548, -0.242601,
		-0.068054, -0.994386, -0.081030,
		-0.237467, 0.095028, -0.966736,
		5.515346, 2.437993, 0.131610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.922089, 1.805916, 0.474727>,  <5.681573, 2.371474, 0.808325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.922089, 1.805916, 0.474727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.905550, 2.116043, 0.222641>,  <5.895627, 2.302119, 0.071389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.905550, 2.116043, 0.222641>,  <5.922089, 1.805916, 0.474727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.905550, 2.116043, 0.222641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959960, -0.144087, -0.240241,
		-0.277069, -0.614915, -0.738317,
		-0.041346, 0.775319, -0.630216,
		5.893146, 2.348639, 0.033576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.212190, 1.511487, -0.053799>,  <5.922089, 1.805916, 0.474727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.212190, 1.511487, -0.053799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.247629, 1.909912, -0.055176>,  <6.268892, 2.148967, -0.056002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.247629, 1.909912, -0.055176>,  <6.212190, 1.511487, -0.053799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.247629, 1.909912, -0.055176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943820, -0.085054, -0.319329,
		-0.318364, 0.025044, -0.947638,
		0.088597, 0.996062, -0.003441,
		6.274208, 2.208731, -0.056208>
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
