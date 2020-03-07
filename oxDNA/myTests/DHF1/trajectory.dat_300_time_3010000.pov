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
	<2.077032, 0.669755, 1.552655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.058868, 0.914001, 1.868904>,  <2.047971, 1.060549, 2.058654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.058868, 0.914001, 1.868904>,  <2.077032, 0.669755, 1.552655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.058868, 0.914001, 1.868904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998848, -0.015485, -0.045408,
		-0.015485, -0.791775, 0.610616,
		0.045408, -0.610616, -0.790624,
		2.045246, 1.097186, 2.106091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.623511, 0.373926, 2.067893>,  <2.077032, 0.669755, 1.552655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.623511, 0.373926, 2.067893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626518, 0.772842, 2.097160>,  <1.628323, 1.012192, 2.114721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626518, 0.772842, 2.097160>,  <1.623511, 0.373926, 2.067893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.626518, 0.772842, 2.097160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993496, -0.000864, 0.113859,
		0.113614, -0.073548, 0.990799,
		0.007518, 0.997291, 0.073168,
		1.628774, 1.072030, 2.119111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.295539, 0.669579, 2.690386>,  <1.623511, 0.373926, 2.067893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.295539, 0.669579, 2.690386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.232243, 0.934982, 2.397888>,  <1.194264, 1.094224, 2.222390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.232243, 0.934982, 2.397888>,  <1.295539, 0.669579, 2.690386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.232243, 0.934982, 2.397888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980327, -0.017087, 0.196640,
		0.117977, 0.747974, 0.653158,
		-0.158242, 0.663507, -0.731243,
		1.184770, 1.134035, 2.178515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.997403, 1.295264, 2.909340>,  <1.295539, 0.669579, 2.690386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.997403, 1.295264, 2.909340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893902, 1.222656, 2.529846>,  <0.831801, 1.179092, 2.302150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893902, 1.222656, 2.529846>,  <0.997403, 1.295264, 2.909340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.893902, 1.222656, 2.529846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907769, 0.381403, 0.174607,
		0.330156, 0.906412, -0.263466,
		-0.258753, -0.181519, -0.948735,
		0.816276, 1.168201, 2.245226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.557608, 1.820263, 2.663074>,  <0.997403, 1.295264, 2.909340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.557608, 1.820263, 2.663074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.468204, 1.487762, 2.459480>,  <0.414563, 1.288262, 2.337324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.468204, 1.487762, 2.459480>,  <0.557608, 1.820263, 2.663074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.468204, 1.487762, 2.459480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941060, 0.320044, -0.109440,
		0.253869, 0.454522, -0.853792,
		-0.223508, -0.831253, -0.508982,
		0.401152, 1.238387, 2.306785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.192207, 2.097916, 2.114578>,  <0.557608, 1.820263, 2.663074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.192207, 2.097916, 2.114578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.119282, 1.705276, 2.137291>,  <0.075527, 1.469692, 2.150918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.119282, 1.705276, 2.137291>,  <0.192207, 2.097916, 2.114578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.119282, 1.705276, 2.137291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973863, 0.172315, -0.147979,
		0.135472, -0.082277, -0.987359,
		-0.182312, -0.981599, 0.056783,
		0.064588, 1.410797, 2.154325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.195272, 1.965512, 1.527717>,  <0.192207, 2.097916, 2.114578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.195272, 1.965512, 1.527717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.258053, 1.653091, 1.769485>,  <-0.295721, 1.465639, 1.914547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.258053, 1.653091, 1.769485>,  <-0.195272, 1.965512, 1.527717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.258053, 1.653091, 1.769485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987265, 0.107999, -0.116805,
		0.025954, -0.615057, -0.788055,
		-0.156951, -0.781051, 0.604422,
		-0.305138, 1.418776, 1.950812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.729802, 1.540589, 1.227855>,  <-0.195273, 1.965512, 1.527717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.729802, 1.540589, 1.227855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.734291, 1.440796, 1.615181>,  <-0.736985, 1.380920, 1.847576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.734291, 1.440796, 1.615181>,  <-0.729802, 1.540589, 1.227855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.734291, 1.440796, 1.615181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989975, 0.139125, 0.024371,
		-0.140797, -0.958333, -0.248544,
		-0.011223, -0.249484, 0.968314,
		-0.737658, 1.365951, 1.905675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.591525, 1.574125, 1.758179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.672457, 1.672562, 2.137337>,  <2.721016, 1.731624, 2.364831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.672457, 1.672562, 2.137337>,  <2.591525, 1.574125, 1.758179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.672457, 1.672562, 2.137337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782412, -0.622738, -0.005333,
		0.588977, 0.742722, -0.318543,
		0.202330, 0.246091, 0.947893,
		2.733156, 1.746389, 2.421705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.219408, 1.980141, 1.845868>,  <2.591525, 1.574125, 1.758179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.219408, 1.980141, 1.845868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.152670, 1.757858, 2.171654>,  <3.112627, 1.624489, 2.367125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.152670, 1.757858, 2.171654>,  <3.219408, 1.980141, 1.845868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.152670, 1.757858, 2.171654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897137, -0.428244, -0.108407,
		0.409032, 0.712599, 0.569995,
		-0.166846, -0.555706, 0.814465,
		3.102616, 1.591146, 2.415993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.739660, 2.128861, 2.422919>,  <3.219408, 1.980141, 1.845868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.739660, 2.128861, 2.422919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.608805, 1.750885, 2.419586>,  <3.530291, 1.524100, 2.417586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.608805, 1.750885, 2.419586>,  <3.739660, 2.128861, 2.422919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.608805, 1.750885, 2.419586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943763, -0.326259, -0.053541,
		0.047875, -0.025379, 0.998531,
		-0.327139, -0.944940, -0.008333,
		3.510663, 1.467403, 2.417086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.040470, 1.833527, 2.992543>,  <3.739660, 2.128861, 2.422919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.040470, 1.833527, 2.992543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.960020, 1.563171, 2.708931>,  <3.911750, 1.400958, 2.538764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.960020, 1.563171, 2.708931>,  <4.040470, 1.833527, 2.992543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.960020, 1.563171, 2.708931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969162, -0.242514, -0.043735,
		-0.142390, -0.695961, 0.703820,
		-0.201124, -0.675888, -0.709031,
		3.899683, 1.360405, 2.496222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.209569, 1.128483, 3.163383>,  <4.040470, 1.833527, 2.992543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.209569, 1.128483, 3.163383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232054, 1.175690, 2.766815>,  <4.245545, 1.204014, 2.528875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232054, 1.175690, 2.766815>,  <4.209569, 1.128483, 3.163383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232054, 1.175690, 2.766815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913840, -0.406060, 0.003477,
		-0.402166, -0.906194, -0.130675,
		0.056212, 0.118017, -0.991419,
		4.248918, 1.211095, 2.469389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.466968, 0.557006, 2.949019>,  <4.209569, 1.128483, 3.163383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.466968, 0.557006, 2.949019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.531992, 0.831833, 2.665749>,  <4.571006, 0.996729, 2.495786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.531992, 0.831833, 2.665749>,  <4.466968, 0.557006, 2.949019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.531992, 0.831833, 2.665749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868017, -0.440854, -0.228462,
		-0.469171, -0.577570, -0.668050,
		0.162560, 0.687067, -0.708176,
		4.580760, 1.037953, 2.453296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.766420, 0.120262, 2.332926>,  <4.466968, 0.557006, 2.949019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.766420, 0.120262, 2.332926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.870575, 0.505142, 2.301003>,  <4.933068, 0.736070, 2.281848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.870575, 0.505142, 2.301003>,  <4.766420, 0.120262, 2.332926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.870575, 0.505142, 2.301003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940925, -0.271424, -0.202460,
		-0.216469, -0.022377, -0.976033,
		0.260388, 0.962200, -0.079810,
		4.948691, 0.793802, 2.277060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.058200, 0.163302, 1.644358>,  <4.766420, 0.120262, 2.332926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.058200, 0.163302, 1.644358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.168961, 0.475983, 1.867882>,  <5.235417, 0.663591, 2.001996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.168961, 0.475983, 1.867882>,  <5.058200, 0.163302, 1.644358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.168961, 0.475983, 1.867882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958457, -0.183258, -0.218580,
		-0.068458, 0.596120, -0.799972,
		0.276900, 0.781702, 0.558810,
		5.252031, 0.710493, 2.035525>
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
