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
	<1.611837, 0.477993, 2.776711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.215637, 0.433197, 2.744789>,  <0.977917, 0.406320, 2.725636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.215637, 0.433197, 2.744789>,  <1.611837, 0.477993, 2.776711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.215637, 0.433197, 2.744789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115125, 0.357908, 0.926633,
		-0.075210, 0.927017, -0.367401,
		-0.990500, -0.111989, -0.079805,
		0.918487, 0.399600, 2.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.085443, 1.043273, 2.975332>,  <1.611837, 0.477993, 2.776711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.085443, 1.043273, 2.975332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.167175, 1.211304, 2.621658>,  <2.216215, 1.312122, 2.409454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.167175, 1.211304, 2.621658>,  <2.085443, 1.043273, 2.975332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.167175, 1.211304, 2.621658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909443, 0.252708, 0.330230,
		0.362163, -0.871593, -0.330401,
		0.204331, 0.420078, -0.884185,
		2.228475, 1.337327, 2.356403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.741162, 1.115222, 2.954804>,  <2.085443, 1.043273, 2.975332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.741162, 1.115222, 2.954804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.687271, 1.358612, 2.641983>,  <2.654937, 1.504646, 2.454291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.687271, 1.358612, 2.641983>,  <2.741162, 1.115222, 2.954804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.687271, 1.358612, 2.641983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831002, 0.499266, 0.245294,
		0.539708, -0.616839, -0.572910,
		-0.134727, 0.608476, -0.782052,
		2.646853, 1.541155, 2.407367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.270905, 1.107141, 2.418105>,  <2.741162, 1.115222, 2.954804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.270905, 1.107141, 2.418105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095032, 1.463150, 2.466331>,  <2.989508, 1.676756, 2.495268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.095032, 1.463150, 2.466331>,  <3.270905, 1.107141, 2.418105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.095032, 1.463150, 2.466331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891166, 0.415603, 0.181929,
		0.111813, 0.187437, -0.975892,
		-0.439683, 0.890024, 0.120567,
		2.963127, 1.730157, 2.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.634317, 1.581188, 1.957412>,  <3.270905, 1.107141, 2.418105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.634317, 1.581188, 1.957412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.472328, 1.744629, 2.284592>,  <3.375135, 1.842693, 2.480900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.472328, 1.744629, 2.284592>,  <3.634317, 1.581188, 1.957412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.472328, 1.744629, 2.284592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893607, 0.366253, 0.259471,
		-0.193556, 0.836004, -0.513452,
		-0.404973, 0.408602, 0.817949,
		3.350836, 1.867210, 2.529976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667447, 2.443414, 1.878444>,  <3.634317, 1.581188, 1.957412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667447, 2.443414, 1.878444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647179, 2.302094, 2.252098>,  <3.635017, 2.217301, 2.476291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647179, 2.302094, 2.252098>,  <3.667447, 2.443414, 1.878444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.647179, 2.302094, 2.252098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892812, 0.403143, 0.200904,
		-0.447570, 0.844188, 0.295004,
		-0.050672, -0.353302, 0.934136,
		3.631977, 2.196103, 2.532339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.027340, 2.999967, 2.270498>,  <3.667447, 2.443414, 1.878444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.027340, 2.999967, 2.270498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.007919, 2.693039, 2.526268>,  <3.996267, 2.508882, 2.679730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.007919, 2.693039, 2.526268>,  <4.027340, 2.999967, 2.270498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.007919, 2.693039, 2.526268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901442, 0.242047, 0.358908,
		-0.430168, 0.593830, 0.679943,
		-0.048552, -0.767320, 0.639424,
		3.993354, 2.462843, 2.718095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.344022, 3.281361, 2.946110>,  <4.027340, 2.999967, 2.270498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.344022, 3.281361, 2.946110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.368927, 2.882187, 2.939819>,  <4.383870, 2.642682, 2.936045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.368927, 2.882187, 2.939819>,  <4.344022, 3.281361, 2.946110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.368927, 2.882187, 2.939819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924451, 0.051725, 0.377776,
		-0.376182, -0.038060, 0.925764,
		0.062263, -0.997936, -0.015727,
		4.387606, 2.582806, 2.935101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.110728, 2.906686, 3.247223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.076092, 2.524536, 3.134254>,  <6.055310, 2.295246, 3.066473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.076092, 2.524536, 3.134254>,  <6.110728, 2.906686, 3.247223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.076092, 2.524536, 3.134254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986856, 0.043431, 0.155653,
		-0.136441, 0.292188, -0.946578,
		-0.086591, -0.955374, -0.282422,
		6.050115, 2.237924, 3.049528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.424412, 2.837044, 2.870852>,  <6.110728, 2.906686, 3.247223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.424412, 2.837044, 2.870852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.506954, 2.459732, 2.974884>,  <5.556479, 2.233345, 3.037303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.506954, 2.459732, 2.974884>,  <5.424412, 2.837044, 2.870852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.506954, 2.459732, 2.974884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963579, -0.149696, 0.221599,
		-0.170098, -0.296334, -0.939815,
		0.206354, -0.943280, 0.260078,
		5.568861, 2.176748, 3.052908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.083352, 2.257917, 2.445913>,  <5.424412, 2.837044, 2.870852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.083352, 2.257917, 2.445913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.119476, 2.147278, 2.828606>,  <5.141151, 2.080894, 3.058221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.119476, 2.147278, 2.828606>,  <5.083352, 2.257917, 2.445913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.119476, 2.147278, 2.828606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994454, -0.077032, 0.071601,
		0.053894, -0.957893, -0.282021,
		0.090311, -0.276599, 0.956732,
		5.146570, 2.064298, 3.115625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.754483, 1.563025, 2.568997>,  <5.083352, 2.257917, 2.445913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.754483, 1.563025, 2.568997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.754406, 1.830963, 2.865997>,  <4.754360, 1.991726, 3.044197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.754406, 1.830963, 2.865997>,  <4.754483, 1.563025, 2.568997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.754406, 1.830963, 2.865997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994347, -0.078966, 0.070983,
		0.106180, -0.738289, 0.666074,
		-0.000192, 0.669846, 0.742500,
		4.754348, 2.031917, 3.088747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.374000, 1.281076, 3.062413>,  <4.754483, 1.563025, 2.568997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.374000, 1.281076, 3.062413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.378510, 1.680573, 3.042854>,  <4.381216, 1.920270, 3.031119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.378510, 1.680573, 3.042854>,  <4.374000, 1.281076, 3.062413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.378510, 1.680573, 3.042854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993310, 0.016808, 0.114252,
		0.114930, 0.047282, 0.992248,
		0.011275, 0.998740, -0.048897,
		4.381892, 1.980195, 3.028185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.060753, 1.499543, 3.588590>,  <4.374000, 1.281076, 3.062413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.060753, 1.499543, 3.588590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029594, 1.807938, 3.335762>,  <4.010899, 1.992974, 3.184065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029594, 1.807938, 3.335762>,  <4.060753, 1.499543, 3.588590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.029594, 1.807938, 3.335762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996883, -0.052264, 0.059107,
		0.012536, 0.634704, 0.772654,
		-0.077897, 0.770985, -0.632070,
		4.006225, 2.039233, 3.146141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.444976, 1.924688, 3.813576>,  <4.060753, 1.499543, 3.588590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.444976, 1.924688, 3.813576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506660, 2.008057, 3.427254>,  <3.543671, 2.058078, 3.195461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506660, 2.008057, 3.427254>,  <3.444976, 1.924688, 3.813576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.506660, 2.008057, 3.427254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975681, -0.121987, -0.182113,
		-0.155773, 0.970402, 0.184542,
		0.154211, 0.208423, -0.965805,
		3.552924, 2.070584, 3.137512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.946824, 2.463772, 3.621399>,  <3.444976, 1.924688, 3.813576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.946824, 2.463772, 3.621399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054340, 2.238525, 3.308823>,  <3.118850, 2.103377, 3.121277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054340, 2.238525, 3.308823>,  <2.946824, 2.463772, 3.621399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.054340, 2.238525, 3.308823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959436, -0.228167, -0.165596,
		-0.085049, 0.794254, -0.601604,
		0.268792, -0.563117, -0.781441,
		3.134978, 2.069590, 3.074390>
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
