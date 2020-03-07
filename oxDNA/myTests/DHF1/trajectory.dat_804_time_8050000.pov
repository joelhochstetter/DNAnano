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
	<0.332313, 2.507599, 0.922878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.657719, 2.707832, 1.041273>,  <0.852962, 2.827972, 1.112310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.657719, 2.707832, 1.041273>,  <0.332313, 2.507599, 0.922878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.657719, 2.707832, 1.041273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466451, 0.865631, -0.181951,
		-0.347299, 0.009956, 0.937702,
		0.813515, 0.500584, 0.295989,
		0.901773, 2.858007, 1.130070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.140016, 3.060259, 1.358151>,  <0.332313, 2.507599, 0.922878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.140016, 3.060259, 1.358151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.468464, 3.130211, 1.140829>,  <0.665533, 3.172182, 1.010436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.468464, 3.130211, 1.140829>,  <0.140016, 3.060259, 1.358151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.468464, 3.130211, 1.140829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393569, 0.862885, -0.317070,
		0.413360, 0.474180, 0.777359,
		0.821119, 0.174880, -0.543304,
		0.714800, 3.182675, 0.977838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.380955, 3.881395, 1.331789>,  <0.140016, 3.060259, 1.358151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.380955, 3.881395, 1.331789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.442459, 3.635208, 1.022581>,  <0.479362, 3.487496, 0.837057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.442459, 3.635208, 1.022581>,  <0.380955, 3.881395, 1.331789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.442459, 3.635208, 1.022581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285394, 0.721318, -0.631071,
		0.945996, 0.317649, -0.064740,
		0.153761, -0.615467, -0.773019,
		0.488587, 3.450568, 0.790676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.776249, 4.141150, 0.925528>,  <0.380955, 3.881395, 1.331789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.776249, 4.141150, 0.925528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.531570, 3.903389, 0.716717>,  <0.384763, 3.760732, 0.591430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.531570, 3.903389, 0.716717>,  <0.776249, 4.141150, 0.925528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.531570, 3.903389, 0.716717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322218, 0.789866, -0.521812,
		0.722497, -0.150985, -0.674686,
		-0.611697, -0.594404, -0.522026,
		0.348062, 3.725068, 0.560109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.848906, 4.398116, 0.276721>,  <0.776249, 4.141150, 0.925528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.848906, 4.398116, 0.276721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.498585, 4.205078, 0.273331>,  <0.288392, 4.089256, 0.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.498585, 4.205078, 0.273331>,  <0.848906, 4.398116, 0.276721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.498585, 4.205078, 0.273331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411306, 0.755391, -0.510110,
		0.252578, -0.443271, -0.860067,
		-0.875804, -0.482593, -0.008475,
		0.235844, 4.060300, 0.270788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.488119, 4.681644, -0.353498>,  <0.848906, 4.398116, 0.276721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.488119, 4.681644, -0.353498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.183559, 4.482498, -0.187412>,  <0.000824, 4.363010, -0.087761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.183559, 4.482498, -0.187412>,  <0.488119, 4.681644, -0.353498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.183559, 4.482498, -0.187412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644379, 0.651409, -0.400552,
		-0.071053, -0.572534, -0.816796,
		-0.761398, -0.497866, 0.415213,
		-0.044860, 4.333138, -0.062848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.031194, 4.587724, -0.861896>,  <0.488119, 4.681644, -0.353498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.031194, 4.587724, -0.861896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.213223, 4.541443, -0.508734>,  <-0.322439, 4.513674, -0.296836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.213223, 4.541443, -0.508734>,  <-0.031194, 4.587724, -0.861896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.213223, 4.541443, -0.508734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696552, 0.663946, -0.272011,
		-0.554731, -0.738775, -0.382734,
		-0.455070, -0.115702, 0.882907,
		-0.349744, 4.506732, -0.243862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.782958, 4.378876, -0.929366>,  <-0.031194, 4.587724, -0.861896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.782958, 4.378876, -0.929366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.714394, 4.606659, -0.607786>,  <-0.673255, 4.743329, -0.414838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.714394, 4.606659, -0.607786>,  <-0.782958, 4.378876, -0.929366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.714394, 4.606659, -0.607786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722648, 0.627316, -0.290268,
		-0.669626, -0.531218, 0.519046,
		0.171411, 0.569458, 0.803950,
		-0.662970, 4.777496, -0.366601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.172675, 5.929627, -0.856300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880920, 5.910271, -0.583344>,  <3.705868, 5.898657, -0.419571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880920, 5.910271, -0.583344>,  <4.172675, 5.929627, -0.856300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880920, 5.910271, -0.583344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431137, -0.806985, 0.403605,
		0.531145, 0.588587, 0.609467,
		-0.729387, -0.048391, 0.682388,
		3.662104, 5.895753, -0.378628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436682, 6.036851, -0.137509>,  <4.172675, 5.929627, -0.856300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436682, 6.036851, -0.137509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.106285, 5.811409, -0.133828>,  <3.908047, 5.676144, -0.131620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.106285, 5.811409, -0.133828>,  <4.436682, 6.036851, -0.137509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.106285, 5.811409, -0.133828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503446, -0.730288, 0.461759,
		-0.253530, 0.386042, 0.886957,
		-0.825993, -0.563605, 0.009202,
		3.858487, 5.642327, -0.131068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.494242, 5.489034, 0.341833>,  <4.436682, 6.036851, -0.137509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.494242, 5.489034, 0.341833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.205894, 5.313110, 0.127575>,  <4.032886, 5.207556, -0.000980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.205894, 5.313110, 0.127575>,  <4.494242, 5.489034, 0.341833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.205894, 5.313110, 0.127575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493996, -0.868139, 0.047994,
		-0.486122, -0.230009, 0.843078,
		-0.720870, -0.439808, -0.535645,
		3.989634, 5.181168, -0.033119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.330272, 5.120466, 0.837711>,  <4.494242, 5.489034, 0.341833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.330272, 5.120466, 0.837711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.294319, 4.989899, 0.461334>,  <4.272748, 4.911559, 0.235508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.294319, 4.989899, 0.461334>,  <4.330272, 5.120466, 0.837711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.294319, 4.989899, 0.461334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382656, -0.883570, 0.269962,
		-0.919509, -0.335792, 0.204322,
		-0.089882, -0.326417, -0.940943,
		4.267354, 4.891973, 0.179051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.032212, 4.486926, 0.890410>,  <4.330272, 5.120466, 0.837711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.032212, 4.486926, 0.890410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.230476, 4.495453, 0.543108>,  <4.349435, 4.500569, 0.334727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.230476, 4.495453, 0.543108>,  <4.032212, 4.486926, 0.890410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.230476, 4.495453, 0.543108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358337, -0.915664, 0.182081,
		-0.791148, -0.401378, -0.461498,
		0.495660, 0.021318, -0.868255,
		4.379174, 4.501848, 0.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.045916, 3.828454, 0.783433>,  <4.032212, 4.486926, 0.890410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.045916, 3.828454, 0.783433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.318336, 3.958572, 0.521029>,  <4.481789, 4.036643, 0.363586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.318336, 3.958572, 0.521029>,  <4.045916, 3.828454, 0.783433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.318336, 3.958572, 0.521029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482013, -0.873580, 0.067233,
		-0.551208, -0.361995, -0.751750,
		0.681052, 0.325294, -0.656011,
		4.522652, 4.056161, 0.324225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.102850, 3.418491, 0.162451>,  <4.045916, 3.828454, 0.783433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.102850, 3.418491, 0.162451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.451805, 3.611145, 0.195837>,  <4.661178, 3.726738, 0.215869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.451805, 3.611145, 0.195837>,  <4.102850, 3.418491, 0.162451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451805, 3.611145, 0.195837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467283, -0.871832, 0.146817,
		0.143480, -0.089080, -0.985636,
		0.872388, 0.481636, 0.083466,
		4.713521, 3.755636, 0.220877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.601708, 3.091816, -0.261562>,  <4.102850, 3.418491, 0.162451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.601708, 3.091816, -0.261562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.830681, 3.274429, 0.010880>,  <4.968064, 3.383997, 0.174344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.830681, 3.274429, 0.010880>,  <4.601708, 3.091816, -0.261562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.830681, 3.274429, 0.010880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537004, -0.836463, 0.109346,
		0.619637, 0.303162, -0.723977,
		0.572431, 0.456533, 0.681103,
		5.002410, 3.411389, 0.215210>
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
