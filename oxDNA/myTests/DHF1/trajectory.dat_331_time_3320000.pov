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
	<2.340806, 5.095248, 3.209622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.206951, 4.746246, 3.067211>,  <2.126638, 4.536845, 2.981765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.206951, 4.746246, 3.067211>,  <2.340806, 5.095248, 3.209622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.206951, 4.746246, 3.067211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860647, -0.129096, -0.492566,
		0.383804, -0.471243, 0.794119,
		-0.334636, -0.872504, -0.356026,
		2.106560, 4.484495, 2.960403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.817531, 4.683908, 3.388696>,  <2.340806, 5.095248, 3.209622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.817531, 4.683908, 3.388696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.638065, 4.543983, 3.059738>,  <2.530386, 4.460029, 2.862363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.638065, 4.543983, 3.059738>,  <2.817531, 4.683908, 3.388696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.638065, 4.543983, 3.059738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860012, 0.081280, -0.503759,
		0.243064, -0.933288, 0.264375,
		-0.448664, -0.349811, -0.822395,
		2.503466, 4.439040, 2.813020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.341813, 4.270116, 3.086516>,  <2.817531, 4.683908, 3.388696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.341813, 4.270116, 3.086516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.080181, 4.355392, 2.796211>,  <2.923202, 4.406558, 2.622029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.080181, 4.355392, 2.796211>,  <3.341813, 4.270116, 3.086516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.080181, 4.355392, 2.796211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711991, -0.150486, -0.685874,
		-0.255439, -0.965352, -0.053360,
		-0.654080, 0.213190, -0.725761,
		2.883957, 4.419350, 2.578483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.329227, 3.753775, 2.550686>,  <3.341813, 4.270116, 3.086516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.329227, 3.753775, 2.550686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.253479, 4.141068, 2.485367>,  <3.208030, 4.373443, 2.446175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.253479, 4.141068, 2.485367>,  <3.329227, 3.753775, 2.550686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253479, 4.141068, 2.485367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838126, 0.072747, -0.540603,
		-0.511550, -0.239240, -0.825276,
		-0.189371, 0.968231, -0.163299,
		3.196668, 4.431537, 2.436377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.346999, 3.929901, 1.853598>,  <3.329227, 3.753775, 2.550686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.346999, 3.929901, 1.853598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.439049, 4.253922, 2.069324>,  <3.494279, 4.448334, 2.198760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.439049, 4.253922, 2.069324>,  <3.346999, 3.929901, 1.853598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.439049, 4.253922, 2.069324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926279, -0.012388, -0.376636,
		-0.298413, 0.586229, -0.753183,
		0.230125, 0.810050, 0.539315,
		3.508086, 4.496937, 2.231119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.498992, 4.564212, 1.398755>,  <3.346999, 3.929901, 1.853598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.498992, 4.564212, 1.398755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.681320, 4.574638, 1.754631>,  <3.790717, 4.580894, 1.968157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.681320, 4.574638, 1.754631>,  <3.498992, 4.564212, 1.398755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.681320, 4.574638, 1.754631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889214, 0.030558, -0.456470,
		-0.039086, 0.999193, -0.009249,
		0.455819, 0.026066, 0.889690,
		3.818066, 4.582458, 2.021538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.097939, 4.999921, 1.303514>,  <3.498992, 4.564212, 1.398755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.097939, 4.999921, 1.303514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.189960, 4.773811, 1.620384>,  <4.245173, 4.638146, 1.810506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.189960, 4.773811, 1.620384>,  <4.097939, 4.999921, 1.303514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189960, 4.773811, 1.620384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950848, -0.042814, -0.306685,
		0.207277, 0.823792, 0.527639,
		0.230054, -0.565273, 0.792175,
		4.258977, 4.604229, 1.858037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.710981, 5.279720, 1.485112>,  <4.097939, 4.999921, 1.303514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.710981, 5.279720, 1.485112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.696434, 4.910278, 1.637760>,  <4.687706, 4.688613, 1.729349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.696434, 4.910278, 1.637760>,  <4.710981, 5.279720, 1.485112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.696434, 4.910278, 1.637760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883819, -0.207954, -0.419069,
		0.466413, 0.322043, 0.823861,
		-0.036367, -0.923604, 0.381620,
		4.685524, 4.633197, 1.752246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.233540, 4.543447, 1.031801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.192083, 4.178635, 1.190525>,  <6.167209, 3.959747, 1.285759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.192083, 4.178635, 1.190525>,  <6.233540, 4.543447, 1.031801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.192083, 4.178635, 1.190525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968520, 0.183330, 0.168401,
		-0.226334, -0.366865, -0.902321,
		-0.103642, -0.912031, 0.396809,
		6.160991, 3.905025, 1.309568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.682108, 4.161598, 0.719569>,  <6.233540, 4.543447, 1.031801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.682108, 4.161598, 0.719569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.737967, 4.053284, 1.100552>,  <5.771482, 3.988295, 1.329141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.737967, 4.053284, 1.100552>,  <5.682108, 4.161598, 0.719569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.737967, 4.053284, 1.100552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987106, 0.037932, 0.155509,
		-0.078239, -0.961891, -0.261999,
		0.139645, -0.270788, 0.952457,
		5.779860, 3.972048, 1.386289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040346, 3.959304, 0.951798>,  <5.682108, 4.161598, 0.719569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040346, 3.959304, 0.951798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.235847, 3.969772, 1.300610>,  <5.353148, 3.976053, 1.509897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.235847, 3.969772, 1.300610>,  <5.040346, 3.959304, 0.951798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.235847, 3.969772, 1.300610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870307, 0.084173, 0.485263,
		-0.060705, -0.996108, 0.063911,
		0.488753, 0.026164, 0.872029,
		5.382473, 3.977623, 1.562218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.677750, 3.452880, 1.489151>,  <5.040346, 3.959304, 0.951798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.677750, 3.452880, 1.489151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.856468, 3.760300, 1.672325>,  <4.963699, 3.944752, 1.782229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.856468, 3.760300, 1.672325>,  <4.677750, 3.452880, 1.489151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.856468, 3.760300, 1.672325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859184, 0.225950, 0.459074,
		0.249355, -0.598555, 0.761285,
		0.446793, 0.768556, 0.457927,
		4.990507, 3.990865, 1.809705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.584751, 3.390674, 2.259396>,  <4.677750, 3.452880, 1.489151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.584751, 3.390674, 2.259396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.617584, 3.759613, 2.108379>,  <4.637284, 3.980977, 2.017770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.617584, 3.759613, 2.108379>,  <4.584751, 3.390674, 2.259396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.617584, 3.759613, 2.108379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817297, 0.279084, 0.504120,
		0.570340, 0.267183, 0.776740,
		0.082084, 0.922348, -0.377541,
		4.642210, 4.036317, 1.995117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.577738, 3.884269, 2.900938>,  <4.584751, 3.390674, 2.259396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.577738, 3.884269, 2.900938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.475775, 4.089188, 2.572895>,  <4.414597, 4.212139, 2.376070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.475775, 4.089188, 2.572895>,  <4.577738, 3.884269, 2.900938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.475775, 4.089188, 2.572895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821147, 0.333187, 0.463362,
		0.510627, 0.791542, 0.335739,
		-0.254907, 0.512296, -0.820107,
		4.399302, 4.242877, 2.326863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.428863, 4.585913, 3.180777>,  <4.577738, 3.884269, 2.900938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.428863, 4.585913, 3.180777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233337, 4.521988, 2.837727>,  <4.116022, 4.483633, 2.631896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.233337, 4.521988, 2.837727>,  <4.428863, 4.585913, 3.180777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233337, 4.521988, 2.837727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852335, 0.297055, 0.430445,
		0.185972, 0.941392, -0.281419,
		-0.488815, -0.159812, -0.857625,
		4.086693, 4.474044, 2.580439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.017561, 5.212790, 2.942551>,  <4.428863, 4.585913, 3.180777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.017561, 5.212790, 2.942551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.877195, 4.855576, 2.829880>,  <3.792976, 4.641246, 2.762277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.877195, 4.855576, 2.829880>,  <4.017561, 5.212790, 2.942551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.877195, 4.855576, 2.829880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867869, 0.197204, 0.455976,
		-0.351656, 0.404468, -0.844242,
		-0.350915, -0.893038, -0.281677,
		3.771921, 4.587664, 2.745377>
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
