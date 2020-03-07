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
	<1.965954, 0.763519, 2.683490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130812, 0.408001, 2.603310>,  <2.229726, 0.194690, 2.555202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130812, 0.408001, 2.603310>,  <1.965954, 0.763519, 2.683490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.130812, 0.408001, 2.603310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219059, -0.116888, 0.968685,
		-0.884393, -0.443148, 0.146524,
		0.412144, -0.888795, -0.200451,
		2.254455, 0.141362, 2.543175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.717013, 0.120628, 3.215489>,  <1.965954, 0.763519, 2.683490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.717013, 0.120628, 3.215489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091518, 0.109936, 3.075378>,  <2.316222, 0.103521, 2.991312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091518, 0.109936, 3.075378>,  <1.717013, 0.120628, 3.215489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.091518, 0.109936, 3.075378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348412, -0.056852, 0.935616,
		-0.044909, -0.998025, -0.043921,
		0.936265, -0.026715, -0.350277,
		2.372398, 0.101917, 2.970295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.022531, -0.561447, 3.302981>,  <1.717013, 0.120628, 3.215489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.022531, -0.561447, 3.302981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.258756, -0.239075, 3.319542>,  <2.400491, -0.045652, 3.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.258756, -0.239075, 3.319542>,  <2.022531, -0.561447, 3.302981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.258756, -0.239075, 3.319542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273276, -0.247995, 0.929419,
		0.759314, -0.537564, -0.366698,
		0.590562, 0.805930, 0.041403,
		2.435924, 0.002704, 3.331963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.708218, -0.739844, 3.617958>,  <2.022531, -0.561447, 3.302981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.708218, -0.739844, 3.617958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723166, -0.342247, 3.659103>,  <2.732134, -0.103689, 3.683791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723166, -0.342247, 3.659103>,  <2.708218, -0.739844, 3.617958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.723166, -0.342247, 3.659103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531592, -0.106937, 0.840223,
		0.846176, 0.023284, -0.532395,
		0.037369, 0.993993, 0.102865,
		2.734376, -0.044049, 3.689963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.418106, -0.517697, 3.717613>,  <2.708218, -0.739844, 3.617958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.418106, -0.517697, 3.717613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.173817, -0.237267, 3.864861>,  <3.027243, -0.069008, 3.953209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.173817, -0.237267, 3.864861>,  <3.418106, -0.517697, 3.717613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.173817, -0.237267, 3.864861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451869, -0.073200, 0.889076,
		0.650255, 0.709320, -0.272090,
		-0.610723, 0.701075, 0.368119,
		2.990600, -0.026944, 3.975296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.838445, -0.112016, 3.979849>,  <3.418106, -0.517697, 3.717613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.838445, -0.112016, 3.979849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.496881, -0.026310, 4.169556>,  <3.291943, 0.025113, 4.283380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.496881, -0.026310, 4.169556>,  <3.838445, -0.112016, 3.979849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.496881, -0.026310, 4.169556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458505, -0.121372, 0.880365,
		0.246193, 0.969206, 0.005399,
		-0.853910, 0.214264, 0.474267,
		3.240709, 0.037969, 4.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.990650, 0.237482, 4.511954>,  <3.838445, -0.112016, 3.979849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.990650, 0.237482, 4.511954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625544, 0.140930, 4.643768>,  <3.406480, 0.082999, 4.722857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625544, 0.140930, 4.643768>,  <3.990650, 0.237482, 4.511954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625544, 0.140930, 4.643768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369537, -0.144171, 0.917964,
		-0.174067, 0.959662, 0.220793,
		-0.912767, -0.241379, 0.329535,
		3.351714, 0.068517, 4.742629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.829546, 0.783531, 4.955604>,  <3.990650, 0.237482, 4.511954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.829546, 0.783531, 4.955604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621950, 0.458759, 5.062504>,  <3.497393, 0.263896, 5.126644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.621950, 0.458759, 5.062504>,  <3.829546, 0.783531, 4.955604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621950, 0.458759, 5.062504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401941, 0.044122, 0.914602,
		-0.754383, 0.582087, 0.303448,
		-0.518989, -0.811929, 0.267250,
		3.466254, 0.215181, 5.142679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.209164, 4.856204, 1.196901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868317, 4.667572, 1.287682>,  <3.663808, 4.554393, 1.342150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868317, 4.667572, 1.287682>,  <4.209164, 4.856204, 1.196901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868317, 4.667572, 1.287682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428046, 0.378497, -0.820680,
		0.301112, -0.796465, -0.524381,
		-0.852119, -0.471576, 0.226954,
		3.612681, 4.526098, 1.355767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.123490, 4.240563, 0.749548>,  <4.209164, 4.856204, 1.196901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.123490, 4.240563, 0.749548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.799232, 4.431572, 0.885094>,  <3.604678, 4.546177, 0.966421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.799232, 4.431572, 0.885094>,  <4.123490, 4.240563, 0.749548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.799232, 4.431572, 0.885094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311937, 0.137570, -0.940090,
		-0.495532, -0.867782, 0.037437,
		-0.810644, 0.477523, 0.338864,
		3.556039, 4.574829, 0.986753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.416114, 3.998743, 0.441153>,  <4.123490, 4.240563, 0.749548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.416114, 3.998743, 0.441153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.361012, 4.379040, 0.552231>,  <3.327950, 4.607218, 0.618878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.361012, 4.379040, 0.552231>,  <3.416114, 3.998743, 0.441153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.361012, 4.379040, 0.552231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459548, 0.187013, -0.868240,
		-0.877404, -0.247220, 0.411149,
		-0.137756, 0.950741, 0.277696,
		3.319685, 4.664262, 0.635540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.620802, 4.243187, 0.549165>,  <3.416114, 3.998743, 0.441153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.620802, 4.243187, 0.549165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.869453, 4.533260, 0.430717>,  <3.018644, 4.707304, 0.359649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.869453, 4.533260, 0.430717>,  <2.620802, 4.243187, 0.549165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.869453, 4.533260, 0.430717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535291, 0.117286, -0.836485,
		-0.571875, 0.678493, 0.461093,
		0.621629, 0.725184, -0.296118,
		3.055942, 4.750815, 0.341882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.215469, 4.625916, 0.083870>,  <2.620802, 4.243187, 0.549165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.215469, 4.625916, 0.083870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.564928, 4.801380, -0.000336>,  <2.774604, 4.906659, -0.050859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.564928, 4.801380, -0.000336>,  <2.215469, 4.625916, 0.083870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.564928, 4.801380, -0.000336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388369, 0.368063, -0.844807,
		-0.293102, 0.819821, 0.491920,
		0.873648, 0.438661, -0.210513,
		2.827023, 4.932979, -0.063490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.124560, 5.337343, -0.132519>,  <2.215469, 4.625916, 0.083870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.124560, 5.337343, -0.132519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.477039, 5.244499, -0.297256>,  <2.688527, 5.188793, -0.396099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.477039, 5.244499, -0.297256>,  <2.124560, 5.337343, -0.132519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.477039, 5.244499, -0.297256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305675, 0.384808, -0.870911,
		0.360627, 0.893335, 0.268142,
		0.881198, -0.232110, -0.411843,
		2.741399, 5.174866, -0.420809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.302848, 5.919050, -0.495553>,  <2.124560, 5.337343, -0.132519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.302848, 5.919050, -0.495553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.507805, 5.611691, -0.648926>,  <2.630779, 5.427275, -0.740949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.507805, 5.611691, -0.648926>,  <2.302848, 5.919050, -0.495553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.507805, 5.611691, -0.648926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162379, 0.351750, -0.921903,
		0.843260, 0.534636, 0.055462,
		0.512392, -0.768398, -0.383431,
		2.661522, 5.381171, -0.763955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.722114, 6.166188, -0.966712>,  <2.302848, 5.919050, -0.495553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.722114, 6.166188, -0.966712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.680830, 5.783352, -1.075027>,  <2.656060, 5.553650, -1.140017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.680830, 5.783352, -1.075027>,  <2.722114, 6.166188, -0.966712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.680830, 5.783352, -1.075027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233513, 0.287948, -0.928740,
		0.966861, -0.032624, -0.253212,
		-0.103211, -0.957090, -0.270788,
		2.649867, 5.496225, -1.156264>
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
