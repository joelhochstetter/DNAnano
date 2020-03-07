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
	<3.676119, 6.145340, 4.273015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.781704, 5.964067, 3.932440>,  <3.845055, 5.855304, 3.728094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.781704, 5.964067, 3.932440>,  <3.676119, 6.145340, 4.273015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.781704, 5.964067, 3.932440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180091, -0.890381, 0.418078,
		-0.947571, 0.042980, -0.316641,
		0.263962, -0.453183, -0.851439,
		3.860893, 5.828113, 3.677008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.050964, 5.725572, 4.046138>,  <3.676119, 6.145340, 4.273015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.050964, 5.725572, 4.046138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396458, 5.572344, 3.915159>,  <3.603754, 5.480407, 3.836572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396458, 5.572344, 3.915159>,  <3.050964, 5.725572, 4.046138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396458, 5.572344, 3.915159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219718, -0.871008, 0.439397,
		-0.453528, -0.307576, -0.836486,
		0.863734, -0.383070, -0.327447,
		3.655578, 5.457423, 3.816925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.864306, 5.030983, 3.841300>,  <3.050964, 5.725572, 4.046138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.864306, 5.030983, 3.841300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.245056, 5.085968, 3.950872>,  <3.473506, 5.118959, 4.016615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.245056, 5.085968, 3.950872>,  <2.864306, 5.030983, 3.841300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.245056, 5.085968, 3.950872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014170, -0.873083, 0.487366,
		0.306158, -0.467794, -0.829118,
		0.951875, 0.137462, 0.273930,
		3.530619, 5.127207, 4.033051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.179615, 4.393890, 3.758772>,  <2.864306, 5.030983, 3.841300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.179615, 4.393890, 3.758772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.462669, 4.574730, 3.975975>,  <3.632502, 4.683234, 4.106297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.462669, 4.574730, 3.975975>,  <3.179615, 4.393890, 3.758772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.462669, 4.574730, 3.975975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046403, -0.796581, 0.602748,
		0.705051, -0.401329, -0.584669,
		0.707637, 0.452099, 0.543007,
		3.674960, 4.710360, 4.138877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.814627, 3.981807, 3.771047>,  <3.179615, 4.393890, 3.758772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.814627, 3.981807, 3.771047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.783901, 4.195507, 4.107779>,  <3.765466, 4.323727, 4.309817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.783901, 4.195507, 4.107779>,  <3.814627, 3.981807, 3.771047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.783901, 4.195507, 4.107779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065209, -0.839823, 0.538929,
		0.994911, 0.096292, 0.029673,
		-0.076815, 0.534251, 0.841828,
		3.760857, 4.355783, 4.360327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.287085, 3.679468, 4.275135>,  <3.814627, 3.981807, 3.771047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.287085, 3.679468, 4.275135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.030743, 3.884403, 4.503805>,  <3.876937, 4.007364, 4.641007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.030743, 3.884403, 4.503805>,  <4.287085, 3.679468, 4.275135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.030743, 3.884403, 4.503805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029523, -0.760596, 0.648554,
		0.767093, 0.398752, 0.502558,
		-0.640856, 0.512338, 0.571676,
		3.838486, 4.038105, 4.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.596211, 3.621942, 4.934396>,  <4.287085, 3.679468, 4.275135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.596211, 3.621942, 4.934396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217079, 3.738787, 4.985449>,  <3.989600, 3.808893, 5.016080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217079, 3.738787, 4.985449>,  <4.596211, 3.621942, 4.934396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.217079, 3.738787, 4.985449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144953, -0.751534, 0.643572,
		0.283914, 0.591496, 0.754669,
		-0.947830, 0.292111, 0.127632,
		3.932730, 3.826420, 5.023738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436143, 3.548093, 5.663729>,  <4.596211, 3.621942, 4.934396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436143, 3.548093, 5.663729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.079876, 3.563913, 5.482557>,  <3.866116, 3.573406, 5.373854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.079876, 3.563913, 5.482557>,  <4.436143, 3.548093, 5.663729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.079876, 3.563913, 5.482557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343534, -0.711099, 0.613451,
		-0.297815, 0.701978, 0.646940,
		-0.890669, 0.039551, -0.452929,
		3.812675, 3.575778, 5.346678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.644736, 2.607334, -0.658287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.977730, 2.431168, -0.523825>,  <4.177526, 2.325468, -0.443147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.977730, 2.431168, -0.523825>,  <3.644736, 2.607334, -0.658287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.977730, 2.431168, -0.523825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098524, 0.714734, 0.692422,
		-0.545216, -0.543312, 0.638397,
		0.832486, -0.440417, 0.336155,
		4.227476, 2.299042, -0.422978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.444877, 2.439410, 0.012964>,  <3.644736, 2.607334, -0.658287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.444877, 2.439410, 0.012964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.372055, 2.667179, 0.333616>,  <3.328362, 2.803841, 0.526008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.372055, 2.667179, 0.333616>,  <3.444877, 2.439410, 0.012964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.372055, 2.667179, 0.333616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159787, 0.787287, -0.595522,
		-0.970219, -0.236507, -0.052343,
		-0.182054, 0.569423, 0.801632,
		3.317439, 2.838006, 0.574106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.904239, 2.897466, -0.188351>,  <3.444877, 2.439410, 0.012964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.904239, 2.897466, -0.188351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.076111, 3.081829, 0.122246>,  <3.179234, 3.192447, 0.308604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.076111, 3.081829, 0.122246>,  <2.904239, 2.897466, -0.188351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.076111, 3.081829, 0.122246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027988, 0.866305, -0.498730,
		-0.902547, 0.192562, 0.385134,
		0.429680, 0.460907, 0.776492,
		3.205015, 3.220101, 0.355193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.530869, 3.516501, -0.041072>,  <2.904239, 2.897466, -0.188351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.530869, 3.516501, -0.041072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.915337, 3.541847, 0.066364>,  <3.146017, 3.557055, 0.130826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.915337, 3.541847, 0.066364>,  <2.530869, 3.516501, -0.041072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.915337, 3.541847, 0.066364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083509, 0.860866, -0.501932,
		-0.263026, 0.504870, 0.822146,
		0.961168, 0.063365, 0.268591,
		3.203687, 3.560857, 0.146942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.664163, 4.198537, 0.143935>,  <2.530869, 3.516501, -0.041072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.664163, 4.198537, 0.143935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052231, 4.101604, 0.146654>,  <3.285072, 4.043445, 0.148286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052231, 4.101604, 0.146654>,  <2.664163, 4.198537, 0.143935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.052231, 4.101604, 0.146654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215599, 0.849645, -0.481269,
		0.110850, 0.468378, 0.876547,
		0.970170, -0.242331, 0.006799,
		3.343282, 4.028905, 0.148694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117109, 4.737823, 0.432688>,  <2.664163, 4.198537, 0.143935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117109, 4.737823, 0.432688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.342781, 4.523834, 0.181131>,  <3.478184, 4.395441, 0.030197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.342781, 4.523834, 0.181131>,  <3.117109, 4.737823, 0.432688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.342781, 4.523834, 0.181131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283053, 0.840855, -0.461351,
		0.775617, 0.082275, 0.625819,
		0.564180, -0.534972, -0.628893,
		3.512035, 4.363343, -0.007536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.712058, 5.127464, 0.407582>,  <3.117109, 4.737823, 0.432688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.712058, 5.127464, 0.407582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.700668, 4.900070, 0.078701>,  <3.693835, 4.763634, -0.118627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.700668, 4.900070, 0.078701>,  <3.712058, 5.127464, 0.407582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.700668, 4.900070, 0.078701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307825, 0.777576, -0.548289,
		0.951017, -0.268706, 0.152854,
		-0.028473, -0.568484, -0.822202,
		3.692127, 4.729525, -0.167959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.353586, 5.221935, 0.010888>,  <3.712058, 5.127464, 0.407582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.353586, 5.221935, 0.010888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.035553, 5.113720, -0.206240>,  <3.844733, 5.048790, -0.336517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.035553, 5.113720, -0.206240>,  <4.353586, 5.221935, 0.010888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.035553, 5.113720, -0.206240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075348, 0.844007, -0.531012,
		0.601803, -0.463099, -0.650671,
		-0.795082, -0.270538, -0.542820,
		3.797029, 5.032558, -0.369086>
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
