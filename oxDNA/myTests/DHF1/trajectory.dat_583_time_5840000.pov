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
	<2.006966, 2.551757, -0.526792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.974953, 2.631065, -0.136042>,  <1.955745, 2.678650, 0.098408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.974953, 2.631065, -0.136042>,  <2.006966, 2.551757, -0.526792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.974953, 2.631065, -0.136042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386167, 0.909654, -0.152989,
		-0.918951, 0.364992, -0.149367,
		-0.080032, 0.198270, 0.976875,
		1.950943, 2.690546, 0.157020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604920, 3.159751, -0.400149>,  <2.006966, 2.551757, -0.526792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604920, 3.159751, -0.400149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.883850, 3.082265, -0.124117>,  <2.051208, 3.035774, 0.041502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.883850, 3.082265, -0.124117>,  <1.604920, 3.159751, -0.400149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.883850, 3.082265, -0.124117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289450, 0.956895, -0.023875,
		-0.655710, 0.216392, 0.723338,
		0.697326, -0.193715, 0.690081,
		2.093048, 3.024151, 0.082907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.500572, 3.712403, 0.017167>,  <1.604920, 3.159751, -0.400149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.500572, 3.712403, 0.017167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.865627, 3.549906, 0.035311>,  <2.084661, 3.452408, 0.046197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.865627, 3.549906, 0.035311>,  <1.500572, 3.712403, 0.017167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.865627, 3.549906, 0.035311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407813, 0.912462, -0.033188,
		-0.027906, 0.048786, 0.998419,
		0.912639, -0.406242, 0.045359,
		2.139419, 3.428034, 0.048918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.961399, 4.123000, 0.456527>,  <1.500572, 3.712403, 0.017167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.961399, 4.123000, 0.456527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.209743, 3.930919, 0.208677>,  <2.358750, 3.815670, 0.059966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.209743, 3.930919, 0.208677>,  <1.961399, 4.123000, 0.456527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.209743, 3.930919, 0.208677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597013, 0.801895, -0.023256,
		0.508043, -0.355486, 0.784552,
		0.620861, -0.480203, -0.619626,
		2.396002, 3.786858, 0.022789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.609654, 4.188134, 0.768630>,  <1.961399, 4.123000, 0.456527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.609654, 4.188134, 0.768630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.658398, 4.120255, 0.377456>,  <2.687644, 4.079529, 0.142752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.658398, 4.120255, 0.377456>,  <2.609654, 4.188134, 0.768630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.658398, 4.120255, 0.377456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646731, 0.760980, -0.051460,
		0.752921, -0.626189, 0.202479,
		0.121859, -0.169695, -0.977934,
		2.694955, 4.069347, 0.084076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.366043, 4.267560, 0.599688>,  <2.609654, 4.188134, 0.768630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.366043, 4.267560, 0.599688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.171314, 4.282333, 0.250600>,  <3.054477, 4.291197, 0.041147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.171314, 4.282333, 0.250600>,  <3.366043, 4.267560, 0.599688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.171314, 4.282333, 0.250600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648210, 0.684983, -0.332598,
		0.585515, -0.727622, -0.357405,
		-0.486822, 0.036933, -0.872720,
		3.025268, 4.293413, -0.011216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847035, 4.325466, 0.065871>,  <3.366043, 4.267560, 0.599688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847035, 4.325466, 0.065871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.514427, 4.502837, -0.067964>,  <3.314862, 4.609259, -0.148265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.514427, 4.502837, -0.067964>,  <3.847035, 4.325466, 0.065871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.514427, 4.502837, -0.067964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540176, 0.785936, -0.300855,
		0.129557, -0.430903, -0.893050,
		-0.831519, 0.443427, -0.334587,
		3.264971, 4.635865, -0.168340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.064320, 4.653450, -0.534601>,  <3.847035, 4.325466, 0.065871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.064320, 4.653450, -0.534601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.721481, 4.829283, -0.427156>,  <3.515778, 4.934783, -0.362689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.721481, 4.829283, -0.427156>,  <4.064320, 4.653450, -0.534601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.721481, 4.829283, -0.427156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360310, 0.884192, -0.297291,
		-0.368190, -0.158023, -0.916223,
		-0.857096, 0.439584, 0.268613,
		3.464353, 4.961158, -0.346572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.962673, 6.166181, 5.206645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.641449, 6.282326, 4.998497>,  <3.448715, 6.352013, 4.873608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.641449, 6.282326, 4.998497>,  <3.962673, 6.166181, 5.206645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.641449, 6.282326, 4.998497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357061, -0.933596, 0.030095,
		-0.477078, 0.209972, 0.853410,
		-0.803060, 0.290362, -0.520371,
		3.400531, 6.369434, 4.842385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.381864, 5.849225, 5.558335>,  <3.962673, 6.166181, 5.206645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.381864, 5.849225, 5.558335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.285583, 5.915495, 5.175793>,  <3.227815, 5.955257, 4.946268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.285583, 5.915495, 5.175793>,  <3.381864, 5.849225, 5.558335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.285583, 5.915495, 5.175793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500855, -0.865203, -0.023827,
		-0.831389, 0.473260, 0.291235,
		-0.240701, 0.165676, -0.956355,
		3.213373, 5.965198, 4.888886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.625535, 5.804191, 5.335967>,  <3.381864, 5.849225, 5.558335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.625535, 5.804191, 5.335967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886375, 5.686089, 5.056657>,  <3.042880, 5.615227, 4.889071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886375, 5.686089, 5.056657>,  <2.625535, 5.804191, 5.335967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.886375, 5.686089, 5.056657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388855, -0.920925, 0.026257,
		-0.650810, 0.254406, -0.715349,
		0.652103, -0.295255, -0.698274,
		3.082006, 5.597512, 4.847175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.306166, 5.527374, 4.751484>,  <2.625535, 5.804191, 5.335967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.306166, 5.527374, 4.751484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.661697, 5.347948, 4.714017>,  <2.875016, 5.240293, 4.691537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.661697, 5.347948, 4.714017>,  <2.306166, 5.527374, 4.751484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.661697, 5.347948, 4.714017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443002, -0.893404, 0.074695,
		-0.117188, -0.024897, -0.992798,
		0.888829, -0.448564, -0.093666,
		2.928346, 5.213379, 4.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.196796, 4.964899, 4.213999>,  <2.306166, 5.527374, 4.751484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.196796, 4.964899, 4.213999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.525177, 4.845457, 4.408678>,  <2.722205, 4.773792, 4.525485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.525177, 4.845457, 4.408678>,  <2.196796, 4.964899, 4.213999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.525177, 4.845457, 4.408678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323188, -0.945685, -0.035058,
		0.470731, -0.128514, -0.872867,
		0.820952, -0.298603, 0.486697,
		2.771462, 4.755876, 4.554687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.572072, 4.496309, 3.810557>,  <2.196796, 4.964899, 4.213999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.572072, 4.496309, 3.810557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.706604, 4.425203, 4.180483>,  <2.787323, 4.382540, 4.402438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.706604, 4.425203, 4.180483>,  <2.572072, 4.496309, 3.810557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.706604, 4.425203, 4.180483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327399, -0.942839, -0.062164,
		0.883002, -0.281875, -0.375305,
		0.336329, -0.177765, 0.924815,
		2.807503, 4.371874, 4.457927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.936894, 3.800291, 3.840074>,  <2.572072, 4.496309, 3.810557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.936894, 3.800291, 3.840074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.833328, 3.877384, 4.218664>,  <2.771189, 3.923640, 4.445818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.833328, 3.877384, 4.218664>,  <2.936894, 3.800291, 3.840074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.833328, 3.877384, 4.218664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185537, -0.971566, 0.147089,
		0.947913, -0.137523, 0.287311,
		-0.258914, 0.192734, 0.946476,
		2.755654, 3.935205, 4.502607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.247406, 3.266717, 4.241526>,  <2.936894, 3.800291, 3.840074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.247406, 3.266717, 4.241526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.942917, 3.408997, 4.458420>,  <2.760223, 3.494364, 4.588557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.942917, 3.408997, 4.458420>,  <3.247406, 3.266717, 4.241526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.942917, 3.408997, 4.458420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218423, -0.927926, 0.302069,
		0.610599, 0.111505, 0.784051,
		-0.761223, 0.355698, 0.542235,
		2.714550, 3.515706, 4.621091>
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
