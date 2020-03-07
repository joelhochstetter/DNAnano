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
	<1.382708, 1.702734, 5.543692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.246681, 1.330452, 5.489815>,  <1.165065, 1.107083, 5.457489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.246681, 1.330452, 5.489815>,  <1.382708, 1.702734, 5.543692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.246681, 1.330452, 5.489815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722198, -0.166731, -0.671290,
		0.602316, -0.325558, 0.728853,
		-0.340066, -0.930705, -0.134693,
		1.144661, 1.051240, 5.449407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.939914, 1.272018, 5.788518>,  <1.382708, 1.702734, 5.543692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.939914, 1.272018, 5.788518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.710579, 1.135185, 5.490723>,  <1.572978, 1.053086, 5.312045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.710579, 1.135185, 5.490723>,  <1.939914, 1.272018, 5.788518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.710579, 1.135185, 5.490723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774947, 0.068563, -0.628296,
		0.265974, -0.937165, 0.225785,
		-0.573337, -0.342082, -0.744489,
		1.538578, 1.032561, 5.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.223358, 0.795351, 5.351657>,  <1.939914, 1.272018, 5.788518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.223358, 0.795351, 5.351657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.962166, 1.023041, 5.151817>,  <1.805450, 1.159654, 5.031913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.962166, 1.023041, 5.151817>,  <2.223358, 0.795351, 5.351657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.962166, 1.023041, 5.151817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664670, 0.114458, -0.738318,
		-0.363085, -0.814177, -0.453085,
		-0.652981, 0.569224, -0.499600,
		1.766272, 1.193808, 5.001937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.122452, 0.396731, 4.778550>,  <2.223358, 0.795351, 5.351657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.122452, 0.396731, 4.778550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.042088, 0.782516, 4.709915>,  <1.993869, 1.013988, 4.668734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.042088, 0.782516, 4.709915>,  <2.122452, 0.396731, 4.778550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.042088, 0.782516, 4.709915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693902, 0.016475, -0.719881,
		-0.691473, -0.263697, -0.672554,
		-0.200911, 0.964465, -0.171588,
		1.981814, 1.071856, 4.658439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.901206, 0.407685, 4.075100>,  <2.122452, 0.396731, 4.778550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.901206, 0.407685, 4.075100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.075634, 0.742172, 4.208115>,  <2.180291, 0.942865, 4.287923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.075634, 0.742172, 4.208115>,  <1.901206, 0.407685, 4.075100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.075634, 0.742172, 4.208115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697424, -0.080506, -0.712123,
		-0.568720, 0.542454, -0.618305,
		0.436071, 0.836219, 0.332535,
		2.206455, 0.993038, 4.307875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.972823, 0.850178, 3.435545>,  <1.901206, 0.407685, 4.075100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.972823, 0.850178, 3.435545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.232922, 0.970482, 3.714607>,  <2.388981, 1.042664, 3.882045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.232922, 0.970482, 3.714607>,  <1.972823, 0.850178, 3.435545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.232922, 0.970482, 3.714607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727559, 0.017848, -0.685813,
		-0.218716, 0.953533, -0.207214,
		0.650247, 0.300759, 0.697655,
		2.427996, 1.060709, 3.923904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.367158, 1.342250, 3.083337>,  <1.972823, 0.850178, 3.435545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.367158, 1.342250, 3.083337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.600594, 1.270493, 3.400131>,  <2.740655, 1.227438, 3.590208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.600594, 1.270493, 3.400131>,  <2.367158, 1.342250, 3.083337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.600594, 1.270493, 3.400131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790647, -0.096909, -0.604554,
		0.185203, 0.978993, 0.085281,
		0.583590, -0.179392, 0.791986,
		2.775671, 1.216675, 3.637727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.843514, 1.784510, 2.940734>,  <2.367158, 1.342250, 3.083337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.843514, 1.784510, 2.940734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.002831, 1.497879, 3.169777>,  <3.098421, 1.325900, 3.307203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.002831, 1.497879, 3.169777>,  <2.843514, 1.784510, 2.940734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.002831, 1.497879, 3.169777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580497, -0.286428, -0.762222,
		0.710202, 0.635984, 0.301889,
		0.398292, -0.716578, 0.572608,
		3.122318, 1.282906, 3.341559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.393683, 1.429625, 3.035415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.468023, 1.103561, 3.254860>,  <4.512628, 0.907923, 3.386527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.468023, 1.103561, 3.254860>,  <4.393683, 1.429625, 3.035415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.468023, 1.103561, 3.254860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929750, 0.034716, 0.366551,
		-0.317843, -0.578197, -0.751442,
		0.185851, -0.815158, 0.548612,
		4.523778, 0.859014, 3.419444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.024068, 0.815174, 2.858073>,  <4.393683, 1.429625, 3.035415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.024068, 0.815174, 2.858073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.123697, 0.851105, 3.243797>,  <4.183475, 0.872663, 3.475232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.123697, 0.851105, 3.243797>,  <4.024068, 0.815174, 2.858073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.123697, 0.851105, 3.243797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959718, 0.156559, 0.233303,
		-0.130015, -0.983576, 0.125201,
		0.249072, 0.089825, 0.964310,
		4.198419, 0.878053, 3.533090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.649935, 0.297007, 3.464202>,  <4.024068, 0.815174, 2.858073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.649935, 0.297007, 3.464202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.741964, 0.649719, 3.628899>,  <3.797182, 0.861346, 3.727716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.741964, 0.649719, 3.628899>,  <3.649935, 0.297007, 3.464202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.741964, 0.649719, 3.628899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927826, 0.071106, 0.366174,
		0.293608, -0.466271, 0.834497,
		0.230074, 0.881780, 0.411742,
		3.810987, 0.914253, 3.752421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.562745, 0.411962, 4.286638>,  <3.649935, 0.297007, 3.464202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.562745, 0.411962, 4.286638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.465895, 0.719666, 4.050125>,  <3.407785, 0.904288, 3.908217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.465895, 0.719666, 4.050125>,  <3.562745, 0.411962, 4.286638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.465895, 0.719666, 4.050125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860789, 0.110878, 0.496739,
		0.447681, 0.629242, 0.635323,
		-0.242125, 0.769260, -0.591283,
		3.393257, 0.950443, 3.872740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.434326, 0.937916, 4.691086>,  <3.562745, 0.411962, 4.286638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.434326, 0.937916, 4.691086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.242237, 1.039902, 4.355377>,  <3.126984, 1.101093, 4.153952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.242237, 1.039902, 4.355377>,  <3.434326, 0.937916, 4.691086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.242237, 1.039902, 4.355377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818761, 0.212955, 0.533180,
		0.314669, 0.943209, 0.106488,
		-0.480223, 0.254964, -0.839273,
		3.098170, 1.116391, 4.103595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.243925, 1.632370, 4.774152>,  <3.434326, 0.937916, 4.691086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.243925, 1.632370, 4.774152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.993893, 1.448029, 4.522156>,  <2.843873, 1.337424, 4.370958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.993893, 1.448029, 4.522156>,  <3.243925, 1.632370, 4.774152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.993893, 1.448029, 4.522156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779934, 0.336450, 0.527735,
		-0.031248, 0.821229, -0.569743,
		-0.625081, -0.460852, -0.629991,
		2.806368, 1.309773, 4.333158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783107, 2.114279, 4.624397>,  <3.243925, 1.632370, 4.774152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783107, 2.114279, 4.624397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.602850, 1.770218, 4.528847>,  <2.494696, 1.563781, 4.471517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.602850, 1.770218, 4.528847>,  <2.783107, 2.114279, 4.624397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.602850, 1.770218, 4.528847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831375, 0.306908, 0.463274,
		-0.325173, 0.407365, -0.853414,
		-0.450641, -0.860152, -0.238875,
		2.467658, 1.512172, 4.457184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.101703, 2.336685, 4.345770>,  <2.783107, 2.114279, 4.624397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.101703, 2.336685, 4.345770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.082546, 1.959549, 4.477684>,  <2.071052, 1.733267, 4.556832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.082546, 1.959549, 4.477684>,  <2.101703, 2.336685, 4.345770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.082546, 1.959549, 4.477684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778331, 0.242153, 0.579278,
		-0.626025, -0.228939, -0.745439,
		-0.047891, -0.942841, 0.329784,
		2.068179, 1.676697, 4.576619>
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
