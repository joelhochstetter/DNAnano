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
	<0.172732, 5.069308, 2.369300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.150070, 4.716475, 2.556370>,  <0.136473, 4.504775, 2.668612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.150070, 4.716475, 2.556370>,  <0.172732, 5.069308, 2.369300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.150070, 4.716475, 2.556370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870632, -0.272920, -0.409285,
		0.488661, 0.383986, 0.783432,
		-0.056654, -0.882083, 0.467676,
		0.133074, 4.451850, 2.696672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.710897, 4.995203, 2.794686>,  <0.172732, 5.069308, 2.369300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.710897, 4.995203, 2.794686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.600700, 4.622103, 2.701668>,  <0.534582, 4.398242, 2.645857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.600700, 4.622103, 2.701668>,  <0.710897, 4.995203, 2.794686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.600700, 4.622103, 2.701668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940575, -0.211583, -0.265614,
		0.198549, -0.291901, 0.935613,
		-0.275493, -0.932752, -0.232546,
		0.518053, 4.342277, 2.631904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.115363, 4.455920, 3.245556>,  <0.710897, 4.995203, 2.794686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.115363, 4.455920, 3.245556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.994881, 4.340925, 2.881880>,  <0.922591, 4.271928, 2.663674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.994881, 4.340925, 2.881880>,  <1.115363, 4.455920, 3.245556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.994881, 4.340925, 2.881880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953556, -0.093225, -0.286426,
		-0.002415, -0.953236, 0.302216,
		-0.301206, -0.287488, -0.909189,
		0.904519, 4.254679, 2.609123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.587479, 3.820554, 3.064330>,  <1.115363, 4.455920, 3.245556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.587479, 3.820554, 3.064330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.474167, 4.062210, 2.766399>,  <1.406180, 4.207204, 2.587641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.474167, 4.062210, 2.766399>,  <1.587479, 3.820554, 3.064330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.474167, 4.062210, 2.766399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956738, 0.231770, -0.175884,
		0.066370, -0.762428, -0.643660,
		-0.283280, 0.604141, -0.744827,
		1.389183, 4.243452, 2.542951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.063429, 3.715141, 2.453481>,  <1.587479, 3.820554, 3.064330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.063429, 3.715141, 2.453481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.891022, 4.073711, 2.412209>,  <1.787578, 4.288854, 2.387445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.891022, 4.073711, 2.412209>,  <2.063429, 3.715141, 2.453481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.891022, 4.073711, 2.412209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884268, 0.396840, -0.246147,
		-0.179706, -0.197334, -0.963725,
		-0.431017, 0.896425, -0.103181,
		1.761717, 4.342639, 2.381254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.322471, 3.965534, 1.806703>,  <2.063429, 3.715141, 2.453481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.322471, 3.965534, 1.806703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.194931, 4.285425, 2.010181>,  <2.118407, 4.477360, 2.132268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.194931, 4.285425, 2.010181>,  <2.322471, 3.965534, 1.806703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.194931, 4.285425, 2.010181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891008, 0.435913, -0.126822,
		-0.323170, 0.412815, -0.851554,
		-0.318850, 0.799727, 0.508696,
		2.099276, 4.525343, 2.162790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.665703, 4.496538, 1.464838>,  <2.322471, 3.965534, 1.806703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.665703, 4.496538, 1.464838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.516273, 4.673611, 1.790899>,  <2.426616, 4.779855, 1.986536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.516273, 4.673611, 1.790899>,  <2.665703, 4.496538, 1.464838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.516273, 4.673611, 1.790899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733463, 0.678948, -0.032578,
		-0.567868, 0.585715, -0.578328,
		-0.373574, 0.442683, 0.815153,
		2.404201, 4.806416, 2.035445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.723412, 5.185315, 1.319150>,  <2.665703, 4.496538, 1.464838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.723412, 5.185315, 1.319150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711685, 5.165047, 1.718464>,  <2.704649, 5.152886, 1.958052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711685, 5.165047, 1.718464>,  <2.723412, 5.185315, 1.319150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.711685, 5.165047, 1.718464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780493, 0.622781, 0.054532,
		-0.624476, 0.780753, 0.021287,
		-0.029319, -0.050669, 0.998285,
		2.702890, 5.149846, 2.017949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.391145, -0.073229, 1.868157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.145943, 0.237354, 1.926582>,  <3.998821, 0.423704, 1.961638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.145943, 0.237354, 1.926582>,  <4.391145, -0.073229, 1.868157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.145943, 0.237354, 1.926582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320731, 0.413515, -0.852136,
		-0.722048, -0.475518, -0.502522,
		-0.613007, 0.776459, 0.146064,
		3.962041, 0.470292, 1.970402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.742839, -0.068181, 2.153440>,  <4.391145, -0.073229, 1.868157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.742839, -0.068181, 2.153440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.576828, 0.135548, 2.454994>,  <3.477221, 0.257785, 2.635927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.576828, 0.135548, 2.454994>,  <3.742839, -0.068181, 2.153440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.576828, 0.135548, 2.454994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860100, -0.489788, -0.142604,
		0.296613, -0.707602, 0.641343,
		-0.415029, 0.509321, 0.753886,
		3.452319, 0.288344, 2.681160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.390760, -0.517889, 2.773424>,  <3.742839, -0.068181, 2.153440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.390760, -0.517889, 2.773424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.245201, -0.173012, 2.632456>,  <3.157866, 0.033915, 2.547875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.245201, -0.173012, 2.632456>,  <3.390760, -0.517889, 2.773424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.245201, -0.173012, 2.632456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904067, -0.417996, -0.089114,
		-0.224144, 0.286184, 0.931589,
		-0.363898, 0.862193, -0.352421,
		3.136032, 0.085646, 2.526729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.787722, -0.199712, 3.241920>,  <3.390760, -0.517889, 2.773424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.787722, -0.199712, 3.241920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.755348, -0.090305, 2.858538>,  <2.735924, -0.024662, 2.628508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.755348, -0.090305, 2.858538>,  <2.787722, -0.199712, 3.241920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.755348, -0.090305, 2.858538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944491, -0.328244, -0.013916,
		-0.318414, 0.904127, 0.284899,
		-0.080934, 0.273515, -0.958457,
		2.731068, -0.008251, 2.571001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.126035, 0.183938, 3.235611>,  <2.787722, -0.199712, 3.241920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.126035, 0.183938, 3.235611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.228310, 0.051357, 2.872345>,  <2.289675, -0.028191, 2.654385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.228310, 0.051357, 2.872345>,  <2.126035, 0.183938, 3.235611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.228310, 0.051357, 2.872345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966695, -0.098509, -0.236213,
		-0.011169, 0.938315, -0.345601,
		0.255687, -0.331453, -0.908165,
		2.305016, -0.048079, 2.599895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.731280, 0.543825, 2.857494>,  <2.126035, 0.183939, 3.235611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.731280, 0.543825, 2.857494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.843750, 0.234814, 2.629761>,  <1.911232, 0.049407, 2.493121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.843750, 0.234814, 2.629761>,  <1.731280, 0.543825, 2.857494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.843750, 0.234814, 2.629761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953333, -0.292851, -0.073449,
		-0.109988, 0.563416, -0.818820,
		0.281174, -0.772529, -0.569333,
		1.928102, 0.003055, 2.458961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.351291, 0.556526, 2.195255>,  <1.731280, 0.543825, 2.857494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.351291, 0.556526, 2.195255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.468140, 0.178165, 2.251730>,  <1.538249, -0.048851, 2.285615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.468140, 0.178165, 2.251730>,  <1.351291, 0.556526, 2.195255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.468140, 0.178165, 2.251730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950200, -0.303811, -0.069419,
		0.108558, -0.113878, -0.987546,
		0.292122, -0.945902, 0.141188,
		1.555776, -0.105605, 2.294086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.027862, 0.220929, 1.762815>,  <1.351291, 0.556526, 2.195255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.027862, 0.220929, 1.762815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.144722, -0.076485, 2.003416>,  <1.214838, -0.254933, 2.147776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.144722, -0.076485, 2.003416>,  <1.027862, 0.220929, 1.762815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.144722, -0.076485, 2.003416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952116, -0.285399, 0.109652,
		0.090138, -0.604734, -0.791310,
		0.292149, -0.743535, 0.601502,
		1.232367, -0.299545, 2.183867>
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
