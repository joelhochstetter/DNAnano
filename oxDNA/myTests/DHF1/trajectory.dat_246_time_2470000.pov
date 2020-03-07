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
	<2.546951, 3.337874, 2.857884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.702309, 3.649689, 2.661324>,  <2.795523, 3.836777, 2.543387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.702309, 3.649689, 2.661324>,  <2.546951, 3.337874, 2.857884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702309, 3.649689, 2.661324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722860, -0.072992, -0.687128,
		-0.571509, 0.622090, 0.535145,
		0.388394, 0.779535, -0.491400,
		2.818827, 3.883549, 2.513903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.993733, 3.870042, 2.854022>,  <2.546951, 3.337874, 2.857884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.993733, 3.870042, 2.854022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.234474, 3.934013, 2.541050>,  <2.378919, 3.972396, 2.353267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.234474, 3.934013, 2.541050>,  <1.993733, 3.870042, 2.854022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.234474, 3.934013, 2.541050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797878, 0.078579, -0.597676,
		-0.034102, 0.983996, 0.174896,
		0.601854, 0.159928, -0.782429,
		2.415030, 3.981992, 2.306321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.839949, 4.470229, 2.459074>,  <1.993733, 3.870042, 2.854022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.839949, 4.470229, 2.459074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.020565, 4.190346, 2.237617>,  <2.128935, 4.022416, 2.104743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.020565, 4.190346, 2.237617>,  <1.839949, 4.470229, 2.459074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.020565, 4.190346, 2.237617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766973, 0.012678, -0.641554,
		0.455920, 0.714316, -0.530933,
		0.451541, -0.699709, -0.553641,
		2.156027, 3.980433, 2.071525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.605506, 4.785218, 1.826672>,  <1.839949, 4.470229, 2.459074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.605506, 4.785218, 1.826672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690899, 4.394737, 1.841930>,  <1.742135, 4.160449, 1.851085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690899, 4.394737, 1.841930>,  <1.605506, 4.785218, 1.826672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690899, 4.394737, 1.841930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809157, -0.198562, -0.553026,
		0.547440, 0.087197, -0.832290,
		0.213483, -0.976202, 0.038145,
		1.754944, 4.101877, 1.853374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.624591, 4.522068, 1.096567>,  <1.605506, 4.785218, 1.826672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.624591, 4.522068, 1.096567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.538235, 4.264717, 1.390358>,  <1.486421, 4.110306, 1.566632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.538235, 4.264717, 1.390358>,  <1.624591, 4.522068, 1.096567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.538235, 4.264717, 1.390358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932144, -0.088136, -0.351198,
		0.290686, -0.760458, -0.580693,
		-0.215892, -0.643378, 0.734477,
		1.473467, 4.071704, 1.610701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.252977, 4.001450, 0.736192>,  <1.624591, 4.522068, 1.096567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.252977, 4.001450, 0.736192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173931, 3.969299, 1.126984>,  <1.126504, 3.950009, 1.361459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173931, 3.969299, 1.126984>,  <1.252977, 4.001450, 0.736192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.173931, 3.969299, 1.126984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959712, -0.187224, -0.209524,
		0.199755, -0.979023, -0.040141,
		-0.197614, -0.080378, 0.976979,
		1.114647, 3.945186, 1.420077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.832125, 3.411910, 0.790922>,  <1.252977, 4.001450, 0.736192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.832125, 3.411910, 0.790922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.750931, 3.642754, 1.107338>,  <0.702214, 3.781260, 1.297187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.750931, 3.642754, 1.107338>,  <0.832125, 3.411910, 0.790922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.750931, 3.642754, 1.107338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971096, -0.015041, -0.238216,
		-0.125578, -0.816529, 0.563481,
		-0.202986, 0.577109, 0.791038,
		0.690035, 3.815886, 1.344650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.400339, 3.011425, 1.339592>,  <0.832125, 3.411910, 0.790922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.400339, 3.011425, 1.339592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.353947, 3.405373, 1.288086>,  <0.326112, 3.641741, 1.257182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.353947, 3.405373, 1.288086>,  <0.400339, 3.011425, 1.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.353947, 3.405373, 1.288086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900592, -0.158949, -0.404561,
		-0.418907, 0.069044, 0.905400,
		-0.115980, 0.984870, -0.128766,
		0.319153, 3.700834, 1.249456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.273628, 4.103444, 1.676008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458733, 4.457870, 1.665154>,  <3.569795, 4.670527, 1.658641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458733, 4.457870, 1.665154>,  <3.273628, 4.103444, 1.676008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458733, 4.457870, 1.665154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882931, -0.463429, -0.075268,
		-0.079268, 0.010871, -0.996794,
		0.462762, 0.886067, -0.027137,
		3.597561, 4.723691, 1.657012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.612376, 4.152249, 1.090562>,  <3.273628, 4.103444, 1.676008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.612376, 4.152249, 1.090562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785004, 4.351334, 1.391502>,  <3.888580, 4.470785, 1.572066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785004, 4.351334, 1.391502>,  <3.612376, 4.152249, 1.090562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785004, 4.351334, 1.391502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865329, -0.464044, -0.189391,
		0.254861, 0.732766, -0.630952,
		0.431569, 0.497712, 0.752350,
		3.914474, 4.500648, 1.617207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.279510, 4.503986, 0.844317>,  <3.612376, 4.152249, 1.090562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.279510, 4.503986, 0.844317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.293865, 4.425217, 1.236221>,  <4.302478, 4.377955, 1.471364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.293865, 4.425217, 1.236221>,  <4.279510, 4.503986, 0.844317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293865, 4.425217, 1.236221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876612, -0.464550, -0.125480,
		0.479858, 0.863374, 0.155954,
		0.035888, -0.196923, 0.979762,
		4.304632, 4.366140, 1.530150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.968186, 4.831349, 1.147462>,  <4.279510, 4.503986, 0.844317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.968186, 4.831349, 1.147462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.846500, 4.526840, 1.376518>,  <4.773489, 4.344135, 1.513952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.846500, 4.526840, 1.376518>,  <4.968186, 4.831349, 1.147462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.846500, 4.526840, 1.376518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951173, -0.275683, 0.138812,
		0.052194, 0.586910, 0.807968,
		-0.304213, -0.761272, 0.572642,
		4.755237, 4.298459, 1.548311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197294, 4.915318, 1.824656>,  <4.968186, 4.831349, 1.147462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197294, 4.915318, 1.824656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.170258, 4.529419, 1.722916>,  <5.154036, 4.297880, 1.661871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.170258, 4.529419, 1.722916>,  <5.197294, 4.915318, 1.824656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.170258, 4.529419, 1.722916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959683, -0.132581, 0.247852,
		-0.272837, -0.227344, 0.934813,
		-0.067591, -0.964747, -0.254351,
		5.149981, 4.239995, 1.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.453766, 4.517008, 2.403065>,  <5.197294, 4.915318, 1.824656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.453766, 4.517008, 2.403065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.517563, 4.297119, 2.075073>,  <5.555841, 4.165186, 1.878278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.517563, 4.297119, 2.075073>,  <5.453766, 4.517008, 2.403065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.517563, 4.297119, 2.075073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975705, -0.038599, 0.215659,
		-0.150203, -0.834455, 0.530211,
		0.159492, -0.549722, -0.819980,
		5.565411, 4.132203, 1.829079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.705632, 3.920732, 2.669715>,  <5.453766, 4.517008, 2.403065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.705632, 3.920732, 2.669715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.835775, 3.932068, 2.291649>,  <5.913861, 3.938869, 2.064809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.835775, 3.932068, 2.291649>,  <5.705632, 3.920732, 2.669715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.835775, 3.932068, 2.291649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912313, -0.272248, 0.305885,
		-0.248650, -0.961809, -0.114434,
		0.325358, 0.028342, -0.945166,
		5.933383, 3.940570, 2.008099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.111051, 3.228753, 2.611760>,  <5.705632, 3.920732, 2.669715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.111051, 3.228753, 2.611760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.215960, 3.500824, 2.337952>,  <6.278905, 3.664067, 2.173666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.215960, 3.500824, 2.337952>,  <6.111051, 3.228753, 2.611760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.215960, 3.500824, 2.337952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951087, -0.062204, 0.302597,
		0.163240, -0.730403, -0.663223,
		0.262273, 0.680179, -0.684522,
		6.294641, 3.704878, 2.132595>
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
