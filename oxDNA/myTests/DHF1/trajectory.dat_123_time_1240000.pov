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
	<3.085928, 1.191959, 0.511500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.873505, 1.172256, 0.849861>,  <2.746051, 1.160435, 1.052878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.873505, 1.172256, 0.849861>,  <3.085928, 1.191959, 0.511500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.873505, 1.172256, 0.849861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778640, -0.422127, 0.464250,
		0.334212, 0.905197, 0.262526,
		-0.531058, -0.049255, 0.845903,
		2.714187, 1.157480, 1.103632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.357337, 1.677177, 1.140700>,  <3.085928, 1.191959, 0.511500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.357337, 1.677177, 1.140700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.177483, 1.341961, 1.264324>,  <3.069570, 1.140831, 1.338498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.177483, 1.341961, 1.264324>,  <3.357337, 1.677177, 1.140700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.177483, 1.341961, 1.264324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807863, -0.233950, 0.540948,
		-0.381031, 0.492907, 0.782213,
		-0.449636, -0.838039, 0.309059,
		3.042592, 1.090549, 1.357042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.487792, 1.579461, 1.921989>,  <3.357337, 1.677177, 1.140700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.487792, 1.579461, 1.921989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.401585, 1.214184, 1.783638>,  <3.349860, 0.995018, 1.700627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.401585, 1.214184, 1.783638>,  <3.487792, 1.579461, 1.921989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.401585, 1.214184, 1.783638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587760, -0.404165, 0.700849,
		-0.779802, -0.052248, 0.623843,
		-0.215518, -0.913193, -0.345878,
		3.336929, 0.940226, 1.679875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.148585, 1.072642, 2.463512>,  <3.487792, 1.579461, 1.921989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.148585, 1.072642, 2.463512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.378799, 0.913734, 2.177593>,  <3.516928, 0.818390, 2.006042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.378799, 0.913734, 2.177593>,  <3.148585, 1.072642, 2.463512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.378799, 0.913734, 2.177593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632730, -0.337427, 0.696991,
		-0.518086, -0.853417, 0.057164,
		0.575535, -0.397271, -0.714798,
		3.551460, 0.794554, 1.963154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.085482, 0.329256, 2.554139>,  <3.148585, 1.072642, 2.463512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.085482, 0.329256, 2.554139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.439377, 0.471581, 2.433712>,  <3.651713, 0.556975, 2.361456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.439377, 0.471581, 2.433712>,  <3.085482, 0.329256, 2.554139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.439377, 0.471581, 2.433712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416543, -0.313778, 0.853250,
		0.209127, -0.880308, -0.425821,
		0.884736, 0.355811, -0.301067,
		3.704798, 0.578324, 2.343392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.586630, -0.194972, 2.685473>,  <3.085482, 0.329256, 2.554139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.586630, -0.194972, 2.685473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.778683, 0.154610, 2.655327>,  <3.893914, 0.364358, 2.637239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.778683, 0.154610, 2.655327>,  <3.586630, -0.194972, 2.685473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.778683, 0.154610, 2.655327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602951, -0.266400, 0.751985,
		0.637122, -0.406493, -0.654858,
		0.480131, 0.873953, -0.075366,
		3.922722, 0.416796, 2.632717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.285038, -0.409770, 2.848873>,  <3.586630, -0.194972, 2.685473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.285038, -0.409770, 2.848873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267979, -0.011288, 2.879223>,  <4.257743, 0.227801, 2.897433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267979, -0.011288, 2.879223>,  <4.285038, -0.409770, 2.848873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.267979, -0.011288, 2.879223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619064, -0.033258, 0.784636,
		0.784182, 0.080436, -0.615296,
		-0.042649, 0.996205, 0.075876,
		4.255184, 0.287574, 2.901985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.950474, -0.140820, 3.028104>,  <4.285038, -0.409770, 2.848873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.950474, -0.140820, 3.028104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.700485, 0.141479, 3.161568>,  <4.550492, 0.310859, 3.241646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.700485, 0.141479, 3.161568>,  <4.950474, -0.140820, 3.028104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.700485, 0.141479, 3.161568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510200, 0.045769, 0.858837,
		0.590851, 0.706983, -0.388677,
		-0.624973, 0.705747, 0.333660,
		4.512993, 0.353204, 3.261666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.252062, -0.167696, 4.465737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.939618, -0.001122, 4.651833>,  <4.752151, 0.098823, 4.763490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.939618, -0.001122, 4.651833>,  <5.252062, -0.167696, 4.465737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.939618, -0.001122, 4.651833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297505, 0.406868, -0.863683,
		-0.548961, -0.813043, -0.193917,
		-0.781110, 0.416437, 0.465239,
		4.705285, 0.123810, 4.791404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.531506, -0.355924, 4.135491>,  <5.252062, -0.167696, 4.465737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.531506, -0.355924, 4.135491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529478, 0.006256, 4.305260>,  <4.528261, 0.223564, 4.407121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529478, 0.006256, 4.305260>,  <4.531506, -0.355924, 4.135491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.529478, 0.006256, 4.305260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281988, 0.405907, -0.869323,
		-0.959405, -0.124089, 0.253268,
		-0.005070, 0.905451, 0.424421,
		4.527957, 0.277891, 4.432586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.919696, 0.023396, 4.010206>,  <4.531506, -0.355924, 4.135491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.919696, 0.023396, 4.010206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.228491, 0.272530, 4.060982>,  <4.413768, 0.422010, 4.091447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.228491, 0.272530, 4.060982>,  <3.919696, 0.023396, 4.010206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.228491, 0.272530, 4.060982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206929, 0.435081, -0.876290,
		-0.601013, 0.650217, 0.464759,
		0.771987, 0.622834, 0.126940,
		4.460087, 0.459380, 4.099064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.711648, 0.708894, 3.987993>,  <3.919696, 0.023396, 4.010206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.711648, 0.708894, 3.987993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.076056, 0.615265, 3.852196>,  <4.294700, 0.559088, 3.770717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.076056, 0.615265, 3.852196>,  <3.711648, 0.708894, 3.987993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.076056, 0.615265, 3.852196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221397, 0.416921, -0.881567,
		0.347892, 0.878287, 0.327999,
		0.911018, -0.234072, -0.339494,
		4.349361, 0.545043, 3.750348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.716158, 1.298804, 3.532484>,  <3.711648, 0.708894, 3.987993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.716158, 1.298804, 3.532484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.994203, 1.025124, 3.444221>,  <4.161029, 0.860915, 3.391264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.994203, 1.025124, 3.444221>,  <3.716158, 1.298804, 3.532484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.994203, 1.025124, 3.444221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178082, 0.133490, -0.974919,
		0.696495, 0.716973, -0.029053,
		0.695112, -0.684200, -0.220655,
		4.202736, 0.819863, 3.378025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.154018, 1.625387, 2.986549>,  <3.716158, 1.298804, 3.532484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.154018, 1.625387, 2.986549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.161784, 1.225914, 2.967552>,  <4.166444, 0.986230, 2.956154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.161784, 1.225914, 2.967552>,  <4.154018, 1.625387, 2.986549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.161784, 1.225914, 2.967552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142222, 0.044258, -0.988845,
		0.989645, 0.025953, -0.141175,
		0.019415, -0.998683, -0.047491,
		4.167609, 0.926309, 2.953305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.635430, 1.482846, 2.484488>,  <4.154018, 1.625387, 2.986549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.635430, 1.482846, 2.484488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.403670, 1.159615, 2.527016>,  <4.264614, 0.965676, 2.552532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.403670, 1.159615, 2.527016>,  <4.635430, 1.482846, 2.484488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403670, 1.159615, 2.527016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182565, 0.001543, -0.983192,
		0.794334, -0.589072, -0.148421,
		-0.579400, -0.808079, 0.106318,
		4.229850, 0.917191, 2.558911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.806208, 1.127738, 1.923007>,  <4.635430, 1.482846, 2.484488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.806208, 1.127738, 1.923007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.461712, 0.976112, 2.058403>,  <4.255014, 0.885137, 2.139641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.461712, 0.976112, 2.058403>,  <4.806208, 1.127738, 1.923007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.461712, 0.976112, 2.058403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354537, -0.029042, -0.934591,
		0.364101, -0.924914, -0.109380,
		-0.861240, -0.379065, 0.338491,
		4.203340, 0.862393, 2.159950>
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
