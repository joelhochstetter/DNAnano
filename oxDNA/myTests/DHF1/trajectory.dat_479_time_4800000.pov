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
	<0.225535, 3.173148, 4.120765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.285204, 3.116722, 3.729286>,  <0.321006, 3.082866, 3.494399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.285204, 3.116722, 3.729286>,  <0.225535, 3.173148, 4.120765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.285204, 3.116722, 3.729286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692774, -0.691332, 0.205239,
		-0.705557, -0.708632, -0.005402,
		0.149174, -0.141066, -0.978697,
		0.329956, 3.074402, 3.435677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.178878, 2.514695, 3.995499>,  <0.225535, 3.173148, 4.120765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.178878, 2.514695, 3.995499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.402109, 2.617554, 3.679924>,  <0.536048, 2.679269, 3.490579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.402109, 2.617554, 3.679924>,  <0.178878, 2.514695, 3.995499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.402109, 2.617554, 3.679924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670635, -0.699690, 0.246336,
		-0.488667, -0.666565, -0.562934,
		0.558079, 0.257147, -0.788938,
		0.569533, 2.694698, 3.443243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.498320, 1.937040, 3.684090>,  <0.178878, 2.514695, 3.995499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.498320, 1.937040, 3.684090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.710979, 2.251591, 3.558258>,  <0.838575, 2.440321, 3.482759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.710979, 2.251591, 3.558258>,  <0.498320, 1.937040, 3.684090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.710979, 2.251591, 3.558258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843281, -0.456860, 0.283118,
		0.078919, -0.415799, -0.906026,
		0.531648, 0.786378, -0.314580,
		0.870473, 2.487504, 3.463884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.118040, 1.849384, 3.194715>,  <0.498320, 1.937040, 3.684090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.118040, 1.849384, 3.194715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.168487, 2.151291, 3.452217>,  <1.198755, 2.332435, 3.606719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.168487, 2.151291, 3.452217>,  <1.118040, 1.849384, 3.194715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.168487, 2.151291, 3.452217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840730, -0.425778, 0.334494,
		0.526562, 0.499040, -0.688252,
		0.126117, 0.754766, 0.643757,
		1.206322, 2.377721, 3.645344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.874704, 2.243521, 3.161273>,  <1.118040, 1.849384, 3.194715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.874704, 2.243521, 3.161273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.697221, 2.292492, 3.516380>,  <1.590731, 2.321875, 3.729445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.697221, 2.292492, 3.516380>,  <1.874704, 2.243521, 3.161273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.697221, 2.292492, 3.516380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828099, -0.322697, 0.458387,
		0.342600, 0.938551, 0.041800,
		-0.443708, 0.122428, 0.887769,
		1.564108, 2.329220, 3.782711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.303718, 2.715663, 3.548388>,  <1.874704, 2.243521, 3.161273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.303718, 2.715663, 3.548388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096784, 2.494209, 3.809418>,  <1.972623, 2.361337, 3.966036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096784, 2.494209, 3.809418>,  <2.303718, 2.715663, 3.548388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.096784, 2.494209, 3.809418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855640, -0.320702, 0.406239,
		-0.015626, 0.768530, 0.639623,
		-0.517335, -0.553635, 0.652574,
		1.941583, 2.328119, 4.005190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.730753, 2.682850, 4.134282>,  <2.303718, 2.715663, 3.548388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.730753, 2.682850, 4.134282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.474039, 2.381813, 4.193230>,  <2.320011, 2.201191, 4.228599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.474039, 2.381813, 4.193230>,  <2.730753, 2.682850, 4.134282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.474039, 2.381813, 4.193230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693925, -0.488095, 0.529368,
		-0.326467, 0.442004, 0.835495,
		-0.641784, -0.752592, 0.147371,
		2.281504, 2.156035, 4.237441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.670893, 2.563326, 4.862134>,  <2.730753, 2.682850, 4.134282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.670893, 2.563326, 4.862134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.591834, 2.217857, 4.676659>,  <2.544398, 2.010576, 4.565374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.591834, 2.217857, 4.676659>,  <2.670893, 2.563326, 4.862134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.591834, 2.217857, 4.676659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802438, -0.414242, 0.429531,
		-0.563052, -0.287183, 0.774918,
		-0.197650, -0.863672, -0.463687,
		2.532539, 1.958756, 4.537553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.602862, 1.463116, 4.742570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.393230, 1.124416, 4.779137>,  <3.267452, 0.921196, 4.801076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.393230, 1.124416, 4.779137>,  <3.602862, 1.463116, 4.742570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.393230, 1.124416, 4.779137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807293, 0.459705, -0.370067,
		0.271330, -0.267743, -0.924497,
		-0.524079, -0.846749, 0.091416,
		3.236007, 0.870391, 4.806561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.360282, 1.340273, 4.022583>,  <3.602862, 1.463116, 4.742570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.360282, 1.340273, 4.022583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.151100, 1.218807, 4.341156>,  <3.025591, 1.145928, 4.532300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.151100, 1.218807, 4.341156>,  <3.360282, 1.340273, 4.022583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.151100, 1.218807, 4.341156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817166, 0.444343, -0.367149,
		-0.242400, -0.842821, -0.480515,
		-0.522955, -0.303664, 0.796434,
		2.994214, 1.127708, 4.580086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.750198, 1.126641, 3.789803>,  <3.360282, 1.340273, 4.022583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.750198, 1.126641, 3.789803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690029, 1.227848, 4.172081>,  <2.653928, 1.288572, 4.401448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690029, 1.227848, 4.172081>,  <2.750198, 1.126641, 3.789803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.690029, 1.227848, 4.172081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770151, 0.576133, -0.273748,
		-0.619871, -0.777208, 0.108199,
		-0.150423, 0.253018, 0.955696,
		2.644902, 1.303753, 4.458790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.044432, 0.958865, 4.012983>,  <2.750198, 1.126641, 3.789803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.044432, 0.958865, 4.012983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.185497, 1.271973, 4.218079>,  <2.270136, 1.459837, 4.341136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.185497, 1.271973, 4.218079>,  <2.044432, 0.958865, 4.012983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.185497, 1.271973, 4.218079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836132, 0.509618, -0.202912,
		-0.420134, -0.357158, 0.834222,
		0.352663, 0.782770, 0.512739,
		2.291296, 1.506804, 4.371900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.455352, 1.120624, 4.396325>,  <2.044432, 0.958865, 4.012983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.455352, 1.120624, 4.396325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.693420, 1.440548, 4.365150>,  <1.836262, 1.632503, 4.346446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.693420, 1.440548, 4.365150>,  <1.455352, 1.120624, 4.396325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.693420, 1.440548, 4.365150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795506, 0.572670, -0.198039,
		-0.113762, 0.179865, 0.977091,
		0.595171, 0.799811, -0.077936,
		1.871972, 1.680491, 4.341770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.126478, 1.586285, 4.788748>,  <1.455352, 1.120624, 4.396325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.126478, 1.586285, 4.788748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.377609, 1.787804, 4.551422>,  <1.528288, 1.908715, 4.409027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.377609, 1.787804, 4.551422>,  <1.126478, 1.586285, 4.788748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.377609, 1.787804, 4.551422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693711, 0.707867, -0.133000,
		0.352983, 0.495090, 0.793907,
		0.627828, 0.503796, -0.593315,
		1.565958, 1.938942, 4.373428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.109215, 2.331455, 5.001844>,  <1.126478, 1.586285, 4.788748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.109215, 2.331455, 5.001844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.226616, 2.294941, 4.621208>,  <1.297057, 2.273032, 4.392827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.226616, 2.294941, 4.621208>,  <1.109215, 2.331455, 5.001844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.226616, 2.294941, 4.621208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779457, 0.553446, -0.293503,
		0.553446, 0.827868, 0.091285,
		0.293503, -0.091285, -0.951590,
		1.314667, 2.267555, 4.335732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.054490, 2.923813, 4.800304>,  <1.109215, 2.331455, 5.001844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.054490, 2.923813, 4.800304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.014385, 2.669052, 4.494545>,  <0.990323, 2.516196, 4.311090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.014385, 2.669052, 4.494545>,  <1.054490, 2.923813, 4.800304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.014385, 2.669052, 4.494545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916794, 0.357632, -0.177732,
		0.386571, 0.682976, -0.619764,
		-0.100261, -0.636901, -0.764398,
		0.984307, 2.477982, 4.265225>
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
