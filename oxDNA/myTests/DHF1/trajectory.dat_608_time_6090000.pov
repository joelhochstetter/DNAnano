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
	<3.989955, 2.639853, 3.136095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.833229, 2.620930, 2.768564>,  <3.739194, 2.609576, 2.548045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.833229, 2.620930, 2.768564>,  <3.989955, 2.639853, 3.136095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.833229, 2.620930, 2.768564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687782, -0.678384, -0.258361,
		-0.611095, -0.733183, 0.298338,
		-0.391814, -0.047308, -0.918827,
		3.715685, 2.606737, 2.492915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.981869, 1.929894, 2.910791>,  <3.989955, 2.639853, 3.136095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.981869, 1.929894, 2.910791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.971157, 2.167437, 2.589140>,  <3.964730, 2.309962, 2.396150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.971157, 2.167437, 2.589140>,  <3.981869, 1.929894, 2.910791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.971157, 2.167437, 2.589140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679338, -0.579307, -0.450448,
		-0.733337, -0.558336, -0.387915,
		-0.026779, 0.593856, -0.804126,
		3.963123, 2.345593, 2.347903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.817625, 1.572474, 2.299289>,  <3.981869, 1.929894, 2.910791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.817625, 1.572474, 2.299289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.057907, 1.882349, 2.220281>,  <4.202076, 2.068274, 2.172876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.057907, 1.882349, 2.220281>,  <3.817625, 1.572474, 2.299289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.057907, 1.882349, 2.220281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709961, -0.630503, -0.313720,
		-0.367572, 0.048222, -0.928744,
		0.600704, 0.774687, -0.197520,
		4.238119, 2.114755, 2.161025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.073568, 1.535583, 1.620632>,  <3.817625, 1.572474, 2.299289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.073568, 1.535583, 1.620632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326202, 1.728607, 1.863362>,  <4.477783, 1.844422, 2.008999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326202, 1.728607, 1.863362>,  <4.073568, 1.535583, 1.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.326202, 1.728607, 1.863362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766399, -0.506889, -0.394583,
		0.117182, 0.714282, -0.689978,
		0.631586, 0.482560, 0.606823,
		4.515678, 1.873375, 2.045408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.695613, 1.871063, 1.231094>,  <4.073568, 1.535583, 1.620632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.695613, 1.871063, 1.231094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.822723, 1.826366, 1.607718>,  <4.898990, 1.799548, 1.833692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.822723, 1.826366, 1.607718>,  <4.695613, 1.871063, 1.231094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.822723, 1.826366, 1.607718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853996, -0.397720, -0.335424,
		0.411958, 0.910677, -0.030958,
		0.317775, -0.111742, 0.941558,
		4.918056, 1.792844, 1.890185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425589, 2.074825, 1.255301>,  <4.695613, 1.871063, 1.231094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425589, 2.074825, 1.255301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357544, 1.855307, 1.582688>,  <5.316717, 1.723596, 1.779119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.357544, 1.855307, 1.582688>,  <5.425589, 2.074825, 1.255301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.357544, 1.855307, 1.582688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864933, -0.481132, -0.142838,
		0.472179, 0.683619, 0.556517,
		-0.170111, -0.548796, 0.818465,
		5.306510, 1.690668, 1.828227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.953249, 2.220297, 1.676385>,  <5.425589, 2.074825, 1.255301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.953249, 2.220297, 1.676385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.799175, 1.866556, 1.781878>,  <5.706731, 1.654312, 1.845174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.799175, 1.866556, 1.781878>,  <5.953249, 2.220297, 1.676385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.799175, 1.866556, 1.781878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903882, -0.419166, -0.085429,
		0.186097, 0.205478, 0.960805,
		-0.385183, -0.884353, 0.263733,
		5.683620, 1.601250, 1.860998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.436992, 1.966888, 2.094971>,  <5.953249, 2.220297, 1.676385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.436992, 1.966888, 2.094971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.212002, 1.648914, 2.004018>,  <6.077008, 1.458130, 1.949446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.212002, 1.648914, 2.004018>,  <6.436992, 1.966888, 2.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.212002, 1.648914, 2.004018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826146, -0.529290, -0.193225,
		0.033250, -0.296535, 0.954443,
		-0.562475, -0.794933, -0.227382,
		6.043259, 1.410434, 1.935803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.711637, 0.575782, 0.807259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566170, 0.331499, 1.088622>,  <1.478889, 0.184930, 1.257440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566170, 0.331499, 1.088622>,  <1.711637, 0.575782, 0.807259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.566170, 0.331499, 1.088622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511239, 0.762079, 0.397330,
		-0.778704, -0.215113, -0.589361,
		-0.363668, -0.610706, 0.703408,
		1.457069, 0.148287, 1.299645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.990729, 0.504321, 0.789622>,  <1.711637, 0.575782, 0.807259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.990729, 0.504321, 0.789622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.097672, 0.463493, 1.172893>,  <1.161837, 0.438996, 1.402855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.097672, 0.463493, 1.172893>,  <0.990729, 0.504321, 0.789622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.097672, 0.463493, 1.172893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606152, 0.755176, 0.249578,
		-0.749066, -0.647527, 0.140031,
		0.267357, -0.102070, 0.958177,
		1.177879, 0.432872, 1.460346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.417549, 0.495908, 1.190225>,  <0.990729, 0.504321, 0.789622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.417549, 0.495908, 1.190225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.709938, 0.621191, 1.432738>,  <0.885372, 0.696361, 1.578246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.709938, 0.621191, 1.432738>,  <0.417549, 0.495908, 1.190225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.709938, 0.621191, 1.432738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633449, 0.641877, 0.432130,
		-0.253813, -0.699924, 0.667597,
		0.730973, 0.313208, 0.606283,
		0.929230, 0.715153, 1.614623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.356410, 0.287525, 1.895011>,  <0.417549, 0.495908, 1.190225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.356410, 0.287525, 1.895011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.555931, 0.634110, 1.903364>,  <0.675644, 0.842061, 1.908376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.555931, 0.634110, 1.903364>,  <0.356410, 0.287525, 1.895011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.555931, 0.634110, 1.903364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754304, 0.422118, 0.502834,
		0.426892, -0.266534, 0.864131,
		0.498787, 0.866474, 0.020849,
		0.705572, 0.894049, 1.909629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.221611, 0.543806, 2.460676>,  <0.356410, 0.287525, 1.895011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.221611, 0.543806, 2.460676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359879, 0.871290, 2.277274>,  <0.442839, 1.067780, 2.167233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359879, 0.871290, 2.277274>,  <0.221611, 0.543806, 2.460676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.359879, 0.871290, 2.277274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731073, 0.541291, 0.415374,
		0.588256, 0.191619, 0.785645,
		0.345669, 0.818710, -0.458505,
		0.463579, 1.116903, 2.139723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.275732, 1.016759, 2.959861>,  <0.221611, 0.543806, 2.460676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.275732, 1.016759, 2.959861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.270927, 1.236831, 2.625877>,  <0.268044, 1.368875, 2.425487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.270927, 1.236831, 2.625877>,  <0.275732, 1.016759, 2.959861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.270927, 1.236831, 2.625877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511540, 0.714099, 0.477902,
		0.859176, 0.432856, 0.272861,
		-0.012013, 0.550181, -0.834959,
		0.267324, 1.401886, 2.375390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330199, 1.702078, 3.170626>,  <0.275732, 1.016759, 2.959861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330199, 1.702078, 3.170626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.230438, 1.737303, 2.784871>,  <0.170582, 1.758438, 2.553418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.230438, 1.737303, 2.784871>,  <0.330199, 1.702078, 3.170626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.230438, 1.737303, 2.784871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594614, 0.772097, 0.224278,
		0.764351, 0.629374, -0.140199,
		-0.249402, 0.088062, -0.964388,
		0.155618, 1.763721, 2.495555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.379068, 2.368630, 2.837604>,  <0.330199, 1.702078, 3.170626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.379068, 2.368630, 2.837604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.089684, 2.181736, 2.634314>,  <-0.083947, 2.069599, 2.512339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.089684, 2.181736, 2.634314>,  <0.379068, 2.368630, 2.837604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.089684, 2.181736, 2.634314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608445, 0.779365, 0.149615,
		0.326188, 0.417468, -0.848128,
		-0.723461, -0.467237, -0.508226,
		-0.127355, 2.041564, 2.481846>
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
