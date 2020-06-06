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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.989346, 34.805637, 34.762115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322863, 34.816792, 34.982662>,  <24.522974, 34.823483, 35.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322863, 34.816792, 34.982662>,  <23.989346, 34.805637, 34.762115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322863, 34.816792, 34.982662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412165, 0.633011, -0.655299,
		-0.367296, 0.773640, 0.516309,
		0.833795, 0.027884, 0.551370,
		24.573002, 34.825157, 35.148071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185926, 35.521137, 35.031250>,  <23.989346, 34.805637, 34.762115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185926, 35.521137, 35.031250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505796, 35.289257, 34.968681>,  <24.697718, 35.150127, 34.931141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505796, 35.289257, 34.968681>,  <24.185926, 35.521137, 35.031250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505796, 35.289257, 34.968681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380022, 0.690342, -0.615639,
		0.464872, 0.432866, 0.772348,
		0.799673, -0.579702, -0.156422,
		24.745699, 35.115345, 34.921753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871080, 35.902336, 35.189499>,  <24.185926, 35.521137, 35.031250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871080, 35.902336, 35.189499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898132, 35.617393, 34.910076>,  <24.914364, 35.446426, 34.742424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898132, 35.617393, 34.910076>,  <24.871080, 35.902336, 35.189499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898132, 35.617393, 34.910076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408863, 0.658453, -0.631879,
		0.910086, -0.242877, 0.335788,
		0.067632, -0.712355, -0.698552,
		24.918423, 35.403687, 34.700512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567747, 35.873280, 34.856869>,  <24.871080, 35.902336, 35.189499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567747, 35.873280, 34.856869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644485, 35.615585, 34.560719>,  <25.690529, 35.460968, 34.383030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644485, 35.615585, 34.560719>,  <25.567747, 35.873280, 34.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644485, 35.615585, 34.560719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980664, -0.155539, -0.118769,
		-0.038641, 0.748841, -0.661623,
		0.191847, -0.644240, -0.740371,
		25.702040, 35.422314, 34.338608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077141, 35.344044, 35.251400>,  <25.567747, 35.873280, 34.856869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077141, 35.344044, 35.251400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207087, 35.049931, 35.013466>,  <26.285053, 34.873463, 34.870705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207087, 35.049931, 35.013466>,  <26.077141, 35.344044, 35.251400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207087, 35.049931, 35.013466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010296, 0.626159, -0.779628,
		0.945704, 0.259398, 0.195847,
		0.324865, -0.735281, -0.594832,
		26.304546, 34.829346, 34.835018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480358, 34.953396, 35.624393>,  <26.077141, 35.344044, 35.251400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480358, 34.953396, 35.624393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771786, 34.680168, 35.604008>,  <25.946642, 34.516232, 35.591778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771786, 34.680168, 35.604008>,  <25.480358, 34.953396, 35.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771786, 34.680168, 35.604008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204101, -0.287513, 0.935777,
		-0.653857, -0.671377, -0.348890,
		0.728569, -0.683073, -0.050964,
		25.990356, 34.475246, 35.588718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238804, 34.269657, 35.788960>,  <25.480358, 34.953396, 35.624393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238804, 34.269657, 35.788960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630272, 34.267963, 35.871120>,  <25.865152, 34.266949, 35.920418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630272, 34.267963, 35.871120>,  <25.238804, 34.269657, 35.788960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630272, 34.267963, 35.871120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198694, -0.273772, 0.941047,
		0.052251, -0.961785, -0.268773,
		0.978667, -0.004234, 0.205406,
		25.923872, 34.266693, 35.932743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483028, 33.623550, 36.015221>,  <25.238804, 34.269657, 35.788960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483028, 33.623550, 36.015221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713720, 33.908417, 36.175323>,  <25.852135, 34.079338, 36.271385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713720, 33.908417, 36.175323>,  <25.483028, 33.623550, 36.015221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713720, 33.908417, 36.175323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278162, -0.289481, 0.915875,
		0.768120, -0.639547, 0.031145,
		0.576729, 0.712166, 0.400254,
		25.886740, 34.122066, 36.295399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794119, 33.231506, 36.625889>,  <25.483028, 33.623550, 36.015221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794119, 33.231506, 36.625889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863981, 33.619904, 36.691219>,  <25.905899, 33.852940, 36.730419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863981, 33.619904, 36.691219>,  <25.794119, 33.231506, 36.625889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863981, 33.619904, 36.691219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221547, -0.122869, 0.967378,
		0.959381, -0.205143, 0.193660,
		0.174656, 0.970989, 0.163327,
		25.916378, 33.911201, 36.740219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149483, 33.277561, 37.289543>,  <25.794119, 33.231506, 36.625889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149483, 33.277561, 37.289543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010618, 33.648270, 37.232159>,  <25.927299, 33.870693, 37.197727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010618, 33.648270, 37.232159>,  <26.149483, 33.277561, 37.289543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010618, 33.648270, 37.232159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337819, 0.019119, 0.941017,
		0.874847, 0.375149, 0.306442,
		-0.347163, 0.926767, -0.143458,
		25.906469, 33.926300, 37.189121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379238, 33.671829, 37.898178>,  <26.149483, 33.277561, 37.289543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379238, 33.671829, 37.898178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067625, 33.857071, 37.729111>,  <25.880657, 33.968216, 37.627670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067625, 33.857071, 37.729111>,  <26.379238, 33.671829, 37.898178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067625, 33.857071, 37.729111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391654, 0.166980, 0.904834,
		0.489608, 0.870433, 0.051293,
		-0.779032, 0.463103, -0.422664,
		25.833916, 33.996002, 37.602310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372463, 34.218578, 38.298084>,  <26.379238, 33.671829, 37.898178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372463, 34.218578, 38.298084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015921, 34.151855, 38.129486>,  <25.801994, 34.111824, 38.028328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015921, 34.151855, 38.129486>,  <26.372463, 34.218578, 38.298084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015921, 34.151855, 38.129486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438548, 0.082029, 0.894956,
		-0.114707, 0.982572, -0.146269,
		-0.891357, -0.166803, -0.421496,
		25.748514, 34.101814, 38.003036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955221, 34.659622, 38.666592>,  <26.372463, 34.218578, 38.298084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955221, 34.659622, 38.666592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696552, 34.407825, 38.494286>,  <25.541351, 34.256748, 38.390903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696552, 34.407825, 38.494286>,  <25.955221, 34.659622, 38.666592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696552, 34.407825, 38.494286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517809, -0.052379, 0.853891,
		-0.560081, 0.775240, -0.292085,
		-0.646671, -0.629492, -0.430762,
		25.502550, 34.218979, 38.365055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264809, 35.006191, 38.848953>,  <25.955221, 34.659622, 38.666592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264809, 35.006191, 38.848953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209415, 34.623848, 38.745300>,  <25.176180, 34.394440, 38.683109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209415, 34.623848, 38.745300>,  <25.264809, 35.006191, 38.848953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209415, 34.623848, 38.745300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367214, -0.193444, 0.909798,
		-0.919770, 0.221147, -0.324218,
		-0.138481, -0.955863, -0.259132,
		25.167871, 34.337090, 38.667561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581678, 34.856873, 39.079731>,  <25.264809, 35.006191, 38.848953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581678, 34.856873, 39.079731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736963, 34.493904, 39.015388>,  <24.830133, 34.276123, 38.976784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736963, 34.493904, 39.015388>,  <24.581678, 34.856873, 39.079731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736963, 34.493904, 39.015388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393316, -0.320993, 0.861549,
		-0.833424, -0.271194, -0.481517,
		0.388210, -0.907424, -0.160858,
		24.853426, 34.221676, 38.967133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.162373, 34.490204, 39.451740>,  <24.581678, 34.856873, 39.079731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.162373, 34.490204, 39.451740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451185, 34.215618, 39.417240>,  <24.624474, 34.050865, 39.396542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451185, 34.215618, 39.417240>,  <24.162373, 34.490204, 39.451740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451185, 34.215618, 39.417240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260464, -0.385192, 0.885317,
		-0.640959, -0.616762, -0.456920,
		0.722031, -0.686463, -0.086248,
		24.667795, 34.009678, 39.391365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.843777, 33.853249, 39.690369>,  <24.162373, 34.490204, 39.451740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.843777, 33.853249, 39.690369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242495, 33.834316, 39.716164>,  <24.481726, 33.822956, 39.731640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242495, 33.834316, 39.716164>,  <23.843777, 33.853249, 39.690369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242495, 33.834316, 39.716164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077906, -0.391316, 0.916953,
		-0.018169, -0.919038, -0.393750,
		0.996795, -0.047335, 0.064489,
		24.541533, 33.820114, 39.735512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105011, 33.098061, 39.912643>,  <23.843777, 33.853249, 39.690369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105011, 33.098061, 39.912643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374491, 33.370312, 40.027794>,  <24.536179, 33.533665, 40.096882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374491, 33.370312, 40.027794>,  <24.105011, 33.098061, 39.912643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374491, 33.370312, 40.027794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092500, -0.308811, 0.946615,
		0.733195, -0.664361, -0.145087,
		0.673698, 0.680633, 0.287872,
		24.576601, 33.574501, 40.114155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494434, 32.706860, 40.283161>,  <24.105011, 33.098061, 39.912643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494434, 32.706860, 40.283161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602491, 33.075687, 40.394024>,  <24.667326, 33.296982, 40.460541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602491, 33.075687, 40.394024>,  <24.494434, 32.706860, 40.283161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602491, 33.075687, 40.394024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280864, -0.350811, 0.893335,
		0.920945, -0.163481, -0.353744,
		0.270140, 0.922066, 0.277161,
		24.683533, 33.352306, 40.477173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202383, 32.612015, 40.624779>,  <24.494434, 32.706860, 40.283161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202383, 32.612015, 40.624779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068108, 32.973232, 40.731976>,  <24.987543, 33.189964, 40.796295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068108, 32.973232, 40.731976>,  <25.202383, 32.612015, 40.624779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068108, 32.973232, 40.731976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293915, -0.169886, 0.940613,
		0.894946, 0.394519, -0.208391,
		-0.335687, 0.903047, 0.267993,
		24.967402, 33.244148, 40.812374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751812, 33.019222, 41.038868>,  <25.202383, 32.612015, 40.624779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751812, 33.019222, 41.038868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387634, 33.153629, 41.135353>,  <25.169127, 33.234272, 41.193245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387634, 33.153629, 41.135353>,  <25.751812, 33.019222, 41.038868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387634, 33.153629, 41.135353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143212, -0.291007, 0.945941,
		0.388045, 0.895772, 0.216825,
		-0.910446, 0.336016, 0.241209,
		25.114500, 33.254433, 41.207714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823473, 33.352184, 41.643593>,  <25.751812, 33.019222, 41.038868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823473, 33.352184, 41.643593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431259, 33.274410, 41.654552>,  <25.195930, 33.227745, 41.661129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431259, 33.274410, 41.654552>,  <25.823473, 33.352184, 41.643593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431259, 33.274410, 41.654552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117215, -0.467647, 0.876109,
		-0.157529, 0.862266, 0.481333,
		-0.980533, -0.194432, 0.027402,
		25.137098, 33.216080, 41.662773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613546, 33.523285, 42.302662>,  <25.823473, 33.352184, 41.643593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613546, 33.523285, 42.302662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341242, 33.269272, 42.156620>,  <25.177858, 33.116863, 42.068993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341242, 33.269272, 42.156620>,  <25.613546, 33.523285, 42.302662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341242, 33.269272, 42.156620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028575, -0.521079, 0.853030,
		-0.731947, 0.570277, 0.372877,
		-0.680762, -0.635028, -0.365107,
		25.137012, 33.078762, 42.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453060, 33.202663, 42.873699>,  <25.613546, 33.523285, 42.302662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453060, 33.202663, 42.873699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213203, 32.972988, 42.650723>,  <25.069288, 32.835182, 42.516937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213203, 32.972988, 42.650723>,  <25.453060, 33.202663, 42.873699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213203, 32.972988, 42.650723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127899, -0.618852, 0.775025,
		-0.789981, 0.536034, 0.297653,
		-0.599643, -0.574186, -0.557440,
		25.033310, 32.800732, 42.483490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826536, 32.978718, 43.253998>,  <25.453060, 33.202663, 42.873699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826536, 32.978718, 43.253998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900335, 32.710491, 42.966583>,  <24.944614, 32.549553, 42.794132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900335, 32.710491, 42.966583>,  <24.826536, 32.978718, 43.253998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900335, 32.710491, 42.966583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076075, -0.719153, 0.690675,
		-0.979884, -0.182091, -0.081670,
		0.184499, -0.670569, -0.718539,
		24.955685, 32.509319, 42.751022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369644, 32.407722, 43.233021>,  <24.826536, 32.978718, 43.253998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369644, 32.407722, 43.233021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709585, 32.263359, 43.079399>,  <24.913549, 32.176743, 42.987225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709585, 32.263359, 43.079399>,  <24.369644, 32.407722, 43.233021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709585, 32.263359, 43.079399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041003, -0.771797, 0.634546,
		-0.525424, -0.523523, -0.670711,
		0.849852, -0.360907, -0.384055,
		24.964540, 32.155087, 42.964184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408649, 31.719669, 42.906712>,  <24.369644, 32.407722, 43.233021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408649, 31.719669, 42.906712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763220, 31.792641, 43.076874>,  <24.975962, 31.836424, 43.178970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763220, 31.792641, 43.076874>,  <24.408649, 31.719669, 42.906712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763220, 31.792641, 43.076874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143939, -0.764847, 0.627925,
		0.439921, -0.617842, -0.651722,
		0.886426, 0.182429, 0.425404,
		25.029148, 31.847370, 43.204494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450390, 31.068674, 43.188583>,  <24.408649, 31.719669, 42.906712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450390, 31.068674, 43.188583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725622, 31.252197, 43.413456>,  <24.890760, 31.362310, 43.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725622, 31.252197, 43.413456>,  <24.450390, 31.068674, 43.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725622, 31.252197, 43.413456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066284, -0.731757, 0.678335,
		0.722602, -0.504011, -0.473096,
		0.688079, 0.458807, 0.562177,
		24.932047, 31.389839, 43.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050686, 30.507040, 43.342052>,  <24.450390, 31.068674, 43.188583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050686, 30.507040, 43.342052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060345, 30.813972, 43.598370>,  <25.066141, 30.998133, 43.752159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060345, 30.813972, 43.598370>,  <25.050686, 30.507040, 43.342052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060345, 30.813972, 43.598370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158055, -0.635852, 0.755454,
		0.987135, 0.083038, -0.136635,
		0.024148, 0.767331, 0.640797,
		25.067589, 31.044172, 43.790607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690388, 30.573797, 43.728783>,  <25.050686, 30.507040, 43.342052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690388, 30.573797, 43.728783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368883, 30.693338, 43.934559>,  <25.175980, 30.765062, 44.058025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368883, 30.693338, 43.934559>,  <25.690388, 30.573797, 43.728783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368883, 30.693338, 43.934559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237443, -0.631706, 0.737948,
		0.545515, 0.715287, 0.436782,
		-0.803762, 0.298851, 0.514445,
		25.127754, 30.782993, 44.088894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782969, 30.720167, 44.443237>,  <25.690388, 30.573797, 43.728783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782969, 30.720167, 44.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387688, 30.659067, 44.447620>,  <25.150518, 30.622406, 44.450253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387688, 30.659067, 44.447620>,  <25.782969, 30.720167, 44.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387688, 30.659067, 44.447620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095473, -0.558522, 0.823977,
		-0.119741, 0.815303, 0.566518,
		-0.988204, -0.152751, 0.010962,
		25.091227, 30.613241, 44.450909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757126, 30.750383, 45.235207>,  <25.782969, 30.720167, 44.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757126, 30.750383, 45.235207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029116, 30.741837, 45.528378>,  <26.192308, 30.736708, 45.704281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029116, 30.741837, 45.528378>,  <25.757126, 30.750383, 45.235207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029116, 30.741837, 45.528378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709033, 0.273868, -0.649822,
		-0.186839, 0.961530, 0.201374,
		0.679973, -0.021368, 0.732925,
		26.233109, 30.735426, 45.748257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136034, 31.430874, 45.237015>,  <25.757126, 30.750383, 45.235207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136034, 31.430874, 45.237015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327477, 31.118206, 45.396980>,  <26.442341, 30.930605, 45.492958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327477, 31.118206, 45.396980>,  <26.136034, 31.430874, 45.237015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327477, 31.118206, 45.396980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721613, 0.090699, -0.686330,
		0.500212, 0.617062, 0.607472,
		0.478605, -0.781670, 0.399912,
		26.471058, 30.883705, 45.516953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837009, 31.577051, 45.404732>,  <26.136034, 31.430874, 45.237015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837009, 31.577051, 45.404732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812181, 31.190588, 45.304585>,  <26.797285, 30.958710, 45.244495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812181, 31.190588, 45.304585>,  <26.837009, 31.577051, 45.404732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812181, 31.190588, 45.304585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620844, 0.159040, -0.767632,
		0.781473, -0.203089, 0.589962,
		-0.062070, -0.966158, -0.250372,
		26.793560, 30.900742, 45.229473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530087, 31.257051, 45.277603>,  <26.837009, 31.577051, 45.404732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530087, 31.257051, 45.277603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236147, 31.080542, 45.071583>,  <27.059784, 30.974636, 44.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236147, 31.080542, 45.071583>,  <27.530087, 31.257051, 45.277603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236147, 31.080542, 45.071583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471755, 0.213039, -0.855606,
		0.487283, -0.871717, 0.051623,
		-0.734848, -0.441276, -0.515047,
		27.015692, 30.948158, 44.917068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765684, 30.714417, 44.830097>,  <27.530087, 31.257051, 45.277603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765684, 30.714417, 44.830097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421385, 30.823883, 44.658413>,  <27.214806, 30.889563, 44.555405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421385, 30.823883, 44.658413>,  <27.765684, 30.714417, 44.830097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421385, 30.823883, 44.658413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444485, -0.006854, -0.895760,
		-0.248080, -0.961801, -0.115741,
		-0.860749, 0.273666, -0.429206,
		27.163160, 30.905983, 44.529652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645479, 30.252781, 44.283550>,  <27.765684, 30.714417, 44.830097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645479, 30.252781, 44.283550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441288, 30.588507, 44.208755>,  <27.318773, 30.789942, 44.163879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441288, 30.588507, 44.208755>,  <27.645479, 30.252781, 44.283550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441288, 30.588507, 44.208755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220049, -0.082709, -0.971976,
		-0.831260, -0.537317, -0.142470,
		-0.510476, 0.839315, -0.186989,
		27.288145, 30.840302, 44.152660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555748, 30.197123, 43.514778>,  <27.645479, 30.252781, 44.283550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555748, 30.197123, 43.514778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447046, 30.576031, 43.582695>,  <27.381824, 30.803375, 43.623444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447046, 30.576031, 43.582695>,  <27.555748, 30.197123, 43.514778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447046, 30.576031, 43.582695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153693, 0.216885, -0.964023,
		-0.950015, -0.235881, -0.204529,
		-0.271754, 0.947270, 0.169791,
		27.365520, 30.860212, 43.633633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976463, 30.343119, 43.090801>,  <27.555748, 30.197123, 43.514778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976463, 30.343119, 43.090801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132103, 30.702637, 43.171562>,  <27.225487, 30.918348, 43.220020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132103, 30.702637, 43.171562>,  <26.976463, 30.343119, 43.090801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132103, 30.702637, 43.171562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133275, 0.161945, -0.977759,
		-0.911504, 0.407354, -0.056774,
		0.389100, 0.898797, 0.201903,
		27.248833, 30.972277, 43.232132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729078, 30.880497, 42.586739>,  <26.976463, 30.343119, 43.090801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729078, 30.880497, 42.586739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065723, 31.040529, 42.731857>,  <27.267712, 31.136549, 42.818928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065723, 31.040529, 42.731857>,  <26.729078, 30.880497, 42.586739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065723, 31.040529, 42.731857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302110, 0.208064, -0.930290,
		-0.447677, 0.892549, 0.054241,
		0.841615, 0.400082, 0.362793,
		27.318209, 31.160553, 42.840694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627384, 31.529667, 42.308079>,  <26.729078, 30.880497, 42.586739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627384, 31.529667, 42.308079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006504, 31.444639, 42.403152>,  <27.233976, 31.393623, 42.460197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006504, 31.444639, 42.403152>,  <26.627384, 31.529667, 42.308079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006504, 31.444639, 42.403152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295838, 0.308060, -0.904201,
		0.118984, 0.927316, 0.354864,
		0.947799, -0.212568, 0.237681,
		27.290844, 31.380869, 42.474457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010368, 32.181210, 42.037762>,  <26.627384, 31.529667, 42.308079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010368, 32.181210, 42.037762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311674, 31.920467, 42.072823>,  <27.492456, 31.764023, 42.093857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311674, 31.920467, 42.072823>,  <27.010368, 32.181210, 42.037762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311674, 31.920467, 42.072823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365446, 0.304000, -0.879792,
		0.546849, 0.694746, 0.467209,
		0.753263, -0.651853, 0.087650,
		27.537653, 31.724911, 42.099117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623363, 32.595451, 41.872532>,  <27.010368, 32.181210, 42.037762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623363, 32.595451, 41.872532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687447, 32.203823, 41.822338>,  <27.725897, 31.968845, 41.792221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687447, 32.203823, 41.822338>,  <27.623363, 32.595451, 41.872532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687447, 32.203823, 41.822338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331605, 0.173124, -0.927397,
		0.929716, 0.106964, 0.352402,
		0.160207, -0.979074, -0.125486,
		27.735508, 31.910101, 41.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270145, 32.550770, 41.480343>,  <27.623363, 32.595451, 41.872532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270145, 32.550770, 41.480343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092501, 32.195705, 41.431648>,  <27.985914, 31.982666, 41.402431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092501, 32.195705, 41.431648>,  <28.270145, 32.550770, 41.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092501, 32.195705, 41.431648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381529, -0.064428, -0.922109,
		0.810679, -0.455963, 0.367282,
		-0.444111, -0.887663, -0.121733,
		27.959267, 31.929407, 41.395130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810116, 32.239220, 41.162075>,  <28.270145, 32.550770, 41.480343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810116, 32.239220, 41.162075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467333, 32.043972, 41.095909>,  <28.261663, 31.926825, 41.056210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467333, 32.043972, 41.095909>,  <28.810116, 32.239220, 41.162075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467333, 32.043972, 41.095909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217524, -0.051583, -0.974691,
		0.467231, -0.871252, 0.150382,
		-0.856959, -0.488118, -0.165417,
		28.210245, 31.897537, 41.046284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954136, 31.737009, 40.638988>,  <28.810116, 32.239220, 41.162075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954136, 31.737009, 40.638988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554401, 31.751282, 40.641800>,  <28.314560, 31.759846, 40.643486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554401, 31.751282, 40.641800>,  <28.954136, 31.737009, 40.638988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554401, 31.751282, 40.641800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008793, -0.049429, -0.998739,
		-0.035274, -0.998141, 0.049710,
		-0.999339, 0.035667, 0.007033,
		28.254601, 31.761986, 40.643909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763647, 31.307182, 40.151276>,  <28.954136, 31.737009, 40.638988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763647, 31.307182, 40.151276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456230, 31.560183, 40.189819>,  <28.271780, 31.711983, 40.212944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456230, 31.560183, 40.189819>,  <28.763647, 31.307182, 40.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456230, 31.560183, 40.189819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021609, 0.124860, -0.991939,
		-0.639436, -0.764428, -0.082292,
		-0.768541, 0.632503, 0.096358,
		28.225668, 31.749933, 40.218727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452772, 31.218410, 39.529434>,  <28.763647, 31.307182, 40.151276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452772, 31.218410, 39.529434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251551, 31.546772, 39.637550>,  <28.130817, 31.743788, 39.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251551, 31.546772, 39.637550>,  <28.452772, 31.218410, 39.529434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251551, 31.546772, 39.637550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214223, 0.184542, -0.959194,
		-0.837284, -0.540429, 0.083022,
		-0.503055, 0.820903, 0.270287,
		28.100634, 31.793043, 39.718636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840347, 31.184458, 39.165253>,  <28.452772, 31.218410, 39.529434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840347, 31.184458, 39.165253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890110, 31.571850, 39.251568>,  <27.919968, 31.804285, 39.303356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890110, 31.571850, 39.251568>,  <27.840347, 31.184458, 39.165253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890110, 31.571850, 39.251568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123114, 0.230866, -0.965165,
		-0.984563, 0.093508, 0.147955,
		0.124409, 0.968482, 0.215790,
		27.927433, 31.862394, 39.316303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218180, 31.562590, 38.876308>,  <27.840347, 31.184458, 39.165253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218180, 31.562590, 38.876308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510727, 31.833332, 38.909695>,  <27.686256, 31.995777, 38.929726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510727, 31.833332, 38.909695>,  <27.218180, 31.562590, 38.876308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510727, 31.833332, 38.909695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138328, 0.267067, -0.953698,
		-0.667805, 0.685961, 0.288953,
		0.731370, 0.676855, 0.083461,
		27.730139, 32.036388, 38.934734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035521, 32.104420, 38.409145>,  <27.218180, 31.562590, 38.876308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035521, 32.104420, 38.409145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416677, 32.202278, 38.480858>,  <27.645372, 32.260994, 38.523884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416677, 32.202278, 38.480858>,  <27.035521, 32.104420, 38.409145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416677, 32.202278, 38.480858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112548, 0.263676, -0.958023,
		-0.281651, 0.933071, 0.223720,
		0.952893, 0.244649, 0.179280,
		27.702545, 32.275673, 38.534641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063797, 32.717525, 38.197842>,  <27.035521, 32.104420, 38.409145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063797, 32.717525, 38.197842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441160, 32.584877, 38.198547>,  <27.667578, 32.505287, 38.198971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441160, 32.584877, 38.198547>,  <27.063797, 32.717525, 38.197842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441160, 32.584877, 38.198547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139369, 0.391647, -0.909499,
		0.300922, 0.858276, 0.415701,
		0.943410, -0.331624, 0.001762,
		27.724184, 32.485390, 38.199078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539043, 33.256687, 38.059402>,  <27.063797, 32.717525, 38.197842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539043, 33.256687, 38.059402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751829, 32.936081, 37.950161>,  <27.879501, 32.743717, 37.884617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751829, 32.936081, 37.950161>,  <27.539043, 33.256687, 38.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751829, 32.936081, 37.950161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313785, 0.486162, -0.815589,
		0.786481, 0.348168, 0.510124,
		0.531965, -0.801515, -0.273107,
		27.911419, 32.695625, 37.868229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927420, 33.502865, 37.616787>,  <27.539043, 33.256687, 38.059402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927420, 33.502865, 37.616787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038179, 33.129761, 37.524445>,  <28.104635, 32.905899, 37.469040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038179, 33.129761, 37.524445>,  <27.927420, 33.502865, 37.616787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038179, 33.129761, 37.524445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228862, 0.297351, -0.926932,
		0.933247, 0.203832, 0.295809,
		0.276898, -0.932756, -0.230853,
		28.121248, 32.849934, 37.455189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567699, 33.582947, 37.396729>,  <27.927420, 33.502865, 37.616787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567699, 33.582947, 37.396729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440847, 33.237537, 37.239883>,  <28.364737, 33.030293, 37.145775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440847, 33.237537, 37.239883>,  <28.567699, 33.582947, 37.396729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440847, 33.237537, 37.239883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415217, 0.245301, -0.876026,
		0.852656, -0.440628, 0.280757,
		-0.317132, -0.863524, -0.392113,
		28.345707, 32.978481, 37.122250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077665, 33.463585, 37.090019>,  <28.567699, 33.582947, 37.396729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077665, 33.463585, 37.090019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782461, 33.258625, 36.914391>,  <28.605339, 33.135651, 36.809013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782461, 33.258625, 36.914391>,  <29.077665, 33.463585, 37.090019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782461, 33.258625, 36.914391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342251, 0.276545, -0.897991,
		0.581555, -0.813000, -0.028724,
		-0.738010, -0.512400, -0.439075,
		28.561058, 33.104904, 36.782669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396097, 33.113861, 36.503948>,  <29.077665, 33.463585, 37.090019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396097, 33.113861, 36.503948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007523, 33.175804, 36.432026>,  <28.774378, 33.212971, 36.388874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007523, 33.175804, 36.432026>,  <29.396097, 33.113861, 36.503948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007523, 33.175804, 36.432026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210028, 0.208427, -0.955221,
		-0.110447, -0.965701, -0.234998,
		-0.971437, 0.154858, -0.179804,
		28.716091, 33.222260, 36.378086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088211, 32.783844, 36.772179>,  <29.396097, 33.113861, 36.503948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088211, 32.783844, 36.772179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055353, 33.061565, 36.486187>,  <30.035639, 33.228199, 36.314594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055353, 33.061565, 36.486187>,  <30.088211, 32.783844, 36.772179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055353, 33.061565, 36.486187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667187, 0.571236, 0.478069,
		0.740347, -0.437752, -0.510156,
		-0.082144, 0.694307, -0.714976,
		30.030710, 33.269859, 36.271694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773767, 33.061611, 36.511574>,  <30.088211, 32.783844, 36.772179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773767, 33.061611, 36.511574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468267, 33.319447, 36.497753>,  <30.284967, 33.474148, 36.489460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468267, 33.319447, 36.497753>,  <30.773767, 33.061611, 36.511574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468267, 33.319447, 36.497753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557411, 0.685560, 0.468295,
		0.325540, 0.338405, -0.882896,
		-0.763752, 0.644585, -0.034547,
		30.239141, 33.512821, 36.487389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049271, 33.699200, 36.322414>,  <30.773767, 33.061611, 36.511574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049271, 33.699200, 36.322414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723486, 33.746666, 36.549595>,  <30.528015, 33.775146, 36.685905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723486, 33.746666, 36.549595>,  <31.049271, 33.699200, 36.322414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723486, 33.746666, 36.549595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472306, 0.704161, 0.530174,
		-0.337016, 0.700054, -0.629559,
		-0.814461, 0.118667, 0.567953,
		30.479147, 33.782265, 36.719982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940290, 34.386204, 36.407169>,  <31.049271, 33.699200, 36.322414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940290, 34.386204, 36.407169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783567, 34.184681, 36.715107>,  <30.689533, 34.063766, 36.899872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783567, 34.184681, 36.715107>,  <30.940290, 34.386204, 36.407169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783567, 34.184681, 36.715107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608491, 0.485716, 0.627550,
		-0.690090, 0.714326, 0.116252,
		-0.391810, -0.503805, 0.769848,
		30.666025, 34.033539, 36.946060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553547, 34.860451, 36.918629>,  <30.940290, 34.386204, 36.407169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553547, 34.860451, 36.918629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685059, 34.538895, 37.116886>,  <30.763966, 34.345963, 37.235840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685059, 34.538895, 37.116886>,  <30.553547, 34.860451, 36.918629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685059, 34.538895, 37.116886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528576, 0.591559, 0.608823,
		-0.782630, 0.061817, 0.619410,
		0.328781, -0.803888, 0.495647,
		30.783693, 34.297729, 37.265579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577440, 34.994221, 37.658051>,  <30.553547, 34.860451, 36.918629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577440, 34.994221, 37.658051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851768, 34.719376, 37.562115>,  <31.016365, 34.554470, 37.504555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851768, 34.719376, 37.562115>,  <30.577440, 34.994221, 37.658051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851768, 34.719376, 37.562115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596498, 0.341914, 0.726144,
		-0.416938, -0.641070, 0.644354,
		0.685823, -0.687113, -0.239840,
		31.057516, 34.513241, 37.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837952, 34.846237, 38.306808>,  <30.577440, 34.994221, 37.658051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837952, 34.846237, 38.306808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098803, 34.668251, 38.061295>,  <31.255312, 34.561459, 37.913986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098803, 34.668251, 38.061295>,  <30.837952, 34.846237, 38.306808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098803, 34.668251, 38.061295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705747, 0.060649, 0.705863,
		-0.276862, -0.893489, 0.353587,
		0.652125, -0.444970, -0.613787,
		31.294441, 34.534760, 37.877159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170395, 34.379982, 38.714725>,  <30.837952, 34.846237, 38.306808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170395, 34.379982, 38.714725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409687, 34.488598, 38.413158>,  <31.553263, 34.553768, 38.232220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409687, 34.488598, 38.413158>,  <31.170395, 34.379982, 38.714725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409687, 34.488598, 38.413158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768227, 0.073253, 0.635972,
		0.227918, -0.959636, -0.164781,
		0.598231, 0.271538, -0.753914,
		31.589157, 34.570061, 38.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859034, 33.919254, 38.758270>,  <31.170395, 34.379982, 38.714725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859034, 33.919254, 38.758270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954016, 34.242962, 38.543346>,  <32.011005, 34.437187, 38.414391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954016, 34.242962, 38.543346>,  <31.859034, 33.919254, 38.758270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954016, 34.242962, 38.543346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888673, 0.042390, 0.456579,
		0.392269, -0.585913, -0.709106,
		0.237457, 0.809265, -0.537313,
		32.025253, 34.485741, 38.382153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568802, 33.847660, 38.450836>,  <31.859034, 33.919254, 38.758270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568802, 33.847660, 38.450836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485298, 34.236935, 38.489468>,  <32.435196, 34.470501, 38.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485298, 34.236935, 38.489468>,  <32.568802, 33.847660, 38.450836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485298, 34.236935, 38.489468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913302, 0.158688, 0.375095,
		0.349712, 0.166509, -0.921941,
		-0.208757, 0.973187, 0.096578,
		32.422672, 34.528893, 38.518440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224167, 34.086163, 38.502045>,  <32.568802, 33.847660, 38.450836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224167, 34.086163, 38.502045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998901, 34.404449, 38.591202>,  <32.863743, 34.595421, 38.644695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998901, 34.404449, 38.591202>,  <33.224167, 34.086163, 38.502045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998901, 34.404449, 38.591202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726255, 0.347931, 0.592872,
		0.394210, 0.495757, -0.773837,
		-0.563163, 0.795719, 0.222888,
		32.829952, 34.643166, 38.658070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547489, 34.787560, 38.200207>,  <33.224167, 34.086163, 38.502045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547489, 34.787560, 38.200207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344330, 34.776421, 38.544594>,  <33.222435, 34.769737, 38.751225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344330, 34.776421, 38.544594>,  <33.547489, 34.787560, 38.200207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344330, 34.776421, 38.544594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822731, 0.280479, 0.494415,
		-0.255252, 0.959456, -0.119543,
		-0.507899, -0.027848, 0.860967,
		33.191959, 34.768066, 38.802883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976562, 35.059399, 38.593048>,  <33.547489, 34.787560, 38.200207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976562, 35.059399, 38.593048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692093, 34.990196, 38.865608>,  <33.521412, 34.948677, 39.029144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692093, 34.990196, 38.865608>,  <33.976562, 35.059399, 38.593048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692093, 34.990196, 38.865608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657467, 0.179540, 0.731780,
		-0.248938, 0.968419, -0.013941,
		-0.711173, -0.173002, 0.681398,
		33.478741, 34.938297, 39.070026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937252, 35.752960, 38.977924>,  <33.976562, 35.059399, 38.593048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937252, 35.752960, 38.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777519, 35.459373, 39.197678>,  <33.681679, 35.283218, 39.329529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777519, 35.459373, 39.197678>,  <33.937252, 35.752960, 38.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777519, 35.459373, 39.197678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629360, 0.216274, 0.746412,
		-0.666662, 0.643826, 0.375567,
		-0.399334, -0.733971, 0.549380,
		33.657719, 35.239182, 39.362492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913094, 35.994888, 39.688457>,  <33.937252, 35.752960, 38.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913094, 35.994888, 39.688457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871380, 35.602558, 39.754311>,  <33.846352, 35.367161, 39.793823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871380, 35.602558, 39.754311>,  <33.913094, 35.994888, 39.688457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871380, 35.602558, 39.754311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543923, 0.082336, 0.835086,
		-0.832630, 0.176631, 0.524908,
		-0.104284, -0.980827, 0.164629,
		33.840096, 35.308311, 39.803699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583519, 35.926071, 40.366741>,  <33.913094, 35.994888, 39.688457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583519, 35.926071, 40.366741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772095, 35.583714, 40.281708>,  <33.885242, 35.378300, 40.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772095, 35.583714, 40.281708>,  <33.583519, 35.926071, 40.366741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772095, 35.583714, 40.281708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550624, 0.097377, 0.829054,
		-0.688880, -0.507904, 0.517183,
		0.471441, -0.855892, -0.212583,
		33.913528, 35.326946, 40.217934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764614, 35.669243, 41.055183>,  <33.583519, 35.926071, 40.366741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764614, 35.669243, 41.055183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018761, 35.492500, 40.801865>,  <34.171249, 35.386456, 40.649872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018761, 35.492500, 40.801865>,  <33.764614, 35.669243, 41.055183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018761, 35.492500, 40.801865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671857, -0.087980, 0.735437,
		-0.380678, -0.892759, 0.240967,
		0.635368, -0.441860, -0.633298,
		34.209370, 35.359943, 40.611874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966740, 34.980434, 41.338966>,  <33.764614, 35.669243, 41.055183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966740, 34.980434, 41.338966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253403, 35.117756, 41.096134>,  <34.425400, 35.200150, 40.950436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253403, 35.117756, 41.096134>,  <33.966740, 34.980434, 41.338966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253403, 35.117756, 41.096134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653169, -0.025232, 0.756792,
		0.244493, -0.938885, -0.242319,
		0.716655, 0.343305, -0.607081,
		34.468399, 35.220749, 40.914009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486935, 34.690887, 41.660881>,  <33.966740, 34.980434, 41.338966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486935, 34.690887, 41.660881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677769, 34.930744, 41.403877>,  <34.792271, 35.074657, 41.249676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677769, 34.930744, 41.403877>,  <34.486935, 34.690887, 41.660881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677769, 34.930744, 41.403877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770127, 0.066989, 0.634363,
		0.423432, -0.797459, -0.429842,
		0.477083, 0.599643, -0.642511,
		34.820892, 35.110638, 41.211124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006203, 34.325645, 41.257511>,  <34.486935, 34.690887, 41.660881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006203, 34.325645, 41.257511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125660, 34.706341, 41.285809>,  <35.197334, 34.934757, 41.302788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125660, 34.706341, 41.285809>,  <35.006203, 34.325645, 41.257511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125660, 34.706341, 41.285809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682377, -0.264771, 0.681364,
		0.667212, -0.155211, -0.728517,
		0.298645, 0.951738, 0.070746,
		35.215252, 34.991863, 41.307034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673702, 34.280159, 41.469650>,  <35.006203, 34.325645, 41.257511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673702, 34.280159, 41.469650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584641, 34.654835, 41.577747>,  <35.531204, 34.879639, 41.642605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584641, 34.654835, 41.577747>,  <35.673702, 34.280159, 41.469650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584641, 34.654835, 41.577747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728904, -0.024131, 0.684191,
		0.647397, 0.349326, -0.677384,
		-0.222659, 0.936691, 0.270247,
		35.517841, 34.935841, 41.658821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312519, 34.521385, 41.523857>,  <35.673702, 34.280159, 41.469650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312519, 34.521385, 41.523857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066452, 34.755863, 41.734737>,  <35.918812, 34.896549, 41.861267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066452, 34.755863, 41.734737>,  <36.312519, 34.521385, 41.523857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066452, 34.755863, 41.734737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579377, -0.117379, 0.806563,
		0.534683, 0.801625, -0.267418,
		-0.615172, 0.586191, 0.527204,
		35.881901, 34.931721, 41.892899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767147, 34.830944, 41.981518>,  <36.312519, 34.521385, 41.523857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767147, 34.830944, 41.981518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398174, 34.889545, 42.124435>,  <36.176792, 34.924706, 42.210186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398174, 34.889545, 42.124435>,  <36.767147, 34.830944, 41.981518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398174, 34.889545, 42.124435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344622, -0.105150, 0.932834,
		0.174231, 0.983606, 0.046506,
		-0.922431, 0.146502, 0.357293,
		36.121445, 34.933495, 42.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868515, 35.163719, 42.560829>,  <36.767147, 34.830944, 41.981518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868515, 35.163719, 42.560829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484550, 35.075951, 42.630596>,  <36.254169, 35.023289, 42.672455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484550, 35.075951, 42.630596>,  <36.868515, 35.163719, 42.560829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484550, 35.075951, 42.630596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209046, -0.145906, 0.966960,
		-0.186719, 0.964659, 0.185925,
		-0.959915, -0.219417, 0.174415,
		36.196575, 35.010124, 42.682922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800419, 35.444534, 43.136177>,  <36.868515, 35.163719, 42.560829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800419, 35.444534, 43.136177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504753, 35.176643, 43.107590>,  <36.327354, 35.015911, 43.090435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504753, 35.176643, 43.107590>,  <36.800419, 35.444534, 43.136177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504753, 35.176643, 43.107590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133595, -0.249792, 0.959039,
		-0.660146, 0.699337, 0.274108,
		-0.739162, -0.669725, -0.071471,
		36.283005, 34.975727, 43.086147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340511, 35.517666, 43.724640>,  <36.800419, 35.444534, 43.136177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340511, 35.517666, 43.724640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266125, 35.145966, 43.596943>,  <36.221493, 34.922947, 43.520325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266125, 35.145966, 43.596943>,  <36.340511, 35.517666, 43.724640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266125, 35.145966, 43.596943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125241, -0.344681, 0.930328,
		-0.974542, 0.133026, 0.180478,
		-0.185965, -0.929247, -0.319245,
		36.210335, 34.867191, 43.501171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792267, 35.280434, 44.223209>,  <36.340511, 35.517666, 43.724640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792267, 35.280434, 44.223209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976776, 34.967491, 44.055805>,  <36.087482, 34.779728, 43.955364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976776, 34.967491, 44.055805>,  <35.792267, 35.280434, 44.223209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976776, 34.967491, 44.055805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141853, -0.400593, 0.905209,
		-0.875845, -0.476915, -0.073804,
		0.461273, -0.782354, -0.418509,
		36.115158, 34.732784, 43.930252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604343, 34.734100, 44.543446>,  <35.792267, 35.280434, 44.223209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604343, 34.734100, 44.543446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921257, 34.552544, 44.380341>,  <36.111404, 34.443611, 44.282478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921257, 34.552544, 44.380341>,  <35.604343, 34.734100, 44.543446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921257, 34.552544, 44.380341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192845, -0.447752, 0.873115,
		-0.578875, -0.770389, -0.267216,
		0.792284, -0.453893, -0.407758,
		36.158943, 34.416374, 44.258015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493896, 34.003159, 44.748718>,  <35.604343, 34.734100, 44.543446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493896, 34.003159, 44.748718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878727, 34.044220, 44.647629>,  <36.109627, 34.068855, 44.586975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878727, 34.044220, 44.647629>,  <35.493896, 34.003159, 44.748718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878727, 34.044220, 44.647629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268759, -0.515146, 0.813876,
		-0.046645, -0.850933, -0.523199,
		0.962077, 0.102651, -0.252725,
		36.167351, 34.075016, 44.571812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812984, 33.335693, 44.776299>,  <35.493896, 34.003159, 44.748718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812984, 33.335693, 44.776299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120090, 33.591072, 44.797878>,  <36.304356, 33.744301, 44.810825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120090, 33.591072, 44.797878>,  <35.812984, 33.335693, 44.776299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120090, 33.591072, 44.797878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321348, -0.456543, 0.829641,
		0.554317, -0.619635, -0.555685,
		0.767769, 0.638452, 0.053951,
		36.350422, 33.782608, 44.814064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354519, 32.840466, 44.921207>,  <35.812984, 33.335693, 44.776299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354519, 32.840466, 44.921207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487652, 33.196423, 45.045990>,  <36.567532, 33.409996, 45.120857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487652, 33.196423, 45.045990>,  <36.354519, 32.840466, 44.921207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487652, 33.196423, 45.045990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235831, -0.398854, 0.886171,
		0.913020, -0.221380, -0.342617,
		0.332835, 0.889891, 0.311953,
		36.587502, 33.463390, 45.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036987, 32.713539, 45.302246>,  <36.354519, 32.840466, 44.921207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036987, 32.713539, 45.302246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913395, 33.080299, 45.403297>,  <36.839241, 33.300358, 45.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913395, 33.080299, 45.403297>,  <37.036987, 32.713539, 45.302246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913395, 33.080299, 45.403297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327916, -0.146631, 0.933258,
		0.892750, 0.371199, -0.255361,
		-0.308980, 0.916903, 0.252627,
		36.820702, 33.355370, 45.479084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583416, 33.064625, 45.655087>,  <37.036987, 32.713539, 45.302246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583416, 33.064625, 45.655087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 33.213425, 45.769848>,  <37.018436, 33.302704, 45.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 33.213425, 45.769848>,  <37.583416, 33.064625, 45.655087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230305, 33.213425, 45.769848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277332, -0.080279, 0.957414,
		0.379187, 0.924756, -0.032298,
		-0.882782, 0.371996, 0.286905,
		36.965469, 33.325024, 45.855919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677471, 33.479424, 46.227283>,  <37.583416, 33.064625, 45.655087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677471, 33.479424, 46.227283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287487, 33.419361, 46.292889>,  <37.053497, 33.383324, 46.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287487, 33.419361, 46.292889>,  <37.677471, 33.479424, 46.227283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287487, 33.419361, 46.292889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161865, 0.026515, 0.986457,
		-0.152475, 0.988306, -0.001545,
		-0.974962, -0.150160, 0.164015,
		36.994999, 33.374313, 46.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387653, 34.060345, 46.688591>,  <37.677471, 33.479424, 46.227283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387653, 34.060345, 46.688591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156773, 33.734840, 46.715805>,  <37.018242, 33.539539, 46.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156773, 33.734840, 46.715805>,  <37.387653, 34.060345, 46.688591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156773, 33.734840, 46.715805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166659, -0.035833, 0.985363,
		-0.799411, 0.580096, 0.156303,
		-0.577206, -0.813759, 0.068033,
		36.983612, 33.490711, 46.736214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239086, 34.058086, 47.393284>,  <37.387653, 34.060345, 46.688591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239086, 34.058086, 47.393284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037472, 33.725933, 47.298286>,  <36.916504, 33.526642, 47.241287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037472, 33.725933, 47.298286>,  <37.239086, 34.058086, 47.393284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037472, 33.725933, 47.298286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171787, -0.173098, 0.969808,
		-0.846424, 0.529619, -0.055402,
		-0.504039, -0.830386, -0.237496,
		36.886261, 33.476818, 47.227039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647152, 34.167793, 47.763336>,  <37.239086, 34.058086, 47.393284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647152, 34.167793, 47.763336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701313, 33.781540, 47.674599>,  <36.733810, 33.549786, 47.621357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701313, 33.781540, 47.674599>,  <36.647152, 34.167793, 47.763336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701313, 33.781540, 47.674599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125269, -0.238790, 0.962958,
		-0.982840, -0.102597, -0.153297,
		0.135402, -0.965636, -0.221840,
		36.741932, 33.491848, 47.608047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196064, 33.805260, 48.098755>,  <36.647152, 34.167793, 47.763336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196064, 33.805260, 48.098755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461399, 33.512920, 48.034462>,  <36.620602, 33.337517, 47.995884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461399, 33.512920, 48.034462>,  <36.196064, 33.805260, 48.098755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461399, 33.512920, 48.034462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101580, -0.300748, 0.948279,
		-0.741392, -0.612704, -0.273738,
		0.663340, -0.730852, -0.160734,
		36.660400, 33.293663, 47.986240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888329, 33.283913, 48.321838>,  <36.196064, 33.805260, 48.098755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888329, 33.283913, 48.321838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278843, 33.198921, 48.338432>,  <36.513149, 33.147926, 48.348389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278843, 33.198921, 48.338432>,  <35.888329, 33.283913, 48.321838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278843, 33.198921, 48.338432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089561, -0.221937, 0.970939,
		-0.197092, -0.951629, -0.235704,
		0.976285, -0.212474, 0.041487,
		36.571728, 33.135178, 48.350876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923683, 32.602642, 48.529781>,  <35.888329, 33.283913, 48.321838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923683, 32.602642, 48.529781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271240, 32.775429, 48.626472>,  <36.479774, 32.879101, 48.684486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271240, 32.775429, 48.626472>,  <35.923683, 32.602642, 48.529781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271240, 32.775429, 48.626472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154619, -0.227054, 0.961530,
		0.470231, -0.872842, -0.130495,
		0.868893, 0.431964, 0.241726,
		36.531910, 32.905018, 48.698990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179115, 32.117348, 48.879360>,  <35.923683, 32.602642, 48.529781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179115, 32.117348, 48.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401993, 32.428112, 48.996620>,  <36.535717, 32.614571, 49.066978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401993, 32.428112, 48.996620>,  <36.179115, 32.117348, 48.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401993, 32.428112, 48.996620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196410, -0.219712, 0.955589,
		0.806821, -0.590024, 0.030172,
		0.557192, 0.776916, 0.293155,
		36.569149, 32.661186, 49.084568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668907, 31.808203, 49.352852>,  <36.179115, 32.117348, 48.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668907, 31.808203, 49.352852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637291, 32.203678, 49.403839>,  <36.618320, 32.440964, 49.434433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637291, 32.203678, 49.403839>,  <36.668907, 31.808203, 49.352852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637291, 32.203678, 49.403839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220356, -0.142037, 0.965023,
		0.972212, 0.048185, 0.229090,
		-0.079039, 0.988688, 0.127472,
		36.613579, 32.500286, 49.442081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048038, 31.971449, 49.913445>,  <36.668907, 31.808203, 49.352852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048038, 31.971449, 49.913445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813450, 32.295109, 49.898888>,  <36.672695, 32.489304, 49.890152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813450, 32.295109, 49.898888>,  <37.048038, 31.971449, 49.913445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813450, 32.295109, 49.898888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187471, -0.091892, 0.977962,
		0.787974, 0.580372, 0.205584,
		-0.586474, 0.809150, -0.036395,
		36.637508, 32.537853, 49.887970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167648, 32.351322, 50.584862>,  <37.048038, 31.971449, 49.913445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167648, 32.351322, 50.584862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836979, 32.543880, 50.468330>,  <36.638577, 32.659416, 50.398411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836979, 32.543880, 50.468330>,  <37.167648, 32.351322, 50.584862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836979, 32.543880, 50.468330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315425, 0.032296, 0.948401,
		0.465962, 0.875910, 0.125145,
		-0.826672, 0.481392, -0.291332,
		36.588978, 32.688297, 50.380932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120152, 32.980209, 50.943867>,  <37.167648, 32.351322, 50.584862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120152, 32.980209, 50.943867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740215, 32.900383, 50.847557>,  <36.512253, 32.852486, 50.789772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740215, 32.900383, 50.847557>,  <37.120152, 32.980209, 50.943867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740215, 32.900383, 50.847557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252649, 0.035927, 0.966891,
		-0.184312, 0.979225, -0.084546,
		-0.949841, -0.199570, -0.240779,
		36.455261, 32.840511, 50.775322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638184, 33.532906, 51.343388>,  <37.120152, 32.980209, 50.943867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638184, 33.532906, 51.343388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431335, 33.201092, 51.259041>,  <36.307228, 33.002003, 51.208431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431335, 33.201092, 51.259041>,  <36.638184, 33.532906, 51.343388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431335, 33.201092, 51.259041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198311, -0.123541, 0.972322,
		-0.832624, 0.544622, -0.100620,
		-0.517118, -0.829533, -0.210867,
		36.276199, 32.952232, 51.195782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157482, 33.615009, 51.837627>,  <36.638184, 33.532906, 51.343388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157482, 33.615009, 51.837627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135914, 33.233650, 51.718884>,  <36.122974, 33.004833, 51.647636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135914, 33.233650, 51.718884>,  <36.157482, 33.615009, 51.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135914, 33.233650, 51.718884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199870, -0.280972, 0.938673,
		-0.978338, 0.109948, -0.175405,
		-0.053921, -0.953397, -0.296861,
		36.119736, 32.947632, 51.629826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548882, 33.293282, 52.192951>,  <36.157482, 33.615009, 51.837627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548882, 33.293282, 52.192951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799694, 33.001022, 52.084881>,  <35.950180, 32.825668, 52.020039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799694, 33.001022, 52.084881>,  <35.548882, 33.293282, 52.192951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799694, 33.001022, 52.084881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242283, -0.512535, 0.823776,
		-0.740361, -0.451072, -0.498397,
		0.627028, -0.730645, -0.270174,
		35.987804, 32.781830, 52.003830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319122, 32.616558, 52.224957>,  <35.548882, 33.293282, 52.192951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319122, 32.616558, 52.224957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704563, 32.536831, 52.296215>,  <35.935829, 32.488995, 52.338970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704563, 32.536831, 52.296215>,  <35.319122, 32.616558, 52.224957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704563, 32.536831, 52.296215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267203, -0.698025, 0.664352,
		-0.008064, -0.687776, -0.725878,
		0.963606, -0.199314, 0.178147,
		35.993645, 32.477036, 52.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559540, 31.969931, 51.955284>,  <35.319122, 32.616558, 52.224957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559540, 31.969931, 51.955284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761600, 32.090698, 52.278683>,  <35.882835, 32.163158, 52.472721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761600, 32.090698, 52.278683>,  <35.559540, 31.969931, 51.955284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761600, 32.090698, 52.278683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371636, -0.769409, 0.519516,
		0.778918, -0.562900, -0.276462,
		0.505147, 0.301917, 0.808500,
		35.913143, 32.181274, 52.521233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763592, 31.352785, 52.378056>,  <35.559540, 31.969931, 51.955284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763592, 31.352785, 52.378056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821056, 31.638792, 52.651730>,  <35.855534, 31.810396, 52.815933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821056, 31.638792, 52.651730>,  <35.763592, 31.352785, 52.378056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821056, 31.638792, 52.651730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156375, -0.666273, 0.729128,
		0.977195, -0.211735, 0.016096,
		0.143657, 0.715017, 0.684188,
		35.864155, 31.853296, 52.856987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306664, 31.388597, 52.844311>,  <35.763592, 31.352785, 52.378056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306664, 31.388597, 52.844311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983074, 31.435633, 53.074696>,  <35.788921, 31.463854, 53.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983074, 31.435633, 53.074696>,  <36.306664, 31.388597, 52.844311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983074, 31.435633, 53.074696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004746, -0.981064, 0.193626,
		0.587824, 0.153905, 0.794214,
		-0.808975, 0.117587, 0.575962,
		35.740383, 31.470909, 53.247482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361755, 31.212317, 53.626793>,  <36.306664, 31.388597, 52.844311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361755, 31.212317, 53.626793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020077, 31.119629, 53.440609>,  <35.815071, 31.064016, 53.328899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020077, 31.119629, 53.440609>,  <36.361755, 31.212317, 53.626793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020077, 31.119629, 53.440609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129244, -0.961731, 0.241597,
		-0.503629, 0.146214, 0.851457,
		-0.854198, -0.231721, -0.465458,
		35.763817, 31.050112, 53.300972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397552, 30.407642, 53.779949>,  <36.361755, 31.212317, 53.626793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397552, 30.407642, 53.779949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716587, 30.178497, 53.855511>,  <36.908009, 30.041010, 53.900848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716587, 30.178497, 53.855511>,  <36.397552, 30.407642, 53.779949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716587, 30.178497, 53.855511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110192, -0.446266, -0.888090,
		0.593053, 0.687514, -0.419061,
		0.797588, -0.572862, 0.188901,
		36.955864, 30.006639, 53.912182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941448, 30.666975, 53.416840>,  <36.397552, 30.407642, 53.779949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941448, 30.666975, 53.416840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003342, 30.276974, 53.480621>,  <37.040478, 30.042973, 53.518890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003342, 30.276974, 53.480621>,  <36.941448, 30.666975, 53.416840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003342, 30.276974, 53.480621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332262, -0.203354, -0.921004,
		0.930409, 0.089527, -0.355422,
		0.154731, -0.975004, 0.159456,
		37.049763, 29.984472, 53.528458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387051, 30.414301, 52.892616>,  <36.941448, 30.666975, 53.416840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387051, 30.414301, 52.892616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175629, 30.107285, 53.037670>,  <37.048775, 29.923075, 53.124702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175629, 30.107285, 53.037670>,  <37.387051, 30.414301, 52.892616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175629, 30.107285, 53.037670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255847, -0.263290, -0.930173,
		0.809425, -0.584431, -0.057209,
		-0.528559, -0.767541, 0.362638,
		37.017059, 29.877022, 53.146461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424294, 29.926991, 52.318207>,  <37.387051, 30.414301, 52.892616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424294, 29.926991, 52.318207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088112, 29.870049, 52.527351>,  <36.886402, 29.835884, 52.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088112, 29.870049, 52.527351>,  <37.424294, 29.926991, 52.318207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088112, 29.870049, 52.527351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453455, -0.343521, -0.822418,
		0.296686, -0.928293, 0.224162,
		-0.840450, -0.142353, 0.522857,
		36.835976, 29.827343, 52.684208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154167, 29.223606, 52.204918>,  <37.424294, 29.926991, 52.318207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154167, 29.223606, 52.204918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895611, 29.521318, 52.272121>,  <36.740479, 29.699945, 52.312443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895611, 29.521318, 52.272121>,  <37.154167, 29.223606, 52.204918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895611, 29.521318, 52.272121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501976, -0.248984, -0.828268,
		-0.574634, -0.619718, 0.534552,
		-0.646387, 0.744282, 0.168009,
		36.701694, 29.744602, 52.322525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492775, 28.930027, 52.070534>,  <37.154167, 29.223606, 52.204918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492775, 28.930027, 52.070534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489487, 29.325314, 52.009399>,  <36.487514, 29.562487, 51.972717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489487, 29.325314, 52.009399>,  <36.492775, 28.930027, 52.070534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489487, 29.325314, 52.009399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538207, -0.133188, -0.832222,
		-0.842772, 0.075414, 0.532961,
		-0.008223, 0.988218, -0.152836,
		36.487019, 29.621778, 51.963547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928600, 28.943071, 51.863258>,  <36.492775, 28.930027, 52.070534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928600, 28.943071, 51.863258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124493, 29.268518, 51.737919>,  <36.242027, 29.463787, 51.662716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124493, 29.268518, 51.737919>,  <35.928600, 28.943071, 51.863258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124493, 29.268518, 51.737919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302456, -0.178542, -0.936292,
		-0.817732, 0.553304, 0.158647,
		0.489729, 0.813620, -0.313350,
		36.271412, 29.512604, 51.643913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591507, 29.315157, 51.354332>,  <35.928600, 28.943071, 51.863258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591507, 29.315157, 51.354332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951000, 29.469648, 51.271290>,  <36.166698, 29.562344, 51.221466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951000, 29.469648, 51.271290>,  <35.591507, 29.315157, 51.354332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951000, 29.469648, 51.271290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186093, -0.092730, -0.978146,
		-0.397041, 0.917729, -0.011465,
		0.898737, 0.386231, -0.207601,
		36.220623, 29.585518, 51.209011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398846, 29.640671, 50.722458>,  <35.591507, 29.315157, 51.354332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398846, 29.640671, 50.722458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798523, 29.641920, 50.738468>,  <36.038330, 29.642670, 50.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798523, 29.641920, 50.738468>,  <35.398846, 29.640671, 50.722458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798523, 29.641920, 50.738468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040096, -0.127044, -0.991086,
		0.001991, 0.991892, -0.127067,
		0.999194, 0.003122, 0.040024,
		36.098282, 29.642857, 50.750477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555992, 30.039539, 50.263000>,  <35.398846, 29.640671, 50.722458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555992, 30.039539, 50.263000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931618, 29.902288, 50.271275>,  <36.156994, 29.819939, 50.276237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931618, 29.902288, 50.271275>,  <35.555992, 30.039539, 50.263000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931618, 29.902288, 50.271275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007737, -0.039048, -0.999207,
		0.343663, 0.938477, -0.034013,
		0.939061, -0.343127, 0.020681,
		36.213337, 29.799351, 50.277477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894833, 30.504189, 49.846088>,  <35.555992, 30.039539, 50.263000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894833, 30.504189, 49.846088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059784, 30.141140, 49.877510>,  <36.158752, 29.923311, 49.896362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059784, 30.141140, 49.877510>,  <35.894833, 30.504189, 49.846088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059784, 30.141140, 49.877510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003933, -0.087996, -0.996113,
		0.911006, 0.410463, -0.039857,
		0.412374, -0.907622, 0.078551,
		36.183495, 29.868853, 49.901073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407253, 30.522539, 49.284081>,  <35.894833, 30.504189, 49.846088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407253, 30.522539, 49.284081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350586, 30.139889, 49.385906>,  <36.316586, 29.910299, 49.447002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350586, 30.139889, 49.385906>,  <36.407253, 30.522539, 49.284081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350586, 30.139889, 49.385906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015426, -0.259258, -0.965685,
		0.989795, -0.132876, 0.051484,
		-0.141664, -0.956624, 0.254563,
		36.308086, 29.852901, 49.462276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810341, 30.194202, 48.815014>,  <36.407253, 30.522539, 49.284081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810341, 30.194202, 48.815014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594776, 29.877014, 48.928696>,  <36.465439, 29.686701, 48.996906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594776, 29.877014, 48.928696>,  <36.810341, 30.194202, 48.815014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594776, 29.877014, 48.928696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069706, -0.294252, -0.953183,
		0.839473, -0.533493, 0.103301,
		-0.538912, -0.792970, 0.284204,
		36.433102, 29.639124, 49.013958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156712, 29.537258, 48.557423>,  <36.810341, 30.194202, 48.815014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156712, 29.537258, 48.557423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765354, 29.463522, 48.594868>,  <36.530540, 29.419281, 48.617336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765354, 29.463522, 48.594868>,  <37.156712, 29.537258, 48.557423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765354, 29.463522, 48.594868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037039, -0.289194, -0.956554,
		0.203403, -0.939354, 0.276118,
		-0.978394, -0.184339, 0.093615,
		36.471836, 29.408220, 48.622952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028301, 28.968260, 48.159256>,  <37.156712, 29.537258, 48.557423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028301, 28.968260, 48.159256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655231, 29.106731, 48.199799>,  <36.431389, 29.189814, 48.224125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655231, 29.106731, 48.199799>,  <37.028301, 28.968260, 48.159256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655231, 29.106731, 48.199799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171330, -0.177897, -0.969020,
		-0.317422, -0.921149, 0.225231,
		-0.932679, 0.346177, 0.101352,
		36.375427, 29.210585, 48.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656540, 28.562780, 47.690742>,  <37.028301, 28.968260, 48.159256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656540, 28.562780, 47.690742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383778, 28.848448, 47.753948>,  <36.220119, 29.019848, 47.791870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383778, 28.848448, 47.753948>,  <36.656540, 28.562780, 47.690742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383778, 28.848448, 47.753948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378990, -0.160209, -0.911427,
		-0.625597, -0.681393, 0.379910,
		-0.681905, 0.714168, 0.158015,
		36.179207, 29.062698, 47.801353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936161, 28.218445, 47.557178>,  <36.656540, 28.562780, 47.690742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936161, 28.218445, 47.557178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915920, 28.616268, 47.520760>,  <35.903774, 28.854963, 47.498909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915920, 28.616268, 47.520760>,  <35.936161, 28.218445, 47.557178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915920, 28.616268, 47.520760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471207, -0.104153, -0.875852,
		-0.880570, -0.001420, 0.473914,
		-0.050603, 0.994560, -0.091045,
		35.900738, 28.914637, 47.493446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157253, 28.399561, 47.400417>,  <35.936161, 28.218445, 47.557178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157253, 28.399561, 47.400417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382988, 28.705299, 47.275646>,  <35.518429, 28.888742, 47.200783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382988, 28.705299, 47.275646>,  <35.157253, 28.399561, 47.400417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382988, 28.705299, 47.275646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521356, 0.037008, -0.852536,
		-0.640090, 0.643741, 0.419383,
		0.564333, 0.764348, -0.311930,
		35.552288, 28.934605, 47.182068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691807, 28.924297, 47.208897>,  <35.157253, 28.399561, 47.400417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691807, 28.924297, 47.208897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047329, 28.990101, 47.037800>,  <35.260643, 29.029583, 46.935143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047329, 28.990101, 47.037800>,  <34.691807, 28.924297, 47.208897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047329, 28.990101, 47.037800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453679, 0.183873, -0.871990,
		-0.064800, 0.969086, 0.238062,
		0.888806, 0.164508, -0.427739,
		35.313972, 29.039454, 46.909477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580708, 29.544014, 46.800045>,  <34.691807, 28.924297, 47.208897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580708, 29.544014, 46.800045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911781, 29.389719, 46.636997>,  <35.110424, 29.297142, 46.539169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911781, 29.389719, 46.636997>,  <34.580708, 29.544014, 46.800045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911781, 29.389719, 46.636997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212297, 0.457142, -0.863685,
		0.519495, 0.801390, 0.296476,
		0.827680, -0.385739, -0.407616,
		35.160084, 29.273996, 46.514713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864143, 30.003115, 46.374397>,  <34.580708, 29.544014, 46.800045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864143, 30.003115, 46.374397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990685, 29.664213, 46.203716>,  <35.066608, 29.460873, 46.101307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990685, 29.664213, 46.203716>,  <34.864143, 30.003115, 46.374397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990685, 29.664213, 46.203716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133339, 0.405629, -0.904260,
		0.939224, 0.342962, 0.015349,
		0.316353, -0.847256, -0.426706,
		35.085590, 29.410036, 46.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086197, 30.247997, 45.816097>,  <34.864143, 30.003115, 46.374397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086197, 30.247997, 45.816097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100002, 29.856659, 45.734470>,  <35.108284, 29.621855, 45.685493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100002, 29.856659, 45.734470>,  <35.086197, 30.247997, 45.816097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100002, 29.856659, 45.734470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050258, 0.202234, -0.978047,
		0.998140, 0.044011, -0.042190,
		0.034513, -0.978348, -0.204070,
		35.110355, 29.563154, 45.673248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513477, 30.196314, 45.333946>,  <35.086197, 30.247997, 45.816097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513477, 30.196314, 45.333946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257469, 29.888990, 45.330635>,  <35.103863, 29.704596, 45.328648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257469, 29.888990, 45.330635>,  <35.513477, 30.196314, 45.333946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257469, 29.888990, 45.330635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130139, 0.119017, -0.984327,
		0.757254, -0.628916, -0.176160,
		-0.640024, -0.768310, -0.008280,
		35.065460, 29.658497, 45.328152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753128, 29.941011, 44.836430>,  <35.513477, 30.196314, 45.333946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753128, 29.941011, 44.836430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395538, 29.767477, 44.881340>,  <35.180984, 29.663357, 44.908287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395538, 29.767477, 44.881340>,  <35.753128, 29.941011, 44.836430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395538, 29.767477, 44.881340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171744, 0.100278, -0.980025,
		0.413911, -0.895394, -0.164155,
		-0.893969, -0.433836, 0.112272,
		35.127346, 29.637327, 44.915020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640816, 29.552977, 44.222897>,  <35.753128, 29.941011, 44.836430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640816, 29.552977, 44.222897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273869, 29.568441, 44.381359>,  <35.053699, 29.577721, 44.476437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273869, 29.568441, 44.381359>,  <35.640816, 29.552977, 44.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273869, 29.568441, 44.381359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388319, 0.131638, -0.912074,
		-0.087414, -0.990543, -0.105747,
		-0.917370, 0.038664, 0.396154,
		34.998657, 29.580040, 44.500206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248905, 28.962500, 43.905735>,  <35.640816, 29.552977, 44.222897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248905, 28.962500, 43.905735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002438, 29.252079, 44.029819>,  <34.854557, 29.425827, 44.104271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002438, 29.252079, 44.029819>,  <35.248905, 28.962500, 43.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002438, 29.252079, 44.029819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379884, 0.071844, -0.922240,
		-0.689942, -0.686101, 0.230749,
		-0.616172, 0.723950, 0.310207,
		34.817585, 29.469263, 44.122883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521503, 28.809296, 43.709286>,  <35.248905, 28.962500, 43.905735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521503, 28.809296, 43.709286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514000, 29.201906, 43.785450>,  <34.509499, 29.437473, 43.831146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514000, 29.201906, 43.785450>,  <34.521503, 28.809296, 43.709286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514000, 29.201906, 43.785450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407275, 0.166421, -0.898015,
		-0.913113, -0.094394, 0.396629,
		-0.018760, 0.981526, 0.190406,
		34.508373, 29.496365, 43.842571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889259, 29.050062, 43.428093>,  <34.521503, 28.809296, 43.709286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889259, 29.050062, 43.428093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051216, 29.413950, 43.464920>,  <34.148392, 29.632282, 43.487019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051216, 29.413950, 43.464920>,  <33.889259, 29.050062, 43.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051216, 29.413950, 43.464920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405781, 0.269005, -0.873486,
		-0.819393, 0.316307, 0.478064,
		0.404891, 0.909718, 0.092070,
		34.172684, 29.686865, 43.492542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348679, 29.531401, 43.472240>,  <33.889259, 29.050062, 43.428093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348679, 29.531401, 43.472240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691097, 29.665192, 43.314602>,  <33.896549, 29.745466, 43.220020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691097, 29.665192, 43.314602>,  <33.348679, 29.531401, 43.472240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691097, 29.665192, 43.314602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502907, 0.362756, -0.784533,
		-0.119449, 0.869789, 0.478747,
		0.856047, 0.334477, -0.394092,
		33.947910, 29.765535, 43.196373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101101, 30.167126, 43.235001>,  <33.348679, 29.531401, 43.472240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101101, 30.167126, 43.235001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461788, 30.143160, 43.063740>,  <33.678200, 30.128780, 42.960983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461788, 30.143160, 43.063740>,  <33.101101, 30.167126, 43.235001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461788, 30.143160, 43.063740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382760, 0.349807, -0.855061,
		0.201004, 0.934904, 0.292493,
		0.901716, -0.059916, -0.428157,
		33.732304, 30.125185, 42.935291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287247, 30.763481, 43.063694>,  <33.101101, 30.167126, 43.235001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287247, 30.763481, 43.063694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509678, 30.560629, 42.800301>,  <33.643135, 30.438917, 42.642265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509678, 30.560629, 42.800301>,  <33.287247, 30.763481, 43.063694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509678, 30.560629, 42.800301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398750, 0.532354, -0.746724,
		0.729233, 0.677804, 0.093810,
		0.556073, -0.507129, -0.658485,
		33.676498, 30.408489, 42.602757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616806, 31.249195, 42.623245>,  <33.287247, 30.763481, 43.063694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616806, 31.249195, 42.623245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611526, 30.906654, 42.416756>,  <33.608356, 30.701130, 42.292862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611526, 30.906654, 42.416756>,  <33.616806, 31.249195, 42.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611526, 30.906654, 42.416756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142438, 0.512616, -0.846721,
		0.989716, 0.062353, -0.128743,
		-0.013201, -0.856351, -0.516226,
		33.607567, 30.649750, 42.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802456, 31.589239, 41.964573>,  <33.616806, 31.249195, 42.623245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802456, 31.589239, 41.964573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720978, 31.208366, 41.873482>,  <33.672089, 30.979843, 41.818829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720978, 31.208366, 41.873482>,  <33.802456, 31.589239, 41.964573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720978, 31.208366, 41.873482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174305, 0.264157, -0.948598,
		0.963392, -0.153536, -0.219779,
		-0.203700, -0.952181, -0.227725,
		33.659866, 30.922712, 41.805164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218384, 31.226738, 41.380379>,  <33.802456, 31.589239, 41.964573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218384, 31.226738, 41.380379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863182, 31.043316, 41.394073>,  <33.650059, 30.933262, 41.402290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863182, 31.043316, 41.394073>,  <34.218384, 31.226738, 41.380379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863182, 31.043316, 41.394073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122583, 0.164305, -0.978763,
		0.443192, -0.873344, -0.202115,
		-0.888006, -0.458556, 0.034238,
		33.596779, 30.905750, 41.404346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247833, 30.585949, 40.865456>,  <34.218384, 31.226738, 41.380379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247833, 30.585949, 40.865456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885548, 30.724125, 40.963730>,  <33.668179, 30.807030, 41.022694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885548, 30.724125, 40.963730>,  <34.247833, 30.585949, 40.865456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885548, 30.724125, 40.963730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217790, 0.118043, -0.968831,
		-0.363673, -0.930988, -0.031679,
		-0.905709, 0.345438, 0.245689,
		33.613834, 30.827757, 41.037437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820717, 30.282490, 40.285069>,  <34.247833, 30.585949, 40.865456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820717, 30.282490, 40.285069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604992, 30.564989, 40.468525>,  <33.475555, 30.734489, 40.578598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604992, 30.564989, 40.468525>,  <33.820717, 30.282490, 40.285069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604992, 30.564989, 40.468525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411988, 0.253726, -0.875151,
		-0.734444, -0.660936, 0.154128,
		-0.539313, 0.706248, 0.458645,
		33.443199, 30.776863, 40.606117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158428, 30.299818, 39.913231>,  <33.820717, 30.282490, 40.285069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158428, 30.299818, 39.913231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152943, 30.655684, 40.095795>,  <33.149651, 30.869204, 40.205334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152943, 30.655684, 40.095795>,  <33.158428, 30.299818, 39.913231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152943, 30.655684, 40.095795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390434, 0.415452, -0.821560,
		-0.920529, -0.189462, 0.341659,
		-0.013711, 0.889665, 0.456408,
		33.148830, 30.922583, 40.232716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601833, 30.594006, 39.691578>,  <33.158428, 30.299818, 39.913231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601833, 30.594006, 39.691578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809650, 30.901056, 39.841682>,  <32.934341, 31.085287, 39.931744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809650, 30.901056, 39.841682>,  <32.601833, 30.594006, 39.691578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809650, 30.901056, 39.841682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155848, 0.516954, -0.841707,
		-0.840110, 0.378821, 0.388214,
		0.519545, 0.767628, 0.375260,
		32.965515, 31.131344, 39.954262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182941, 31.124153, 39.855976>,  <32.601833, 30.594006, 39.691578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182941, 31.124153, 39.855976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547146, 31.269175, 39.776459>,  <32.765671, 31.356188, 39.728748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547146, 31.269175, 39.776459>,  <32.182941, 31.124153, 39.855976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547146, 31.269175, 39.776459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393128, 0.610090, -0.687924,
		-0.128127, 0.704516, 0.698026,
		0.910513, 0.362556, -0.198796,
		32.820301, 31.377941, 39.716820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096561, 31.927168, 39.836800>,  <32.182941, 31.124153, 39.855976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096561, 31.927168, 39.836800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461758, 31.889990, 39.677895>,  <32.680874, 31.867683, 39.582550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461758, 31.889990, 39.677895>,  <32.096561, 31.927168, 39.836800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461758, 31.889990, 39.677895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189991, 0.764834, -0.615574,
		0.361054, 0.637487, 0.680625,
		0.912986, -0.092943, -0.397263,
		32.735653, 31.862106, 39.558716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343117, 32.706028, 39.777283>,  <32.096561, 31.927168, 39.836800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343117, 32.706028, 39.777283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582760, 32.489670, 39.541149>,  <32.726547, 32.359856, 39.399467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582760, 32.489670, 39.541149>,  <32.343117, 32.706028, 39.777283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582760, 32.489670, 39.541149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027340, 0.750696, -0.660081,
		0.800201, 0.379321, 0.464537,
		0.599109, -0.540898, -0.590337,
		32.762493, 32.327400, 39.364048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771423, 33.078556, 39.382137>,  <32.343117, 32.706028, 39.777283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771423, 33.078556, 39.382137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778069, 32.739414, 39.170155>,  <32.782055, 32.535927, 39.042965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778069, 32.739414, 39.170155>,  <32.771423, 33.078556, 39.382137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778069, 32.739414, 39.170155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220132, 0.520131, -0.825231,
		0.975329, -0.102952, 0.195282,
		0.016613, -0.847859, -0.529961,
		32.783051, 32.485058, 39.011166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488541, 33.085556, 39.022430>,  <32.771423, 33.078556, 39.382137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488541, 33.085556, 39.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300884, 32.808022, 38.803890>,  <33.188290, 32.641502, 38.672768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300884, 32.808022, 38.803890>,  <33.488541, 33.085556, 39.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300884, 32.808022, 38.803890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224368, 0.504710, -0.833623,
		0.854145, -0.513671, -0.081106,
		-0.469142, -0.693837, -0.546347,
		33.160141, 32.599869, 38.639988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952858, 32.853374, 38.425472>,  <33.488541, 33.085556, 39.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952858, 32.853374, 38.425472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563953, 32.827343, 38.335609>,  <33.330612, 32.811726, 38.281693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563953, 32.827343, 38.335609>,  <33.952858, 32.853374, 38.425472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563953, 32.827343, 38.335609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141178, 0.602529, -0.785511,
		0.186486, -0.795439, -0.576628,
		-0.972261, -0.065080, -0.224662,
		33.272274, 32.807819, 38.268211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890507, 32.719425, 37.651226>,  <33.952858, 32.853374, 38.425472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890507, 32.719425, 37.651226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562328, 32.908508, 37.779854>,  <33.365421, 33.021957, 37.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562328, 32.908508, 37.779854>,  <33.890507, 32.719425, 37.651226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562328, 32.908508, 37.779854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109223, 0.681699, -0.723434,
		-0.561191, -0.558418, -0.610929,
		-0.820448, 0.472712, 0.321571,
		33.316193, 33.050323, 37.876324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081226, 31.958267, 38.004414>,  <33.890507, 32.719425, 37.651226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081226, 31.958267, 38.004414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280567, 31.864029, 37.670673>,  <34.400169, 31.807486, 37.470428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280567, 31.864029, 37.670673>,  <34.081226, 31.958267, 38.004414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280567, 31.864029, 37.670673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804582, -0.232805, 0.546305,
		-0.322949, -0.943555, 0.073538,
		0.498349, -0.235596, -0.834352,
		34.430073, 31.793350, 37.420368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352699, 31.356245, 38.163002>,  <34.081226, 31.958267, 38.004414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352699, 31.356245, 38.163002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581295, 31.496275, 37.866127>,  <34.718452, 31.580294, 37.688000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581295, 31.496275, 37.866127>,  <34.352699, 31.356245, 38.163002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581295, 31.496275, 37.866127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811186, -0.377682, 0.446469,
		-0.124015, -0.857207, -0.499817,
		0.571488, 0.350075, -0.742192,
		34.752743, 31.601297, 37.643471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711571, 30.821871, 37.857315>,  <34.352699, 31.356245, 38.163002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711571, 30.821871, 37.857315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944420, 31.133972, 37.765808>,  <35.084129, 31.321234, 37.710903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944420, 31.133972, 37.765808>,  <34.711571, 30.821871, 37.857315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944420, 31.133972, 37.765808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773337, -0.444385, 0.452186,
		0.251162, -0.440139, -0.862088,
		0.582124, 0.780256, -0.228763,
		35.119057, 31.368050, 37.697178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310112, 30.555819, 37.616764>,  <34.711571, 30.821871, 37.857315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310112, 30.555819, 37.616764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405083, 30.924276, 37.740131>,  <35.462067, 31.145351, 37.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405083, 30.924276, 37.740131>,  <35.310112, 30.555819, 37.616764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405083, 30.924276, 37.740131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732031, -0.378369, 0.566540,
		0.638560, 0.091258, -0.764142,
		0.237426, 0.921146, 0.308415,
		35.476311, 31.200621, 37.832657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072845, 30.556732, 37.655136>,  <35.310112, 30.555819, 37.616764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072845, 30.556732, 37.655136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975754, 30.886166, 37.860191>,  <35.917500, 31.083826, 37.983223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975754, 30.886166, 37.860191>,  <36.072845, 30.556732, 37.655136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975754, 30.886166, 37.860191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577412, -0.301981, 0.758553,
		0.779538, 0.480122, -0.402249,
		-0.242726, 0.823584, 0.512634,
		35.902935, 31.133242, 38.013981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733002, 30.731754, 38.053226>,  <36.072845, 30.556732, 37.655136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733002, 30.731754, 38.053226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427593, 30.918280, 38.231926>,  <36.244347, 31.030195, 38.339146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427593, 30.918280, 38.231926>,  <36.733002, 30.731754, 38.053226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427593, 30.918280, 38.231926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404371, -0.194150, 0.893751,
		0.503506, 0.863050, -0.040327,
		-0.763522, 0.466316, 0.446748,
		36.198536, 31.058174, 38.365952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036831, 31.111794, 38.509811>,  <36.733002, 30.731754, 38.053226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036831, 31.111794, 38.509811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661037, 31.072680, 38.641148>,  <36.435562, 31.049212, 38.719948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661037, 31.072680, 38.641148>,  <37.036831, 31.111794, 38.509811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661037, 31.072680, 38.641148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339602, -0.139454, 0.930174,
		-0.045170, 0.985389, 0.164223,
		-0.939484, -0.097786, 0.328341,
		36.379192, 31.043344, 38.739651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964111, 31.568436, 39.153057>,  <37.036831, 31.111794, 38.509811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964111, 31.568436, 39.153057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668854, 31.298754, 39.162762>,  <36.491699, 31.136946, 39.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668854, 31.298754, 39.162762>,  <36.964111, 31.568436, 39.153057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668854, 31.298754, 39.162762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183173, -0.165678, 0.969020,
		-0.649297, 0.719723, 0.245790,
		-0.738147, -0.674203, 0.024260,
		36.447411, 31.096493, 39.170040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606083, 31.664822, 39.887020>,  <36.964111, 31.568436, 39.153057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606083, 31.664822, 39.887020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519650, 31.297232, 39.755085>,  <36.467789, 31.076677, 39.675926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519650, 31.297232, 39.755085>,  <36.606083, 31.664822, 39.887020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519650, 31.297232, 39.755085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212933, -0.374038, 0.902638,
		-0.952873, 0.124814, 0.276504,
		-0.216085, -0.918976, -0.329833,
		36.454823, 31.021540, 39.656136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372498, 31.319273, 40.415424>,  <36.606083, 31.664822, 39.887020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372498, 31.319273, 40.415424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443474, 30.996918, 40.189484>,  <36.486061, 30.803505, 40.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443474, 30.996918, 40.189484>,  <36.372498, 31.319273, 40.415424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443474, 30.996918, 40.189484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066267, -0.562877, 0.823880,
		-0.981898, -0.183620, -0.046473,
		0.177440, -0.805887, -0.564856,
		36.496704, 30.755152, 40.020027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885986, 30.784996, 40.699963>,  <36.372498, 31.319273, 40.415424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885986, 30.784996, 40.699963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179932, 30.596661, 40.504707>,  <36.356300, 30.483660, 40.387554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179932, 30.596661, 40.504707>,  <35.885986, 30.784996, 40.699963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179932, 30.596661, 40.504707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019117, -0.705078, 0.708872,
		-0.677941, -0.530258, -0.509138,
		0.734867, -0.470840, -0.488139,
		36.400391, 30.455408, 40.358265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752869, 30.017429, 40.772930>,  <35.885986, 30.784996, 40.699963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752869, 30.017429, 40.772930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138184, 30.058584, 40.673740>,  <36.369373, 30.083277, 40.614227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138184, 30.058584, 40.673740>,  <35.752869, 30.017429, 40.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138184, 30.058584, 40.673740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252629, -0.659980, 0.707534,
		-0.090862, -0.744205, -0.661743,
		0.963287, 0.102888, -0.247975,
		36.427170, 30.089451, 40.599346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930218, 29.325008, 40.725342>,  <35.752869, 30.017429, 40.772930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930218, 29.325008, 40.725342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229969, 29.584410, 40.778824>,  <36.409821, 29.740051, 40.810913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229969, 29.584410, 40.778824>,  <35.930218, 29.325008, 40.725342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229969, 29.584410, 40.778824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406854, -0.610280, 0.679726,
		0.522401, -0.454974, -0.721176,
		0.749378, 0.648503, 0.133703,
		36.454781, 29.778961, 40.818935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462608, 28.939970, 40.676781>,  <35.930218, 29.325008, 40.725342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462608, 28.939970, 40.676781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618828, 29.255867, 40.866001>,  <36.712559, 29.445406, 40.979534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618828, 29.255867, 40.866001>,  <36.462608, 28.939970, 40.676781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618828, 29.255867, 40.866001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376251, -0.605919, 0.700926,
		0.840183, -0.095758, -0.533781,
		0.390547, 0.789742, 0.473054,
		36.735992, 29.492790, 41.007915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993164, 28.673780, 41.005421>,  <36.462608, 28.939970, 40.676781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993164, 28.673780, 41.005421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964443, 29.030634, 41.183834>,  <36.947212, 29.244745, 41.290882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964443, 29.030634, 41.183834>,  <36.993164, 28.673780, 41.005421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964443, 29.030634, 41.183834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339433, -0.398637, 0.851982,
		0.937886, 0.212569, -0.274198,
		-0.071799, 0.892134, 0.446029,
		36.942902, 29.298275, 41.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642601, 28.866680, 41.280655>,  <36.993164, 28.673780, 41.005421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642601, 28.866680, 41.280655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364525, 29.053297, 41.499397>,  <37.197678, 29.165266, 41.630642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364525, 29.053297, 41.499397>,  <37.642601, 28.866680, 41.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364525, 29.053297, 41.499397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412555, -0.364032, 0.835032,
		0.588649, 0.806114, 0.060598,
		-0.695191, 0.466541, 0.546854,
		37.155968, 29.193260, 41.663452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043526, 29.249743, 41.789955>,  <37.642601, 28.866680, 41.280655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043526, 29.249743, 41.789955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675125, 29.217752, 41.942459>,  <37.454082, 29.198559, 42.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675125, 29.217752, 41.942459>,  <38.043526, 29.249743, 41.789955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675125, 29.217752, 41.942459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389529, -0.177993, 0.903651,
		-0.004410, 0.980776, 0.195086,
		-0.921004, -0.079976, 0.381256,
		37.398823, 29.193760, 42.056835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961346, 29.705999, 42.463158>,  <38.043526, 29.249743, 41.789955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961346, 29.705999, 42.463158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649006, 29.456863, 42.482533>,  <37.461601, 29.307383, 42.494156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649006, 29.456863, 42.482533>,  <37.961346, 29.705999, 42.463158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649006, 29.456863, 42.482533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236593, -0.223074, 0.945654,
		-0.578185, 0.749874, 0.321547,
		-0.780850, -0.622838, 0.048437,
		37.414749, 29.270012, 42.497063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537518, 29.991896, 42.944363>,  <37.961346, 29.705999, 42.463158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537518, 29.991896, 42.944363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432556, 29.606644, 42.920631>,  <37.369579, 29.375492, 42.906391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432556, 29.606644, 42.920631>,  <37.537518, 29.991896, 42.944363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432556, 29.606644, 42.920631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002418, -0.060829, 0.998145,
		-0.964955, 0.262061, 0.013633,
		-0.262405, -0.963132, -0.059331,
		37.353836, 29.317703, 42.902832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993103, 29.912899, 43.450356>,  <37.537518, 29.991896, 42.944363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993103, 29.912899, 43.450356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179821, 29.571493, 43.357742>,  <37.291851, 29.366650, 43.302174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179821, 29.571493, 43.357742>,  <36.993103, 29.912899, 43.450356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179821, 29.571493, 43.357742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211087, -0.146710, 0.966395,
		-0.858802, -0.499987, 0.111682,
		0.466799, -0.853516, -0.231536,
		37.319862, 29.315439, 43.288280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461830, 29.445190, 43.640621>,  <36.993103, 29.912899, 43.450356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461830, 29.445190, 43.640621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826603, 29.282448, 43.661953>,  <37.045467, 29.184803, 43.674751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826603, 29.282448, 43.661953>,  <36.461830, 29.445190, 43.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826603, 29.282448, 43.661953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149327, -0.207993, 0.966665,
		-0.382201, -0.889498, -0.250431,
		0.911935, -0.406856, 0.053331,
		37.100182, 29.160391, 43.677952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350983, 28.913141, 44.104942>,  <36.461830, 29.445190, 43.640621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350983, 28.913141, 44.104942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747768, 28.937817, 44.060741>,  <36.985840, 28.952621, 44.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747768, 28.937817, 44.060741>,  <36.350983, 28.913141, 44.104942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747768, 28.937817, 44.060741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120212, -0.186329, 0.975105,
		0.039562, -0.980549, -0.192246,
		0.991960, 0.061687, -0.110503,
		37.045357, 28.956322, 44.027592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607975, 28.291246, 44.432377>,  <36.350983, 28.913141, 44.104942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607975, 28.291246, 44.432377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921833, 28.539043, 44.422874>,  <37.110146, 28.687721, 44.417175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921833, 28.539043, 44.422874>,  <36.607975, 28.291246, 44.432377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921833, 28.539043, 44.422874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221822, -0.244768, 0.943866,
		0.578905, -0.745867, -0.329473,
		0.784643, 0.619493, -0.023752,
		37.157227, 28.724892, 44.415749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185246, 27.899002, 44.807827>,  <36.607975, 28.291246, 44.432377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185246, 27.899002, 44.807827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322983, 28.274445, 44.799355>,  <37.405624, 28.499710, 44.794270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322983, 28.274445, 44.799355>,  <37.185246, 27.899002, 44.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322983, 28.274445, 44.799355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408433, -0.129449, 0.903562,
		0.845346, -0.319787, -0.427932,
		0.344343, 0.938605, -0.021182,
		37.426285, 28.556026, 44.792999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874233, 27.925436, 45.032036>,  <37.185246, 27.899002, 44.807827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874233, 27.925436, 45.032036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764412, 28.304716, 45.095955>,  <37.698521, 28.532284, 45.134308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764412, 28.304716, 45.095955>,  <37.874233, 27.925436, 45.032036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764412, 28.304716, 45.095955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574966, 0.028675, 0.817675,
		0.770738, 0.316373, -0.553056,
		-0.274549, 0.948201, 0.159802,
		37.682049, 28.589176, 45.143894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514187, 28.255342, 45.392330>,  <37.874233, 27.925436, 45.032036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514187, 28.255342, 45.392330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179482, 28.468050, 45.444561>,  <37.978657, 28.595675, 45.475899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179482, 28.468050, 45.444561>,  <38.514187, 28.255342, 45.392330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179482, 28.468050, 45.444561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303083, 0.251194, 0.919262,
		0.456037, 0.808778, -0.371360,
		-0.836762, 0.531770, 0.130573,
		37.928452, 28.627581, 45.483734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741379, 28.843658, 45.651314>,  <38.514187, 28.255342, 45.392330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741379, 28.843658, 45.651314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359173, 28.868437, 45.766663>,  <38.129848, 28.883305, 45.835873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359173, 28.868437, 45.766663>,  <38.741379, 28.843658, 45.651314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359173, 28.868437, 45.766663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292247, 0.330982, 0.897241,
		-0.039867, 0.941601, -0.334361,
		-0.955511, 0.061946, 0.288375,
		38.072521, 28.887020, 45.853176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531216, 29.543118, 45.979858>,  <38.741379, 28.843658, 45.651314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531216, 29.543118, 45.979858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260681, 29.297869, 46.143150>,  <38.098362, 29.150719, 46.241123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260681, 29.297869, 46.143150>,  <38.531216, 29.543118, 45.979858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260681, 29.297869, 46.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453404, 0.090245, 0.886725,
		-0.580512, 0.784816, 0.216956,
		-0.676337, -0.613123, 0.408227,
		38.057781, 29.113932, 46.265617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327656, 29.881205, 46.574017>,  <38.531216, 29.543118, 45.979858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327656, 29.881205, 46.574017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270363, 29.490400, 46.637180>,  <38.235989, 29.255919, 46.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270363, 29.490400, 46.637180>,  <38.327656, 29.881205, 46.574017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270363, 29.490400, 46.637180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472990, 0.072575, 0.878074,
		-0.869348, 0.200454, 0.451722,
		-0.143230, -0.977011, 0.157906,
		38.227394, 29.197296, 46.684551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117783, 29.841030, 47.265839>,  <38.327656, 29.881205, 46.574017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117783, 29.841030, 47.265839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219872, 29.463669, 47.181122>,  <38.281124, 29.237253, 47.130291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219872, 29.463669, 47.181122>,  <38.117783, 29.841030, 47.265839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219872, 29.463669, 47.181122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537735, -0.043553, 0.841988,
		-0.803557, -0.328782, 0.496184,
		0.255221, -0.943401, -0.211795,
		38.296436, 29.180649, 47.117584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010494, 29.512217, 47.866600>,  <38.117783, 29.841030, 47.265839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010494, 29.512217, 47.866600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270985, 29.276213, 47.675690>,  <38.427280, 29.134609, 47.561142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270985, 29.276213, 47.675690>,  <38.010494, 29.512217, 47.866600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270985, 29.276213, 47.675690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525403, -0.103276, 0.844563,
		-0.547592, -0.800763, 0.242737,
		0.651226, -0.590011, -0.477276,
		38.466351, 29.099209, 47.532505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028702, 29.014139, 48.262867>,  <38.010494, 29.512217, 47.866600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028702, 29.014139, 48.262867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365360, 28.946115, 48.057850>,  <38.567356, 28.905300, 47.934837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365360, 28.946115, 48.057850>,  <38.028702, 29.014139, 48.262867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365360, 28.946115, 48.057850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458945, -0.274939, 0.844854,
		-0.284618, -0.946298, -0.153341,
		0.841643, -0.170085, -0.512551,
		38.617855, 28.895098, 47.904087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293072, 28.319607, 48.505653>,  <38.028702, 29.014139, 48.262867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293072, 28.319607, 48.505653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583820, 28.534607, 48.334656>,  <38.758270, 28.663607, 48.232056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583820, 28.534607, 48.334656>,  <38.293072, 28.319607, 48.505653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583820, 28.534607, 48.334656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529163, -0.041549, 0.847503,
		0.437771, -0.842240, -0.314626,
		0.726872, 0.537500, -0.427493,
		38.801884, 28.695856, 48.206409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944977, 27.899408, 48.602886>,  <38.293072, 28.319607, 48.505653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944977, 27.899408, 48.602886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091618, 28.262123, 48.519615>,  <39.179604, 28.479752, 48.469650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091618, 28.262123, 48.519615>,  <38.944977, 27.899408, 48.602886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091618, 28.262123, 48.519615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493057, 0.000398, 0.869997,
		0.788985, -0.421590, -0.446951,
		0.366604, 0.906787, -0.208181,
		39.201599, 28.534159, 48.457161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736820, 27.886726, 48.507915>,  <38.944977, 27.899408, 48.602886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736820, 27.886726, 48.507915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632504, 28.254778, 48.624779>,  <39.569916, 28.475609, 48.694897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632504, 28.254778, 48.624779>,  <39.736820, 27.886726, 48.507915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632504, 28.254778, 48.624779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632115, -0.065984, 0.772060,
		0.729671, 0.386020, -0.564419,
		-0.260788, 0.920128, 0.292156,
		39.554268, 28.530817, 48.712425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417576, 28.026968, 48.710129>,  <39.736820, 27.886726, 48.507915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417576, 28.026968, 48.710129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164413, 28.292728, 48.869129>,  <40.012516, 28.452185, 48.964527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164413, 28.292728, 48.869129>,  <40.417576, 28.026968, 48.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164413, 28.292728, 48.869129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513232, -0.024362, 0.857904,
		0.579675, 0.746981, -0.325572,
		-0.632906, 0.664399, 0.397496,
		39.974541, 28.492048, 48.988377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726234, 28.622742, 48.725445>,  <40.417576, 28.026968, 48.710129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726234, 28.622742, 48.725445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475849, 28.499342, 49.011940>,  <40.325619, 28.425301, 49.183838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475849, 28.499342, 49.011940>,  <40.726234, 28.622742, 48.725445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475849, 28.499342, 49.011940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761839, -0.045662, 0.646154,
		-0.166635, 0.950127, 0.263612,
		-0.625966, -0.308502, 0.716235,
		40.288059, 28.406792, 49.226810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755444, 29.053062, 49.337902>,  <40.726234, 28.622742, 48.725445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755444, 29.053062, 49.337902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624268, 28.686054, 49.427891>,  <40.545563, 28.465849, 49.481884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624268, 28.686054, 49.427891>,  <40.755444, 29.053062, 49.337902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624268, 28.686054, 49.427891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741704, -0.102576, 0.662837,
		-0.585089, 0.384234, 0.714167,
		-0.327942, -0.917519, 0.224972,
		40.525887, 28.410799, 49.495384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665367, 29.845890, 49.335217>,  <40.755444, 29.053062, 49.337902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665367, 29.845890, 49.335217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712616, 30.197226, 49.520500>,  <40.740967, 30.408028, 49.631672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712616, 30.197226, 49.520500>,  <40.665367, 29.845890, 49.335217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712616, 30.197226, 49.520500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041688, 0.461679, -0.886067,
		-0.992123, 0.123977, 0.017919,
		0.118125, 0.878341, 0.463210,
		40.748055, 30.460728, 49.659462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153812, 30.407454, 49.046158>,  <40.665367, 29.845890, 49.335217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153812, 30.407454, 49.046158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462090, 30.602911, 49.209747>,  <40.647057, 30.720186, 49.307899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462090, 30.602911, 49.209747>,  <40.153812, 30.407454, 49.046158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462090, 30.602911, 49.209747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047601, 0.595876, -0.801664,
		-0.635424, 0.637306, 0.435979,
		0.770695, 0.488644, 0.408971,
		40.693298, 30.749504, 49.332439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898224, 31.133371, 49.126266>,  <40.153812, 30.407454, 49.046158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898224, 31.133371, 49.126266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296608, 31.100498, 49.111759>,  <40.535637, 31.080774, 49.103054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296608, 31.100498, 49.111759>,  <39.898224, 31.133371, 49.126266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296608, 31.100498, 49.111759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014545, 0.545937, -0.837700,
		0.088646, 0.833786, 0.544925,
		0.995957, -0.082185, -0.036268,
		40.595394, 31.075842, 49.100880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236263, 31.855906, 49.165276>,  <39.898224, 31.133371, 49.126266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236263, 31.855906, 49.165276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508663, 31.618086, 48.994282>,  <40.672104, 31.475393, 48.891685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508663, 31.618086, 48.994282>,  <40.236263, 31.855906, 49.165276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508663, 31.618086, 48.994282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007624, 0.589501, -0.807732,
		0.732242, 0.546807, 0.405984,
		0.681002, -0.594551, -0.427488,
		40.712963, 31.439720, 48.866035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595005, 32.297363, 48.790485>,  <40.236263, 31.855906, 49.165276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595005, 32.297363, 48.790485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714775, 31.943838, 48.646694>,  <40.786636, 31.731724, 48.560421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714775, 31.943838, 48.646694>,  <40.595005, 32.297363, 48.790485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714775, 31.943838, 48.646694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046751, 0.389899, -0.919670,
		0.952974, 0.258565, 0.158064,
		0.299424, -0.883812, -0.359475,
		40.804604, 31.678694, 48.538853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100185, 32.449028, 48.376328>,  <40.595005, 32.297363, 48.790485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100185, 32.449028, 48.376328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029099, 32.086174, 48.223736>,  <40.986446, 31.868462, 48.132179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029099, 32.086174, 48.223736>,  <41.100185, 32.449028, 48.376328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029099, 32.086174, 48.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191477, 0.348371, -0.917592,
		0.965275, -0.236113, 0.111785,
		-0.177713, -0.907132, -0.381484,
		40.975784, 31.814034, 48.109291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540218, 32.447407, 47.706703>,  <41.100185, 32.449028, 48.376328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540218, 32.447407, 47.706703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266590, 32.157227, 47.676315>,  <41.102413, 31.983118, 47.658081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266590, 32.157227, 47.676315>,  <41.540218, 32.447407, 47.706703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266590, 32.157227, 47.676315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080247, 0.178371, -0.980686,
		0.724990, -0.664760, -0.180233,
		-0.684069, -0.725450, -0.075972,
		41.061371, 31.939592, 47.653522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567684, 32.327541, 47.146915>,  <41.540218, 32.447407, 47.706703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567684, 32.327541, 47.146915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239433, 32.104275, 47.195942>,  <41.042480, 31.970316, 47.225357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239433, 32.104275, 47.195942>,  <41.567684, 32.327541, 47.146915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239433, 32.104275, 47.195942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194427, 0.071020, -0.978343,
		0.537369, -0.826687, -0.166803,
		-0.820630, -0.558162, 0.122566,
		40.993244, 31.936827, 47.232712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513176, 31.647448, 46.649647>,  <41.567684, 32.327541, 47.146915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513176, 31.647448, 46.649647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141548, 31.757172, 46.748905>,  <40.918571, 31.823006, 46.808460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141548, 31.757172, 46.748905>,  <41.513176, 31.647448, 46.649647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141548, 31.757172, 46.748905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304979, -0.188450, -0.933528,
		-0.209322, -0.942993, 0.258745,
		-0.929070, 0.274320, 0.248146,
		40.862827, 31.839464, 46.823349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014988, 31.220591, 46.245529>,  <41.513176, 31.647448, 46.649647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014988, 31.220591, 46.245529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792912, 31.537991, 46.345230>,  <40.659668, 31.728430, 46.405052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792912, 31.537991, 46.345230>,  <41.014988, 31.220591, 46.245529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792912, 31.537991, 46.345230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476128, -0.057497, -0.877494,
		-0.681959, -0.605851, 0.409728,
		-0.555189, 0.793498, 0.249252,
		40.626354, 31.776039, 46.420006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497688, 31.160727, 45.796589>,  <41.014988, 31.220591, 46.245529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497688, 31.160727, 45.796589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389465, 31.518856, 45.938122>,  <40.324532, 31.733734, 46.023041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389465, 31.518856, 45.938122>,  <40.497688, 31.160727, 45.796589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389465, 31.518856, 45.938122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453984, 0.205447, -0.867001,
		-0.848939, -0.395206, 0.350877,
		-0.270557, 0.895323, 0.353829,
		40.308300, 31.787453, 46.044270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744022, 31.205967, 45.912560>,  <40.497688, 31.160727, 45.796589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744022, 31.205967, 45.912560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888355, 31.571266, 45.836895>,  <39.974957, 31.790445, 45.791496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888355, 31.571266, 45.836895>,  <39.744022, 31.205967, 45.912560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888355, 31.571266, 45.836895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460725, -0.001802, -0.887541,
		-0.810884, 0.407405, 0.420105,
		0.360831, 0.913246, -0.189163,
		39.996605, 31.845240, 45.780148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145473, 31.640993, 45.592129>,  <39.744022, 31.205967, 45.912560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145473, 31.640993, 45.592129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529099, 31.723988, 45.515038>,  <39.759274, 31.773785, 45.468784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529099, 31.723988, 45.515038>,  <39.145473, 31.640993, 45.592129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529099, 31.723988, 45.515038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189770, -0.034265, -0.981230,
		-0.210196, 0.977638, 0.006513,
		0.959065, 0.207487, -0.192729,
		39.816818, 31.786234, 45.457218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110813, 32.179096, 45.172318>,  <39.145473, 31.640993, 45.592129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110813, 32.179096, 45.172318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453796, 31.988550, 45.094509>,  <39.659588, 31.874224, 45.047825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453796, 31.988550, 45.094509>,  <39.110813, 32.179096, 45.172318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453796, 31.988550, 45.094509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274893, -0.104515, -0.955778,
		0.434967, 0.873015, -0.220566,
		0.857460, -0.476364, -0.194525,
		39.711033, 31.845642, 45.036152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413673, 32.453407, 44.571781>,  <39.110813, 32.179096, 45.172318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413673, 32.453407, 44.571781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594048, 32.097424, 44.599007>,  <39.702271, 31.883833, 44.615341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594048, 32.097424, 44.599007>,  <39.413673, 32.453407, 44.571781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594048, 32.097424, 44.599007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235203, -0.192039, -0.952786,
		0.861011, 0.413633, -0.295917,
		0.450931, -0.889960, 0.068060,
		39.729328, 31.830435, 44.619423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865597, 32.443069, 43.984035>,  <39.413673, 32.453407, 44.571781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865597, 32.443069, 43.984035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808701, 32.064438, 44.099796>,  <39.774563, 31.837259, 44.169254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808701, 32.064438, 44.099796>,  <39.865597, 32.443069, 43.984035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808701, 32.064438, 44.099796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269676, -0.244254, -0.931458,
		0.952388, -0.210534, -0.220527,
		-0.142239, -0.946581, 0.289400,
		39.766029, 31.780464, 44.186615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916882, 32.098797, 43.359097>,  <39.865597, 32.443069, 43.984035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916882, 32.098797, 43.359097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758385, 31.823660, 43.602360>,  <39.663284, 31.658577, 43.748318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758385, 31.823660, 43.602360>,  <39.916882, 32.098797, 43.359097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758385, 31.823660, 43.602360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479963, -0.409487, -0.775858,
		0.782704, -0.599324, -0.167884,
		-0.396245, -0.687845, 0.608160,
		39.639511, 31.617306, 43.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994835, 31.443914, 43.003387>,  <39.916882, 32.098797, 43.359097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994835, 31.443914, 43.003387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699810, 31.399324, 43.269794>,  <39.522797, 31.372570, 43.429638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699810, 31.399324, 43.269794>,  <39.994835, 31.443914, 43.003387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699810, 31.399324, 43.269794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620765, -0.276305, -0.733694,
		0.265814, -0.954583, 0.134590,
		-0.737559, -0.111477, 0.666017,
		39.478542, 31.365881, 43.469601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674145, 30.814150, 42.796837>,  <39.994835, 31.443914, 43.003387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674145, 30.814150, 42.796837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418186, 31.011417, 43.032570>,  <39.264610, 31.129778, 43.174011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418186, 31.011417, 43.032570>,  <39.674145, 30.814150, 42.796837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418186, 31.011417, 43.032570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705088, -0.071833, -0.705472,
		-0.305586, -0.866961, 0.393695,
		-0.639898, 0.493172, 0.589333,
		39.226215, 31.159369, 43.209370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043297, 30.395552, 43.005436>,  <39.674145, 30.814150, 42.796837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043297, 30.395552, 43.005436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954384, 30.785540, 43.007450>,  <38.901035, 31.019533, 43.008659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954384, 30.785540, 43.007450>,  <39.043297, 30.395552, 43.005436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954384, 30.785540, 43.007450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615291, -0.136269, -0.776433,
		-0.756313, -0.175681, 0.630180,
		-0.222279, 0.974970, 0.005033,
		38.887699, 31.078032, 43.008961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241425, 30.469629, 42.845917>,  <39.043297, 30.395552, 43.005436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241425, 30.469629, 42.845917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420006, 30.826405, 42.817284>,  <38.527153, 31.040470, 42.800102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420006, 30.826405, 42.817284>,  <38.241425, 30.469629, 42.845917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420006, 30.826405, 42.817284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346366, 0.098496, -0.932914,
		-0.825052, 0.441296, 0.352911,
		0.446452, 0.891940, -0.071586,
		38.553940, 31.093987, 42.795807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694630, 30.945841, 42.683319>,  <38.241425, 30.469629, 42.845917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694630, 30.945841, 42.683319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047611, 31.090551, 42.563053>,  <38.259399, 31.177378, 42.490894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047611, 31.090551, 42.563053>,  <37.694630, 30.945841, 42.683319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047611, 31.090551, 42.563053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362895, 0.116866, -0.924473,
		-0.299314, 0.924912, 0.234415,
		0.882450, 0.361775, -0.300666,
		38.312347, 31.199083, 42.472855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506252, 31.203152, 42.092892>,  <37.694630, 30.945841, 42.683319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506252, 31.203152, 42.092892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895687, 31.289354, 42.062721>,  <38.129349, 31.341076, 42.044621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895687, 31.289354, 42.062721>,  <37.506252, 31.203152, 42.092892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895687, 31.289354, 42.062721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088885, 0.053447, -0.994607,
		-0.210313, 0.975038, 0.071190,
		0.973585, 0.215506, -0.075426,
		38.187763, 31.354006, 42.040092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541870, 31.878355, 41.803196>,  <37.506252, 31.203152, 42.092892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541870, 31.878355, 41.803196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871475, 31.667637, 41.719788>,  <38.069241, 31.541206, 41.669743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871475, 31.667637, 41.719788>,  <37.541870, 31.878355, 41.803196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871475, 31.667637, 41.719788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182418, 0.101766, -0.977940,
		0.536398, 0.843877, -0.012240,
		0.824016, -0.526797, -0.208525,
		38.118679, 31.509598, 41.657230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889149, 32.267456, 41.349686>,  <37.541870, 31.878355, 41.803196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889149, 32.267456, 41.349686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066566, 31.913780, 41.291058>,  <38.173016, 31.701574, 41.255878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066566, 31.913780, 41.291058>,  <37.889149, 32.267456, 41.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066566, 31.913780, 41.291058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134071, 0.227157, -0.964585,
		0.886169, 0.408182, 0.219298,
		0.443541, -0.884187, -0.146574,
		38.199627, 31.648523, 41.247086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485970, 32.446201, 41.047249>,  <37.889149, 32.267456, 41.349686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485970, 32.446201, 41.047249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454052, 32.057335, 40.959141>,  <38.434902, 31.824015, 40.906277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454052, 32.057335, 40.959141>,  <38.485970, 32.446201, 41.047249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454052, 32.057335, 40.959141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037642, 0.217881, -0.975249,
		0.996100, -0.086110, 0.019208,
		-0.079794, -0.972169, -0.220273,
		38.430115, 31.765684, 40.893059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106037, 32.165016, 40.734814>,  <38.485970, 32.446201, 41.047249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106037, 32.165016, 40.734814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823586, 31.911686, 40.608147>,  <38.654114, 31.759689, 40.532146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823586, 31.911686, 40.608147>,  <39.106037, 32.165016, 40.734814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823586, 31.911686, 40.608147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444060, -0.047742, -0.894724,
		0.551531, -0.772414, 0.314945,
		-0.706133, -0.633323, -0.316667,
		38.611744, 31.721689, 40.513145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447510, 31.613892, 40.184082>,  <39.106037, 32.165016, 40.734814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447510, 31.613892, 40.184082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052761, 31.624891, 40.120430>,  <38.815910, 31.631491, 40.082237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052761, 31.624891, 40.120430>,  <39.447510, 31.613892, 40.184082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052761, 31.624891, 40.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160776, 0.074913, -0.984144,
		-0.015146, -0.996811, -0.078351,
		-0.986875, 0.027502, -0.159129,
		38.756699, 31.633142, 40.072693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367970, 31.200245, 39.600544>,  <39.447510, 31.613892, 40.184082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367970, 31.200245, 39.600544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010250, 31.379232, 39.601360>,  <38.795620, 31.486624, 39.601849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010250, 31.379232, 39.601360>,  <39.367970, 31.200245, 39.600544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010250, 31.379232, 39.601360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197633, 0.399064, -0.895371,
		-0.401462, -0.800326, -0.445316,
		-0.894298, 0.447467, 0.002038,
		38.741962, 31.513474, 39.601971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185402, 31.092274, 38.959984>,  <39.367970, 31.200245, 39.600544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185402, 31.092274, 38.959984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971004, 31.413288, 39.064789>,  <38.842365, 31.605896, 39.127670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971004, 31.413288, 39.064789>,  <39.185402, 31.092274, 38.959984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971004, 31.413288, 39.064789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138893, 0.389953, -0.910299,
		-0.832719, -0.451522, -0.320478,
		-0.535992, 0.802536, 0.262008,
		38.810207, 31.654049, 39.143391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600883, 31.224623, 38.440517>,  <39.185402, 31.092274, 38.959984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600883, 31.224623, 38.440517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682438, 31.564362, 38.635262>,  <38.731369, 31.768206, 38.752110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682438, 31.564362, 38.635262>,  <38.600883, 31.224623, 38.440517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682438, 31.564362, 38.635262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028106, 0.502184, -0.864304,
		-0.978591, 0.162537, 0.126260,
		0.203887, 0.849349, 0.486864,
		38.743603, 31.819166, 38.781322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246536, 31.795431, 37.964935>,  <38.600883, 31.224623, 38.440517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246536, 31.795431, 37.964935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500290, 31.977371, 38.214951>,  <38.652542, 32.086536, 38.364960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500290, 31.977371, 38.214951>,  <38.246536, 31.795431, 37.964935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500290, 31.977371, 38.214951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202037, 0.682905, -0.702013,
		-0.746152, 0.571625, 0.341325,
		0.634380, 0.454848, 0.625040,
		38.690605, 32.113827, 38.402462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168938, 32.550247, 37.840694>,  <38.246536, 31.795431, 37.964935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168938, 32.550247, 37.840694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517647, 32.529457, 38.035549>,  <38.726871, 32.516983, 38.152462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517647, 32.529457, 38.035549>,  <38.168938, 32.550247, 37.840694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517647, 32.529457, 38.035549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381365, 0.696170, -0.608200,
		-0.307518, 0.715992, 0.626728,
		0.871776, -0.051979, 0.487139,
		38.779179, 32.513863, 38.181690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301479, 33.217449, 37.939404>,  <38.168938, 32.550247, 37.840694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301479, 33.217449, 37.939404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658916, 33.044029, 37.985928>,  <38.873379, 32.939976, 38.013844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658916, 33.044029, 37.985928>,  <38.301479, 33.217449, 37.939404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658916, 33.044029, 37.985928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425800, 0.736672, -0.525366,
		0.142088, 0.518989, 0.842889,
		0.893591, -0.433550, 0.116313,
		38.926994, 32.913963, 38.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749470, 33.793480, 37.898720>,  <38.301479, 33.217449, 37.939404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749470, 33.793480, 37.898720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998936, 33.485863, 37.842693>,  <39.148613, 33.301292, 37.809078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998936, 33.485863, 37.842693>,  <38.749470, 33.793480, 37.898720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998936, 33.485863, 37.842693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517654, 0.540576, -0.663183,
		0.585732, 0.341097, 0.735235,
		0.623661, -0.769045, -0.140062,
		39.186035, 33.255150, 37.800674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466457, 34.014290, 37.952652>,  <38.749470, 33.793480, 37.898720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466457, 34.014290, 37.952652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522354, 33.669884, 37.757053>,  <39.555893, 33.463238, 37.639694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522354, 33.669884, 37.757053>,  <39.466457, 34.014290, 37.952652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522354, 33.669884, 37.757053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566026, 0.474665, -0.674023,
		0.812457, -0.182595, 0.553691,
		0.139744, -0.861018, -0.488998,
		39.564278, 33.411579, 37.610355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180294, 34.026688, 37.885612>,  <39.466457, 34.014290, 37.952652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180294, 34.026688, 37.885612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002659, 33.804161, 37.604671>,  <39.896076, 33.670647, 37.436108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002659, 33.804161, 37.604671>,  <40.180294, 34.026688, 37.885612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002659, 33.804161, 37.604671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310346, 0.639859, -0.703040,
		0.840519, -0.530183, -0.111503,
		-0.444086, -0.556315, -0.702354,
		39.869434, 33.637268, 37.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638184, 34.114815, 37.346844>,  <40.180294, 34.026688, 37.885612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638184, 34.114815, 37.346844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307991, 33.952267, 37.190159>,  <40.109875, 33.854736, 37.096149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307991, 33.952267, 37.190159>,  <40.638184, 34.114815, 37.346844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307991, 33.952267, 37.190159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084484, 0.597222, -0.797615,
		0.558063, -0.691513, -0.458667,
		-0.825486, -0.406370, -0.391709,
		40.060345, 33.830357, 37.072647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836754, 33.874573, 36.740932>,  <40.638184, 34.114815, 37.346844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836754, 33.874573, 36.740932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447826, 33.968029, 36.740997>,  <40.214470, 34.024101, 36.741035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447826, 33.968029, 36.740997>,  <40.836754, 33.874573, 36.740932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447826, 33.968029, 36.740997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126229, 0.525893, -0.841132,
		-0.196605, -0.817832, -0.540831,
		-0.972323, 0.233639, 0.000159,
		40.156128, 34.038120, 36.741043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522587, 33.590630, 36.119972>,  <40.836754, 33.874573, 36.740932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522587, 33.590630, 36.119972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300739, 33.895035, 36.254589>,  <40.167629, 34.077679, 36.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300739, 33.895035, 36.254589>,  <40.522587, 33.590630, 36.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300739, 33.895035, 36.254589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076098, 0.356365, -0.931243,
		-0.828616, -0.542098, -0.139736,
		-0.554622, 0.761009, 0.336543,
		40.134354, 34.123337, 36.355553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835621, 33.799427, 35.853851>,  <40.522587, 33.590630, 36.119972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835621, 33.799427, 35.853851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063183, 34.108307, 35.967026>,  <40.199718, 34.293636, 36.034931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063183, 34.108307, 35.967026>,  <39.835621, 33.799427, 35.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063183, 34.108307, 35.967026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072989, 0.390082, -0.917883,
		-0.819157, 0.501538, 0.278282,
		0.568906, 0.772202, 0.282931,
		40.233856, 34.339966, 36.051907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383408, 34.240868, 35.584846>,  <39.835621, 33.799427, 35.853851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383408, 34.240868, 35.584846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767635, 34.341583, 35.632023>,  <40.998173, 34.402012, 35.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767635, 34.341583, 35.632023>,  <40.383408, 34.240868, 35.584846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767635, 34.341583, 35.632023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198483, -0.323906, -0.925035,
		-0.194709, 0.911970, -0.361109,
		0.960569, 0.251786, 0.117944,
		41.055805, 34.417118, 35.667404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688179, 34.643127, 34.926586>,  <40.383408, 34.240868, 35.584846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688179, 34.643127, 34.926586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946224, 34.404251, 35.117245>,  <41.101051, 34.260925, 35.231640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946224, 34.404251, 35.117245>,  <40.688179, 34.643127, 34.926586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946224, 34.404251, 35.117245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216581, -0.455305, -0.863591,
		0.732747, 0.660348, -0.164384,
		0.645116, -0.597191, 0.476642,
		41.139759, 34.225094, 35.260239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205616, 34.466274, 34.501389>,  <40.688179, 34.643127, 34.926586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205616, 34.466274, 34.501389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277306, 34.192841, 34.784397>,  <41.320320, 34.028778, 34.954201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277306, 34.192841, 34.784397>,  <41.205616, 34.466274, 34.501389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277306, 34.192841, 34.784397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356862, -0.625014, -0.694268,
		0.916803, 0.376919, 0.131927,
		0.179226, -0.683586, 0.707522,
		41.331074, 33.987766, 34.996655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883152, 34.248062, 34.491665>,  <41.205616, 34.466274, 34.501389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883152, 34.248062, 34.491665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674412, 33.945057, 34.648560>,  <41.549168, 33.763252, 34.742695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674412, 33.945057, 34.648560>,  <41.883152, 34.248062, 34.491665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674412, 33.945057, 34.648560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325809, -0.601947, -0.729046,
		0.788367, -0.252658, 0.560929,
		-0.521849, -0.757512, 0.392236,
		41.517857, 33.717804, 34.766232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335648, 33.619099, 34.704433>,  <41.883152, 34.248062, 34.491665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335648, 33.619099, 34.704433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961491, 33.547970, 34.582172>,  <41.736996, 33.505291, 34.508816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961491, 33.547970, 34.582172>,  <42.335648, 33.619099, 34.704433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961491, 33.547970, 34.582172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353542, -0.487876, -0.798114,
		-0.007193, -0.854608, 0.519224,
		-0.935391, -0.177827, -0.305649,
		41.680874, 33.494621, 34.490479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358807, 33.728775, 34.012520>,  <42.335648, 33.619099, 34.704433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358807, 33.728775, 34.012520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616558, 34.004650, 34.144646>,  <42.771210, 34.170174, 34.223923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616558, 34.004650, 34.144646>,  <42.358807, 33.728775, 34.012520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616558, 34.004650, 34.144646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171614, 0.290509, -0.941357,
		-0.745198, 0.663281, 0.068840,
		0.644383, 0.689683, 0.330315,
		42.809872, 34.211555, 34.243740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135254, 34.377487, 33.804985>,  <42.358807, 33.728775, 34.012520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135254, 34.377487, 33.804985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532665, 34.392017, 33.848034>,  <42.771111, 34.400738, 33.873863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532665, 34.392017, 33.848034>,  <42.135254, 34.377487, 33.804985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532665, 34.392017, 33.848034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095713, 0.242463, -0.965428,
		-0.061166, 0.969480, 0.237416,
		0.993528, 0.036328, 0.107622,
		42.830723, 34.402916, 33.880322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398033, 35.044296, 33.434849>,  <42.135254, 34.377487, 33.804985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398033, 35.044296, 33.434849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725376, 34.814487, 33.440628>,  <42.921783, 34.676601, 33.444096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725376, 34.814487, 33.440628>,  <42.398033, 35.044296, 33.434849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725376, 34.814487, 33.440628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202932, 0.265355, -0.942553,
		0.537686, 0.774279, 0.333745,
		0.818360, -0.574525, 0.014449,
		42.970882, 34.642132, 33.444962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904503, 35.449974, 33.179619>,  <42.398033, 35.044296, 33.434849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904503, 35.449974, 33.179619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069283, 35.087009, 33.146393>,  <43.168148, 34.869228, 33.126457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069283, 35.087009, 33.146393>,  <42.904503, 35.449974, 33.179619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069283, 35.087009, 33.146393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354392, 0.243528, -0.902829,
		0.839468, 0.342480, 0.421901,
		0.411946, -0.907415, -0.083062,
		43.192867, 34.814785, 33.121475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667130, 35.523922, 32.886009>,  <42.904503, 35.449974, 33.179619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667130, 35.523922, 32.886009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536659, 35.152668, 32.814247>,  <43.458378, 34.929916, 32.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536659, 35.152668, 32.814247>,  <43.667130, 35.523922, 32.886009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536659, 35.152668, 32.814247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185524, 0.123240, -0.974881,
		0.926927, -0.351261, 0.131993,
		-0.326171, -0.928131, -0.179401,
		43.438808, 34.874229, 32.760426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132149, 35.249481, 32.431114>,  <43.667130, 35.523922, 32.886009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132149, 35.249481, 32.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819481, 35.009434, 32.363167>,  <43.631882, 34.865406, 32.322399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819481, 35.009434, 32.363167>,  <44.132149, 35.249481, 32.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819481, 35.009434, 32.363167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047455, 0.214342, -0.975605,
		0.621886, -0.770661, -0.139066,
		-0.781668, -0.600115, -0.169868,
		43.584980, 34.829399, 32.312206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249947, 34.805714, 31.799280>,  <44.132149, 35.249481, 32.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249947, 34.805714, 31.799280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853100, 34.778053, 31.841101>,  <43.614994, 34.761456, 31.866192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853100, 34.778053, 31.841101>,  <44.249947, 34.805714, 31.799280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853100, 34.778053, 31.841101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109606, 0.073900, -0.991224,
		0.060802, -0.994866, -0.080895,
		-0.992114, -0.069135, 0.104550,
		43.555466, 34.757309, 31.872465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006699, 34.408733, 31.231520>,  <44.249947, 34.805714, 31.799280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006699, 34.408733, 31.231520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679497, 34.604828, 31.351875>,  <43.483177, 34.722485, 31.424089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679497, 34.604828, 31.351875>,  <44.006699, 34.408733, 31.231520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679497, 34.604828, 31.351875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303841, 0.075899, -0.949695,
		-0.488415, -0.868277, 0.086869,
		-0.818005, 0.490239, 0.300889,
		43.434093, 34.751900, 31.442142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487656, 34.061836, 30.886469>,  <44.006699, 34.408733, 31.231520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487656, 34.061836, 30.886469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323540, 34.408737, 30.999277>,  <43.225071, 34.616879, 31.066961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323540, 34.408737, 30.999277>,  <43.487656, 34.061836, 30.886469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323540, 34.408737, 30.999277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474156, 0.061295, -0.878305,
		-0.779000, -0.494077, 0.386065,
		-0.410286, 0.867255, 0.282019,
		43.200455, 34.668915, 31.083883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793076, 34.075466, 30.680437>,  <43.487656, 34.061836, 30.886469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793076, 34.075466, 30.680437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904602, 34.458633, 30.707739>,  <42.971519, 34.688534, 30.724119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904602, 34.458633, 30.707739>,  <42.793076, 34.075466, 30.680437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904602, 34.458633, 30.707739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453796, 0.194055, -0.869719,
		-0.846362, 0.211523, 0.488805,
		0.278820, 0.957915, 0.068253,
		42.988247, 34.746006, 30.728214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219372, 34.472340, 30.411198>,  <42.793076, 34.075466, 30.680437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219372, 34.472340, 30.411198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515678, 34.739681, 30.384171>,  <42.693462, 34.900085, 30.367954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515678, 34.739681, 30.384171>,  <42.219372, 34.472340, 30.411198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515678, 34.739681, 30.384171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546335, 0.540876, -0.639508,
		-0.390872, 0.510642, 0.765809,
		0.740768, 0.668355, -0.067568,
		42.737907, 34.940189, 30.363899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965595, 35.196560, 30.679560>,  <42.219372, 34.472340, 30.411198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965595, 35.196560, 30.679560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284740, 35.295597, 30.459700>,  <42.476227, 35.355019, 30.327784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284740, 35.295597, 30.459700>,  <41.965595, 35.196560, 30.679560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284740, 35.295597, 30.459700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571291, 0.601640, -0.558262,
		0.192468, 0.759425, 0.621474,
		0.797862, 0.247595, -0.549649,
		42.524097, 35.369877, 30.294806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947704, 35.957096, 30.588352>,  <41.965595, 35.196560, 30.679560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947704, 35.957096, 30.588352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185249, 35.816166, 30.299025>,  <42.327778, 35.731606, 30.125429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185249, 35.816166, 30.299025>,  <41.947704, 35.957096, 30.588352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185249, 35.816166, 30.299025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282081, 0.750775, -0.597300,
		0.753494, 0.558751, 0.346475,
		0.593866, -0.352327, -0.723318,
		42.363411, 35.710468, 30.082029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278797, 36.490540, 30.311090>,  <41.947704, 35.957096, 30.588352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278797, 36.490540, 30.311090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313251, 36.209335, 30.028713>,  <42.333923, 36.040611, 29.859287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313251, 36.209335, 30.028713>,  <42.278797, 36.490540, 30.311090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313251, 36.209335, 30.028713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238176, 0.673502, -0.699762,
		0.967395, 0.228413, -0.109428,
		0.086135, -0.703009, -0.705945,
		42.339092, 35.998432, 29.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599693, 36.829308, 29.837288>,  <42.278797, 36.490540, 30.311090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599693, 36.829308, 29.837288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434296, 36.519066, 29.646519>,  <42.335056, 36.332920, 29.532057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434296, 36.519066, 29.646519>,  <42.599693, 36.829308, 29.837288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434296, 36.519066, 29.646519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389904, 0.624176, -0.677038,
		0.822799, -0.093997, -0.560505,
		-0.413493, -0.775609, -0.476921,
		42.310249, 36.286385, 29.503443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709812, 36.974178, 29.151485>,  <42.599693, 36.829308, 29.837288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709812, 36.974178, 29.151485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408607, 36.710976, 29.152624>,  <42.227886, 36.553055, 29.153307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408607, 36.710976, 29.152624>,  <42.709812, 36.974178, 29.151485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408607, 36.710976, 29.152624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545608, 0.621951, -0.561684,
		0.367821, -0.424505, -0.827347,
		-0.753007, -0.658006, 0.002847,
		42.182705, 36.513573, 29.153479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475555, 37.028339, 28.445066>,  <42.709812, 36.974178, 29.151485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475555, 37.028339, 28.445066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168755, 36.903732, 28.669447>,  <41.984673, 36.828968, 28.804075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168755, 36.903732, 28.669447>,  <42.475555, 37.028339, 28.445066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168755, 36.903732, 28.669447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580690, 0.708907, -0.400313,
		-0.272959, -0.632780, -0.724626,
		-0.767002, -0.311514, 0.560952,
		41.938656, 36.810280, 28.837732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912037, 37.222675, 28.040192>,  <42.475555, 37.028339, 28.445066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912037, 37.222675, 28.040192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772751, 37.179340, 28.412645>,  <41.689178, 37.153339, 28.636118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772751, 37.179340, 28.412645>,  <41.912037, 37.222675, 28.040192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772751, 37.179340, 28.412645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622669, 0.769242, -0.143354,
		-0.700735, -0.629706, -0.335321,
		-0.348214, -0.108341, 0.931133,
		41.668285, 37.146839, 28.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114552, 37.162476, 28.063934>,  <41.912037, 37.222675, 28.040192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114552, 37.162476, 28.063934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226986, 37.308178, 28.419081>,  <41.294445, 37.395599, 28.632168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226986, 37.308178, 28.419081>,  <41.114552, 37.162476, 28.063934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226986, 37.308178, 28.419081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622687, 0.773202, -0.120084,
		-0.730241, -0.519108, 0.444155,
		0.281085, 0.364260, 0.887866,
		41.311310, 37.417458, 28.685440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542236, 37.626820, 28.347412>,  <41.114552, 37.162476, 28.063934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542236, 37.626820, 28.347412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838673, 37.714130, 28.601385>,  <41.016533, 37.766518, 28.753769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838673, 37.714130, 28.601385>,  <40.542236, 37.626820, 28.347412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838673, 37.714130, 28.601385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466027, 0.847999, 0.252420,
		-0.483324, -0.482962, 0.730168,
		0.741091, 0.218278, 0.634932,
		41.061001, 37.779613, 28.791864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205944, 37.828991, 28.930647>,  <40.542236, 37.626820, 28.347412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205944, 37.828991, 28.930647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568699, 37.996738, 28.914265>,  <40.786354, 38.097385, 28.904436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568699, 37.996738, 28.914265>,  <40.205944, 37.828991, 28.930647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568699, 37.996738, 28.914265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400702, 0.888400, 0.224017,
		0.130329, -0.186749, 0.973724,
		0.906892, 0.419369, -0.040953,
		40.840767, 38.122551, 28.901979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280281, 38.225853, 29.528088>,  <40.205944, 37.828991, 28.930647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280281, 38.225853, 29.528088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535622, 38.390816, 29.268110>,  <40.688828, 38.489792, 29.112123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535622, 38.390816, 29.268110>,  <40.280281, 38.225853, 29.528088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535622, 38.390816, 29.268110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443530, 0.887171, 0.127314,
		0.629117, 0.206998, 0.749242,
		0.638352, 0.412406, -0.649944,
		40.727127, 38.514538, 29.073128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753273, 38.775219, 29.937185>,  <40.280281, 38.225853, 29.528088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753273, 38.775219, 29.937185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667164, 38.820179, 29.549160>,  <40.615498, 38.847157, 29.316345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667164, 38.820179, 29.549160>,  <40.753273, 38.775219, 29.937185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667164, 38.820179, 29.549160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338333, 0.923247, 0.182057,
		0.916072, 0.367397, -0.160722,
		-0.215273, 0.112400, -0.970064,
		40.602581, 38.853897, 29.258141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185032, 39.477699, 29.904997>,  <40.753273, 38.775219, 29.937185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185032, 39.477699, 29.904997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473724, 39.701878, 30.067482>,  <41.646938, 39.836384, 30.164972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473724, 39.701878, 30.067482>,  <41.185032, 39.477699, 29.904997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473724, 39.701878, 30.067482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319774, 0.790454, -0.522424,
		-0.613882, 0.247153, 0.749709,
		0.721729, 0.560445, 0.406212,
		41.690243, 39.870010, 30.189346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973190, 40.133625, 30.414572>,  <41.185032, 39.477699, 29.904997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973190, 40.133625, 30.414572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322632, 40.175365, 30.224445>,  <41.532295, 40.200409, 30.110369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322632, 40.175365, 30.224445>,  <40.973190, 40.133625, 30.414572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322632, 40.175365, 30.224445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391980, 0.729717, -0.560237,
		0.288388, 0.675740, 0.678386,
		0.873604, 0.104348, -0.475318,
		41.584713, 40.206669, 30.081850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083000, 40.881721, 30.299278>,  <40.973190, 40.133625, 30.414572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083000, 40.881721, 30.299278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317047, 40.688999, 30.038355>,  <41.457474, 40.573364, 29.881802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317047, 40.688999, 30.038355>,  <41.083000, 40.881721, 30.299278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317047, 40.688999, 30.038355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023033, 0.794176, -0.607252,
		0.810622, 0.370337, 0.453588,
		0.585116, -0.481804, -0.652306,
		41.492580, 40.544456, 29.842663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859867, 40.720699, 29.577503>,  <41.083000, 40.881721, 30.299278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859867, 40.720699, 29.577503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844944, 40.321133, 29.566401>,  <40.835991, 40.081394, 29.559738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844944, 40.321133, 29.566401>,  <40.859867, 40.720699, 29.577503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844944, 40.321133, 29.566401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975405, -0.030367, -0.218319,
		0.217240, -0.035219, 0.975483,
		-0.037312, -0.998918, -0.027756,
		40.833752, 40.021458, 29.558073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330097, 40.866009, 29.123522>,  <40.859867, 40.720699, 29.577503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330097, 40.866009, 29.123522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560219, 41.157482, 28.974905>,  <41.698292, 41.332367, 28.885735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560219, 41.157482, 28.974905>,  <41.330097, 40.866009, 29.123522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560219, 41.157482, 28.974905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816570, -0.485421, 0.312377,
		0.047270, -0.483103, -0.874286,
		0.575307, 0.728682, -0.371542,
		41.732811, 41.376087, 28.863441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872070, 40.510708, 28.629801>,  <41.330097, 40.866009, 29.123522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872070, 40.510708, 28.629801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996250, 40.840118, 28.819715>,  <42.070759, 41.037766, 28.933664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996250, 40.840118, 28.819715>,  <41.872070, 40.510708, 28.629801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996250, 40.840118, 28.819715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818822, -0.485376, 0.306497,
		0.482860, 0.293615, -0.825007,
		0.310446, 0.823529, 0.474787,
		42.089382, 41.087177, 28.962151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574043, 40.693039, 28.458578>,  <41.872070, 40.510708, 28.629801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574043, 40.693039, 28.458578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449951, 40.785931, 28.827322>,  <42.375496, 40.841663, 29.048569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449951, 40.785931, 28.827322>,  <42.574043, 40.693039, 28.458578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449951, 40.785931, 28.827322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773873, -0.501529, 0.386768,
		0.552157, 0.833391, -0.024123,
		-0.310230, 0.232225, 0.921862,
		42.356880, 40.855598, 29.103880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931423, 40.126862, 28.843689>,  <42.574043, 40.693039, 28.458578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931423, 40.126862, 28.843689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781384, 40.393787, 29.101059>,  <42.691360, 40.553944, 29.255480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781384, 40.393787, 29.101059>,  <42.931423, 40.126862, 28.843689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781384, 40.393787, 29.101059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528714, -0.416124, 0.739799,
		0.761423, 0.617682, -0.196733,
		-0.375095, 0.667316, 0.643423,
		42.668854, 40.593983, 29.294086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444477, 40.326927, 29.277636>,  <42.931423, 40.126862, 28.843689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444477, 40.326927, 29.277636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102055, 40.352165, 29.482841>,  <42.896603, 40.367310, 29.605965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102055, 40.352165, 29.482841>,  <43.444477, 40.326927, 29.277636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102055, 40.352165, 29.482841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438290, -0.437495, 0.785175,
		0.273986, 0.897004, 0.346865,
		-0.856057, 0.063099, 0.513015,
		42.845238, 40.371094, 29.636745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423042, 40.860516, 29.865028>,  <43.444477, 40.326927, 29.277636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423042, 40.860516, 29.865028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196777, 40.532467, 29.899500>,  <43.061020, 40.335636, 29.920183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196777, 40.532467, 29.899500>,  <43.423042, 40.860516, 29.865028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196777, 40.532467, 29.899500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611129, -0.346742, 0.711542,
		-0.553670, 0.455158, 0.697339,
		-0.565660, -0.820123, 0.086180,
		43.027081, 40.286430, 29.925354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370083, 40.778217, 30.531494>,  <43.423042, 40.860516, 29.865028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370083, 40.778217, 30.531494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283897, 40.416519, 30.384031>,  <43.232185, 40.199501, 30.295553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283897, 40.416519, 30.384031>,  <43.370083, 40.778217, 30.531494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283897, 40.416519, 30.384031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537142, -0.425030, 0.728579,
		-0.815507, -0.041037, 0.577290,
		-0.215467, -0.904248, -0.368658,
		43.219257, 40.145245, 30.273434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123146, 40.355919, 31.107138>,  <43.370083, 40.778217, 30.531494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123146, 40.355919, 31.107138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198681, 40.051991, 30.858299>,  <43.244003, 39.869633, 30.708996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198681, 40.051991, 30.858299>,  <43.123146, 40.355919, 31.107138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198681, 40.051991, 30.858299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298831, -0.558989, 0.773454,
		-0.935435, -0.331962, 0.121499,
		0.188841, -0.759824, -0.622098,
		43.255333, 39.824043, 30.671669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837486, 39.635658, 31.373413>,  <43.123146, 40.355919, 31.107138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837486, 39.635658, 31.373413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151871, 39.583015, 31.131769>,  <43.340500, 39.551430, 30.986784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151871, 39.583015, 31.131769>,  <42.837486, 39.635658, 31.373413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151871, 39.583015, 31.131769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394328, -0.645865, 0.653731,
		-0.476206, -0.752023, -0.455730,
		0.785960, -0.131603, -0.604108,
		43.387657, 39.543533, 30.950537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066547, 39.002460, 31.543261>,  <42.837486, 39.635658, 31.373413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066547, 39.002460, 31.543261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378033, 39.114391, 31.318653>,  <43.564922, 39.181549, 31.183887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378033, 39.114391, 31.318653>,  <43.066547, 39.002460, 31.543261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378033, 39.114391, 31.318653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569785, -0.690049, 0.446293,
		-0.262591, -0.667479, -0.696791,
		0.778711, 0.279829, -0.561520,
		43.611645, 39.198341, 31.150198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217903, 38.331295, 31.352409>,  <43.066547, 39.002460, 31.543261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217903, 38.331295, 31.352409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515144, 38.594101, 31.301611>,  <43.693489, 38.751785, 31.271132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515144, 38.594101, 31.301611>,  <43.217903, 38.331295, 31.352409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515144, 38.594101, 31.301611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604956, -0.578454, 0.547192,
		0.286051, -0.483448, -0.827317,
		0.743104, 0.657015, -0.126998,
		43.738075, 38.791206, 31.263512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840572, 37.910843, 31.262009>,  <43.217903, 38.331295, 31.352409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840572, 37.910843, 31.262009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962788, 38.275623, 31.371542>,  <44.036118, 38.494492, 31.437262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962788, 38.275623, 31.371542>,  <43.840572, 37.910843, 31.262009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962788, 38.275623, 31.371542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522396, -0.400985, 0.752538,
		0.796084, -0.086879, -0.598917,
		0.305537, 0.911956, 0.273832,
		44.054447, 38.549210, 31.453691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552055, 37.888447, 31.350164>,  <43.840572, 37.910843, 31.262009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552055, 37.888447, 31.350164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414478, 38.192753, 31.570326>,  <44.331932, 38.375336, 31.702423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414478, 38.192753, 31.570326>,  <44.552055, 37.888447, 31.350164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414478, 38.192753, 31.570326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452297, -0.379457, 0.807118,
		0.822880, 0.526549, -0.213579,
		-0.343943, 0.760762, 0.550404,
		44.311295, 38.420982, 31.735447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057827, 38.229027, 31.715841>,  <44.552055, 37.888447, 31.350164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057827, 38.229027, 31.715841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729523, 38.287384, 31.936773>,  <44.532539, 38.322399, 32.069332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729523, 38.287384, 31.936773>,  <45.057827, 38.229027, 31.715841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729523, 38.287384, 31.936773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454971, -0.417757, 0.786435,
		0.345477, 0.896768, 0.276500,
		-0.820760, 0.145896, 0.552329,
		44.483295, 38.331154, 32.102470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285416, 38.209869, 32.374832>,  <45.057827, 38.229027, 31.715841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285416, 38.209869, 32.374832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892303, 38.189137, 32.445770>,  <44.656437, 38.176697, 32.488335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892303, 38.189137, 32.445770>,  <45.285416, 38.209869, 32.374832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892303, 38.189137, 32.445770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178443, -0.515159, 0.838313,
		0.047911, 0.855526, 0.515539,
		-0.982783, -0.051830, 0.177344,
		44.597469, 38.173588, 32.498974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258434, 38.346272, 33.045380>,  <45.285416, 38.209869, 32.374832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258434, 38.346272, 33.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926811, 38.145943, 32.945911>,  <44.727837, 38.025745, 32.886230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926811, 38.145943, 32.945911>,  <45.258434, 38.346272, 33.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926811, 38.145943, 32.945911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101860, -0.572555, 0.813514,
		-0.549805, 0.649121, 0.525696,
		-0.829059, -0.500822, -0.248674,
		44.678093, 37.995697, 32.871307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120342, 38.009998, 33.618256>,  <45.258434, 38.346272, 33.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120342, 38.009998, 33.618256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866718, 37.829845, 33.366817>,  <44.714546, 37.721752, 33.215954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866718, 37.829845, 33.366817>,  <45.120342, 38.009998, 33.618256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866718, 37.829845, 33.366817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059369, -0.782131, 0.620279,
		-0.771004, 0.430611, 0.469176,
		-0.634056, -0.450384, -0.628591,
		44.676502, 37.694729, 33.178242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474758, 37.801167, 33.953854>,  <45.120342, 38.009998, 33.618256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474758, 37.801167, 33.953854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499195, 37.552761, 33.641289>,  <44.513855, 37.403717, 33.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499195, 37.552761, 33.641289>,  <44.474758, 37.801167, 33.953854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499195, 37.552761, 33.641289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112716, -0.782160, 0.612798,
		-0.991747, 0.050642, -0.117781,
		0.061090, -0.621017, -0.781413,
		44.517521, 37.366455, 33.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008255, 37.199936, 34.114243>,  <44.474758, 37.801167, 33.953854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008255, 37.199936, 34.114243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258167, 37.067814, 33.831245>,  <44.408115, 36.988541, 33.661446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258167, 37.067814, 33.831245>,  <44.008255, 37.199936, 34.114243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258167, 37.067814, 33.831245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020316, -0.912685, 0.408159,
		-0.780533, -0.240638, -0.576942,
		0.624785, -0.330303, -0.707491,
		44.445602, 36.968723, 33.618999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561733, 36.562786, 33.800873>,  <44.008255, 37.199936, 34.114243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561733, 36.562786, 33.800873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955502, 36.551819, 33.731392>,  <44.191761, 36.545238, 33.689705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955502, 36.551819, 33.731392>,  <43.561733, 36.562786, 33.800873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955502, 36.551819, 33.731392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027007, -0.952478, 0.303409,
		-0.173765, -0.303372, -0.936894,
		0.984417, -0.027419, -0.173700,
		44.250828, 36.543594, 33.679283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700130, 35.925137, 33.761993>,  <43.561733, 36.562786, 33.800873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700130, 35.925137, 33.761993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079197, 36.050274, 33.787487>,  <44.306637, 36.125359, 33.802784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079197, 36.050274, 33.787487>,  <43.700130, 35.925137, 33.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079197, 36.050274, 33.787487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289180, -0.925669, 0.243949,
		0.135318, -0.212750, -0.967691,
		0.947662, 0.312848, 0.063737,
		44.363495, 36.144127, 33.806606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088009, 35.484100, 33.523983>,  <43.700130, 35.925137, 33.761993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088009, 35.484100, 33.523983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382607, 35.640980, 33.744438>,  <44.559364, 35.735107, 33.876713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382607, 35.640980, 33.744438>,  <44.088009, 35.484100, 33.523983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382607, 35.640980, 33.744438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343228, -0.918757, 0.195141,
		0.582897, 0.045446, -0.811274,
		0.736495, 0.392199, 0.551139,
		44.603554, 35.758640, 33.909779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757660, 34.968285, 33.377598>,  <44.088009, 35.484100, 33.523983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757660, 34.968285, 33.377598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.868698, 35.178886, 33.699028>,  <44.935318, 35.305248, 33.891888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.868698, 35.178886, 33.699028>,  <44.757660, 34.968285, 33.377598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868698, 35.178886, 33.699028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407504, -0.822002, 0.397809,
		0.869991, 0.217033, -0.442734,
		0.277591, 0.526506, 0.803576,
		44.951977, 35.336838, 33.940102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553181, 34.937241, 33.493763>,  <44.757660, 34.968285, 33.377598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553181, 34.937241, 33.493763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376953, 35.012630, 33.844845>,  <45.271217, 35.057865, 34.055496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376953, 35.012630, 33.844845>,  <45.553181, 34.937241, 33.493763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376953, 35.012630, 33.844845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331463, -0.874473, 0.354161,
		0.834283, 0.446962, 0.322797,
		-0.440573, 0.188475, 0.877709,
		45.244781, 35.069172, 34.108158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034420, 34.766571, 34.032444>,  <45.553181, 34.937241, 33.493763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034420, 34.766571, 34.032444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668346, 34.759472, 34.193504>,  <45.448704, 34.755215, 34.290142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668346, 34.759472, 34.193504>,  <46.034420, 34.766571, 34.032444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668346, 34.759472, 34.193504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208925, -0.875216, 0.436287,
		0.344669, 0.483406, 0.804687,
		-0.915180, -0.017744, 0.402656,
		45.393791, 34.754150, 34.314301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115971, 34.867092, 34.762257>,  <46.034420, 34.766571, 34.032444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115971, 34.867092, 34.762257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779228, 34.670685, 34.672661>,  <45.577183, 34.552841, 34.618904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779228, 34.670685, 34.672661>,  <46.115971, 34.867092, 34.762257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779228, 34.670685, 34.672661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198341, -0.667474, 0.717731,
		-0.501929, 0.559802, 0.659309,
		-0.841860, -0.491019, -0.223993,
		45.526669, 34.523380, 34.605461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656593, 34.404625, 34.342323>,  <46.115971, 34.867092, 34.762257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656593, 34.404625, 34.342323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693810, 34.635483, 34.666855>,  <46.716141, 34.773998, 34.861572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693810, 34.635483, 34.666855>,  <46.656593, 34.404625, 34.342323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693810, 34.635483, 34.666855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978236, -0.204776, 0.033488,
		0.185467, 0.790551, -0.583636,
		0.093041, 0.577145, 0.811324,
		46.721722, 34.808628, 34.910252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150093, 34.756844, 34.081997>,  <46.656593, 34.404625, 34.342323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150093, 34.756844, 34.081997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128620, 34.774368, 34.481037>,  <47.115738, 34.784882, 34.720459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128620, 34.774368, 34.481037>,  <47.150093, 34.756844, 34.081997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128620, 34.774368, 34.481037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997864, -0.034901, 0.055227,
		0.037236, 0.998430, -0.041843,
		-0.053680, 0.043810, 0.997597,
		47.112514, 34.787510, 34.780315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551231, 35.198540, 34.317326>,  <47.150093, 34.756844, 34.081997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551231, 35.198540, 34.317326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520054, 34.941357, 34.622097>,  <47.501347, 34.787048, 34.804958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520054, 34.941357, 34.622097>,  <47.551231, 35.198540, 34.317326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520054, 34.941357, 34.622097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996921, -0.043698, 0.065112,
		-0.008569, 0.764656, 0.644382,
		-0.077946, -0.642955, 0.761927,
		47.496670, 34.748470, 34.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.828003, 35.404190, 35.008900>,  <47.551231, 35.198540, 34.317326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.828003, 35.404190, 35.008900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860653, 35.008129, 34.963425>,  <47.880245, 34.770493, 34.936138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860653, 35.008129, 34.963425>,  <47.828003, 35.404190, 35.008900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.860653, 35.008129, 34.963425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995896, 0.076560, 0.048271,
		-0.039092, -0.117166, 0.992343,
		0.081629, -0.990157, -0.113692,
		47.885143, 34.711082, 34.929317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.438869, 36.125832, 44.584141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060272, 36.189068, 44.696682>,  <38.833115, 36.227009, 44.764206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060272, 36.189068, 44.696682>,  <39.438869, 36.125832, 44.584141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060272, 36.189068, 44.696682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302279, -0.128873, -0.944468,
		-0.113026, -0.978983, 0.169757,
		-0.946495, 0.158063, 0.281360,
		38.776325, 36.236496, 44.781090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099785, 35.732025, 44.104427>,  <39.438869, 36.125832, 44.584141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099785, 35.732025, 44.104427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831512, 35.991165, 44.248917>,  <38.670551, 36.146648, 44.335609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831512, 35.991165, 44.248917>,  <39.099785, 35.732025, 44.104427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831512, 35.991165, 44.248917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371890, 0.127663, -0.919456,
		-0.641785, -0.750994, 0.155308,
		-0.670679, 0.647850, 0.361219,
		38.630310, 36.185520, 44.357281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445553, 35.495934, 43.837948>,  <39.099785, 35.732025, 44.104427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445553, 35.495934, 43.837948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.336189, 35.867233, 43.938820>,  <38.270573, 36.090015, 43.999344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.336189, 35.867233, 43.938820>,  <38.445553, 35.495934, 43.837948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336189, 35.867233, 43.938820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493977, 0.089464, -0.864860,
		-0.825370, -0.361029, 0.434076,
		-0.273406, 0.928253, 0.252181,
		38.254166, 36.145710, 44.014473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655422, 35.512733, 43.850277>,  <38.445553, 35.495934, 43.837948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655422, 35.512733, 43.850277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799164, 35.880821, 43.788242>,  <37.885410, 36.101673, 43.751022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799164, 35.880821, 43.788242>,  <37.655422, 35.512733, 43.850277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799164, 35.880821, 43.788242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541101, 0.070071, -0.838033,
		-0.760311, 0.385069, 0.523114,
		0.359356, 0.920224, -0.155085,
		37.906971, 36.156887, 43.741718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095810, 35.992165, 43.853973>,  <37.655422, 35.512733, 43.850277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095810, 35.992165, 43.853973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370991, 36.183437, 43.635590>,  <37.536098, 36.298199, 43.504559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370991, 36.183437, 43.635590>,  <37.095810, 35.992165, 43.853973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370991, 36.183437, 43.635590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646030, 0.060680, -0.760897,
		-0.330715, 0.876164, 0.350661,
		0.687948, 0.478178, -0.545961,
		37.577374, 36.326889, 43.471802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700848, 36.426567, 43.443642>,  <37.095810, 35.992165, 43.853973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700848, 36.426567, 43.443642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063480, 36.439377, 43.275318>,  <37.281059, 36.447063, 43.174324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063480, 36.439377, 43.275318>,  <36.700848, 36.426567, 43.443642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063480, 36.439377, 43.275318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417241, 0.217794, -0.882313,
		0.063397, 0.975469, 0.210809,
		0.906582, 0.032022, -0.420813,
		37.335457, 36.448982, 43.149075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572449, 37.058079, 43.098934>,  <36.700848, 36.426567, 43.443642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572449, 37.058079, 43.098934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886822, 36.880764, 42.926517>,  <37.075447, 36.774376, 42.823067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886822, 36.880764, 42.926517>,  <36.572449, 37.058079, 43.098934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886822, 36.880764, 42.926517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278492, 0.368627, -0.886880,
		0.552041, 0.817072, 0.166264,
		0.785934, -0.443291, -0.431045,
		37.122601, 36.747776, 42.797203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818428, 37.516293, 42.711884>,  <36.572449, 37.058079, 43.098934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818428, 37.516293, 42.711884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973499, 37.181911, 42.556503>,  <37.066544, 36.981285, 42.463276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973499, 37.181911, 42.556503>,  <36.818428, 37.516293, 42.711884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973499, 37.181911, 42.556503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236634, 0.317030, -0.918420,
		0.890902, 0.447975, -0.074907,
		0.387682, -0.835949, -0.388449,
		37.089806, 36.931126, 42.439968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177155, 37.746220, 42.149876>,  <36.818428, 37.516293, 42.711884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177155, 37.746220, 42.149876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134575, 37.354778, 42.079437>,  <37.109028, 37.119915, 42.037174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134575, 37.354778, 42.079437>,  <37.177155, 37.746220, 42.149876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134575, 37.354778, 42.079437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174994, 0.192777, -0.965512,
		0.978798, -0.071965, -0.191771,
		-0.106452, -0.978600, -0.176096,
		37.102638, 37.061199, 42.026608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641666, 37.553730, 41.584858>,  <37.177155, 37.746220, 42.149876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641666, 37.553730, 41.584858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348263, 37.282032, 41.594624>,  <37.172222, 37.119015, 41.600483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348263, 37.282032, 41.594624>,  <37.641666, 37.553730, 41.584858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348263, 37.282032, 41.594624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130721, 0.105735, -0.985765,
		0.666991, -0.726259, -0.166349,
		-0.733509, -0.679241, 0.024414,
		37.128208, 37.078259, 41.601948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861923, 36.949535, 41.093773>,  <37.641666, 37.553730, 41.584858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861923, 36.949535, 41.093773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467796, 36.956299, 41.161736>,  <37.231319, 36.960358, 41.202511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467796, 36.956299, 41.161736>,  <37.861923, 36.949535, 41.093773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467796, 36.956299, 41.161736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170545, -0.049546, -0.984103,
		-0.008216, -0.998629, 0.051701,
		-0.985316, 0.016902, 0.169904,
		37.172203, 36.961372, 41.212708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557812, 36.379223, 40.726303>,  <37.861923, 36.949535, 41.093773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557812, 36.379223, 40.726303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261806, 36.643612, 40.776108>,  <37.084202, 36.802246, 40.805988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261806, 36.643612, 40.776108>,  <37.557812, 36.379223, 40.726303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261806, 36.643612, 40.776108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138091, 0.031864, -0.989907,
		-0.658266, -0.749736, 0.067694,
		-0.740012, 0.660970, 0.124507,
		37.039803, 36.841904, 40.813461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144962, 36.241997, 40.203735>,  <37.557812, 36.379223, 40.726303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144962, 36.241997, 40.203735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997395, 36.595123, 40.320030>,  <36.908855, 36.806999, 40.389809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997395, 36.595123, 40.320030>,  <37.144962, 36.241997, 40.203735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997395, 36.595123, 40.320030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109489, 0.269346, -0.956799,
		-0.922991, -0.384813, -0.002707,
		-0.368918, 0.882820, 0.290737,
		36.886719, 36.859970, 40.407249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635159, 36.395855, 39.737839>,  <37.144962, 36.241997, 40.203735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635159, 36.395855, 39.737839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714153, 36.756699, 39.891300>,  <36.761551, 36.973206, 39.983379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714153, 36.756699, 39.891300>,  <36.635159, 36.395855, 39.737839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714153, 36.756699, 39.891300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239613, 0.423914, -0.873431,
		-0.950571, 0.080561, 0.299875,
		0.197486, 0.902112, 0.383657,
		36.773399, 37.027332, 40.006397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050594, 36.780216, 39.637901>,  <36.635159, 36.395855, 39.737839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050594, 36.780216, 39.637901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365833, 37.023731, 39.674309>,  <36.554977, 37.169838, 39.696152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365833, 37.023731, 39.674309>,  <36.050594, 36.780216, 39.637901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365833, 37.023731, 39.674309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244889, 0.445744, -0.861012,
		-0.564739, 0.656274, 0.500375,
		0.788099, 0.608783, 0.091015,
		36.602264, 37.206367, 39.701614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807030, 37.412354, 39.191582>,  <36.050594, 36.780216, 39.637901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807030, 37.412354, 39.191582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199032, 37.437889, 39.266956>,  <36.434235, 37.453213, 39.312180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199032, 37.437889, 39.266956>,  <35.807030, 37.412354, 39.191582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199032, 37.437889, 39.266956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144011, 0.425848, -0.893261,
		-0.137272, 0.902540, 0.408141,
		0.980009, 0.063842, 0.188433,
		36.493034, 37.457043, 39.323486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931141, 38.013531, 39.025257>,  <35.807030, 37.412354, 39.191582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931141, 38.013531, 39.025257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292942, 37.843166, 39.016613>,  <36.510025, 37.740948, 39.011425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292942, 37.843166, 39.016613>,  <35.931141, 38.013531, 39.025257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292942, 37.843166, 39.016613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231625, 0.533186, -0.813672,
		0.358073, 0.730967, 0.580922,
		0.904507, -0.425910, -0.021610,
		36.564293, 37.715393, 39.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 38.572506, 38.787331>,  <35.931141, 38.013531, 39.025257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421707, 38.572506, 38.787331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606033, 38.223915, 38.720196>,  <36.716629, 38.014759, 38.679916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606033, 38.223915, 38.720196>,  <36.421707, 38.572506, 38.787331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606033, 38.223915, 38.720196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091463, 0.234738, -0.967746,
		0.882769, 0.430603, 0.187880,
		0.460817, -0.871481, -0.167835,
		36.744278, 37.962471, 38.669846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060204, 38.773319, 38.502800>,  <36.421707, 38.572506, 38.787331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060204, 38.773319, 38.502800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997967, 38.391323, 38.401775>,  <36.960625, 38.162125, 38.341160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997967, 38.391323, 38.401775>,  <37.060204, 38.773319, 38.502800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997967, 38.391323, 38.401775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173730, 0.225238, -0.958689,
		0.972424, -0.193046, 0.130864,
		-0.155595, -0.954987, -0.252565,
		36.951286, 38.104828, 38.326004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595119, 38.622658, 38.028641>,  <37.060204, 38.773319, 38.502800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595119, 38.622658, 38.028641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331871, 38.328606, 37.963581>,  <37.173920, 38.152176, 37.924545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331871, 38.328606, 37.963581>,  <37.595119, 38.622658, 38.028641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331871, 38.328606, 37.963581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240987, -0.001013, -0.970528,
		0.713300, -0.677925, 0.177824,
		-0.658125, -0.735131, -0.162648,
		37.134434, 38.108067, 37.914787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929596, 38.053680, 37.824238>,  <37.595119, 38.622658, 38.028641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929596, 38.053680, 37.824238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554657, 38.012596, 37.691074>,  <37.329693, 37.987946, 37.611176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554657, 38.012596, 37.691074>,  <37.929596, 38.053680, 37.824238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554657, 38.012596, 37.691074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344424, -0.129312, -0.929866,
		0.052462, -0.986270, 0.156588,
		-0.937347, -0.102715, -0.332911,
		37.273453, 37.981781, 37.591202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132019, 37.634537, 37.294266>,  <37.929596, 38.053680, 37.824238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132019, 37.634537, 37.294266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770615, 37.795910, 37.236420>,  <37.553772, 37.892735, 37.201714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770615, 37.795910, 37.236420>,  <38.132019, 37.634537, 37.294266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770615, 37.795910, 37.236420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083101, -0.166115, -0.982598,
		-0.420432, -0.899805, 0.116562,
		-0.903510, 0.403430, -0.144615,
		37.499561, 37.916939, 37.193035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793163, 37.288418, 36.802593>,  <38.132019, 37.634537, 37.294266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793163, 37.288418, 36.802593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634350, 37.654266, 36.772053>,  <37.539062, 37.873775, 36.753731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634350, 37.654266, 36.772053>,  <37.793163, 37.288418, 36.802593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634350, 37.654266, 36.772053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045460, -0.063487, -0.996947,
		-0.916676, -0.399296, -0.016372,
		-0.397037, 0.914622, -0.076349,
		37.515240, 37.928654, 36.749149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960140, 36.579376, 37.128597>,  <37.793163, 37.288418, 36.802593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960140, 36.579376, 37.128597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320156, 36.631084, 36.962116>,  <38.536163, 36.662109, 36.862228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320156, 36.631084, 36.962116>,  <37.960140, 36.579376, 37.128597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320156, 36.631084, 36.962116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435265, -0.314655, 0.843526,
		-0.021917, -0.940363, -0.339468,
		0.900036, 0.129271, -0.416203,
		38.590168, 36.669865, 36.837254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289028, 35.986355, 37.240936>,  <37.960140, 36.579376, 37.128597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289028, 35.986355, 37.240936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588707, 36.245037, 37.183689>,  <38.768513, 36.400246, 37.149342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588707, 36.245037, 37.183689>,  <38.289028, 35.986355, 37.240936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588707, 36.245037, 37.183689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486795, -0.391087, 0.781077,
		0.449153, -0.654848, -0.607812,
		0.749194, 0.646703, -0.143119,
		38.813465, 36.439049, 37.140755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844952, 35.543751, 37.343414>,  <38.289028, 35.986355, 37.240936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844952, 35.543751, 37.343414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979889, 35.916012, 37.400116>,  <39.060852, 36.139366, 37.434135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.979889, 35.916012, 37.400116>,  <38.844952, 35.543751, 37.343414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979889, 35.916012, 37.400116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494440, -0.303298, 0.814579,
		0.801081, -0.204700, -0.562465,
		0.337339, 0.930649, 0.141755,
		39.081089, 36.195206, 37.442642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559727, 35.559845, 37.252728>,  <38.844952, 35.543751, 37.343414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559727, 35.559845, 37.252728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434456, 35.852093, 37.495415>,  <39.359295, 36.027443, 37.641029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434456, 35.852093, 37.495415>,  <39.559727, 35.559845, 37.252728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434456, 35.852093, 37.495415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538388, -0.389696, 0.747178,
		0.782343, 0.560648, -0.271317,
		-0.313173, 0.730623, 0.606722,
		39.340504, 36.071281, 37.677433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062199, 35.632771, 37.793221>,  <39.559727, 35.559845, 37.252728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062199, 35.632771, 37.793221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774334, 35.871784, 37.934666>,  <39.601616, 36.015194, 38.019531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774334, 35.871784, 37.934666>,  <40.062199, 35.632771, 37.793221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774334, 35.871784, 37.934666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335186, -0.147029, 0.930609,
		0.608063, 0.788247, -0.094475,
		-0.719659, 0.597536, 0.353612,
		39.558437, 36.051044, 38.040749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419399, 36.064026, 38.207146>,  <40.062199, 35.632771, 37.793221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419399, 36.064026, 38.207146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036705, 36.086967, 38.321251>,  <39.807091, 36.100731, 38.389713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036705, 36.086967, 38.321251>,  <40.419399, 36.064026, 38.207146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036705, 36.086967, 38.321251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281049, -0.071664, 0.957014,
		0.075329, 0.995779, 0.052444,
		-0.956732, 0.057352, 0.285261,
		39.749683, 36.104172, 38.406830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380867, 36.532772, 38.829205>,  <40.419399, 36.064026, 38.207146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380867, 36.532772, 38.829205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048302, 36.311909, 38.854099>,  <39.848763, 36.179390, 38.869038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.048302, 36.311909, 38.854099>,  <40.380867, 36.532772, 38.829205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048302, 36.311909, 38.854099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147756, -0.111721, 0.982693,
		-0.535651, 0.826219, 0.174472,
		-0.831412, -0.552160, 0.062235,
		39.798878, 36.146259, 38.872768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925426, 36.764332, 39.395714>,  <40.380867, 36.532772, 38.829205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925426, 36.764332, 39.395714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797951, 36.391747, 39.325500>,  <39.721466, 36.168194, 39.283371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797951, 36.391747, 39.325500>,  <39.925426, 36.764332, 39.395714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797951, 36.391747, 39.325500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047018, -0.200500, 0.978565,
		-0.946692, 0.303605, 0.107693,
		-0.318690, -0.931463, -0.175537,
		39.702343, 36.112309, 39.272839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398460, 36.657097, 39.867271>,  <39.925426, 36.764332, 39.395714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398460, 36.657097, 39.867271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520756, 36.294109, 39.752018>,  <39.594131, 36.076317, 39.682865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520756, 36.294109, 39.752018>,  <39.398460, 36.657097, 39.867271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520756, 36.294109, 39.752018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023012, -0.309577, 0.950596,
		-0.951839, -0.283999, -0.115531,
		0.305734, -0.907473, -0.288132,
		39.612476, 36.021866, 39.665577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048054, 36.243717, 40.392738>,  <39.398460, 36.657097, 39.867271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048054, 36.243717, 40.392738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324352, 35.995712, 40.243900>,  <39.490131, 35.846909, 40.154598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324352, 35.995712, 40.243900>,  <39.048054, 36.243717, 40.392738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324352, 35.995712, 40.243900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124669, -0.404764, 0.905883,
		-0.712271, -0.672122, -0.202292,
		0.690744, -0.620015, -0.372095,
		39.531574, 35.809708, 40.132271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881954, 35.621819, 40.556515>,  <39.048054, 36.243717, 40.392738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881954, 35.621819, 40.556515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277412, 35.583160, 40.510475>,  <39.514687, 35.559963, 40.482853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277412, 35.583160, 40.510475>,  <38.881954, 35.621819, 40.556515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277412, 35.583160, 40.510475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066251, -0.407150, 0.910955,
		-0.134903, -0.908233, -0.396122,
		0.988641, -0.096647, -0.115097,
		39.574005, 35.554165, 40.475945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976555, 34.959183, 40.781094>,  <38.881954, 35.621819, 40.556515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976555, 34.959183, 40.781094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320244, 35.160606, 40.817261>,  <39.526455, 35.281460, 40.838959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320244, 35.160606, 40.817261>,  <38.976555, 34.959183, 40.781094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320244, 35.160606, 40.817261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237460, -0.549064, 0.801337,
		0.453161, -0.667054, -0.591341,
		0.859219, 0.503555, 0.090416,
		39.578011, 35.311672, 40.844387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477592, 34.532711, 41.114502>,  <38.976555, 34.959183, 40.781094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477592, 34.532711, 41.114502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661194, 34.885696, 41.155640>,  <39.771355, 35.097488, 41.180321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661194, 34.885696, 41.155640>,  <39.477592, 34.532711, 41.114502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661194, 34.885696, 41.155640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407985, -0.312198, 0.857952,
		0.789217, -0.351845, -0.503331,
		0.459005, 0.882461, 0.102845,
		39.798897, 35.150436, 41.186493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183979, 34.502457, 41.225430>,  <39.477592, 34.532711, 41.114502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183979, 34.502457, 41.225430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110065, 34.860905, 41.386837>,  <40.065720, 35.075974, 41.483681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110065, 34.860905, 41.386837>,  <40.183979, 34.502457, 41.225430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110065, 34.860905, 41.386837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524998, -0.257090, 0.811345,
		0.830802, 0.361767, -0.422956,
		-0.184781, 0.896119, 0.403518,
		40.054630, 35.129742, 41.507893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809757, 34.642735, 41.573334>,  <40.183979, 34.502457, 41.225430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809757, 34.642735, 41.573334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550327, 34.893578, 41.745884>,  <40.394669, 35.044083, 41.849415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550327, 34.893578, 41.745884>,  <40.809757, 34.642735, 41.573334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550327, 34.893578, 41.745884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496522, -0.080969, 0.864240,
		0.576898, 0.774714, -0.258858,
		-0.648579, 0.627107, 0.431373,
		40.355755, 35.081711, 41.875298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159611, 35.144444, 42.028160>,  <40.809757, 34.642735, 41.573334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159611, 35.144444, 42.028160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.780239, 35.122093, 42.152966>,  <40.552616, 35.108685, 42.227848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.780239, 35.122093, 42.152966>,  <41.159611, 35.144444, 42.028160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780239, 35.122093, 42.152966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313409, -0.018052, 0.949447,
		-0.047415, 0.998275, 0.034632,
		-0.948434, -0.055872, 0.312013,
		40.495708, 35.105331, 42.246571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084927, 35.607315, 42.541649>,  <41.159611, 35.144444, 42.028160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084927, 35.607315, 42.541649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.796345, 35.345005, 42.630608>,  <40.623196, 35.187618, 42.683983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.796345, 35.345005, 42.630608>,  <41.084927, 35.607315, 42.541649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796345, 35.345005, 42.630608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243341, 0.060590, 0.968046,
		-0.648293, 0.752524, 0.115864,
		-0.721458, -0.655772, 0.222400,
		40.579906, 35.148273, 42.697327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.256187, 35.451096, 43.267628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935253, 35.221550, 43.201984>,  <40.742691, 35.083824, 43.162598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935253, 35.221550, 43.201984>,  <41.256187, 35.451096, 43.267628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935253, 35.221550, 43.201984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001119, -0.276396, 0.961043,
		-0.596867, 0.770899, 0.222405,
		-0.802339, -0.573864, -0.164109,
		40.694550, 35.049393, 43.152752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702110, 35.827930, 43.658680>,  <41.256187, 35.451096, 43.267628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702110, 35.827930, 43.658680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639244, 35.434639, 43.621689>,  <40.601524, 35.198662, 43.599495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639244, 35.434639, 43.621689>,  <40.702110, 35.827930, 43.658680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639244, 35.434639, 43.621689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077072, -0.081140, 0.993718,
		-0.984560, 0.163306, -0.063027,
		-0.157166, -0.983233, -0.092474,
		40.592094, 35.139668, 43.593948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347721, 35.731079, 44.198956>,  <40.702110, 35.827930, 43.658680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347721, 35.731079, 44.198956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.408020, 35.349781, 44.094196>,  <40.444199, 35.121002, 44.031342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.408020, 35.349781, 44.094196>,  <40.347721, 35.731079, 44.198956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408020, 35.349781, 44.094196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319045, -0.297663, 0.899782,
		-0.935674, -0.052085, -0.349002,
		0.150750, -0.953249, -0.261898,
		40.453243, 35.063805, 44.015629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737164, 35.139637, 44.430325>,  <40.347721, 35.731079, 44.198956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737164, 35.139637, 44.430325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115589, 35.014408, 44.396980>,  <40.342644, 34.939270, 44.376976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115589, 35.014408, 44.396980>,  <39.737164, 35.139637, 44.430325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115589, 35.014408, 44.396980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011012, -0.288217, 0.957502,
		-0.323801, -0.904937, -0.276118,
		0.946061, -0.313080, -0.083360,
		40.399406, 34.920486, 44.371971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793938, 34.753941, 44.956028>,  <39.737164, 35.139637, 44.430325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793938, 34.753941, 44.956028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179157, 34.807060, 44.862301>,  <40.410290, 34.838932, 44.806065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179157, 34.807060, 44.862301>,  <39.793938, 34.753941, 44.956028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179157, 34.807060, 44.862301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260304, -0.235502, 0.936366,
		0.069163, -0.962758, -0.261367,
		0.963046, 0.132797, -0.234321,
		40.468071, 34.846901, 44.792004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277153, 34.123302, 45.058552>,  <39.793938, 34.753941, 44.956028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277153, 34.123302, 45.058552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.556965, 34.408653, 45.075272>,  <40.724854, 34.579865, 45.085304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.556965, 34.408653, 45.075272>,  <40.277153, 34.123302, 45.058552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556965, 34.408653, 45.075272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194192, -0.246061, 0.949602,
		0.687713, -0.656157, -0.310659,
		0.699529, 0.713381, 0.041799,
		40.766823, 34.622669, 45.087811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691296, 33.856262, 45.565414>,  <40.277153, 34.123302, 45.058552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691296, 33.856262, 45.565414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798416, 34.241493, 45.554390>,  <40.862690, 34.472633, 45.547775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798416, 34.241493, 45.554390>,  <40.691296, 33.856262, 45.565414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798416, 34.241493, 45.554390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229616, -0.036015, 0.972615,
		0.935712, -0.266799, -0.230783,
		0.267804, 0.963079, -0.027562,
		40.878757, 34.530418, 45.546120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439037, 33.937626, 45.782944>,  <40.691296, 33.856262, 45.565414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439037, 33.937626, 45.782944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247494, 34.285221, 45.832840>,  <41.132568, 34.493778, 45.862778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247494, 34.285221, 45.832840>,  <41.439037, 33.937626, 45.782944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247494, 34.285221, 45.832840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333266, 0.048486, 0.941585,
		0.812174, 0.492460, -0.312820,
		-0.478861, 0.868983, 0.124741,
		41.103836, 34.545918, 45.870262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966835, 34.353767, 46.101250>,  <41.439037, 33.937626, 45.782944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966835, 34.353767, 46.101250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.603447, 34.501671, 46.179176>,  <41.385414, 34.590412, 46.225933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.603447, 34.501671, 46.179176>,  <41.966835, 34.353767, 46.101250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603447, 34.501671, 46.179176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244065, 0.090966, 0.965483,
		0.339276, 0.924663, -0.172886,
		-0.908473, 0.369761, 0.194815,
		41.330906, 34.612598, 46.237621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117489, 34.909519, 46.449387>,  <41.966835, 34.353767, 46.101250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117489, 34.909519, 46.449387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747868, 34.809940, 46.565422>,  <41.526096, 34.750191, 46.635044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747868, 34.809940, 46.565422>,  <42.117489, 34.909519, 46.449387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747868, 34.809940, 46.565422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217288, 0.282289, 0.934398,
		-0.314509, 0.926464, -0.206755,
		-0.924051, -0.248951, 0.290091,
		41.470654, 34.735256, 46.652451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051472, 35.330711, 46.997482>,  <42.117489, 34.909519, 46.449387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051472, 35.330711, 46.997482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.753841, 35.068901, 47.051079>,  <41.575264, 34.911816, 47.083237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.753841, 35.068901, 47.051079>,  <42.051472, 35.330711, 46.997482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753841, 35.068901, 47.051079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147732, 0.034397, 0.988429,
		-0.651558, 0.755260, 0.071100,
		-0.744075, -0.654522, 0.133988,
		41.530621, 34.872543, 47.091274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688900, 35.508282, 47.599464>,  <42.051472, 35.330711, 46.997482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688900, 35.508282, 47.599464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536011, 35.141544, 47.553318>,  <41.444275, 34.921501, 47.525631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536011, 35.141544, 47.553318>,  <41.688900, 35.508282, 47.599464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536011, 35.141544, 47.553318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159252, -0.057621, 0.985555,
		-0.910243, 0.395077, -0.123984,
		-0.382226, -0.916839, -0.115366,
		41.421345, 34.866493, 47.518707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893696, 35.466084, 47.942558>,  <41.688900, 35.508282, 47.599464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893696, 35.466084, 47.942558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120468, 35.136917, 47.957539>,  <41.256531, 34.939419, 47.966526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120468, 35.136917, 47.957539>,  <40.893696, 35.466084, 47.942558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120468, 35.136917, 47.957539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038187, 0.019162, 0.999087,
		-0.822882, -0.567841, -0.020561,
		0.566928, -0.822916, 0.037452,
		41.290546, 34.890041, 47.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548660, 35.050892, 48.432926>,  <40.893696, 35.466084, 47.942558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548660, 35.050892, 48.432926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868629, 34.820450, 48.365723>,  <41.060612, 34.682186, 48.325401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868629, 34.820450, 48.365723>,  <40.548660, 35.050892, 48.432926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868629, 34.820450, 48.365723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022815, -0.250573, 0.967829,
		-0.599668, -0.778022, -0.187295,
		0.799924, -0.576103, -0.168011,
		41.108608, 34.647617, 48.315319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360950, 34.414257, 48.695408>,  <40.548660, 35.050892, 48.432926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360950, 34.414257, 48.695408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.759586, 34.405174, 48.663662>,  <40.998768, 34.399723, 48.644615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.759586, 34.405174, 48.663662>,  <40.360950, 34.414257, 48.695408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759586, 34.405174, 48.663662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058318, -0.486831, 0.871548,
		-0.058430, -0.873201, -0.483844,
		0.996587, -0.022708, -0.079369,
		41.058563, 34.398361, 48.639851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527924, 33.736866, 48.620541>,  <40.360950, 34.414257, 48.695408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527924, 33.736866, 48.620541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.826756, 33.930260, 48.803020>,  <41.006054, 34.046295, 48.912510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.826756, 33.930260, 48.803020>,  <40.527924, 33.736866, 48.620541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826756, 33.930260, 48.803020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210804, -0.478546, 0.852382,
		0.630423, -0.732966, -0.255593,
		0.747080, 0.483481, 0.456199,
		41.050880, 34.075306, 48.939880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853348, 33.241135, 49.012238>,  <40.527924, 33.736866, 48.620541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853348, 33.241135, 49.012238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969612, 33.589951, 49.169750>,  <41.039371, 33.799240, 49.264256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969612, 33.589951, 49.169750>,  <40.853348, 33.241135, 49.012238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969612, 33.589951, 49.169750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321283, -0.298704, 0.898639,
		0.901275, -0.387710, 0.193352,
		0.290657, 0.872041, 0.393779,
		41.056808, 33.851562, 49.287884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198006, 33.050251, 49.680569>,  <40.853348, 33.241135, 49.012238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198006, 33.050251, 49.680569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088448, 33.434792, 49.691784>,  <41.022713, 33.665516, 49.698513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088448, 33.434792, 49.691784>,  <41.198006, 33.050251, 49.680569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088448, 33.434792, 49.691784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424691, -0.147051, 0.893316,
		0.862914, 0.232765, 0.448554,
		-0.273893, 0.961351, 0.028039,
		41.006279, 33.723198, 49.700195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523216, 33.249447, 50.224297>,  <41.198006, 33.050251, 49.680569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523216, 33.249447, 50.224297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.213280, 33.492851, 50.155788>,  <41.027317, 33.638893, 50.114685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.213280, 33.492851, 50.155788>,  <41.523216, 33.249447, 50.224297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213280, 33.492851, 50.155788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434957, -0.316601, 0.842956,
		0.458723, 0.727654, 0.509992,
		-0.774845, 0.608508, -0.171266,
		40.980827, 33.675404, 50.104408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444706, 33.545403, 50.813286>,  <41.523216, 33.249447, 50.224297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444706, 33.545403, 50.813286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.094368, 33.635208, 50.642410>,  <40.884167, 33.689091, 50.539883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.094368, 33.635208, 50.642410>,  <41.444706, 33.545403, 50.813286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094368, 33.635208, 50.642410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462601, -0.138411, 0.875695,
		0.137480, 0.964591, 0.225087,
		-0.875842, 0.224516, -0.427192,
		40.831615, 33.702564, 50.514252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135540, 34.002590, 51.266758>,  <41.444706, 33.545403, 50.813286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135540, 34.002590, 51.266758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.832275, 33.832741, 51.068813>,  <40.650318, 33.730831, 50.950047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.832275, 33.832741, 51.068813>,  <41.135540, 34.002590, 51.266758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832275, 33.832741, 51.068813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433520, -0.238656, 0.868967,
		-0.487085, 0.873349, -0.003143,
		-0.758161, -0.424624, -0.494860,
		40.604828, 33.705353, 50.920357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656696, 34.144138, 51.670868>,  <41.135540, 34.002590, 51.266758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656696, 34.144138, 51.670868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511307, 33.834473, 51.463577>,  <40.424072, 33.648674, 51.339203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511307, 33.834473, 51.463577>,  <40.656696, 34.144138, 51.670868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511307, 33.834473, 51.463577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555981, -0.266090, 0.787452,
		-0.747510, 0.574345, -0.333701,
		-0.363475, -0.774160, -0.518230,
		40.402264, 33.602226, 51.308109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969398, 34.248981, 51.642765>,  <40.656696, 34.144138, 51.670868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969398, 34.248981, 51.642765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051910, 33.858582, 51.614841>,  <40.101418, 33.624340, 51.598087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051910, 33.858582, 51.614841>,  <39.969398, 34.248981, 51.642765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051910, 33.858582, 51.614841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739194, -0.202183, 0.642428,
		-0.641123, -0.080921, -0.763160,
		0.206284, -0.975999, -0.069808,
		40.113796, 33.565781, 51.593899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272297, 33.788956, 51.433186>,  <39.969398, 34.248981, 51.642765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272297, 33.788956, 51.433186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547424, 33.620476, 51.669662>,  <39.712502, 33.519386, 51.811546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547424, 33.620476, 51.669662>,  <39.272297, 33.788956, 51.433186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547424, 33.620476, 51.669662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705263, -0.195007, 0.681599,
		-0.171805, -0.885755, -0.431186,
		0.687814, -0.421202, 0.591186,
		39.753769, 33.494118, 51.847019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700146, 33.805702, 51.966393>,  <39.272297, 33.788956, 51.433186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700146, 33.805702, 51.966393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488228, 34.119186, 52.096081>,  <38.361076, 34.307278, 52.173893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488228, 34.119186, 52.096081>,  <38.700146, 33.805702, 51.966393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488228, 34.119186, 52.096081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415661, 0.093288, -0.904723,
		-0.739283, -0.614085, 0.276332,
		-0.529799, 0.783707, 0.324217,
		38.329288, 34.354298, 52.193344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010719, 33.690678, 51.715576>,  <38.700146, 33.805702, 51.966393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010719, 33.690678, 51.715576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044518, 34.079563, 51.802902>,  <38.064796, 34.312893, 51.855297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044518, 34.079563, 51.802902>,  <38.010719, 33.690678, 51.715576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044518, 34.079563, 51.802902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383415, 0.233951, -0.893453,
		-0.919702, -0.008209, 0.392530,
		0.084498, 0.972214, 0.218313,
		38.069866, 34.371227, 51.868397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394737, 33.929996, 51.541054>,  <38.010719, 33.690678, 51.715576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394737, 33.929996, 51.541054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653416, 34.235081, 51.543800>,  <37.808624, 34.418133, 51.545448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653416, 34.235081, 51.543800>,  <37.394737, 33.929996, 51.541054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653416, 34.235081, 51.543800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249408, 0.219967, -0.943085,
		-0.720815, 0.608181, 0.332479,
		0.646701, 0.762713, 0.006871,
		37.847427, 34.463894, 51.545860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065914, 34.453152, 51.287216>,  <37.394737, 33.929996, 51.541054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065914, 34.453152, 51.287216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447910, 34.557190, 51.230148>,  <37.677109, 34.619614, 51.195908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447910, 34.557190, 51.230148>,  <37.065914, 34.453152, 51.287216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447910, 34.557190, 51.230148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198889, 0.204537, -0.958440,
		-0.220101, 0.943672, 0.247059,
		0.954986, 0.260091, -0.142667,
		37.734406, 34.635216, 51.187347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004383, 34.980255, 50.720348>,  <37.065914, 34.453152, 51.287216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004383, 34.980255, 50.720348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395447, 34.897556, 50.735561>,  <37.630085, 34.847939, 50.744690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395447, 34.897556, 50.735561>,  <37.004383, 34.980255, 50.720348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395447, 34.897556, 50.735561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041423, 0.012084, -0.999069,
		0.206090, 0.978321, 0.020378,
		0.977656, -0.206743, 0.038034,
		37.688744, 34.835533, 50.746971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335106, 35.354305, 50.123299>,  <37.004383, 34.980255, 50.720348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335106, 35.354305, 50.123299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621284, 35.095161, 50.227924>,  <37.792992, 34.939674, 50.290699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621284, 35.095161, 50.227924>,  <37.335106, 35.354305, 50.123299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621284, 35.095161, 50.227924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263429, -0.096612, -0.959829,
		0.647104, 0.755609, 0.101544,
		0.715445, -0.647859, 0.261568,
		37.835918, 34.900803, 50.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958836, 35.576481, 49.825066>,  <37.335106, 35.354305, 50.123299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958836, 35.576481, 49.825066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008232, 35.186039, 49.896584>,  <38.037872, 34.951775, 49.939495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008232, 35.186039, 49.896584>,  <37.958836, 35.576481, 49.825066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008232, 35.186039, 49.896584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329515, -0.129617, -0.935211,
		0.936039, 0.174411, 0.305634,
		0.123496, -0.976105, 0.178797,
		38.045280, 34.893208, 49.950222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584171, 35.409893, 49.557423>,  <37.958836, 35.576481, 49.825066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584171, 35.409893, 49.557423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390144, 35.061401, 49.587524>,  <38.273727, 34.852306, 49.605587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390144, 35.061401, 49.587524>,  <38.584171, 35.409893, 49.557423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390144, 35.061401, 49.587524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380515, -0.287774, -0.878860,
		0.787347, -0.397672, 0.471107,
		-0.485070, -0.871231, 0.075258,
		38.244625, 34.800034, 49.610104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180637, 35.038143, 49.914959>,  <38.584171, 35.409893, 49.557423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180637, 35.038143, 49.914959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956318, 34.854664, 49.639248>,  <38.821728, 34.744576, 49.473820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956318, 34.854664, 49.639248>,  <39.180637, 35.038143, 49.914959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956318, 34.854664, 49.639248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496593, 0.479798, -0.723318,
		0.662499, -0.747924, -0.041283,
		-0.560794, -0.458697, -0.689280,
		38.788078, 34.717056, 49.432465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581551, 35.045509, 49.301987>,  <39.180637, 35.038143, 49.914959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581551, 35.045509, 49.301987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.218311, 34.957027, 49.159763>,  <39.000366, 34.903938, 49.074429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.218311, 34.957027, 49.159763>,  <39.581551, 35.045509, 49.301987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218311, 34.957027, 49.159763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165556, 0.590255, -0.790057,
		0.384633, -0.776317, -0.499390,
		-0.908102, -0.221205, -0.355555,
		38.945881, 34.890667, 49.053097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696850, 34.897007, 48.635628>,  <39.581551, 35.045509, 49.301987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696850, 34.897007, 48.635628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303703, 34.968914, 48.619339>,  <39.067814, 35.012058, 48.609566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303703, 34.968914, 48.619339>,  <39.696850, 34.897007, 48.635628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303703, 34.968914, 48.619339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082268, 0.230143, -0.969673,
		-0.164942, -0.956409, -0.240988,
		-0.982866, 0.179765, -0.040721,
		39.008842, 35.022842, 48.607124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454552, 34.531925, 48.201004>,  <39.696850, 34.897007, 48.635628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454552, 34.531925, 48.201004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175022, 34.818020, 48.197357>,  <39.007305, 34.989677, 48.195171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175022, 34.818020, 48.197357>,  <39.454552, 34.531925, 48.201004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175022, 34.818020, 48.197357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145991, 0.130144, -0.980688,
		-0.700239, -0.686656, -0.195366,
		-0.698821, 0.715238, -0.009114,
		38.965374, 35.032593, 48.194622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139271, 34.520657, 47.476017>,  <39.454552, 34.531925, 48.201004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139271, 34.520657, 47.476017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025692, 34.868847, 47.636837>,  <38.957546, 35.077763, 47.733330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025692, 34.868847, 47.636837>,  <39.139271, 34.520657, 47.476017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025692, 34.868847, 47.636837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021717, 0.413365, -0.910307,
		-0.958594, -0.267210, -0.098469,
		-0.283946, 0.870476, 0.402052,
		38.940510, 35.129990, 47.757454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685017, 34.733685, 47.056168>,  <39.139271, 34.520657, 47.476017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685017, 34.733685, 47.056168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793102, 35.068176, 47.247040>,  <38.857956, 35.268871, 47.361565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793102, 35.068176, 47.247040>,  <38.685017, 34.733685, 47.056168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793102, 35.068176, 47.247040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123450, 0.521618, -0.844200,
		-0.954852, 0.169210, 0.244183,
		0.270218, 0.836231, 0.477179,
		38.874168, 35.319046, 47.390194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287132, 35.259911, 46.817745>,  <38.685017, 34.733685, 47.056168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287132, 35.259911, 46.817745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604591, 35.457241, 46.960152>,  <38.795067, 35.575642, 47.045597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604591, 35.457241, 46.960152>,  <38.287132, 35.259911, 46.817745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604591, 35.457241, 46.960152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066854, 0.652366, -0.754949,
		-0.604692, 0.575363, 0.550731,
		0.793648, 0.493331, 0.356016,
		38.842686, 35.605240, 47.066956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070446, 35.977894, 46.840542>,  <38.287132, 35.259911, 46.817745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070446, 35.977894, 46.840542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470387, 35.976379, 46.847374>,  <38.710350, 35.975471, 46.851475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470387, 35.976379, 46.847374>,  <38.070446, 35.977894, 46.840542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470387, 35.976379, 46.847374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016419, 0.540499, -0.841185,
		-0.006047, 0.841336, 0.540478,
		0.999847, -0.003787, 0.017082,
		38.770340, 35.975243, 46.852497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276745, 36.702003, 46.655159>,  <38.070446, 35.977894, 46.840542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276745, 36.702003, 46.655159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531422, 36.410152, 46.555347>,  <38.684227, 36.235043, 46.495461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531422, 36.410152, 46.555347>,  <38.276745, 36.702003, 46.655159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531422, 36.410152, 46.555347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129826, 0.420400, -0.898003,
		0.760114, 0.539352, 0.362389,
		0.636688, -0.729632, -0.249530,
		38.722427, 36.191261, 46.480488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823387, 37.070030, 46.353966>,  <38.276745, 36.702003, 46.655159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823387, 37.070030, 46.353966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825771, 36.689976, 46.229256>,  <38.827202, 36.461945, 46.154430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825771, 36.689976, 46.229256>,  <38.823387, 37.070030, 46.353966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825771, 36.689976, 46.229256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057169, 0.310949, -0.948706,
		0.998347, 0.023482, -0.052464,
		0.005964, -0.950137, -0.311777,
		38.827560, 36.404934, 46.135723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123276, 37.100704, 45.756359>,  <38.823387, 37.070030, 46.353966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123276, 37.100704, 45.756359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980080, 36.729420, 45.715828>,  <38.894161, 36.506649, 45.691509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980080, 36.729420, 45.715828>,  <39.123276, 37.100704, 45.756359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980080, 36.729420, 45.715828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018740, 0.115638, -0.993115,
		0.933537, -0.353626, -0.058792,
		-0.357990, -0.928211, -0.101326,
		38.872681, 36.450958, 45.685429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487762, 36.772179, 45.144520>,  <39.123276, 37.100704, 45.756359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487762, 36.772179, 45.144520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142891, 36.580482, 45.210209>,  <38.935966, 36.465466, 45.249622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142891, 36.580482, 45.210209>,  <39.487762, 36.772179, 45.144520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142891, 36.580482, 45.210209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224189, 0.070253, -0.972010,
		0.454291, -0.874867, -0.168012,
		-0.862183, -0.479242, 0.164220,
		38.884235, 36.436710, 45.259476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.716076, 39.020168, 28.347166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415787, 38.872944, 28.566599>,  <41.235615, 38.784607, 28.698259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415787, 38.872944, 28.566599>,  <41.716076, 39.020168, 28.347166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415787, 38.872944, 28.566599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434468, -0.900635, -0.009712,
		0.497648, 0.231050, 0.836040,
		-0.750723, -0.368066, 0.548583,
		41.190571, 38.762524, 28.731174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086674, 38.626915, 28.859398>,  <41.716076, 39.020168, 28.347166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086674, 38.626915, 28.859398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713993, 38.481628, 28.859669>,  <41.490383, 38.394455, 28.859831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713993, 38.481628, 28.859669>,  <42.086674, 38.626915, 28.859398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713993, 38.481628, 28.859669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361101, -0.926068, 0.109561,
		-0.039167, 0.102323, 0.993980,
		-0.931704, -0.363218, 0.000678,
		41.434483, 38.372662, 28.859873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054047, 38.237461, 29.459902>,  <42.086674, 38.626915, 28.859398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054047, 38.237461, 29.459902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741798, 38.110664, 29.244442>,  <41.554447, 38.034588, 29.115166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741798, 38.110664, 29.244442>,  <42.054047, 38.237461, 29.459902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741798, 38.110664, 29.244442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302852, -0.945746, 0.117663,
		-0.546724, -0.071281, 0.834274,
		-0.780624, -0.316991, -0.538649,
		41.507610, 38.015568, 29.082848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851562, 37.637089, 29.894690>,  <42.054047, 38.237461, 29.459902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851562, 37.637089, 29.894690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716465, 37.596050, 29.520437>,  <41.635406, 37.571426, 29.295887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716465, 37.596050, 29.520437>,  <41.851562, 37.637089, 29.894690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716465, 37.596050, 29.520437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229802, -0.972948, 0.023736,
		-0.912753, -0.206993, 0.352187,
		-0.337746, -0.102598, -0.935629,
		41.615143, 37.565269, 29.239748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283119, 37.085091, 29.909046>,  <41.851562, 37.637089, 29.894690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283119, 37.085091, 29.909046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405533, 37.088051, 29.528250>,  <41.478981, 37.089828, 29.299772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405533, 37.088051, 29.528250>,  <41.283119, 37.085091, 29.909046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405533, 37.088051, 29.528250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227060, -0.971680, 0.065441,
		-0.924546, -0.236186, -0.299050,
		0.306037, 0.007400, -0.951991,
		41.497345, 37.090271, 29.242653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975246, 36.463791, 29.570755>,  <41.283119, 37.085091, 29.909046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975246, 36.463791, 29.570755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296825, 36.560696, 29.353510>,  <41.489773, 36.618839, 29.223162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296825, 36.560696, 29.353510>,  <40.975246, 36.463791, 29.570755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296825, 36.560696, 29.353510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370094, -0.918680, 0.138051,
		-0.465504, -0.311989, -0.828232,
		0.803951, 0.242260, -0.543114,
		41.538010, 36.633373, 29.190575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113770, 35.846676, 29.169859>,  <40.975246, 36.463791, 29.570755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113770, 35.846676, 29.169859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467419, 36.032375, 29.148689>,  <41.679607, 36.143795, 29.135986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467419, 36.032375, 29.148689>,  <41.113770, 35.846676, 29.169859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467419, 36.032375, 29.148689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456102, -0.832860, 0.313552,
		0.101486, -0.301358, -0.948095,
		0.884122, 0.464249, -0.052926,
		41.732655, 36.171650, 29.132811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645470, 35.312843, 29.017670>,  <41.113770, 35.846676, 29.169859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645470, 35.312843, 29.017670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873695, 35.614105, 29.148643>,  <42.010632, 35.794865, 29.227228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873695, 35.614105, 29.148643>,  <41.645470, 35.312843, 29.017670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873695, 35.614105, 29.148643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555889, -0.647659, 0.521081,
		0.604522, -0.115291, -0.788201,
		0.570561, 0.753157, 0.327435,
		42.044865, 35.840054, 29.246874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401386, 35.080536, 28.907902>,  <41.645470, 35.312843, 29.017670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401386, 35.080536, 28.907902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366592, 35.351212, 29.200348>,  <42.345715, 35.513615, 29.375816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366592, 35.351212, 29.200348>,  <42.401386, 35.080536, 28.907902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366592, 35.351212, 29.200348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663019, -0.508427, 0.549461,
		0.743531, 0.532541, -0.404428,
		-0.086988, 0.676685, 0.731116,
		42.340496, 35.554218, 29.419683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128319, 35.200554, 29.171013>,  <42.401386, 35.080536, 28.907902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128319, 35.200554, 29.171013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.888493, 35.341312, 29.458536>,  <42.744595, 35.425770, 29.631050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.888493, 35.341312, 29.458536>,  <43.128319, 35.200554, 29.171013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888493, 35.341312, 29.458536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663883, -0.282909, 0.692258,
		0.446963, 0.892260, -0.063998,
		-0.599569, 0.351901, 0.718807,
		42.708622, 35.446884, 29.674177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599499, 35.505035, 29.635223>,  <43.128319, 35.200554, 29.171013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599499, 35.505035, 29.635223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250629, 35.475483, 29.828655>,  <43.041306, 35.457752, 29.944714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250629, 35.475483, 29.828655>,  <43.599499, 35.505035, 29.635223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250629, 35.475483, 29.828655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488477, -0.184914, 0.852758,
		0.026414, 0.979973, 0.197369,
		-0.872177, -0.073886, 0.483579,
		42.988976, 35.453316, 29.973728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632488, 35.888504, 30.327772>,  <43.599499, 35.505035, 29.635223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632488, 35.888504, 30.327772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347675, 35.608120, 30.344118>,  <43.176788, 35.439892, 30.353926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347675, 35.608120, 30.344118>,  <43.632488, 35.888504, 30.327772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347675, 35.608120, 30.344118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346186, -0.299832, 0.888963,
		-0.610873, 0.647116, 0.456152,
		-0.712032, -0.700957, 0.040863,
		43.134068, 35.397831, 30.356377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320625, 36.017666, 30.955742>,  <43.632488, 35.888504, 30.327772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320625, 36.017666, 30.955742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225212, 35.639591, 30.866549>,  <43.167965, 35.412746, 30.813032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225212, 35.639591, 30.866549>,  <43.320625, 36.017666, 30.955742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225212, 35.639591, 30.866549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116462, -0.255793, 0.959691,
		-0.964127, 0.202945, 0.171093,
		-0.238529, -0.945189, -0.222981,
		43.153652, 35.356033, 30.799654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802135, 35.871300, 31.412521>,  <43.320625, 36.017666, 30.955742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802135, 35.871300, 31.412521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901737, 35.494286, 31.323420>,  <42.961498, 35.268078, 31.269958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901737, 35.494286, 31.323420>,  <42.802135, 35.871300, 31.412521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901737, 35.494286, 31.323420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121493, -0.197781, 0.972688,
		-0.960852, -0.269266, 0.065264,
		0.249004, -0.942538, -0.222753,
		42.976437, 35.211525, 31.256594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345699, 35.330334, 31.719851>,  <42.802135, 35.871300, 31.412521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345699, 35.330334, 31.719851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690155, 35.141068, 31.645506>,  <42.896828, 35.027508, 31.600899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690155, 35.141068, 31.645506>,  <42.345699, 35.330334, 31.719851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690155, 35.141068, 31.645506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195359, -0.029520, 0.980288,
		-0.469330, -0.880476, 0.067017,
		0.861142, -0.473171, -0.185863,
		42.948498, 34.999115, 31.589746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283157, 34.623390, 31.924213>,  <42.345699, 35.330334, 31.719851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283157, 34.623390, 31.924213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678246, 34.684959, 31.934958>,  <42.915298, 34.721901, 31.941404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678246, 34.684959, 31.934958>,  <42.283157, 34.623390, 31.924213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678246, 34.684959, 31.934958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066136, -0.567605, 0.820640,
		0.141557, -0.808785, -0.570814,
		0.987718, 0.153919, 0.026859,
		42.974560, 34.731136, 31.943016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544048, 34.099102, 32.215424>,  <42.283157, 34.623390, 31.924213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544048, 34.099102, 32.215424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871239, 34.328114, 32.237827>,  <43.067551, 34.465519, 32.251270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871239, 34.328114, 32.237827>,  <42.544048, 34.099102, 32.215424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871239, 34.328114, 32.237827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233066, -0.418836, 0.877643,
		0.525929, -0.704834, -0.476033,
		0.817972, 0.572525, 0.056005,
		43.116631, 34.499870, 32.254627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080288, 33.667164, 32.522461>,  <42.544048, 34.099102, 32.215424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080288, 33.667164, 32.522461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190861, 34.043308, 32.601768>,  <43.257202, 34.268993, 32.649353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190861, 34.043308, 32.601768>,  <43.080288, 33.667164, 32.522461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190861, 34.043308, 32.601768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176592, -0.252493, 0.951348,
		0.944670, -0.227969, -0.235857,
		0.276430, 0.940360, 0.198265,
		43.273788, 34.325417, 32.661247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566402, 33.605476, 33.049515>,  <43.080288, 33.667164, 32.522461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566402, 33.605476, 33.049515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484356, 33.996761, 33.062355>,  <43.435127, 34.231533, 33.070057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484356, 33.996761, 33.062355>,  <43.566402, 33.605476, 33.049515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484356, 33.996761, 33.062355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126150, -0.006099, 0.991993,
		0.970575, 0.207520, -0.122150,
		-0.205113, 0.978212, 0.032098,
		43.422821, 34.290226, 33.071983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047337, 33.930847, 33.626366>,  <43.566402, 33.605476, 33.049515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047337, 33.930847, 33.626366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729420, 34.164875, 33.561882>,  <43.538670, 34.305294, 33.523190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729420, 34.164875, 33.561882>,  <44.047337, 33.930847, 33.626366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729420, 34.164875, 33.561882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089686, 0.149489, 0.984688,
		0.600215, 0.797083, -0.066340,
		-0.794795, 0.585074, -0.161213,
		43.490982, 34.340397, 33.513519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085606, 34.598415, 33.886269>,  <44.047337, 33.930847, 33.626366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085606, 34.598415, 33.886269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699707, 34.493141, 33.885456>,  <43.468170, 34.429977, 33.884968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699707, 34.493141, 33.885456>,  <44.085606, 34.598415, 33.886269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699707, 34.493141, 33.885456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001280, -0.003042, 0.999995,
		-0.263191, 0.964740, 0.002598,
		-0.964743, -0.263187, -0.002035,
		43.410286, 34.414185, 33.884846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249992, 34.203274, 34.493771>,  <44.085606, 34.598415, 33.886269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249992, 34.203274, 34.493771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633606, 34.282085, 34.575199>,  <44.863773, 34.329372, 34.624054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633606, 34.282085, 34.575199>,  <44.249992, 34.203274, 34.493771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633606, 34.282085, 34.575199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123596, 0.937550, -0.325152,
		-0.254920, 0.286671, 0.923491,
		0.959030, 0.197028, 0.203569,
		44.921314, 34.341194, 34.636269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277641, 34.748512, 35.069199>,  <44.249992, 34.203274, 34.493771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277641, 34.748512, 35.069199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597778, 34.759567, 34.829639>,  <44.789864, 34.766201, 34.685905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597778, 34.759567, 34.829639>,  <44.277641, 34.748512, 35.069199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597778, 34.759567, 34.829639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142924, 0.978933, -0.145820,
		0.582252, 0.202304, 0.787437,
		0.800347, 0.027640, -0.598899,
		44.837883, 34.767860, 34.649971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632393, 35.403587, 35.251381>,  <44.277641, 34.748512, 35.069199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632393, 35.403587, 35.251381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815830, 35.308807, 34.908794>,  <44.925892, 35.251938, 34.703243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815830, 35.308807, 34.908794>,  <44.632393, 35.403587, 35.251381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815830, 35.308807, 34.908794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066703, 0.951897, -0.299071,
		0.886137, 0.194282, 0.420732,
		0.458597, -0.236953, -0.856470,
		44.953411, 35.237720, 34.651852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122944, 35.963646, 35.107979>,  <44.632393, 35.403587, 35.251381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122944, 35.963646, 35.107979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066750, 35.775288, 34.759609>,  <45.033031, 35.662273, 34.550587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066750, 35.775288, 34.759609>,  <45.122944, 35.963646, 35.107979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066750, 35.775288, 34.759609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017324, 0.880687, -0.473381,
		0.989931, -0.051416, -0.131883,
		-0.140487, -0.470900, -0.870929,
		45.024605, 35.634018, 34.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580143, 36.136250, 34.621338>,  <45.122944, 35.963646, 35.107979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580143, 36.136250, 34.621338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.266571, 36.037224, 34.393597>,  <45.078426, 35.977806, 34.256954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.266571, 36.037224, 34.393597>,  <45.580143, 36.136250, 34.621338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266571, 36.037224, 34.393597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106736, 0.957144, -0.269226,
		0.611601, -0.150286, -0.776762,
		-0.783934, -0.247567, -0.569350,
		45.031391, 35.962955, 34.222790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431747, 36.665379, 34.165417>,  <45.580143, 36.136250, 34.621338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431747, 36.665379, 34.165417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124344, 36.468330, 34.002090>,  <44.939903, 36.350101, 33.904095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124344, 36.468330, 34.002090>,  <45.431747, 36.665379, 34.165417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124344, 36.468330, 34.002090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169795, 0.772285, -0.612165,
		0.616897, -0.401126, -0.677153,
		-0.768510, -0.492620, -0.408311,
		44.893791, 36.320545, 33.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540195, 36.539871, 33.418015>,  <45.431747, 36.665379, 34.165417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540195, 36.539871, 33.418015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151264, 36.550442, 33.510860>,  <44.917904, 36.556782, 33.566570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151264, 36.550442, 33.510860>,  <45.540195, 36.539871, 33.418015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151264, 36.550442, 33.510860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142020, 0.722050, -0.677107,
		-0.185491, -0.691336, -0.698318,
		-0.972329, 0.026422, 0.232118,
		44.859566, 36.558369, 33.580494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219006, 36.380013, 32.784927>,  <45.540195, 36.539871, 33.418015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219006, 36.380013, 32.784927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971058, 36.571484, 33.033646>,  <44.822289, 36.686367, 33.182877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971058, 36.571484, 33.033646>,  <45.219006, 36.380013, 32.784927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971058, 36.571484, 33.033646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126624, 0.720992, -0.681276,
		-0.774418, -0.501039, -0.386312,
		-0.619874, 0.478676, 0.621793,
		44.785095, 36.715088, 33.220184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600864, 36.546921, 32.377586>,  <45.219006, 36.380013, 32.784927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600864, 36.546921, 32.377586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568359, 36.792397, 32.691727>,  <44.548859, 36.939682, 32.880211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568359, 36.792397, 32.691727>,  <44.600864, 36.546921, 32.377586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568359, 36.792397, 32.691727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198946, 0.762117, -0.616115,
		-0.976636, -0.206308, 0.060162,
		-0.081259, 0.613689, 0.785355,
		44.543980, 36.976501, 32.927334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036377, 37.017731, 32.246670>,  <44.600864, 36.546921, 32.377586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036377, 37.017731, 32.246670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200848, 37.217094, 32.551964>,  <44.299530, 37.336712, 32.735138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200848, 37.217094, 32.551964>,  <44.036377, 37.017731, 32.246670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200848, 37.217094, 32.551964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279595, 0.865883, -0.414817,
		-0.867619, -0.042835, 0.495380,
		0.411173, 0.498410, 0.763233,
		44.324200, 37.366619, 32.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567131, 37.467697, 32.477680>,  <44.036377, 37.017731, 32.246670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567131, 37.467697, 32.477680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912308, 37.629162, 32.599258>,  <44.119415, 37.726040, 32.672207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912308, 37.629162, 32.599258>,  <43.567131, 37.467697, 32.477680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912308, 37.629162, 32.599258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259451, 0.870135, -0.418987,
		-0.433602, 0.282704, 0.855610,
		0.862945, 0.403662, 0.303944,
		44.171192, 37.750259, 32.690441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374973, 38.095970, 32.712486>,  <43.567131, 37.467697, 32.477680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374973, 38.095970, 32.712486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769802, 38.111885, 32.650375>,  <44.006699, 38.121433, 32.613110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769802, 38.111885, 32.650375>,  <43.374973, 38.095970, 32.712486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769802, 38.111885, 32.650375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134538, 0.732295, -0.667565,
		0.087148, 0.679824, 0.728179,
		0.987069, 0.039791, -0.155281,
		44.065922, 38.123821, 32.603790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502777, 38.789642, 32.775574>,  <43.374973, 38.095970, 32.712486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502777, 38.789642, 32.775574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793564, 38.619427, 32.560001>,  <43.968037, 38.517300, 32.430660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793564, 38.619427, 32.560001>,  <43.502777, 38.789642, 32.775574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793564, 38.619427, 32.560001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021749, 0.770174, -0.637463,
		0.686330, 0.475135, 0.550635,
		0.726965, -0.425535, -0.538927,
		44.011654, 38.491768, 32.398323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793037, 39.386383, 32.434834>,  <43.502777, 38.789642, 32.775574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793037, 39.386383, 32.434834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961681, 39.091141, 32.224144>,  <44.062866, 38.913994, 32.097729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961681, 39.091141, 32.224144>,  <43.793037, 39.386383, 32.434834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961681, 39.091141, 32.224144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038430, 0.594903, -0.802878,
		0.905962, 0.318260, 0.279183,
		0.421611, -0.738107, -0.526728,
		44.088165, 38.869709, 32.066124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303162, 39.717491, 31.960979>,  <43.793037, 39.386383, 32.434834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303162, 39.717491, 31.960979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240692, 39.353848, 31.806505>,  <44.203209, 39.135662, 31.713821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240692, 39.353848, 31.806505>,  <44.303162, 39.717491, 31.960979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240692, 39.353848, 31.806505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020728, 0.387879, -0.921477,
		0.987512, -0.151917, -0.041733,
		-0.156175, -0.909105, -0.386184,
		44.193840, 39.081116, 31.690649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700668, 39.685230, 31.406597>,  <44.303162, 39.717491, 31.960979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700668, 39.685230, 31.406597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434391, 39.397793, 31.326122>,  <44.274624, 39.225330, 31.277838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434391, 39.397793, 31.326122>,  <44.700668, 39.685230, 31.406597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434391, 39.397793, 31.326122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166546, 0.405875, -0.898626,
		0.727403, -0.564702, -0.389867,
		-0.665693, -0.718594, -0.201186,
		44.234684, 39.182217, 31.265766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689178, 39.740273, 30.656281>,  <44.700668, 39.685230, 31.406597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689178, 39.740273, 30.656281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364399, 39.542019, 30.779621>,  <44.169529, 39.423065, 30.853624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364399, 39.542019, 30.779621>,  <44.689178, 39.740273, 30.656281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364399, 39.542019, 30.779621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515978, 0.362398, -0.776166,
		0.272950, -0.789311, -0.549987,
		-0.811951, -0.495636, 0.308351,
		44.120815, 39.393330, 30.872126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340416, 39.314209, 30.125547>,  <44.689178, 39.740273, 30.656281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340416, 39.314209, 30.125547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.036594, 39.376579, 30.378138>,  <43.854301, 39.414001, 30.529692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.036594, 39.376579, 30.378138>,  <44.340416, 39.314209, 30.125547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036594, 39.376579, 30.378138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598574, 0.212330, -0.772415,
		-0.254524, -0.964677, -0.067941,
		-0.759557, 0.155930, 0.631473,
		43.808727, 39.423359, 30.567579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667656, 38.895695, 29.911207>,  <44.340416, 39.314209, 30.125547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667656, 38.895695, 29.911207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530891, 39.182514, 30.154167>,  <43.448833, 39.354607, 30.299944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530891, 39.182514, 30.154167>,  <43.667656, 38.895695, 29.911207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530891, 39.182514, 30.154167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625159, 0.309023, -0.716716,
		-0.701622, -0.624775, 0.342612,
		-0.341911, 0.717050, 0.607400,
		43.428318, 39.397629, 30.336388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961983, 38.936592, 29.812721>,  <43.667656, 38.895695, 29.911207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961983, 38.936592, 29.812721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.052338, 39.305775, 29.937384>,  <43.106548, 39.527283, 30.012180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.052338, 39.305775, 29.937384>,  <42.961983, 38.936592, 29.812721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052338, 39.305775, 29.937384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587401, 0.384267, -0.712249,
		-0.777133, -0.022180, 0.628945,
		0.225885, 0.922955, 0.311656,
		43.120102, 39.582661, 30.030880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290741, 39.217243, 30.079294>,  <42.961983, 38.936592, 29.812721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290741, 39.217243, 30.079294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532936, 39.527740, 30.009052>,  <42.678253, 39.714039, 29.966908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532936, 39.527740, 30.009052>,  <42.290741, 39.217243, 30.079294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532936, 39.527740, 30.009052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760613, 0.499482, -0.414712,
		-0.234205, 0.384669, 0.892848,
		0.605488, 0.776239, -0.175603,
		42.714584, 39.760612, 29.956371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.838562, 35.554451, 40.299683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443413, 35.540871, 40.360283>,  <40.206322, 35.532722, 40.396645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443413, 35.540871, 40.360283>,  <40.838562, 35.554451, 40.299683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443413, 35.540871, 40.360283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155034, 0.268402, -0.950750,
		-0.008387, -0.962709, -0.270411,
		-0.987873, -0.033949, 0.151504,
		40.147049, 35.530685, 40.405735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615944, 35.174133, 39.798397>,  <40.838562, 35.554451, 40.299683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615944, 35.174133, 39.798397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287373, 35.383347, 39.889347>,  <40.090229, 35.508873, 39.943916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287373, 35.383347, 39.889347>,  <40.615944, 35.174133, 39.798397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287373, 35.383347, 39.889347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188113, 0.127898, -0.973784,
		-0.538401, -0.842662, -0.006670,
		-0.821424, 0.523032, 0.227376,
		40.040947, 35.540257, 39.957561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102291, 34.926373, 39.282383>,  <40.615944, 35.174133, 39.798397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102291, 34.926373, 39.282383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947304, 35.269028, 39.418640>,  <39.854309, 35.474621, 39.500397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947304, 35.269028, 39.418640>,  <40.102291, 34.926373, 39.282383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947304, 35.269028, 39.418640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173038, 0.295362, -0.939584,
		-0.905497, -0.423006, 0.033787,
		-0.387471, 0.856637, 0.340646,
		39.831062, 35.526020, 39.520832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455402, 34.934742, 39.005527>,  <40.102291, 34.926373, 39.282383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455402, 34.934742, 39.005527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569275, 35.308811, 39.089817>,  <39.637596, 35.533253, 39.140392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569275, 35.308811, 39.089817>,  <39.455402, 34.934742, 39.005527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569275, 35.308811, 39.089817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338017, 0.303627, -0.890817,
		-0.897052, 0.182368, 0.402541,
		0.284679, 0.935175, 0.210726,
		39.654678, 35.589363, 39.153034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839161, 35.329708, 38.773464>,  <39.455402, 34.934742, 39.005527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839161, 35.329708, 38.773464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134323, 35.595627, 38.820007>,  <39.311420, 35.755177, 38.847935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134323, 35.595627, 38.820007>,  <38.839161, 35.329708, 38.773464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134323, 35.595627, 38.820007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275607, 0.454207, -0.847193,
		-0.616060, 0.593082, 0.518386,
		0.737910, 0.664793, 0.116361,
		39.355698, 35.795063, 38.854916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474194, 36.078133, 38.806213>,  <38.839161, 35.329708, 38.773464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474194, 36.078133, 38.806213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856586, 36.091251, 38.689583>,  <39.086021, 36.099125, 38.619602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856586, 36.091251, 38.689583>,  <38.474194, 36.078133, 38.806213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856586, 36.091251, 38.689583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250704, 0.607631, -0.753613,
		0.152453, 0.793542, 0.589109,
		0.955984, 0.032802, -0.291579,
		39.143383, 36.101093, 38.602108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663383, 36.822239, 38.601040>,  <38.474194, 36.078133, 38.806213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663383, 36.822239, 38.601040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921894, 36.566578, 38.434277>,  <39.077000, 36.413181, 38.334221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921894, 36.566578, 38.434277>,  <38.663383, 36.822239, 38.601040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921894, 36.566578, 38.434277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001114, 0.547118, -0.837054,
		0.763102, 0.540505, 0.354302,
		0.646277, -0.639152, -0.416905,
		39.115776, 36.374832, 38.309204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068874, 37.235466, 38.227558>,  <38.663383, 36.822239, 38.601040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068874, 37.235466, 38.227558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130432, 36.869251, 38.078907>,  <39.167366, 36.649521, 37.989716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130432, 36.869251, 38.078907>,  <39.068874, 37.235466, 38.227558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130432, 36.869251, 38.078907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028366, 0.380044, -0.924534,
		0.987680, 0.131741, 0.084457,
		0.153896, -0.915539, -0.371625,
		39.176601, 36.594589, 37.967419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529362, 37.393013, 37.755775>,  <39.068874, 37.235466, 38.227558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529362, 37.393013, 37.755775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385494, 37.029346, 37.671814>,  <39.299175, 36.811146, 37.621437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385494, 37.029346, 37.671814>,  <39.529362, 37.393013, 37.755775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385494, 37.029346, 37.671814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193113, 0.292621, -0.936525,
		0.912878, -0.296302, -0.280818,
		-0.359667, -0.909163, -0.209908,
		39.277596, 36.756596, 37.608841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790119, 37.190525, 37.069931>,  <39.529362, 37.393013, 37.755775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790119, 37.190525, 37.069931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453259, 36.977703, 37.105022>,  <39.251141, 36.850010, 37.126076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453259, 36.977703, 37.105022>,  <39.790119, 37.190525, 37.069931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453259, 36.977703, 37.105022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246321, 0.234842, -0.940306,
		0.479690, -0.813492, -0.328829,
		-0.842154, -0.532053, 0.087729,
		39.200611, 36.818089, 37.131340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796921, 36.769657, 36.468063>,  <39.790119, 37.190525, 37.069931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796921, 36.769657, 36.468063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410938, 36.785995, 36.571751>,  <39.179348, 36.795799, 36.633965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410938, 36.785995, 36.571751>,  <39.796921, 36.769657, 36.468063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410938, 36.785995, 36.571751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254820, 0.090110, -0.962781,
		-0.062687, -0.995094, -0.076543,
		-0.964955, 0.040849, 0.259218,
		39.121452, 36.798248, 36.649517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277271, 36.224926, 36.076096>,  <39.796921, 36.769657, 36.468063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277271, 36.224926, 36.076096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051632, 36.023788, 36.338070>,  <38.916248, 35.903107, 36.495255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051632, 36.023788, 36.338070>,  <39.277271, 36.224926, 36.076096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051632, 36.023788, 36.338070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678659, -0.169455, -0.714638,
		0.470335, -0.847603, -0.245672,
		-0.564098, -0.502846, 0.654934,
		38.882401, 35.872936, 36.534550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232800, 35.493137, 35.810143>,  <39.277271, 36.224926, 36.076096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232800, 35.493137, 35.810143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910999, 35.630890, 36.003708>,  <38.717918, 35.713539, 36.119846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910999, 35.630890, 36.003708>,  <39.232800, 35.493137, 35.810143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910999, 35.630890, 36.003708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579439, -0.276086, -0.766829,
		-0.130477, -0.897318, 0.421659,
		-0.804504, 0.344379, 0.483918,
		38.669647, 35.734203, 36.148884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216122, 35.367455, 36.479061>,  <39.232800, 35.493137, 35.810143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216122, 35.367455, 36.479061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440090, 35.067860, 36.337345>,  <39.574471, 34.888103, 36.252316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440090, 35.067860, 36.337345>,  <39.216122, 35.367455, 36.479061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440090, 35.067860, 36.337345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131813, -0.341629, 0.930545,
		-0.817997, -0.567727, -0.092558,
		0.559917, -0.748983, -0.354286,
		39.608067, 34.843166, 36.231060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202290, 34.769859, 36.929924>,  <39.216122, 35.367455, 36.479061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202290, 34.769859, 36.929924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462376, 34.582947, 36.690300>,  <39.618427, 34.470798, 36.546528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462376, 34.582947, 36.690300>,  <39.202290, 34.769859, 36.929924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462376, 34.582947, 36.690300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187164, -0.862706, 0.469795,
		-0.736339, -0.193344, -0.648400,
		0.650211, -0.467286, -0.599058,
		39.657440, 34.442760, 36.510582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884403, 34.096722, 36.612999>,  <39.202290, 34.769859, 36.929924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884403, 34.096722, 36.612999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284199, 34.084538, 36.609028>,  <39.524075, 34.077229, 36.606644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284199, 34.084538, 36.609028>,  <38.884403, 34.096722, 36.612999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284199, 34.084538, 36.609028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022720, -0.892480, 0.450514,
		-0.022585, -0.450058, -0.892714,
		0.999487, -0.030457, -0.009931,
		39.584045, 34.075401, 36.606049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926613, 33.461685, 36.479832>,  <38.884403, 34.096722, 36.612999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926613, 33.461685, 36.479832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263897, 33.573513, 36.663498>,  <39.466267, 33.640610, 36.773697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263897, 33.573513, 36.663498>,  <38.926613, 33.461685, 36.479832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263897, 33.573513, 36.663498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038234, -0.820782, 0.569961,
		0.536223, -0.498153, -0.681402,
		0.843210, 0.279573, 0.459168,
		39.516861, 33.657387, 36.801247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325054, 32.914051, 36.464828>,  <38.926613, 33.461685, 36.479832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325054, 32.914051, 36.464828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478146, 33.126507, 36.767193>,  <39.570000, 33.253983, 36.948612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478146, 33.126507, 36.767193>,  <39.325054, 32.914051, 36.464828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478146, 33.126507, 36.767193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177354, -0.760754, 0.624339,
		0.906678, -0.373016, -0.196961,
		0.382728, 0.531143, 0.755914,
		39.592964, 33.285851, 36.993969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600479, 32.412106, 36.820480>,  <39.325054, 32.914051, 36.464828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600479, 32.412106, 36.820480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561443, 32.727207, 37.063763>,  <39.538021, 32.916267, 37.209732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561443, 32.727207, 37.063763>,  <39.600479, 32.412106, 36.820480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561443, 32.727207, 37.063763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144358, -0.615870, 0.774510,
		0.984701, -0.012213, 0.173823,
		-0.097593, 0.787754, 0.608211,
		39.532166, 32.963531, 37.246227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924854, 32.148930, 37.505901>,  <39.600479, 32.412106, 36.820480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924854, 32.148930, 37.505901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705318, 32.475285, 37.578671>,  <39.573597, 32.671097, 37.622330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705318, 32.475285, 37.578671>,  <39.924854, 32.148930, 37.505901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705318, 32.475285, 37.578671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299904, -0.395326, 0.868202,
		0.780275, 0.421948, 0.461661,
		-0.548843, 0.815890, 0.181919,
		39.540665, 32.720051, 37.633247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136986, 32.362984, 38.106766>,  <39.924854, 32.148930, 37.505901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136986, 32.362984, 38.106766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765648, 32.507755, 38.072861>,  <39.542847, 32.594620, 38.052517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765648, 32.507755, 38.072861>,  <40.136986, 32.362984, 38.106766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765648, 32.507755, 38.072861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235162, -0.395216, 0.887977,
		0.287888, 0.844280, 0.452008,
		-0.928342, 0.361933, -0.084765,
		39.487144, 32.616337, 38.047432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894894, 32.474583, 38.798325>,  <40.136986, 32.362984, 38.106766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894894, 32.474583, 38.798325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547916, 32.468994, 38.599388>,  <39.339729, 32.465641, 38.480026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547916, 32.468994, 38.599388>,  <39.894894, 32.474583, 38.798325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547916, 32.468994, 38.599388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460435, -0.356240, 0.813076,
		-0.188535, 0.934290, 0.302584,
		-0.867441, -0.013973, -0.497344,
		39.287685, 32.464802, 38.450184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382996, 32.841351, 39.232201>,  <39.894894, 32.474583, 38.798325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382996, 32.841351, 39.232201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186867, 32.593372, 38.987171>,  <39.069187, 32.444584, 38.840153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186867, 32.593372, 38.987171>,  <39.382996, 32.841351, 39.232201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186867, 32.593372, 38.987171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320550, -0.525314, 0.788221,
		-0.810449, 0.582845, 0.058851,
		-0.490326, -0.619949, -0.612571,
		39.039768, 32.407387, 38.803398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720631, 32.865288, 39.526470>,  <39.382996, 32.841351, 39.232201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720631, 32.865288, 39.526470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736298, 32.556637, 39.272526>,  <38.745697, 32.371445, 39.120159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736298, 32.556637, 39.272526>,  <38.720631, 32.865288, 39.526470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736298, 32.556637, 39.272526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462018, -0.577341, 0.673214,
		-0.886005, 0.266954, -0.379118,
		0.039163, -0.771630, -0.634865,
		38.748047, 32.325150, 39.082066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995640, 32.621502, 39.464912>,  <38.720631, 32.865288, 39.526470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995640, 32.621502, 39.464912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246994, 32.321045, 39.384003>,  <38.397808, 32.140770, 39.335457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246994, 32.321045, 39.384003>,  <37.995640, 32.621502, 39.464912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246994, 32.321045, 39.384003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379317, -0.522888, 0.763352,
		-0.679152, -0.402955, -0.613497,
		0.628388, -0.751143, -0.202273,
		38.435509, 32.095703, 39.323322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617531, 32.107281, 39.507179>,  <37.995640, 32.621502, 39.464912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617531, 32.107281, 39.507179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976593, 31.937872, 39.555927>,  <38.192028, 31.836227, 39.585178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976593, 31.937872, 39.555927>,  <37.617531, 32.107281, 39.507179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976593, 31.937872, 39.555927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299901, -0.384395, 0.873098,
		-0.322922, -0.820290, -0.472065,
		0.897653, -0.423515, 0.121876,
		38.245888, 31.810816, 39.592491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505802, 31.543135, 39.851242>,  <37.617531, 32.107281, 39.507179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505802, 31.543135, 39.851242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896069, 31.579275, 39.931152>,  <38.130230, 31.600960, 39.979099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896069, 31.579275, 39.931152>,  <37.505802, 31.543135, 39.851242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896069, 31.579275, 39.931152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184566, -0.153381, 0.970778,
		0.118352, -0.984028, -0.132973,
		0.975668, 0.090352, 0.199771,
		38.188770, 31.606380, 39.991085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687019, 30.924734, 40.131680>,  <37.505802, 31.543135, 39.851242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687019, 30.924734, 40.131680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969952, 31.179588, 40.254147>,  <38.139713, 31.332500, 40.327625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969952, 31.179588, 40.254147>,  <37.687019, 30.924734, 40.131680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969952, 31.179588, 40.254147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138277, -0.300046, 0.943850,
		0.693225, -0.709951, -0.124131,
		0.707332, 0.637136, 0.306169,
		38.182152, 31.370729, 40.345997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676640, 30.156990, 40.172985>,  <37.687019, 30.924734, 40.131680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676640, 30.156990, 40.172985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297085, 30.127193, 40.295670>,  <37.069351, 30.109316, 40.369278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297085, 30.127193, 40.295670>,  <37.676640, 30.156990, 40.172985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297085, 30.127193, 40.295670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311269, 0.381744, -0.870277,
		-0.052256, -0.921261, -0.385418,
		-0.948884, -0.074491, 0.306708,
		37.012421, 30.104845, 40.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294525, 29.855824, 39.608513>,  <37.676640, 30.156990, 40.172985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294525, 29.855824, 39.608513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011242, 30.017225, 39.840248>,  <36.841274, 30.114065, 39.979290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011242, 30.017225, 39.840248>,  <37.294525, 29.855824, 39.608513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011242, 30.017225, 39.840248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385754, 0.466107, -0.796202,
		-0.591303, -0.787356, -0.174447,
		-0.708205, 0.403504, 0.579336,
		36.798779, 30.138277, 40.014050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677826, 29.655369, 39.325176>,  <37.294525, 29.855824, 39.608513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677826, 29.655369, 39.325176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624142, 29.992672, 39.533371>,  <36.591930, 30.195053, 39.658287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624142, 29.992672, 39.533371>,  <36.677826, 29.655369, 39.325176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624142, 29.992672, 39.533371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413660, 0.429611, -0.802695,
		-0.900485, -0.323031, 0.291166,
		-0.134207, 0.843259, 0.520484,
		36.583878, 30.245649, 39.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951405, 29.841576, 39.203613>,  <36.677826, 29.655369, 39.325176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951405, 29.841576, 39.203613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149109, 30.165169, 39.330894>,  <36.267731, 30.359324, 39.407261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149109, 30.165169, 39.330894>,  <35.951405, 29.841576, 39.203613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149109, 30.165169, 39.330894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459945, 0.553968, -0.693952,
		-0.737667, 0.196642, 0.645894,
		0.494265, 0.808981, 0.318200,
		36.297390, 30.407864, 39.426353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470566, 30.275221, 39.019478>,  <35.951405, 29.841576, 39.203613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470566, 30.275221, 39.019478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767841, 30.533207, 39.090691>,  <35.946205, 30.687998, 39.133419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767841, 30.533207, 39.090691>,  <35.470566, 30.275221, 39.019478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767841, 30.533207, 39.090691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322336, 0.578297, -0.749448,
		-0.586322, 0.499594, 0.637677,
		0.743186, 0.644964, 0.178031,
		35.990799, 30.726696, 39.144100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193222, 30.801928, 39.182053>,  <35.470566, 30.275221, 39.019478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193222, 30.801928, 39.182053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557697, 30.886415, 39.040562>,  <35.776382, 30.937107, 38.955666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557697, 30.886415, 39.040562>,  <35.193222, 30.801928, 39.182053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557697, 30.886415, 39.040562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411469, 0.509764, -0.755536,
		0.020735, 0.833983, 0.551400,
		0.911188, 0.211218, -0.353728,
		35.831055, 30.949781, 38.934444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262539, 31.569170, 39.115307>,  <35.193222, 30.801928, 39.182053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262539, 31.569170, 39.115307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527508, 31.389898, 38.875195>,  <35.686489, 31.282335, 38.731125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527508, 31.389898, 38.875195>,  <35.262539, 31.569170, 39.115307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527508, 31.389898, 38.875195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320986, 0.554214, -0.767994,
		0.676883, 0.701415, 0.223263,
		0.662418, -0.448178, -0.600283,
		35.726234, 31.255445, 38.695110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508087, 32.148312, 38.729939>,  <35.262539, 31.569170, 39.115307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508087, 32.148312, 38.729939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622044, 31.844017, 38.496662>,  <35.690418, 31.661440, 38.356697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622044, 31.844017, 38.496662>,  <35.508087, 32.148312, 38.729939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622044, 31.844017, 38.496662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338213, 0.489501, -0.803742,
		0.896910, 0.426224, -0.117836,
		0.284893, -0.760738, -0.583193,
		35.707512, 31.615795, 38.321705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600502, 32.530697, 38.150738>,  <35.508087, 32.148312, 38.729939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600502, 32.530697, 38.150738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566494, 32.140392, 38.070087>,  <35.546089, 31.906208, 38.021698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566494, 32.140392, 38.070087>,  <35.600502, 32.530697, 38.150738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566494, 32.140392, 38.070087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418872, 0.218612, -0.881337,
		0.904056, 0.009524, -0.427307,
		-0.085020, -0.975765, -0.201627,
		35.540989, 31.847662, 38.009598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751427, 32.394913, 37.377739>,  <35.600502, 32.530697, 38.150738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751427, 32.394913, 37.377739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552223, 32.064312, 37.482716>,  <35.432701, 31.865950, 37.545700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552223, 32.064312, 37.482716>,  <35.751427, 32.394913, 37.377739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552223, 32.064312, 37.482716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600625, 0.110462, -0.791863,
		0.625490, -0.551983, -0.551431,
		-0.498007, -0.826507, 0.262442,
		35.402821, 31.816360, 37.561447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499851, 32.112556, 36.663757>,  <35.751427, 32.394913, 37.377739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499851, 32.112556, 36.663757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259590, 31.958286, 36.943890>,  <35.115433, 31.865723, 37.111969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259590, 31.958286, 36.943890>,  <35.499851, 32.112556, 36.663757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259590, 31.958286, 36.943890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747328, -0.040435, -0.663224,
		0.284110, -0.921746, -0.263941,
		-0.600652, -0.385679, 0.700334,
		35.079395, 31.842583, 37.153992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160149, 31.624771, 36.342220>,  <35.499851, 32.112556, 36.663757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160149, 31.624771, 36.342220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945362, 31.685156, 36.674213>,  <34.816490, 31.721386, 36.873409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945362, 31.685156, 36.674213>,  <35.160149, 31.624771, 36.342220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945362, 31.685156, 36.674213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838232, -0.206309, -0.504780,
		0.095032, -0.966772, 0.237322,
		-0.536969, 0.150961, 0.829985,
		34.784271, 31.730444, 36.923210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.159462, 28.388987, 43.560440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842525, 28.631384, 43.588634>,  <37.652363, 28.776823, 43.605553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842525, 28.631384, 43.588634>,  <38.159462, 28.388987, 43.560440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842525, 28.631384, 43.588634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045685, 0.174146, -0.983660,
		-0.608367, -0.776172, -0.165668,
		-0.792340, 0.605995, 0.070485,
		37.604824, 28.813183, 43.609779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722321, 28.105158, 43.028049>,  <38.159462, 28.388987, 43.560440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722321, 28.105158, 43.028049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570881, 28.461369, 43.128941>,  <37.480015, 28.675095, 43.189476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570881, 28.461369, 43.128941>,  <37.722321, 28.105158, 43.028049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570881, 28.461369, 43.128941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103530, 0.230057, -0.967655,
		-0.919751, -0.392469, 0.005097,
		-0.378602, 0.890529, 0.252228,
		37.457302, 28.728527, 43.204609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054279, 28.039564, 42.795898>,  <37.722321, 28.105158, 43.028049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054279, 28.039564, 42.795898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125935, 28.430578, 42.840324>,  <37.168926, 28.665186, 42.866982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.125935, 28.430578, 42.840324>,  <37.054279, 28.039564, 42.795898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125935, 28.430578, 42.840324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245417, 0.153726, -0.957151,
		-0.952722, 0.144205, 0.267442,
		0.179138, 0.977534, 0.111068,
		37.179676, 28.723839, 42.873646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494728, 28.363522, 42.453514>,  <37.054279, 28.039564, 42.795898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494728, 28.363522, 42.453514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787510, 28.634697, 42.480759>,  <36.963181, 28.797403, 42.497105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787510, 28.634697, 42.480759>,  <36.494728, 28.363522, 42.453514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787510, 28.634697, 42.480759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260721, 0.371043, -0.891264,
		-0.629497, 0.634606, 0.448340,
		0.731955, 0.677940, 0.068115,
		37.007095, 28.838079, 42.501194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134720, 29.066553, 42.436089>,  <36.494728, 28.363522, 42.453514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134720, 29.066553, 42.436089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519035, 29.115702, 42.336666>,  <36.749626, 29.145191, 42.277012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519035, 29.115702, 42.336666>,  <36.134720, 29.066553, 42.436089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519035, 29.115702, 42.336666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274040, 0.557281, -0.783798,
		0.042209, 0.821182, 0.569103,
		0.960792, 0.122873, -0.248559,
		36.807274, 29.152563, 42.262096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205353, 29.816767, 42.337505>,  <36.134720, 29.066553, 42.436089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205353, 29.816767, 42.337505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502190, 29.629440, 42.145683>,  <36.680294, 29.517044, 42.030590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502190, 29.629440, 42.145683>,  <36.205353, 29.816767, 42.337505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502190, 29.629440, 42.145683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099688, 0.630372, -0.769866,
		0.662839, 0.619121, 0.421111,
		0.742096, -0.468317, -0.479554,
		36.724819, 29.488945, 42.001816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650490, 30.377361, 41.962406>,  <36.205353, 29.816767, 42.337505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650490, 30.377361, 41.962406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737408, 30.043444, 41.760059>,  <36.789558, 29.843094, 41.638653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737408, 30.043444, 41.760059>,  <36.650490, 30.377361, 41.962406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737408, 30.043444, 41.760059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193838, 0.544834, -0.815832,
		0.956665, 0.079223, 0.280207,
		0.217299, -0.834793, -0.505867,
		36.802597, 29.793005, 41.608299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089485, 30.673946, 41.500198>,  <36.650490, 30.377361, 41.962406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089485, 30.673946, 41.500198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985397, 30.309124, 41.373432>,  <36.922947, 30.090231, 41.297371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985397, 30.309124, 41.373432>,  <37.089485, 30.673946, 41.500198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985397, 30.309124, 41.373432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054057, 0.341473, -0.938336,
		0.964036, -0.227039, -0.138160,
		-0.260217, -0.912058, -0.316920,
		36.907333, 30.035507, 41.278355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548733, 30.473505, 40.959740>,  <37.089485, 30.673946, 41.500198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548733, 30.473505, 40.959740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218025, 30.256931, 40.898685>,  <37.019600, 30.126987, 40.862053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218025, 30.256931, 40.898685>,  <37.548733, 30.473505, 40.959740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218025, 30.256931, 40.898685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081577, 0.383860, -0.919781,
		0.556594, -0.747996, -0.361533,
		-0.826770, -0.541437, -0.152635,
		36.969994, 30.094500, 40.852894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206055, 30.494698, 40.644398>,  <37.548733, 30.473505, 40.959740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206055, 30.494698, 40.644398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255676, 30.884291, 40.720261>,  <38.285450, 31.118046, 40.765778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255676, 30.884291, 40.720261>,  <38.206055, 30.494698, 40.644398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255676, 30.884291, 40.720261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010506, -0.192412, 0.981258,
		0.992220, -0.119738, -0.034102,
		0.124056, 0.973982, 0.189657,
		38.292892, 31.176485, 40.777157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811165, 30.476789, 41.050446>,  <38.206055, 30.494698, 40.644398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811165, 30.476789, 41.050446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607395, 30.818817, 41.089111>,  <38.485134, 31.024035, 41.112312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607395, 30.818817, 41.089111>,  <38.811165, 30.476789, 41.050446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607395, 30.818817, 41.089111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230726, 0.027504, 0.972630,
		0.829008, 0.517782, -0.211298,
		-0.509422, 0.855070, 0.096665,
		38.454567, 31.075338, 41.118111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246639, 30.964237, 41.325668>,  <38.811165, 30.476789, 41.050446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246639, 30.964237, 41.325668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892071, 31.097919, 41.453770>,  <38.679329, 31.178129, 41.530632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892071, 31.097919, 41.453770>,  <39.246639, 30.964237, 41.325668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892071, 31.097919, 41.453770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326189, -0.039886, 0.944463,
		0.328417, 0.941656, -0.073658,
		-0.886421, 0.334204, 0.320257,
		38.626144, 31.198181, 41.549847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455982, 31.369450, 41.757168>,  <39.246639, 30.964237, 41.325668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455982, 31.369450, 41.757168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070774, 31.361017, 41.864605>,  <38.839649, 31.355957, 41.929066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070774, 31.361017, 41.864605>,  <39.455982, 31.369450, 41.757168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070774, 31.361017, 41.864605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268005, 0.027005, 0.963039,
		-0.027557, 0.999413, -0.020356,
		-0.963023, -0.021083, 0.268592,
		38.781868, 31.354692, 41.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470592, 31.817919, 42.289398>,  <39.455982, 31.369450, 41.757168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470592, 31.817919, 42.289398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108467, 31.653217, 42.331108>,  <38.891193, 31.554398, 42.356133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108467, 31.653217, 42.331108>,  <39.470592, 31.817919, 42.289398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108467, 31.653217, 42.331108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109288, 0.011417, 0.993945,
		-0.410450, 0.911224, 0.034664,
		-0.905311, -0.411753, 0.104272,
		38.836872, 31.529692, 42.362389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068718, 32.242241, 42.736794>,  <39.470592, 31.817919, 42.289398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068718, 32.242241, 42.736794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894947, 31.881998, 42.731541>,  <38.790684, 31.665852, 42.728390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894947, 31.881998, 42.731541>,  <39.068718, 32.242241, 42.736794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894947, 31.881998, 42.731541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019012, -0.023746, 0.999537,
		-0.900506, 0.433977, 0.027438,
		-0.434427, -0.900611, -0.013133,
		38.764618, 31.611814, 42.727600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538933, 32.292843, 43.211102>,  <39.068718, 32.242241, 42.736794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538933, 32.292843, 43.211102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653824, 31.910873, 43.181110>,  <38.722759, 31.681692, 43.163116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653824, 31.910873, 43.181110>,  <38.538933, 32.292843, 43.211102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653824, 31.910873, 43.181110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179949, -0.023087, 0.983405,
		-0.940808, -0.295951, 0.165206,
		0.287226, -0.954924, -0.074977,
		38.739990, 31.624395, 43.158619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356812, 31.979584, 43.801414>,  <38.538933, 32.292843, 43.211102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356812, 31.979584, 43.801414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628960, 31.737034, 43.636780>,  <38.792248, 31.591503, 43.537998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628960, 31.737034, 43.636780>,  <38.356812, 31.979584, 43.801414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628960, 31.737034, 43.636780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527238, 0.014914, 0.849587,
		-0.509030, -0.795038, 0.329852,
		0.680373, -0.606376, -0.411583,
		38.833073, 31.555120, 43.513306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476173, 31.304247, 44.257137>,  <38.356812, 31.979584, 43.801414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476173, 31.304247, 44.257137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792103, 31.350744, 44.016251>,  <38.981659, 31.378643, 43.871719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792103, 31.350744, 44.016251>,  <38.476173, 31.304247, 44.257137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792103, 31.350744, 44.016251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611453, -0.072411, 0.787961,
		0.047989, -0.990578, -0.128270,
		0.789825, 0.116245, -0.602217,
		39.029049, 31.385618, 43.835587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957203, 30.923338, 44.712875>,  <38.476173, 31.304247, 44.257137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957203, 30.923338, 44.712875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141060, 31.131304, 44.424870>,  <39.251373, 31.256083, 44.252068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141060, 31.131304, 44.424870>,  <38.957203, 30.923338, 44.712875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141060, 31.131304, 44.424870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823611, 0.053773, 0.564600,
		0.332262, -0.852524, -0.403491,
		0.459638, 0.519915, -0.720015,
		39.278950, 31.287277, 44.208866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604717, 30.597414, 44.555241>,  <38.957203, 30.923338, 44.712875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604717, 30.597414, 44.555241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639477, 30.983698, 44.457386>,  <39.660332, 31.215469, 44.398674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639477, 30.983698, 44.457386>,  <39.604717, 30.597414, 44.555241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639477, 30.983698, 44.457386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783422, 0.085449, 0.615587,
		0.615384, -0.245151, -0.749135,
		0.086900, 0.965712, -0.244641,
		39.665546, 31.273411, 44.383995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292328, 30.673544, 44.794987>,  <39.604717, 30.597414, 44.555241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292328, 30.673544, 44.794987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148407, 31.040571, 44.727329>,  <40.062054, 31.260788, 44.686737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148407, 31.040571, 44.727329>,  <40.292328, 30.673544, 44.794987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148407, 31.040571, 44.727329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376679, 0.308704, 0.873393,
		0.853612, 0.250538, -0.456702,
		-0.359804, 0.917569, -0.169141,
		40.040466, 31.315842, 44.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873878, 31.222786, 44.808262>,  <40.292328, 30.673544, 44.794987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873878, 31.222786, 44.808262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.526295, 31.405468, 44.884502>,  <40.317745, 31.515078, 44.930248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.526295, 31.405468, 44.884502>,  <40.873878, 31.222786, 44.808262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526295, 31.405468, 44.884502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345858, 0.284968, 0.893966,
		0.353963, 0.842742, -0.405581,
		-0.868961, 0.456704, 0.190601,
		40.265606, 31.542479, 44.941681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030773, 31.948519, 45.122650>,  <40.873878, 31.222786, 44.808262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030773, 31.948519, 45.122650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660748, 31.843929, 45.232838>,  <40.438732, 31.781176, 45.298950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660748, 31.843929, 45.232838>,  <41.030773, 31.948519, 45.122650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660748, 31.843929, 45.232838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158042, 0.394504, 0.905201,
		-0.345360, 0.880907, -0.323619,
		-0.925067, -0.261475, 0.275466,
		40.383228, 31.765488, 45.315479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.742973, 33.394566, 46.374516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142773, 33.400383, 46.363277>,  <36.382652, 33.403873, 46.356533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142773, 33.400383, 46.363277>,  <35.742973, 33.394566, 46.374516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142773, 33.400383, 46.363277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031321, 0.329036, -0.943798,
		-0.004484, 0.944205, 0.329327,
		0.999499, 0.014546, -0.028098,
		36.442623, 33.404747, 46.354847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047985, 34.092854, 46.166779>,  <35.742973, 33.394566, 46.374516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047985, 34.092854, 46.166779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.305958, 33.807388, 46.057419>,  <36.460739, 33.636108, 45.991802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.305958, 33.807388, 46.057419>,  <36.047985, 34.092854, 46.166779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305958, 33.807388, 46.057419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145659, 0.465969, -0.872730,
		0.750234, 0.523024, 0.404468,
		0.644928, -0.713666, -0.273403,
		36.499435, 33.593288, 45.975399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553303, 34.527721, 45.948627>,  <36.047985, 34.092854, 46.166779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553303, 34.527721, 45.948627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.595886, 34.160618, 45.795582>,  <36.621437, 33.940357, 45.703754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.595886, 34.160618, 45.795582>,  <36.553303, 34.527721, 45.948627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595886, 34.160618, 45.795582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014643, 0.386206, -0.922296,
		0.994209, 0.092585, 0.054555,
		0.106460, -0.917754, -0.382614,
		36.627823, 33.885292, 45.680798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924156, 34.739658, 45.431419>,  <36.553303, 34.527721, 45.948627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924156, 34.739658, 45.431419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.834259, 34.358490, 45.349991>,  <36.780323, 34.129791, 45.301132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.834259, 34.358490, 45.349991>,  <36.924156, 34.739658, 45.431419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834259, 34.358490, 45.349991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070149, 0.224197, -0.972016,
		0.971890, -0.204171, -0.117232,
		-0.224740, -0.952917, -0.203572,
		36.766838, 34.072617, 45.288918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338634, 34.523270, 44.898148>,  <36.924156, 34.739658, 45.431419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338634, 34.523270, 44.898148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011013, 34.293861, 44.892250>,  <36.814438, 34.156216, 44.888714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.011013, 34.293861, 44.892250>,  <37.338634, 34.523270, 44.898148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011013, 34.293861, 44.892250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191577, 0.297636, -0.935260,
		0.540780, -0.763207, -0.353654,
		-0.819057, -0.573522, -0.014742,
		36.765297, 34.121803, 44.887829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444324, 34.130272, 44.277859>,  <37.338634, 34.523270, 44.898148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444324, 34.130272, 44.277859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052639, 34.128887, 44.358990>,  <36.817627, 34.128056, 44.407669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052639, 34.128887, 44.358990>,  <37.444324, 34.130272, 44.277859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052639, 34.128887, 44.358990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202852, 0.014431, -0.979103,
		0.000462, -0.999890, -0.014833,
		-0.979209, -0.003461, 0.202823,
		36.758877, 34.127850, 44.419838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127647, 33.814442, 43.724731>,  <37.444324, 34.130272, 44.277859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127647, 33.814442, 43.724731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.802292, 33.976410, 43.891792>,  <36.607079, 34.073593, 43.992027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.802292, 33.976410, 43.891792>,  <37.127647, 33.814442, 43.724731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802292, 33.976410, 43.891792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309690, 0.306334, -0.900140,
		-0.492429, -0.861507, -0.123768,
		-0.813391, 0.404925, 0.417648,
		36.558273, 34.097889, 44.017086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521767, 33.613476, 43.310345>,  <37.127647, 33.814442, 43.724731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521767, 33.613476, 43.310345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.406704, 33.943306, 43.505211>,  <36.337666, 34.141205, 43.622131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.406704, 33.943306, 43.505211>,  <36.521767, 33.613476, 43.310345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406704, 33.943306, 43.505211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389337, 0.364059, -0.846095,
		-0.875025, -0.433060, 0.216312,
		-0.287660, 0.824572, 0.487167,
		36.320404, 34.190678, 43.651360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915344, 33.715843, 42.950344>,  <36.521767, 33.613476, 43.310345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915344, 33.715843, 42.950344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002934, 34.052944, 43.147041>,  <36.055489, 34.255207, 43.265060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002934, 34.052944, 43.147041>,  <35.915344, 33.715843, 42.950344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002934, 34.052944, 43.147041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262283, 0.536266, -0.802263,
		-0.939817, 0.046702, 0.338471,
		0.218978, 0.842756, 0.491743,
		36.068626, 34.305771, 43.294563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308449, 34.120655, 43.117790>,  <35.915344, 33.715843, 42.950344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308449, 34.120655, 43.117790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608154, 34.382790, 43.079556>,  <35.787979, 34.540070, 43.056614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608154, 34.382790, 43.079556>,  <35.308449, 34.120655, 43.117790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608154, 34.382790, 43.079556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492971, 0.455508, -0.741278,
		-0.442244, 0.602536, 0.664357,
		0.749267, 0.655334, -0.095587,
		35.832935, 34.579391, 43.050880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941986, 34.698265, 42.936077>,  <35.308449, 34.120655, 43.117790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941986, 34.698265, 42.936077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328884, 34.766994, 42.861336>,  <35.561024, 34.808231, 42.816490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328884, 34.766994, 42.861336>,  <34.941986, 34.698265, 42.936077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328884, 34.766994, 42.861336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247612, 0.476559, -0.843552,
		-0.055896, 0.862188, 0.503494,
		0.967245, 0.171822, -0.186851,
		35.619057, 34.818542, 42.805279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942856, 35.271431, 42.578056>,  <34.941986, 34.698265, 42.936077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942856, 35.271431, 42.578056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330070, 35.188614, 42.521446>,  <35.562401, 35.138924, 42.487480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330070, 35.188614, 42.521446>,  <34.942856, 35.271431, 42.578056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330070, 35.188614, 42.521446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006119, 0.583634, -0.811994,
		0.250716, 0.785178, 0.566248,
		0.968041, -0.207045, -0.141522,
		35.620483, 35.126499, 42.478989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223705, 35.908440, 42.428074>,  <34.942856, 35.271431, 42.578056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223705, 35.908440, 42.428074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419132, 35.600777, 42.263294>,  <35.536388, 35.416180, 42.164429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419132, 35.600777, 42.263294>,  <35.223705, 35.908440, 42.428074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419132, 35.600777, 42.263294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164936, 0.382202, -0.909240,
		0.856796, 0.512168, 0.059869,
		0.488565, -0.769159, -0.411944,
		35.565701, 35.370029, 42.139709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618305, 36.224125, 41.911774>,  <35.223705, 35.908440, 42.428074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618305, 36.224125, 41.911774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589893, 35.838207, 41.810490>,  <35.572845, 35.606655, 41.749718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589893, 35.838207, 41.810490>,  <35.618305, 36.224125, 41.911774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589893, 35.838207, 41.810490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057578, 0.257399, -0.964588,
		0.995811, -0.053936, -0.073835,
		-0.071031, -0.964799, -0.253215,
		35.568584, 35.548767, 41.734524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209717, 36.130280, 41.586872>,  <35.618305, 36.224125, 41.911774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209717, 36.130280, 41.586872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496056, 36.409019, 41.569126>,  <36.667858, 36.576263, 41.558479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496056, 36.409019, 41.569126>,  <36.209717, 36.130280, 41.586872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496056, 36.409019, 41.569126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468448, -0.432162, 0.770579,
		0.517801, -0.572400, -0.635798,
		0.715848, 0.696845, -0.044366,
		36.710812, 36.618073, 41.555817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828506, 35.841702, 41.706188>,  <36.209717, 36.130280, 41.586872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828506, 35.841702, 41.706188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939537, 36.211510, 41.810654>,  <37.006157, 36.433395, 41.873333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939537, 36.211510, 41.810654>,  <36.828506, 35.841702, 41.706188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939537, 36.211510, 41.810654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390886, -0.357012, 0.848381,
		0.877588, -0.133405, -0.460481,
		0.277576, 0.924525, 0.261163,
		37.022808, 36.488869, 41.889004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593525, 35.853634, 41.933380>,  <36.828506, 35.841702, 41.706188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593525, 35.853634, 41.933380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429245, 36.192192, 42.068996>,  <37.330677, 36.395325, 42.150364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429245, 36.192192, 42.068996>,  <37.593525, 35.853634, 41.933380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429245, 36.192192, 42.068996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211273, -0.273381, 0.938417,
		0.886954, 0.457039, -0.066542,
		-0.410702, 0.846391, 0.339036,
		37.306034, 36.446110, 42.170708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171146, 36.098637, 42.266876>,  <37.593525, 35.853634, 41.933380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171146, 36.098637, 42.266876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851631, 36.289227, 42.413799>,  <37.659924, 36.403580, 42.501953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851631, 36.289227, 42.413799>,  <38.171146, 36.098637, 42.266876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851631, 36.289227, 42.413799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397184, -0.040910, 0.916827,
		0.451873, 0.878235, -0.156571,
		-0.798784, 0.476477, 0.367307,
		37.611996, 36.432171, 42.523991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503544, 36.617287, 42.620136>,  <38.171146, 36.098637, 42.266876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503544, 36.617287, 42.620136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136726, 36.564804, 42.770767>,  <37.916634, 36.533314, 42.861145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136726, 36.564804, 42.770767>,  <38.503544, 36.617287, 42.620136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136726, 36.564804, 42.770767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390736, -0.106883, 0.914277,
		-0.079705, 0.985577, 0.149282,
		-0.917046, -0.131203, 0.376581,
		37.861614, 36.525444, 42.883743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458523, 37.132515, 43.021568>,  <38.503544, 36.617287, 42.620136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458523, 37.132515, 43.021568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.192993, 36.864197, 43.153858>,  <38.033676, 36.703205, 43.233231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.192993, 36.864197, 43.153858>,  <38.458523, 37.132515, 43.021568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192993, 36.864197, 43.153858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389798, 0.067083, 0.918454,
		-0.638278, 0.738605, 0.216942,
		-0.663821, -0.670793, 0.330724,
		37.993847, 36.662960, 43.253075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285152, 37.426723, 43.636375>,  <38.458523, 37.132515, 43.021568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285152, 37.426723, 43.636375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175545, 37.042194, 43.647518>,  <38.109779, 36.811478, 43.654205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175545, 37.042194, 43.647518>,  <38.285152, 37.426723, 43.636375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175545, 37.042194, 43.647518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308274, -0.060361, 0.949381,
		-0.910977, 0.268738, 0.312890,
		-0.274021, -0.961320, 0.027858,
		38.093338, 36.753799, 43.655876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090488, 37.336834, 44.402309>,  <38.285152, 37.426723, 43.636375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090488, 37.336834, 44.402309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118649, 36.956047, 44.283115>,  <38.135544, 36.727573, 44.211597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118649, 36.956047, 44.283115>,  <38.090488, 37.336834, 44.402309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118649, 36.956047, 44.283115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412036, -0.244301, 0.877806,
		-0.908444, -0.184574, 0.375049,
		0.070396, -0.951971, -0.297985,
		38.139767, 36.670456, 44.193718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759579, 37.024776, 44.890587>,  <38.090488, 37.336834, 44.402309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759579, 37.024776, 44.890587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000095, 36.747437, 44.731735>,  <38.144405, 36.581032, 44.636425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.000095, 36.747437, 44.731735>,  <37.759579, 37.024776, 44.890587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000095, 36.747437, 44.731735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252095, -0.307011, 0.917710,
		-0.758217, -0.651929, -0.009814,
		0.601295, -0.693349, -0.397129,
		38.180485, 36.539433, 44.612595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599339, 36.485264, 45.222794>,  <37.759579, 37.024776, 44.890587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599339, 36.485264, 45.222794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962940, 36.404282, 45.077068>,  <38.181103, 36.355694, 44.989635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962940, 36.404282, 45.077068>,  <37.599339, 36.485264, 45.222794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962940, 36.404282, 45.077068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290372, -0.319419, 0.902029,
		-0.298981, -0.925735, -0.231569,
		0.909008, -0.202449, -0.364308,
		38.235641, 36.343544, 44.967777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753944, 35.870506, 45.523361>,  <37.599339, 36.485264, 45.222794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753944, 35.870506, 45.523361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122730, 36.000084, 45.438473>,  <38.344002, 36.077831, 45.387539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122730, 36.000084, 45.438473>,  <37.753944, 35.870506, 45.523361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122730, 36.000084, 45.438473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312583, -0.298963, 0.901617,
		0.228625, -0.897598, -0.376893,
		0.921967, 0.323942, -0.212224,
		38.399319, 36.097267, 45.374805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271461, 35.289562, 45.644264>,  <37.753944, 35.870506, 45.523361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271461, 35.289562, 45.644264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464245, 35.640011, 45.648800>,  <38.579914, 35.850281, 45.651520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.464245, 35.640011, 45.648800>,  <38.271461, 35.289562, 45.644264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464245, 35.640011, 45.648800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338807, -0.198282, 0.919725,
		0.808040, -0.439426, -0.392399,
		0.481956, 0.876122, 0.011339,
		38.608833, 35.902847, 45.652203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960007, 35.134346, 45.795994>,  <38.271461, 35.289562, 45.644264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960007, 35.134346, 45.795994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881069, 35.508938, 45.911968>,  <38.833706, 35.733692, 45.981552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881069, 35.508938, 45.911968>,  <38.960007, 35.134346, 45.795994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881069, 35.508938, 45.911968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347294, -0.209787, 0.913989,
		0.916756, 0.281067, -0.283832,
		-0.197348, 0.936478, 0.289936,
		38.821865, 35.789883, 45.998947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622597, 35.382603, 46.109165>,  <38.960007, 35.134346, 45.795994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622597, 35.382603, 46.109165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327007, 35.609985, 46.253815>,  <39.149654, 35.746414, 46.340603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327007, 35.609985, 46.253815>,  <39.622597, 35.382603, 46.109165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327007, 35.609985, 46.253815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211312, -0.314106, 0.925573,
		0.639738, 0.760389, 0.111994,
		-0.738974, 0.568459, 0.361625,
		39.105316, 35.780521, 46.362301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349525, 35.609131, 45.967793>,  <39.622597, 35.382603, 46.109165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349525, 35.609131, 45.967793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.592022, 35.291626, 45.948162>,  <40.737518, 35.101120, 45.936386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.592022, 35.291626, 45.948162>,  <40.349525, 35.609131, 45.967793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592022, 35.291626, 45.948162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076746, 0.119809, -0.989826,
		0.791571, 0.596305, 0.133552,
		0.606239, -0.793767, -0.049073,
		40.773895, 35.053497, 45.933441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007889, 35.841393, 45.546089>,  <40.349525, 35.609131, 45.967793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007889, 35.841393, 45.546089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.985729, 35.442039, 45.540962>,  <40.972435, 35.202427, 45.537884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.985729, 35.442039, 45.540962>,  <41.007889, 35.841393, 45.546089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985729, 35.442039, 45.540962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005419, 0.012541, -0.999907,
		0.998450, -0.055463, 0.004715,
		-0.055399, -0.998382, -0.012822,
		40.969109, 35.142525, 45.537117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532146, 35.604660, 45.076733>,  <41.007889, 35.841393, 45.546089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532146, 35.604660, 45.076733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.280735, 35.294823, 45.104885>,  <41.129890, 35.108921, 45.121777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.280735, 35.294823, 45.104885>,  <41.532146, 35.604660, 45.076733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280735, 35.294823, 45.104885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044641, -0.126270, -0.990991,
		0.776506, -0.619722, 0.113943,
		-0.628526, -0.774597, 0.070384,
		41.092178, 35.062443, 45.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786755, 34.991478, 44.607700>,  <41.532146, 35.604660, 45.076733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786755, 34.991478, 44.607700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388672, 34.974464, 44.642910>,  <41.149822, 34.964256, 44.664036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388672, 34.974464, 44.642910>,  <41.786755, 34.991478, 44.607700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388672, 34.974464, 44.642910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092979, 0.133575, -0.986667,
		0.030208, -0.990126, -0.136890,
		-0.995209, -0.042533, 0.088026,
		41.090111, 34.961704, 44.669319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564983, 34.306332, 44.323948>,  <41.786755, 34.991478, 44.607700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564983, 34.306332, 44.323948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227600, 34.521141, 44.329433>,  <41.025169, 34.650028, 44.332726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227600, 34.521141, 44.329433>,  <41.564983, 34.306332, 44.323948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227600, 34.521141, 44.329433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110927, -0.149135, -0.982575,
		-0.525620, -0.830280, 0.185359,
		-0.843456, 0.537023, 0.013712,
		40.974564, 34.682247, 44.333546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083195, 33.904171, 43.937572>,  <41.564983, 34.306332, 44.323948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083195, 33.904171, 43.937572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.904240, 34.261810, 43.945782>,  <40.796867, 34.476395, 43.950706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.904240, 34.261810, 43.945782>,  <41.083195, 33.904171, 43.937572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904240, 34.261810, 43.945782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209992, -0.082714, -0.974198,
		-0.869335, -0.440158, 0.224760,
		-0.447392, 0.894102, 0.020524,
		40.770023, 34.530041, 43.951939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450531, 33.808784, 43.515160>,  <41.083195, 33.904171, 43.937572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450531, 33.808784, 43.515160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509430, 34.203186, 43.546444>,  <40.544769, 34.439827, 43.565216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509430, 34.203186, 43.546444>,  <40.450531, 33.808784, 43.515160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509430, 34.203186, 43.546444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435846, 0.135668, -0.889737,
		-0.887894, 0.096926, 0.449722,
		0.147251, 0.986002, 0.078214,
		40.553604, 34.498985, 43.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724022, 34.089130, 43.293076>,  <40.450531, 33.808784, 43.515160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724022, 34.089130, 43.293076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.991035, 34.378925, 43.224361>,  <40.151245, 34.552803, 43.183132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.991035, 34.378925, 43.224361>,  <39.724022, 34.089130, 43.293076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991035, 34.378925, 43.224361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537312, 0.309007, -0.784736,
		-0.515452, 0.616139, 0.595551,
		0.667536, 0.724491, -0.171781,
		40.191296, 34.596272, 43.172829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381012, 34.625412, 42.931793>,  <39.724022, 34.089130, 43.293076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381012, 34.625412, 42.931793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.747986, 34.764469, 42.854366>,  <39.968170, 34.847904, 42.807911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.747986, 34.764469, 42.854366>,  <39.381012, 34.625412, 42.931793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747986, 34.764469, 42.854366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310547, 0.321462, -0.894552,
		-0.248758, 0.880800, 0.402878,
		0.917431, 0.347640, -0.193563,
		40.023216, 34.868763, 42.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347496, 35.393646, 42.822323>,  <39.381012, 34.625412, 42.931793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347496, 35.393646, 42.822323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692730, 35.288021, 42.650108>,  <39.899868, 35.224644, 42.546780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.692730, 35.288021, 42.650108>,  <39.347496, 35.393646, 42.822323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692730, 35.288021, 42.650108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314320, 0.386413, -0.867115,
		0.395339, 0.883716, 0.250505,
		0.863082, -0.264066, -0.430534,
		39.951656, 35.208801, 42.520947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482315, 35.920063, 42.412251>,  <39.347496, 35.393646, 42.822323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482315, 35.920063, 42.412251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742512, 35.663368, 42.249752>,  <39.898628, 35.509350, 42.152252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742512, 35.663368, 42.249752>,  <39.482315, 35.920063, 42.412251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742512, 35.663368, 42.249752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186350, 0.383669, -0.904473,
		0.736298, 0.664056, 0.129986,
		0.650492, -0.641738, -0.406242,
		39.937660, 35.470848, 42.127880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874775, 36.293743, 41.991657>,  <39.482315, 35.920063, 42.412251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874775, 36.293743, 41.991657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910610, 35.922886, 41.846119>,  <39.932110, 35.700371, 41.758797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910610, 35.922886, 41.846119>,  <39.874775, 36.293743, 41.991657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910610, 35.922886, 41.846119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230602, 0.336080, -0.913166,
		0.968915, 0.165709, -0.183693,
		0.089585, -0.927141, -0.363846,
		39.937485, 35.644745, 41.736965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329777, 36.215958, 41.461067>,  <39.874775, 36.293743, 41.991657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329777, 36.215958, 41.461067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.111610, 35.901333, 41.345249>,  <39.980709, 35.712559, 41.275757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.111610, 35.901333, 41.345249>,  <40.329777, 36.215958, 41.461067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111610, 35.901333, 41.345249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183129, 0.225273, -0.956930,
		0.817912, -0.574953, 0.021173,
		-0.545420, -0.786563, -0.289544,
		39.947983, 35.665363, 41.258385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790852, 35.862091, 41.039379>,  <40.329777, 36.215958, 41.461067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790852, 35.862091, 41.039379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.426163, 35.721550, 40.954231>,  <40.207348, 35.637226, 40.903141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.426163, 35.721550, 40.954231>,  <40.790852, 35.862091, 41.039379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426163, 35.721550, 40.954231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138628, 0.224643, -0.964530,
		0.386710, -0.908893, -0.156105,
		-0.911722, -0.351353, -0.212869,
		40.152645, 35.616146, 40.890369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.306202, 31.616259, 41.827148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.190834, 31.872704, 42.111622>,  <25.121614, 32.026569, 42.282307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.190834, 31.872704, 42.111622>,  <25.306202, 31.616259, 41.827148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190834, 31.872704, 42.111622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206863, 0.683490, -0.700036,
		-0.934892, -0.349021, -0.064508,
		-0.288418, 0.641114, 0.711188,
		25.104309, 32.065037, 42.324978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658815, 31.898741, 41.656063>,  <25.306202, 31.616259, 41.827148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658815, 31.898741, 41.656063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.778477, 32.185703, 41.907726>,  <24.850273, 32.357880, 42.058723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.778477, 32.185703, 41.907726>,  <24.658815, 31.898741, 41.656063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778477, 32.185703, 41.907726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265868, 0.695907, -0.667104,
		-0.916418, 0.032293, 0.398918,
		0.299152, 0.717406, 0.629156,
		24.868223, 32.400925, 42.096474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.129700, 32.349140, 41.796967>,  <24.658815, 31.898741, 41.656063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.129700, 32.349140, 41.796967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.456964, 32.570427, 41.859653>,  <24.653324, 32.703197, 41.897266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.456964, 32.570427, 41.859653>,  <24.129700, 32.349140, 41.796967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456964, 32.570427, 41.859653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245238, 0.582275, -0.775122,
		-0.520063, 0.595743, 0.612065,
		0.818164, 0.553214, 0.156721,
		24.702414, 32.736393, 41.906670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.880426, 32.971424, 41.733448>,  <24.129700, 32.349140, 41.796967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.880426, 32.971424, 41.733448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.277887, 33.012428, 41.714928>,  <24.516365, 33.037029, 41.703815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.277887, 33.012428, 41.714928>,  <23.880426, 32.971424, 41.733448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277887, 33.012428, 41.714928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102301, 0.652534, -0.750822,
		-0.046755, 0.750794, 0.658880,
		0.993654, 0.102508, -0.046298,
		24.575983, 33.043182, 41.701038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910709, 33.703243, 41.346390>,  <23.880426, 32.971424, 41.733448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910709, 33.703243, 41.346390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.277920, 33.546360, 41.323078>,  <24.498247, 33.452229, 41.309090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.277920, 33.546360, 41.323078>,  <23.910709, 33.703243, 41.346390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277920, 33.546360, 41.323078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190030, 0.564193, -0.803477,
		0.348015, 0.726538, 0.592476,
		0.918027, -0.392211, -0.058283,
		24.553328, 33.428696, 41.305592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.399628, 34.319523, 41.217270>,  <23.910709, 33.703243, 41.346390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.399628, 34.319523, 41.217270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.574467, 33.982086, 41.092499>,  <24.679371, 33.779625, 41.017635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.574467, 33.982086, 41.092499>,  <24.399628, 34.319523, 41.217270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574467, 33.982086, 41.092499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242301, 0.444432, -0.862421,
		0.866162, 0.301382, 0.398664,
		0.437097, -0.843593, -0.311925,
		24.705595, 33.729008, 40.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030939, 34.543533, 40.866879>,  <24.399628, 34.319523, 41.217270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030939, 34.543533, 40.866879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.921043, 34.179848, 40.741753>,  <24.855106, 33.961636, 40.666679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.921043, 34.179848, 40.741753>,  <25.030939, 34.543533, 40.866879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921043, 34.179848, 40.741753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309697, 0.224317, -0.923997,
		0.910278, -0.350735, 0.219951,
		-0.274739, -0.909212, -0.312813,
		24.838621, 33.907085, 40.647907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629683, 34.198582, 40.435116>,  <25.030939, 34.543533, 40.866879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629683, 34.198582, 40.435116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.284857, 34.023384, 40.333126>,  <25.077961, 33.918266, 40.271935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.284857, 34.023384, 40.333126>,  <25.629683, 34.198582, 40.435116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284857, 34.023384, 40.333126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209801, 0.149548, -0.966240,
		0.461335, -0.886453, -0.037029,
		-0.862064, -0.437992, -0.254970,
		25.026237, 33.891987, 40.256634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836926, 33.768730, 39.840977>,  <25.629683, 34.198582, 40.435116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836926, 33.768730, 39.840977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.438967, 33.782150, 39.802906>,  <25.200191, 33.790203, 39.780064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.438967, 33.782150, 39.802906>,  <25.836926, 33.768730, 39.840977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438967, 33.782150, 39.802906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098147, 0.102311, -0.989899,
		-0.023478, -0.994186, -0.105082,
		-0.994895, 0.033554, -0.095174,
		25.140499, 33.792217, 39.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766270, 33.372871, 39.264557>,  <25.836926, 33.768730, 39.840977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766270, 33.372871, 39.264557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.411467, 33.551983, 39.309658>,  <25.198586, 33.659451, 39.336720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.411467, 33.551983, 39.309658>,  <25.766270, 33.372871, 39.264557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411467, 33.551983, 39.309658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112769, 0.026718, -0.993262,
		-0.447778, -0.893743, 0.026797,
		-0.887005, 0.447783, 0.112751,
		25.145365, 33.686317, 39.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419119, 33.045189, 38.743938>,  <25.766270, 33.372871, 39.264557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419119, 33.045189, 38.743938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.228333, 33.390514, 38.809906>,  <25.113861, 33.597710, 38.849487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.228333, 33.390514, 38.809906>,  <25.419119, 33.045189, 38.743938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228333, 33.390514, 38.809906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210955, 0.069707, -0.975007,
		-0.853230, -0.499836, 0.148871,
		-0.476966, 0.863311, 0.164919,
		25.085243, 33.649509, 38.859383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855921, 33.096741, 38.327641>,  <25.419119, 33.045189, 38.743938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855921, 33.096741, 38.327641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.928652, 33.477371, 38.426792>,  <24.972290, 33.705750, 38.486282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.928652, 33.477371, 38.426792>,  <24.855921, 33.096741, 38.327641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928652, 33.477371, 38.426792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049584, 0.242885, -0.968787,
		-0.982079, 0.188443, -0.003020,
		0.181828, 0.951576, 0.247876,
		24.983200, 33.762844, 38.501156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510239, 33.487209, 37.837025>,  <24.855921, 33.096741, 38.327641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510239, 33.487209, 37.837025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798943, 33.719402, 37.987812>,  <24.972164, 33.858719, 38.078285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798943, 33.719402, 37.987812>,  <24.510239, 33.487209, 37.837025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798943, 33.719402, 37.987812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315425, 0.208943, -0.925662,
		-0.616095, 0.787010, -0.032292,
		0.721758, 0.580481, 0.376971,
		25.015471, 33.893547, 38.100903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521145, 34.085499, 37.444382>,  <24.510239, 33.487209, 37.837025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521145, 34.085499, 37.444382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.884989, 34.082012, 37.610531>,  <25.103294, 34.079922, 37.710220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.884989, 34.082012, 37.610531>,  <24.521145, 34.085499, 37.444382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884989, 34.082012, 37.610531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415465, 0.017374, -0.909443,
		0.000709, 0.999811, 0.019424,
		0.909609, -0.008715, 0.415374,
		25.157871, 34.079399, 37.735142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847149, 34.708435, 37.166138>,  <24.521145, 34.085499, 37.444382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847149, 34.708435, 37.166138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.158577, 34.497768, 37.302639>,  <25.345434, 34.371368, 37.384541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.158577, 34.497768, 37.302639>,  <24.847149, 34.708435, 37.166138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158577, 34.497768, 37.302639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497715, 0.186996, -0.846943,
		0.382242, 0.829251, 0.407718,
		0.778570, -0.526664, 0.341253,
		25.392147, 34.339767, 37.405014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430029, 35.085403, 37.125938>,  <24.847149, 34.708435, 37.166138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430029, 35.085403, 37.125938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592491, 34.720287, 37.143181>,  <25.689968, 34.501217, 37.153526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592491, 34.720287, 37.143181>,  <25.430029, 35.085403, 37.125938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592491, 34.720287, 37.143181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512626, 0.188538, -0.837656,
		0.756474, 0.362317, 0.544494,
		0.406155, -0.912787, 0.043109,
		25.714338, 34.446453, 37.156113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169514, 35.150517, 37.048019>,  <25.430029, 35.085403, 37.125938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169514, 35.150517, 37.048019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092495, 34.772778, 36.941338>,  <26.046284, 34.546135, 36.877327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092495, 34.772778, 36.941338>,  <26.169514, 35.150517, 37.048019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092495, 34.772778, 36.941338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437834, 0.160560, -0.884603,
		0.878195, -0.287102, 0.382552,
		-0.192549, -0.944348, -0.266706,
		26.034731, 34.489471, 36.861324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816271, 34.898094, 36.827847>,  <26.169514, 35.150517, 37.048019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816271, 34.898094, 36.827847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522591, 34.690327, 36.652962>,  <26.346382, 34.565666, 36.548031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522591, 34.690327, 36.652962>,  <26.816271, 34.898094, 36.827847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522591, 34.690327, 36.652962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493353, 0.034241, -0.869155,
		0.466428, -0.853832, 0.231118,
		-0.734199, -0.519421, -0.437212,
		26.302330, 34.534500, 36.521797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171942, 34.494621, 36.271099>,  <26.816271, 34.898094, 36.827847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171942, 34.494621, 36.271099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785763, 34.454762, 36.174782>,  <26.554054, 34.430847, 36.116993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785763, 34.454762, 36.174782>,  <27.171942, 34.494621, 36.271099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785763, 34.454762, 36.174782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235609, 0.061029, -0.969930,
		0.111346, -0.993150, -0.035443,
		-0.965448, -0.099647, -0.240790,
		26.496128, 34.424870, 36.102543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175106, 33.912853, 35.886932>,  <27.171942, 34.494621, 36.271099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175106, 33.912853, 35.886932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.871258, 34.161968, 35.811981>,  <26.688948, 34.311436, 35.767010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.871258, 34.161968, 35.811981>,  <27.175106, 33.912853, 35.886932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871258, 34.161968, 35.811981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344622, 0.141108, -0.928076,
		-0.551552, -0.769562, -0.321814,
		-0.759622, 0.622786, -0.187380,
		26.643372, 34.348804, 35.755768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456530, 33.267376, 36.128704>,  <27.175106, 33.912853, 35.886932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456530, 33.267376, 36.128704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849983, 33.234035, 36.192600>,  <28.086056, 33.214031, 36.230938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849983, 33.234035, 36.192600>,  <27.456530, 33.267376, 36.128704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849983, 33.234035, 36.192600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175537, -0.643151, 0.745348,
		0.040614, -0.761190, -0.647256,
		0.983635, -0.083346, 0.159738,
		28.145073, 33.209030, 36.240520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613871, 32.458706, 36.168770>,  <27.456530, 33.267376, 36.128704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613871, 32.458706, 36.168770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923120, 32.633522, 36.352627>,  <28.108671, 32.738411, 36.462940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923120, 32.633522, 36.352627>,  <27.613871, 32.458706, 36.168770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923120, 32.633522, 36.352627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212995, -0.503702, 0.837208,
		0.597418, -0.745168, -0.296337,
		0.773126, 0.437045, 0.459638,
		28.155058, 32.764637, 36.490517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880260, 31.924923, 36.532955>,  <27.613871, 32.458706, 36.168770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880260, 31.924923, 36.532955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041439, 32.246357, 36.708172>,  <28.138145, 32.439217, 36.813301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041439, 32.246357, 36.708172>,  <27.880260, 31.924923, 36.532955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041439, 32.246357, 36.708172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020993, -0.470378, 0.882215,
		0.914983, -0.364680, -0.172667,
		0.402945, 0.803587, 0.438044,
		28.162323, 32.487434, 36.839584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259855, 31.620670, 37.108654>,  <27.880260, 31.924923, 36.532955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259855, 31.620670, 37.108654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233126, 32.005905, 37.212963>,  <28.217089, 32.237045, 37.275547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233126, 32.005905, 37.212963>,  <28.259855, 31.620670, 37.108654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233126, 32.005905, 37.212963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145480, -0.267964, 0.952382,
		0.987102, 0.025706, 0.158017,
		-0.066825, 0.963086, 0.260768,
		28.213078, 32.294830, 37.291195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807566, 31.907303, 37.543846>,  <28.259855, 31.620670, 37.108654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807566, 31.907303, 37.543846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482502, 32.113728, 37.652119>,  <28.287464, 32.237583, 37.717083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482502, 32.113728, 37.652119>,  <28.807566, 31.907303, 37.543846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482502, 32.113728, 37.652119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149164, -0.264802, 0.952696,
		0.563327, 0.814592, 0.138215,
		-0.812658, 0.516062, 0.270678,
		28.238705, 32.268547, 37.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930059, 31.973576, 38.244919>,  <28.807566, 31.907303, 37.543846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930059, 31.973576, 38.244919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562092, 32.127789, 38.216309>,  <28.341311, 32.220318, 38.199142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562092, 32.127789, 38.216309>,  <28.930059, 31.973576, 38.244919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562092, 32.127789, 38.216309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052873, 0.058771, 0.996870,
		0.388529, 0.920821, -0.033680,
		-0.919918, 0.385532, -0.071521,
		28.286116, 32.243446, 38.194851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871092, 32.674160, 38.711582>,  <28.930059, 31.973576, 38.244919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871092, 32.674160, 38.711582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513826, 32.503082, 38.655956>,  <28.299467, 32.400436, 38.622581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513826, 32.503082, 38.655956>,  <28.871092, 32.674160, 38.711582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513826, 32.503082, 38.655956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162945, 0.019537, 0.986442,
		-0.419179, 0.903712, -0.087141,
		-0.893162, -0.427694, -0.139066,
		28.245878, 32.374775, 38.614235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540598, 33.018505, 39.138157>,  <28.871092, 32.674160, 38.711582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540598, 33.018505, 39.138157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.313234, 32.696934, 39.068169>,  <28.176817, 32.503990, 39.026176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.313234, 32.696934, 39.068169>,  <28.540598, 33.018505, 39.138157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313234, 32.696934, 39.068169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113827, -0.133779, 0.984452,
		-0.814835, 0.579486, -0.015468,
		-0.568407, -0.803927, -0.174970,
		28.142712, 32.455757, 39.015678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054298, 33.138657, 39.650684>,  <28.540598, 33.018505, 39.138157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054298, 33.138657, 39.650684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986187, 32.760612, 39.539135>,  <27.945320, 32.533787, 39.472206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986187, 32.760612, 39.539135>,  <28.054298, 33.138657, 39.650684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986187, 32.760612, 39.539135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250739, -0.232136, 0.939810,
		-0.952961, 0.229954, -0.197448,
		-0.170279, -0.945111, -0.278875,
		27.935104, 32.477077, 39.455471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445148, 32.900112, 39.974163>,  <28.054298, 33.138657, 39.650684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445148, 32.900112, 39.974163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645803, 32.560822, 39.906208>,  <27.766197, 32.357246, 39.865433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645803, 32.560822, 39.906208>,  <27.445148, 32.900112, 39.974163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645803, 32.560822, 39.906208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213811, -0.311866, 0.925756,
		-0.838238, -0.428071, -0.337805,
		0.501639, -0.848230, -0.169892,
		27.796295, 32.306351, 39.855240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115194, 32.426872, 40.407421>,  <27.445148, 32.900112, 39.974163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115194, 32.426872, 40.407421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463789, 32.238789, 40.351692>,  <27.672945, 32.125938, 40.318253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463789, 32.238789, 40.351692>,  <27.115194, 32.426872, 40.407421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463789, 32.238789, 40.351692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078766, -0.414612, 0.906583,
		-0.484052, -0.779101, -0.398365,
		0.871487, -0.470211, -0.139327,
		27.725235, 32.097725, 40.309895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955051, 31.811569, 40.444736>,  <27.115194, 32.426872, 40.407421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955051, 31.811569, 40.444736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349379, 31.786972, 40.507195>,  <27.585976, 31.772213, 40.544670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349379, 31.786972, 40.507195>,  <26.955051, 31.811569, 40.444736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349379, 31.786972, 40.507195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167674, -0.399396, 0.901315,
		0.006938, -0.914714, -0.404043,
		0.985818, -0.061494, 0.156145,
		27.645124, 31.768524, 40.554039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107107, 31.170269, 40.748489>,  <26.955051, 31.811569, 40.444736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107107, 31.170269, 40.748489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418087, 31.395159, 40.861256>,  <27.604675, 31.530092, 40.928913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418087, 31.395159, 40.861256>,  <27.107107, 31.170269, 40.748489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418087, 31.395159, 40.861256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003482, -0.444374, 0.895835,
		0.628934, -0.697449, -0.343521,
		0.777451, 0.562225, 0.281911,
		27.651321, 31.563826, 40.945827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369371, 30.795837, 41.220325>,  <27.107107, 31.170269, 40.748489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369371, 30.795837, 41.220325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538752, 31.151579, 41.289303>,  <27.640381, 31.365025, 41.330688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538752, 31.151579, 41.289303>,  <27.369371, 30.795837, 41.220325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538752, 31.151579, 41.289303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067573, -0.220829, 0.972969,
		0.903395, -0.400354, -0.153607,
		0.423453, 0.889354, 0.172443,
		27.665787, 31.418385, 41.341034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769636, 30.660042, 41.746544>,  <27.369371, 30.795837, 41.220325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769636, 30.660042, 41.746544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.815897, 31.057352, 41.748688>,  <27.843653, 31.295738, 41.749973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.815897, 31.057352, 41.748688>,  <27.769636, 30.660042, 41.746544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815897, 31.057352, 41.748688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104077, 0.006756, 0.994546,
		0.987822, -0.115578, 0.104158,
		0.115652, 0.993275, 0.005355,
		27.850592, 31.355335, 41.750294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301992, 30.723194, 42.280506>,  <27.769636, 30.660042, 41.746544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301992, 30.723194, 42.280506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077377, 31.047159, 42.212723>,  <27.942608, 31.241539, 42.172054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077377, 31.047159, 42.212723>,  <28.301992, 30.723194, 42.280506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077377, 31.047159, 42.212723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171884, 0.086150, 0.981343,
		0.809403, 0.580186, 0.090835,
		-0.561536, 0.809915, -0.169454,
		27.908916, 31.290134, 42.161888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560001, 31.261831, 42.694565>,  <28.301992, 30.723194, 42.280506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560001, 31.261831, 42.694565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168156, 31.316263, 42.635456>,  <27.933048, 31.348923, 42.599991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168156, 31.316263, 42.635456>,  <28.560001, 31.261831, 42.694565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168156, 31.316263, 42.635456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148485, 0.004984, 0.988902,
		0.135305, 0.990686, 0.015324,
		-0.979615, 0.136078, -0.147776,
		27.874271, 31.357086, 42.591122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375412, 31.761917, 43.266926>,  <28.560001, 31.261831, 42.694565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375412, 31.761917, 43.266926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028927, 31.611813, 43.134953>,  <27.821035, 31.521749, 43.055771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028927, 31.611813, 43.134953>,  <28.375412, 31.761917, 43.266926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028927, 31.611813, 43.134953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310284, -0.113588, 0.943833,
		-0.391659, 0.919933, -0.018046,
		-0.866214, -0.375261, -0.329929,
		27.769062, 31.499235, 43.035973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739906, 32.134754, 43.594563>,  <28.375412, 31.761917, 43.266926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739906, 32.134754, 43.594563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.630398, 31.769215, 43.474609>,  <27.564693, 31.549891, 43.402637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.630398, 31.769215, 43.474609>,  <27.739906, 32.134754, 43.594563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630398, 31.769215, 43.474609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390438, -0.179351, 0.902990,
		-0.878981, 0.364297, -0.307700,
		-0.273770, -0.913849, -0.299882,
		27.548267, 31.495060, 43.384644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150015, 32.043945, 44.043667>,  <27.739906, 32.134754, 43.594563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150015, 32.043945, 44.043667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210459, 31.682989, 43.882240>,  <27.246725, 31.466415, 43.785385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210459, 31.682989, 43.882240>,  <27.150015, 32.043945, 44.043667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210459, 31.682989, 43.882240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489032, -0.423036, 0.762816,
		-0.859077, 0.082087, -0.505221,
		0.151110, -0.902387, -0.403563,
		27.255791, 31.412273, 43.761169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487156, 31.790169, 43.849991>,  <27.150015, 32.043945, 44.043667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487156, 31.790169, 43.849991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.739796, 31.489742, 43.926914>,  <26.891378, 31.309486, 43.973068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.739796, 31.489742, 43.926914>,  <26.487156, 31.790169, 43.849991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739796, 31.489742, 43.926914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582507, -0.296022, 0.757005,
		-0.511636, -0.590141, -0.624469,
		0.631596, -0.751069, 0.192306,
		26.929276, 31.264421, 43.984608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021362, 31.255888, 44.024456>,  <26.487156, 31.790169, 43.849991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021362, 31.255888, 44.024456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.374956, 31.148495, 44.177551>,  <26.587112, 31.084059, 44.269409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.374956, 31.148495, 44.177551>,  <26.021362, 31.255888, 44.024456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374956, 31.148495, 44.177551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445122, -0.233023, 0.864619,
		-0.142950, -0.934675, -0.325497,
		0.883986, -0.268483, 0.382734,
		26.640152, 31.067949, 44.292370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.523510, 33.076008, 45.595383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.324356, 32.734612, 45.656929>,  <40.204865, 32.529774, 45.693855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.324356, 32.734612, 45.656929>,  <40.523510, 33.076008, 45.595383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324356, 32.734612, 45.656929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384920, -0.058495, 0.921095,
		-0.777142, 0.517822, 0.357647,
		-0.497883, -0.853486, 0.153861,
		40.174992, 32.478565, 45.703087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351456, 33.013424, 46.369247>,  <40.523510, 33.076008, 45.595383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351456, 33.013424, 46.369247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315353, 32.625481, 46.278713>,  <40.293690, 32.392715, 46.224392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315353, 32.625481, 46.278713>,  <40.351456, 33.013424, 46.369247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315353, 32.625481, 46.278713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250200, -0.242053, 0.937449,
		-0.963978, 0.027983, 0.264506,
		-0.090257, -0.969859, -0.226333,
		40.288277, 32.334522, 46.210812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831333, 32.715309, 46.820904>,  <40.351456, 33.013424, 46.369247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831333, 32.715309, 46.820904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.070068, 32.416122, 46.704750>,  <40.213310, 32.236610, 46.635059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.070068, 32.416122, 46.704750>,  <39.831333, 32.715309, 46.820904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070068, 32.416122, 46.704750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209782, -0.203854, 0.956261,
		-0.774452, -0.631650, 0.035243,
		0.596838, -0.747972, -0.290384,
		40.249119, 32.191730, 46.617634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648788, 32.109684, 47.143841>,  <39.831333, 32.715309, 46.820904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648788, 32.109684, 47.143841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028919, 32.031036, 47.047325>,  <40.256996, 31.983847, 46.989418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028919, 32.031036, 47.047325>,  <39.648788, 32.109684, 47.143841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028919, 32.031036, 47.047325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138033, -0.428573, 0.892901,
		-0.278970, -0.881854, -0.380145,
		0.950328, -0.196620, -0.241284,
		40.314018, 31.972050, 46.974941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805080, 31.460625, 47.399643>,  <39.648788, 32.109684, 47.143841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805080, 31.460625, 47.399643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.175446, 31.601809, 47.345829>,  <40.397667, 31.686518, 47.313541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.175446, 31.601809, 47.345829>,  <39.805080, 31.460625, 47.399643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175446, 31.601809, 47.345829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306459, -0.493722, 0.813832,
		0.220825, -0.794770, -0.565312,
		0.925915, 0.352959, -0.134538,
		40.453220, 31.707697, 47.305466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164417, 30.957682, 47.535244>,  <39.805080, 31.460625, 47.399643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164417, 30.957682, 47.535244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435772, 31.249920, 47.566296>,  <40.598583, 31.425262, 47.584927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435772, 31.249920, 47.566296>,  <40.164417, 30.957682, 47.535244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435772, 31.249920, 47.566296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299594, -0.371549, 0.878746,
		0.670850, -0.572870, -0.470935,
		0.678383, 0.730596, 0.077625,
		40.639286, 31.469099, 47.589584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658634, 30.613266, 47.738461>,  <40.164417, 30.957682, 47.535244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658634, 30.613266, 47.738461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.759369, 30.988848, 47.832218>,  <40.819809, 31.214197, 47.888474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.759369, 30.988848, 47.832218>,  <40.658634, 30.613266, 47.738461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759369, 30.988848, 47.832218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289984, -0.304286, 0.907370,
		0.923302, -0.160542, -0.348913,
		0.251840, 0.938955, 0.234393,
		40.834923, 31.270535, 47.902534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248234, 30.574661, 48.039722>,  <40.658634, 30.613266, 47.738461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248234, 30.574661, 48.039722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.131996, 30.923628, 48.196922>,  <41.062256, 31.133007, 48.291241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.131996, 30.923628, 48.196922>,  <41.248234, 30.574661, 48.039722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131996, 30.923628, 48.196922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344176, -0.287928, 0.893667,
		0.892805, 0.394951, -0.216596,
		-0.290590, 0.872417, 0.392996,
		41.044819, 31.185352, 48.314819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756828, 30.848095, 48.449970>,  <41.248234, 30.574661, 48.039722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756828, 30.848095, 48.449970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.416283, 31.008757, 48.584934>,  <41.211956, 31.105154, 48.665913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.416283, 31.008757, 48.584934>,  <41.756828, 30.848095, 48.449970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416283, 31.008757, 48.584934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206050, -0.335463, 0.919243,
		0.482410, 0.852136, 0.202841,
		-0.851366, 0.401656, 0.337413,
		41.160873, 31.129253, 48.686157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856506, 31.200293, 49.067219>,  <41.756828, 30.848095, 48.449970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856506, 31.200293, 49.067219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.461716, 31.141262, 49.092808>,  <41.224842, 31.105844, 49.108162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.461716, 31.141262, 49.092808>,  <41.856506, 31.200293, 49.067219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461716, 31.141262, 49.092808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091324, -0.186718, 0.978160,
		-0.132407, 0.971266, 0.197764,
		-0.986980, -0.147576, 0.063977,
		41.165623, 31.096989, 49.112000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758282, 31.322899, 49.746635>,  <41.856506, 31.200293, 49.067219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758282, 31.322899, 49.746635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414032, 31.147623, 49.642857>,  <41.207481, 31.042458, 49.580589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414032, 31.147623, 49.642857>,  <41.758282, 31.322899, 49.746635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414032, 31.147623, 49.642857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128492, -0.306137, 0.943276,
		-0.492762, 0.845144, 0.207165,
		-0.860625, -0.438192, -0.259447,
		41.155846, 31.016165, 49.565022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253044, 31.554943, 50.174809>,  <41.758282, 31.322899, 49.746635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253044, 31.554943, 50.174809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.082493, 31.224674, 50.027042>,  <40.980164, 31.026512, 49.938385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.082493, 31.224674, 50.027042>,  <41.253044, 31.554943, 50.174809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082493, 31.224674, 50.027042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291602, -0.261125, 0.920208,
		-0.856255, 0.500076, -0.129431,
		-0.426376, -0.825674, -0.369413,
		40.954578, 30.976973, 49.916218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246689, 31.820179, 50.891739>,  <41.253044, 31.554943, 50.174809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246689, 31.820179, 50.891739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.631096, 31.762791, 50.797192>,  <41.861740, 31.728357, 50.740463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.631096, 31.762791, 50.797192>,  <41.246689, 31.820179, 50.891739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631096, 31.762791, 50.797192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222031, -0.909885, -0.350443,
		-0.164785, 0.389261, -0.906268,
		0.961014, -0.143472, -0.236363,
		41.919399, 31.719749, 50.726284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632599, 32.430981, 51.044601>,  <41.246689, 31.820179, 50.891739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632599, 32.430981, 51.044601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.368248, 32.710625, 51.153774>,  <40.209637, 32.878410, 51.219276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.368248, 32.710625, 51.153774>,  <40.632599, 32.430981, 51.044601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368248, 32.710625, 51.153774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225108, 0.531574, -0.816551,
		-0.715939, -0.478201, -0.508679,
		-0.660876, 0.699109, 0.272928,
		40.169987, 32.920357, 51.235653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085484, 32.626617, 50.453732>,  <40.632599, 32.430981, 51.044601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085484, 32.626617, 50.453732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.152390, 32.928478, 50.707512>,  <40.192535, 33.109596, 50.859779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.152390, 32.928478, 50.707512>,  <40.085484, 32.626617, 50.453732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152390, 32.928478, 50.707512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269097, 0.584133, -0.765751,
		-0.948477, 0.298813, -0.105369,
		0.167267, 0.754652, 0.634446,
		40.202568, 33.154873, 50.897846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701347, 33.166454, 50.228981>,  <40.085484, 32.626617, 50.453732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701347, 33.166454, 50.228981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002419, 33.322281, 50.441288>,  <40.183060, 33.415775, 50.568672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002419, 33.322281, 50.441288>,  <39.701347, 33.166454, 50.228981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002419, 33.322281, 50.441288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161516, 0.672273, -0.722468,
		-0.638274, 0.629512, 0.443081,
		0.752674, 0.389568, 0.530771,
		40.228222, 33.439152, 50.600521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681179, 33.935825, 49.900532>,  <39.701347, 33.166454, 50.228981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681179, 33.935825, 49.900532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025616, 33.867424, 50.092064>,  <40.232277, 33.826385, 50.206985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025616, 33.867424, 50.092064>,  <39.681179, 33.935825, 49.900532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025616, 33.867424, 50.092064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487453, 0.545481, -0.681792,
		-0.144608, 0.820493, 0.553063,
		0.861091, -0.170999, 0.478833,
		40.283943, 33.816124, 50.235714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064957, 34.584694, 49.809185>,  <39.681179, 33.935825, 49.900532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064957, 34.584694, 49.809185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351498, 34.322952, 49.906063>,  <40.523422, 34.165905, 49.964191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351498, 34.322952, 49.906063>,  <40.064957, 34.584694, 49.809185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351498, 34.322952, 49.906063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558891, 0.330313, -0.760615,
		0.417713, 0.680228, 0.602334,
		0.716350, -0.654357, 0.242197,
		40.566402, 34.126644, 49.978722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737396, 34.966969, 49.879860>,  <40.064957, 34.584694, 49.809185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737396, 34.966969, 49.879860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.836040, 34.581791, 49.836166>,  <40.895226, 34.350685, 49.809952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.836040, 34.581791, 49.836166>,  <40.737396, 34.966969, 49.879860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836040, 34.581791, 49.836166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529052, 0.228205, -0.817329,
		0.811966, 0.143770, 0.565722,
		0.246608, -0.962940, -0.109233,
		40.910023, 34.292908, 49.803398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476162, 35.016167, 49.797562>,  <40.737396, 34.966969, 49.879860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476162, 35.016167, 49.797562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.349785, 34.668274, 49.645908>,  <41.273960, 34.459538, 49.554916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.349785, 34.668274, 49.645908>,  <41.476162, 35.016167, 49.797562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349785, 34.668274, 49.645908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580376, 0.138951, -0.802407,
		0.750562, -0.473553, 0.460873,
		-0.315943, -0.869736, -0.379130,
		41.255001, 34.407352, 49.532169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076057, 34.659531, 49.406998>,  <41.476162, 35.016167, 49.797562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076057, 34.659531, 49.406998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.760555, 34.466320, 49.254917>,  <41.571255, 34.350395, 49.163670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.760555, 34.466320, 49.254917>,  <42.076057, 34.659531, 49.406998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760555, 34.466320, 49.254917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272771, 0.279254, -0.920659,
		0.550874, -0.829882, -0.088507,
		-0.788754, -0.483025, -0.380202,
		41.523930, 34.321411, 49.140858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336376, 34.427982, 48.704037>,  <42.076057, 34.659531, 49.406998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336376, 34.427982, 48.704037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.938625, 34.391647, 48.682247>,  <41.699974, 34.369846, 48.669174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.938625, 34.391647, 48.682247>,  <42.336376, 34.427982, 48.704037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938625, 34.391647, 48.682247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037187, 0.182196, -0.982559,
		0.099180, -0.979057, -0.177793,
		-0.994375, -0.090839, -0.054479,
		41.640312, 34.364395, 48.665905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248749, 34.089214, 48.104900>,  <42.336376, 34.427982, 48.704037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248749, 34.089214, 48.104900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.889954, 34.251831, 48.174332>,  <41.674675, 34.349400, 48.215992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.889954, 34.251831, 48.174332>,  <42.248749, 34.089214, 48.104900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889954, 34.251831, 48.174332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101997, 0.191735, -0.976132,
		-0.430121, -0.893286, -0.130519,
		-0.896991, 0.406543, 0.173582,
		41.620857, 34.373795, 48.226406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768158, 33.686676, 47.707539>,  <42.248749, 34.089214, 48.104900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768158, 33.686676, 47.707539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.600060, 34.040741, 47.787418>,  <41.499203, 34.253181, 47.835346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.600060, 34.040741, 47.787418>,  <41.768158, 33.686676, 47.707539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600060, 34.040741, 47.787418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445525, -0.009546, -0.895218,
		-0.790509, -0.465181, 0.398374,
		-0.420242, 0.885164, 0.199704,
		41.473988, 34.306290, 47.847328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068039, 33.652760, 47.564636>,  <41.768158, 33.686676, 47.707539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068039, 33.652760, 47.564636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176327, 34.037704, 47.555122>,  <41.241299, 34.268673, 47.549416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176327, 34.037704, 47.555122>,  <41.068039, 33.652760, 47.564636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176327, 34.037704, 47.555122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339357, 0.072286, -0.937876,
		-0.900859, 0.261975, 0.346154,
		0.270722, 0.962364, -0.023784,
		41.257542, 34.326412, 47.547989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491898, 34.013660, 47.364510>,  <41.068039, 33.652760, 47.564636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491898, 34.013660, 47.364510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.785969, 34.264591, 47.261772>,  <40.962414, 34.415150, 47.200130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.785969, 34.264591, 47.261772>,  <40.491898, 34.013660, 47.364510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785969, 34.264591, 47.261772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370433, 0.054470, -0.927260,
		-0.567706, 0.776848, 0.272428,
		0.735180, 0.627328, -0.256848,
		41.006523, 34.452789, 47.184719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172123, 34.509655, 46.983307>,  <40.491898, 34.013660, 47.364510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172123, 34.509655, 46.983307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.557629, 34.572113, 46.896801>,  <40.788933, 34.609589, 46.844898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.557629, 34.572113, 46.896801>,  <40.172123, 34.509655, 46.983307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557629, 34.572113, 46.896801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259252, 0.357517, -0.897201,
		-0.062776, 0.920761, 0.385044,
		0.963767, 0.156146, -0.216265,
		40.846760, 34.618958, 46.831921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074459, 35.064167, 46.556183>,  <40.172123, 34.509655, 46.983307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074459, 35.064167, 46.556183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451698, 34.963696, 46.469025>,  <40.678040, 34.903412, 46.416729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451698, 34.963696, 46.469025>,  <40.074459, 35.064167, 46.556183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451698, 34.963696, 46.469025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151039, 0.260205, -0.953667,
		0.296243, 0.932310, 0.207460,
		0.943095, -0.251182, -0.217899,
		40.734627, 34.888340, 46.403656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077057, 35.803516, 46.845760>,  <40.074459, 35.064167, 46.556183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077057, 35.803516, 46.845760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.688046, 35.895443, 46.860561>,  <39.454639, 35.950600, 46.869442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.688046, 35.895443, 46.860561>,  <40.077057, 35.803516, 46.845760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688046, 35.895443, 46.860561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001526, -0.165243, 0.986252,
		0.232768, 0.959104, 0.161054,
		-0.972531, 0.229813, 0.037000,
		39.396286, 35.964386, 46.871662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892269, 36.181423, 47.561970>,  <40.077057, 35.803516, 46.845760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892269, 36.181423, 47.561970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547989, 36.033852, 47.421642>,  <39.341419, 35.945309, 47.337444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547989, 36.033852, 47.421642>,  <39.892269, 36.181423, 47.561970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547989, 36.033852, 47.421642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210227, -0.370045, 0.904915,
		-0.463671, 0.852618, 0.240940,
		-0.860705, -0.368931, -0.350823,
		39.289776, 35.923172, 47.316395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315887, 36.320747, 48.057617>,  <39.892269, 36.181423, 47.561970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315887, 36.320747, 48.057617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127483, 36.042038, 47.841228>,  <39.014442, 35.874813, 47.711395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127483, 36.042038, 47.841228>,  <39.315887, 36.320747, 48.057617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127483, 36.042038, 47.841228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394754, -0.381937, 0.835639,
		-0.788871, 0.607146, -0.095159,
		-0.471010, -0.696776, -0.540973,
		38.986179, 35.833004, 47.678936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550964, 36.256779, 48.260994>,  <39.315887, 36.320747, 48.057617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550964, 36.256779, 48.260994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666996, 35.906582, 48.106403>,  <38.736614, 35.696465, 48.013649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666996, 35.906582, 48.106403>,  <38.550964, 36.256779, 48.260994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666996, 35.906582, 48.106403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373051, -0.475340, 0.796797,
		-0.881297, -0.086963, -0.464492,
		0.290083, -0.875494, -0.386474,
		38.754021, 35.643932, 47.990459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960613, 35.795322, 48.239079>,  <38.550964, 36.256779, 48.260994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960613, 35.795322, 48.239079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295216, 35.576141, 48.237656>,  <38.495975, 35.444633, 48.236801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295216, 35.576141, 48.237656>,  <37.960613, 35.795322, 48.239079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295216, 35.576141, 48.237656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326655, -0.503872, 0.799631,
		-0.439946, -0.667735, -0.600482,
		0.836507, -0.547945, -0.003558,
		38.546165, 35.411758, 48.236588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724640, 35.179657, 48.457161>,  <37.960613, 35.795322, 48.239079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724640, 35.179657, 48.457161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.120289, 35.143818, 48.503830>,  <38.357677, 35.122314, 48.531834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.120289, 35.143818, 48.503830>,  <37.724640, 35.179657, 48.457161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120289, 35.143818, 48.503830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147043, -0.578785, 0.802114,
		-0.004337, -0.810543, -0.585662,
		0.989120, -0.089596, 0.116675,
		38.417027, 35.116940, 48.538834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758694, 34.499088, 48.556347>,  <37.724640, 35.179657, 48.457161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758694, 34.499088, 48.556347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098228, 34.653923, 48.700367>,  <38.301949, 34.746822, 48.786777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098228, 34.653923, 48.700367>,  <37.758694, 34.499088, 48.556347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098228, 34.653923, 48.700367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065136, -0.599300, 0.797870,
		0.524621, -0.700717, -0.483497,
		0.848841, 0.387086, 0.360046,
		38.352882, 34.770050, 48.808380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191536, 33.869080, 48.699604>,  <37.758694, 34.499088, 48.556347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191536, 33.869080, 48.699604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337021, 34.148911, 48.945633>,  <38.424313, 34.316807, 49.093250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337021, 34.148911, 48.945633>,  <38.191536, 33.869080, 48.699604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337021, 34.148911, 48.945633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156297, -0.696761, 0.700068,
		0.918306, -0.158489, -0.362761,
		0.363711, 0.699575, 0.615069,
		38.446133, 34.358784, 49.130154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699928, 33.353733, 48.961685>,  <38.191536, 33.869080, 48.699604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699928, 33.353733, 48.961685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344700, 33.197086, 48.865379>,  <37.131561, 33.103100, 48.807598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344700, 33.197086, 48.865379>,  <37.699928, 33.353733, 48.961685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344700, 33.197086, 48.865379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242450, 0.045966, -0.969074,
		0.390572, -0.918980, 0.054126,
		-0.888072, -0.391616, -0.240760,
		37.078278, 33.079601, 48.793152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814781, 32.851009, 48.402809>,  <37.699928, 33.353733, 48.961685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814781, 32.851009, 48.402809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420464, 32.915482, 48.383926>,  <37.183872, 32.954163, 48.372597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420464, 32.915482, 48.383926>,  <37.814781, 32.851009, 48.402809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420464, 32.915482, 48.383926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062817, 0.093176, -0.993666,
		-0.155758, -0.982517, -0.101977,
		-0.985796, 0.161177, -0.047206,
		37.124725, 32.963833, 48.369766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536499, 32.377289, 47.903633>,  <37.814781, 32.851009, 48.402809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536499, 32.377289, 47.903633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269875, 32.674168, 47.931480>,  <37.109901, 32.852295, 47.948189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269875, 32.674168, 47.931480>,  <37.536499, 32.377289, 47.903633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269875, 32.674168, 47.931480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040869, 0.129629, -0.990720,
		-0.744333, -0.657526, -0.116738,
		-0.666556, 0.742197, 0.069615,
		37.069908, 32.896828, 47.952366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037086, 32.263191, 47.308872>,  <37.536499, 32.377289, 47.903633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037086, 32.263191, 47.308872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994225, 32.643108, 47.426453>,  <36.968506, 32.871059, 47.497002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994225, 32.643108, 47.426453>,  <37.037086, 32.263191, 47.308872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994225, 32.643108, 47.426453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227421, 0.264395, -0.937216,
		-0.967883, -0.167279, 0.187672,
		-0.107157, 0.949796, 0.293946,
		36.962078, 32.928047, 47.514637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302948, 32.401100, 47.184780>,  <37.037086, 32.263191, 47.308872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302948, 32.401100, 47.184780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520603, 32.736401, 47.170612>,  <36.651196, 32.937580, 47.162113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520603, 32.736401, 47.170612>,  <36.302948, 32.401100, 47.184780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520603, 32.736401, 47.170612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371286, 0.202729, -0.906117,
		-0.752372, 0.506200, 0.421542,
		0.544136, 0.838249, -0.035418,
		36.683846, 32.987877, 47.159988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923138, 32.669846, 46.716175>,  <36.302948, 32.401100, 47.184780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923138, 32.669846, 46.716175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234116, 32.920567, 46.736984>,  <36.420700, 33.070999, 46.749470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234116, 32.920567, 46.736984>,  <35.923138, 32.669846, 46.716175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234116, 32.920567, 46.736984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124455, 0.234386, -0.964144,
		-0.616520, 0.743090, 0.260229,
		0.777440, 0.626801, 0.052022,
		36.467346, 33.108608, 46.752590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.823532, 28.969873, 50.402088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.518291, 29.115986, 50.188828>,  <38.335148, 29.203653, 50.060871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.518291, 29.115986, 50.188828>,  <38.823532, 28.969873, 50.402088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518291, 29.115986, 50.188828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541969, -0.087695, -0.835810,
		-0.352063, -0.926756, -0.131052,
		-0.763100, 0.365284, -0.533147,
		38.289360, 29.225571, 50.028885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187553, 28.704115, 49.931808>,  <38.823532, 28.969873, 50.402088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187553, 28.704115, 49.931808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.524727, 28.752052, 49.722012>,  <39.727032, 28.780815, 49.596134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.524727, 28.752052, 49.722012>,  <39.187553, 28.704115, 49.931808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524727, 28.752052, 49.722012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536870, 0.250800, -0.805525,
		0.035007, 0.960592, 0.275749,
		0.842938, 0.119842, -0.524493,
		39.777607, 28.788006, 49.564663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248604, 29.419567, 49.583252>,  <39.187553, 28.704115, 49.931808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248604, 29.419567, 49.583252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.466122, 29.154606, 49.377140>,  <39.596634, 28.995630, 49.253471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.466122, 29.154606, 49.377140>,  <39.248604, 29.419567, 49.583252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466122, 29.154606, 49.377140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530532, 0.204400, -0.822652,
		0.650249, 0.720725, -0.240274,
		0.543794, -0.662402, -0.515278,
		39.629261, 28.955885, 49.222557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223679, 29.758652, 48.914284>,  <39.248604, 29.419567, 49.583252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223679, 29.758652, 48.914284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.345562, 29.381586, 48.859829>,  <39.418694, 29.155346, 48.827156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.345562, 29.381586, 48.859829>,  <39.223679, 29.758652, 48.914284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345562, 29.381586, 48.859829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471612, -0.025147, -0.881448,
		0.827487, 0.332790, -0.452234,
		0.304709, -0.942666, -0.136139,
		39.436974, 29.098787, 48.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615852, 29.776665, 48.243149>,  <39.223679, 29.758652, 48.914284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615852, 29.776665, 48.243149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.480270, 29.406094, 48.308685>,  <39.398922, 29.183750, 48.348007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.480270, 29.406094, 48.308685>,  <39.615852, 29.776665, 48.243149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480270, 29.406094, 48.308685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329432, -0.046249, -0.943046,
		0.881241, -0.373621, -0.289519,
		-0.338952, -0.926427, 0.163839,
		39.378586, 29.128166, 48.357838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796944, 29.374659, 47.657372>,  <39.615852, 29.776665, 48.243149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796944, 29.374659, 47.657372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.488380, 29.181993, 47.823708>,  <39.303242, 29.066395, 47.923512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.488380, 29.181993, 47.823708>,  <39.796944, 29.374659, 47.657372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488380, 29.181993, 47.823708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480690, 0.012869, -0.876796,
		0.416971, -0.876261, -0.241459,
		-0.771409, -0.481665, 0.415844,
		39.256958, 29.037495, 47.948460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732613, 28.746069, 47.228962>,  <39.796944, 29.374659, 47.657372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732613, 28.746069, 47.228962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.394539, 28.815620, 47.431122>,  <39.191696, 28.857351, 47.552418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.394539, 28.815620, 47.431122>,  <39.732613, 28.746069, 47.228962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394539, 28.815620, 47.431122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509418, 0.024065, -0.860183,
		-0.161733, -0.984472, 0.068239,
		-0.845184, 0.173882, 0.505400,
		39.140984, 28.867785, 47.582741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308041, 28.288105, 46.942989>,  <39.732613, 28.746069, 47.228962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308041, 28.288105, 46.942989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.049942, 28.541389, 47.113964>,  <38.895084, 28.693359, 47.216549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.049942, 28.541389, 47.113964>,  <39.308041, 28.288105, 46.942989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049942, 28.541389, 47.113964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687101, -0.236399, -0.687028,
		-0.333989, -0.736993, 0.587616,
		-0.645247, 0.633212, 0.427433,
		38.856369, 28.731352, 47.242195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691475, 27.942554, 47.033436>,  <39.308041, 28.288105, 46.942989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691475, 27.942554, 47.033436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.594193, 28.330544, 47.033779>,  <38.535824, 28.563337, 47.033985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.594193, 28.330544, 47.033779>,  <38.691475, 27.942554, 47.033436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594193, 28.330544, 47.033779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623275, -0.155599, -0.766367,
		-0.743222, -0.186924, 0.642403,
		-0.243209, 0.969974, 0.000860,
		38.521229, 28.621536, 47.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982979, 27.943600, 46.861961>,  <38.691475, 27.942554, 47.033436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982979, 27.943600, 46.861961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.072330, 28.330057, 46.810318>,  <38.125942, 28.561932, 46.779331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.072330, 28.330057, 46.810318>,  <37.982979, 27.943600, 46.861961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072330, 28.330057, 46.810318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575000, 0.023659, -0.817811,
		-0.787069, 0.256913, 0.560818,
		0.223375, 0.966145, -0.129104,
		38.139343, 28.619900, 46.771587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258644, 28.202795, 46.719395>,  <37.982979, 27.943600, 46.861961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258644, 28.202795, 46.719395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.513195, 28.483091, 46.590408>,  <37.665928, 28.651268, 46.513016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.513195, 28.483091, 46.590408>,  <37.258644, 28.202795, 46.719395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513195, 28.483091, 46.590408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457805, 0.006648, -0.889028,
		-0.620833, 0.713387, 0.325033,
		0.636382, 0.700739, -0.322464,
		37.704109, 28.693314, 46.493668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875210, 28.690041, 46.372810>,  <37.258644, 28.202795, 46.719395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875210, 28.690041, 46.372810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.229187, 28.715271, 46.188248>,  <37.441574, 28.730410, 46.077511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.229187, 28.715271, 46.188248>,  <36.875210, 28.690041, 46.372810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229187, 28.715271, 46.188248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458719, -0.052822, -0.887010,
		-0.080320, 0.996610, -0.017811,
		0.884944, 0.063074, -0.461406,
		37.494671, 28.734194, 46.049828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434010, 29.340521, 46.382549>,  <36.875210, 28.690041, 46.372810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434010, 29.340521, 46.382549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077492, 29.235493, 46.530418>,  <35.863583, 29.172476, 46.619141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077492, 29.235493, 46.530418>,  <36.434010, 29.340521, 46.382549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077492, 29.235493, 46.530418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291149, 0.293604, 0.910510,
		-0.347612, 0.919159, -0.185238,
		-0.891290, -0.262573, 0.369673,
		35.810104, 29.156721, 46.641319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242615, 29.899130, 46.723782>,  <36.434010, 29.340521, 46.382549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242615, 29.899130, 46.723782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035145, 29.589081, 46.868095>,  <35.910664, 29.403051, 46.954685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035145, 29.589081, 46.868095>,  <36.242615, 29.899130, 46.723782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035145, 29.589081, 46.868095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241792, 0.271771, 0.931492,
		-0.820071, 0.570373, 0.046458,
		-0.518671, -0.775123, 0.360783,
		35.879543, 29.356544, 46.976330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853691, 30.180519, 47.227283>,  <36.242615, 29.899130, 46.723782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853691, 30.180519, 47.227283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.853588, 29.791365, 47.319798>,  <35.853527, 29.557873, 47.375305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.853588, 29.791365, 47.319798>,  <35.853691, 30.180519, 47.227283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853588, 29.791365, 47.319798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123357, 0.229484, 0.965464,
		-0.992362, 0.028781, 0.119953,
		-0.000260, -0.972887, 0.231282,
		35.853512, 29.499498, 47.389183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560432, 30.196156, 47.875271>,  <35.853691, 30.180519, 47.227283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560432, 30.196156, 47.875271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728577, 29.833294, 47.867622>,  <35.829464, 29.615578, 47.863033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728577, 29.833294, 47.867622>,  <35.560432, 30.196156, 47.875271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728577, 29.833294, 47.867622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052138, 0.003110, 0.998635,
		-0.905857, -0.420785, 0.048604,
		0.420362, -0.907155, -0.019122,
		35.854687, 29.561148, 47.861885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256493, 29.756725, 48.341305>,  <35.560432, 30.196156, 47.875271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256493, 29.756725, 48.341305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605114, 29.563238, 48.309273>,  <35.814285, 29.447145, 48.290054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605114, 29.563238, 48.309273>,  <35.256493, 29.756725, 48.341305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605114, 29.563238, 48.309273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105444, 0.025405, 0.994101,
		-0.478828, -0.874856, 0.073147,
		0.871553, -0.483716, -0.080083,
		35.866581, 29.418123, 48.285248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187603, 29.120609, 48.837925>,  <35.256493, 29.756725, 48.341305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187603, 29.120609, 48.837925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574810, 29.202427, 48.779816>,  <35.807133, 29.251518, 48.744949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574810, 29.202427, 48.779816>,  <35.187603, 29.120609, 48.837925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574810, 29.202427, 48.779816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148578, -0.000826, 0.988900,
		0.202156, -0.978856, -0.031191,
		0.968017, 0.204547, -0.145269,
		35.865215, 29.263790, 48.736237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518333, 28.723742, 49.376225>,  <35.187603, 29.120609, 48.837925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518333, 28.723742, 49.376225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795094, 28.988445, 49.260746>,  <35.961151, 29.147266, 49.191460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795094, 28.988445, 49.260746>,  <35.518333, 28.723742, 49.376225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795094, 28.988445, 49.260746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229428, 0.177608, 0.956984,
		0.684566, -0.728376, -0.028938,
		0.691905, 0.661758, -0.288694,
		36.002666, 29.186972, 49.174137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137913, 28.599728, 49.624622>,  <35.518333, 28.723742, 49.376225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137913, 28.599728, 49.624622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175583, 28.994270, 49.570606>,  <36.198185, 29.230995, 49.538197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175583, 28.994270, 49.570606>,  <36.137913, 28.599728, 49.624622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175583, 28.994270, 49.570606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205835, 0.113420, 0.971992,
		0.974045, -0.119330, -0.192346,
		0.094172, 0.986355, -0.135039,
		36.203835, 29.290176, 49.530094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717773, 28.647890, 49.890015>,  <36.137913, 28.599728, 49.624622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717773, 28.647890, 49.890015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.580624, 29.023304, 49.874077>,  <36.498333, 29.248552, 49.864513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.580624, 29.023304, 49.874077>,  <36.717773, 28.647890, 49.890015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580624, 29.023304, 49.874077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305683, 0.151579, 0.939990,
		0.888253, 0.310121, -0.338868,
		-0.342876, 0.938535, -0.039842,
		36.477760, 29.304865, 49.862125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210140, 29.024818, 50.350632>,  <36.717773, 28.647890, 49.890015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210140, 29.024818, 50.350632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.883430, 29.254339, 50.326523>,  <36.687405, 29.392052, 50.312057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.883430, 29.254339, 50.326523>,  <37.210140, 29.024818, 50.350632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883430, 29.254339, 50.326523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166646, 0.334640, 0.927494,
		0.552366, 0.747509, -0.368947,
		-0.816774, 0.573800, -0.060274,
		36.638397, 29.426479, 50.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396713, 29.454643, 50.820087>,  <37.210140, 29.024818, 50.350632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396713, 29.454643, 50.820087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.007469, 29.540722, 50.787220>,  <36.773922, 29.592369, 50.767498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.007469, 29.540722, 50.787220>,  <37.396713, 29.454643, 50.820087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007469, 29.540722, 50.787220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023436, 0.447350, 0.894052,
		0.229156, 0.868083, -0.440363,
		-0.973107, 0.215198, -0.082168,
		36.715538, 29.605282, 50.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385078, 30.117426, 50.959930>,  <37.396713, 29.454643, 50.820087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385078, 30.117426, 50.959930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.033176, 29.946209, 51.042698>,  <36.822037, 29.843479, 51.092358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.033176, 29.946209, 51.042698>,  <37.385078, 30.117426, 50.959930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033176, 29.946209, 51.042698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030694, 0.485458, 0.873721,
		-0.474442, 0.762306, -0.440221,
		-0.879752, -0.428042, 0.206923,
		36.769253, 29.817797, 51.104774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939342, 30.615702, 51.378410>,  <37.385078, 30.117426, 50.959930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939342, 30.615702, 51.378410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.745869, 30.272280, 51.446442>,  <36.629784, 30.066227, 51.487259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.745869, 30.272280, 51.446442>,  <36.939342, 30.615702, 51.378410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745869, 30.272280, 51.446442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104255, 0.249452, 0.962759,
		-0.869009, 0.447944, -0.210166,
		-0.483688, -0.858557, 0.170075,
		36.600761, 30.014713, 51.497463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426949, 30.877266, 51.720650>,  <36.939342, 30.615702, 51.378410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426949, 30.877266, 51.720650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466602, 30.487989, 51.803661>,  <36.490395, 30.254423, 51.853470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466602, 30.487989, 51.803661>,  <36.426949, 30.877266, 51.720650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466602, 30.487989, 51.803661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044500, 0.204011, 0.977957,
		-0.994079, -0.106183, -0.023083,
		0.099133, -0.973193, 0.207528,
		36.496342, 30.196032, 51.865921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412498, 31.634346, 51.715134>,  <36.426949, 30.877266, 51.720650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412498, 31.634346, 51.715134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.227516, 31.982599, 51.782223>,  <36.116528, 32.191551, 51.822475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.227516, 31.982599, 51.782223>,  <36.412498, 31.634346, 51.715134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227516, 31.982599, 51.782223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230180, 0.300573, -0.925567,
		-0.856243, -0.389427, -0.339404,
		-0.462456, 0.870634, 0.167725,
		36.088779, 32.243790, 51.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921124, 31.731112, 51.215382>,  <36.412498, 31.634346, 51.715134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921124, 31.731112, 51.215382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966816, 32.110619, 51.333221>,  <35.994232, 32.338322, 51.403923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966816, 32.110619, 51.333221>,  <35.921124, 31.731112, 51.215382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966816, 32.110619, 51.333221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126011, 0.307980, -0.943011,
		-0.985430, 0.070601, 0.154738,
		0.114234, 0.948770, 0.294596,
		36.001087, 32.395248, 51.421600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325859, 32.019253, 50.886162>,  <35.921124, 31.731112, 51.215382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325859, 32.019253, 50.886162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624805, 32.270054, 50.974079>,  <35.804173, 32.420532, 51.026829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624805, 32.270054, 50.974079>,  <35.325859, 32.019253, 50.886162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624805, 32.270054, 50.974079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031949, 0.364348, -0.930715,
		-0.663639, 0.688566, 0.292335,
		0.747371, 0.626998, 0.219797,
		35.849018, 32.458153, 51.040020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277153, 32.467464, 50.466141>,  <35.325859, 32.019253, 50.886162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277153, 32.467464, 50.466141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.648281, 32.580704, 50.563313>,  <35.870956, 32.648647, 50.621616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.648281, 32.580704, 50.563313>,  <35.277153, 32.467464, 50.466141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648281, 32.580704, 50.563313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146995, 0.321072, -0.935578,
		-0.342857, 0.903753, 0.256281,
		0.927816, 0.283097, 0.242929,
		35.926624, 32.665634, 50.636192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372547, 33.022259, 50.105537>,  <35.277153, 32.467464, 50.466141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372547, 33.022259, 50.105537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.756615, 32.934204, 50.174377>,  <35.987053, 32.881371, 50.215683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.756615, 32.934204, 50.174377>,  <35.372547, 33.022259, 50.105537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756615, 32.934204, 50.174377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236882, 0.314569, -0.919203,
		0.148210, 0.923356, 0.354185,
		0.960167, -0.220135, 0.172104,
		36.044666, 32.868164, 50.226009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830704, 33.532547, 49.798988>,  <35.372547, 33.022259, 50.105537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830704, 33.532547, 49.798988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.101723, 33.238697, 49.813168>,  <36.264336, 33.062389, 49.821674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.101723, 33.238697, 49.813168>,  <35.830704, 33.532547, 49.798988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101723, 33.238697, 49.813168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378115, 0.306587, -0.873518,
		0.630835, 0.605259, 0.485499,
		0.677552, -0.734620, 0.035452,
		36.304989, 33.018311, 49.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480148, 33.849533, 49.681755>,  <35.830704, 33.532547, 49.798988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480148, 33.849533, 49.681755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.493076, 33.458588, 49.598118>,  <36.500832, 33.224022, 49.547935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.493076, 33.458588, 49.598118>,  <36.480148, 33.849533, 49.681755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493076, 33.458588, 49.598118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468063, 0.199646, -0.860847,
		0.883104, -0.070049, 0.463919,
		0.032318, -0.977361, -0.209096,
		36.502773, 33.165379, 49.535389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169449, 33.631100, 49.455639>,  <36.480148, 33.849533, 49.681755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169449, 33.631100, 49.455639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.962486, 33.342819, 49.271080>,  <36.838306, 33.169853, 49.160347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.962486, 33.342819, 49.271080>,  <37.169449, 33.631100, 49.455639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962486, 33.342819, 49.271080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519487, 0.163924, -0.838607,
		0.680016, -0.673590, 0.289578,
		-0.517409, -0.720698, -0.461392,
		36.807262, 33.126610, 49.132664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778919, 33.604355, 49.639107>,  <37.169449, 33.631100, 49.455639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778919, 33.604355, 49.639107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.923187, 33.977402, 49.643753>,  <38.009750, 34.201229, 49.646542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.923187, 33.977402, 49.643753>,  <37.778919, 33.604355, 49.639107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923187, 33.977402, 49.643753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164981, 0.051540, 0.984949,
		0.917985, -0.357161, 0.172453,
		0.360674, 0.932620, 0.011612,
		38.031391, 34.257187, 49.647236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203876, 33.621819, 50.130043>,  <37.778919, 33.604355, 49.639107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203876, 33.621819, 50.130043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.155975, 34.017635, 50.097900>,  <38.127235, 34.255127, 50.078613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.155975, 34.017635, 50.097900>,  <38.203876, 33.621819, 50.130043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155975, 34.017635, 50.097900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010947, 0.082255, 0.996551,
		0.992743, 0.118464, -0.020683,
		-0.119757, 0.989546, -0.080361,
		38.120049, 34.314499, 50.073792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653965, 33.945274, 50.637169>,  <38.203876, 33.621819, 50.130043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653965, 33.945274, 50.637169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.429008, 34.263508, 50.547050>,  <38.294033, 34.454449, 50.492977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.429008, 34.263508, 50.547050>,  <38.653965, 33.945274, 50.637169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429008, 34.263508, 50.547050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143616, 0.362314, 0.920925,
		0.814303, 0.485564, -0.318021,
		-0.562392, 0.795585, -0.225299,
		38.260292, 34.502182, 50.479462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958096, 34.645348, 50.851582>,  <38.653965, 33.945274, 50.637169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958096, 34.645348, 50.851582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.564667, 34.712074, 50.823986>,  <38.328609, 34.752110, 50.807426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.564667, 34.712074, 50.823986>,  <38.958096, 34.645348, 50.851582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564667, 34.712074, 50.823986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013150, 0.447377, 0.894249,
		0.180045, 0.878650, -0.442220,
		-0.983571, 0.166821, -0.068993,
		38.269596, 34.762119, 50.803288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878056, 35.363171, 51.044590>,  <38.958096, 34.645348, 50.851582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878056, 35.363171, 51.044590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.551544, 35.138474, 51.098446>,  <38.355637, 35.003654, 51.130760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.551544, 35.138474, 51.098446>,  <38.878056, 35.363171, 51.044590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551544, 35.138474, 51.098446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002051, 0.235901, 0.971775,
		-0.577649, 0.792967, -0.193714,
		-0.816283, -0.561742, 0.134642,
		38.306660, 34.969952, 51.138840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611584, 35.572346, 51.632824>,  <38.878056, 35.363171, 51.044590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611584, 35.572346, 51.632824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.392044, 35.240597, 51.591042>,  <38.260319, 35.041550, 51.565971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.392044, 35.240597, 51.591042>,  <38.611584, 35.572346, 51.632824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392044, 35.240597, 51.591042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027508, -0.142815, 0.989367,
		-0.835468, 0.540140, 0.101198,
		-0.548850, -0.829369, -0.104459,
		38.227390, 34.991787, 51.559704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048035, 35.644592, 52.070126>,  <38.611584, 35.572346, 51.632824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048035, 35.644592, 52.070126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087196, 35.251648, 52.006409>,  <38.110695, 35.015881, 51.968178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087196, 35.251648, 52.006409>,  <38.048035, 35.644592, 52.070126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087196, 35.251648, 52.006409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134137, -0.145578, 0.980211,
		-0.986114, -0.117335, 0.117518,
		0.097905, -0.982364, -0.159296,
		38.116570, 34.956940, 51.958618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791447, 35.419262, 52.696602>,  <38.048035, 35.644592, 52.070126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791447, 35.419262, 52.696602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974026, 35.107769, 52.524445>,  <38.083572, 34.920876, 52.421150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974026, 35.107769, 52.524445>,  <37.791447, 35.419262, 52.696602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974026, 35.107769, 52.524445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214273, -0.373276, 0.902636,
		-0.863562, -0.504230, -0.003522,
		0.456451, -0.778728, -0.430390,
		38.110962, 34.874149, 52.395329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.284039, 38.295349, 36.761189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634068, 38.142761, 36.880337>,  <36.844086, 38.051208, 36.951828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634068, 38.142761, 36.880337>,  <36.284039, 38.295349, 36.761189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634068, 38.142761, 36.880337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397200, -0.214363, 0.892346,
		-0.276549, -0.899183, -0.339103,
		0.875073, -0.381469, 0.297873,
		36.896591, 38.028320, 36.969700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066662, 37.756855, 37.238903>,  <36.284039, 38.295349, 36.761189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066662, 37.756855, 37.238903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448235, 37.834465, 37.330441>,  <36.677177, 37.881031, 37.385365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448235, 37.834465, 37.330441>,  <36.066662, 37.756855, 37.238903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448235, 37.834465, 37.330441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148173, -0.358571, 0.921668,
		0.260886, -0.913116, -0.313302,
		0.953930, 0.194028, 0.228846,
		36.734413, 37.892673, 37.399094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274368, 37.138710, 37.647408>,  <36.066662, 37.756855, 37.238903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274368, 37.138710, 37.647408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544174, 37.422928, 37.727570>,  <36.706059, 37.593456, 37.775669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544174, 37.422928, 37.727570>,  <36.274368, 37.138710, 37.647408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544174, 37.422928, 37.727570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002688, -0.269094, 0.963110,
		0.738257, -0.650170, -0.179598,
		0.674514, 0.710540, 0.200408,
		36.746529, 37.636089, 37.787693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812866, 36.835190, 37.901711>,  <36.274368, 37.138710, 37.647408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812866, 36.835190, 37.901711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841290, 37.209496, 38.039871>,  <36.858345, 37.434078, 38.122768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841290, 37.209496, 38.039871>,  <36.812866, 36.835190, 37.901711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841290, 37.209496, 38.039871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138481, -0.352175, 0.925633,
		0.987813, -0.017943, -0.154610,
		0.071059, 0.935762, 0.345398,
		36.862606, 37.490223, 38.143490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364815, 36.848305, 38.424107>,  <36.812866, 36.835190, 37.901711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364815, 36.848305, 38.424107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143383, 37.169102, 38.513866>,  <37.010525, 37.361580, 38.567722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143383, 37.169102, 38.513866>,  <37.364815, 36.848305, 38.424107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143383, 37.169102, 38.513866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066212, -0.310984, 0.948106,
		0.830158, 0.509997, 0.225257,
		-0.553583, 0.801993, 0.224398,
		36.977310, 37.409698, 38.581184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718929, 37.120136, 38.938675>,  <37.364815, 36.848305, 38.424107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718929, 37.120136, 38.938675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367523, 37.309544, 38.963940>,  <37.156681, 37.423187, 38.979099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367523, 37.309544, 38.963940>,  <37.718929, 37.120136, 38.938675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367523, 37.309544, 38.963940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123583, -0.352996, 0.927427,
		0.461452, 0.806953, 0.368632,
		-0.878515, 0.473520, 0.063165,
		37.103970, 37.451599, 38.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757313, 37.602139, 39.416019>,  <37.718929, 37.120136, 38.938675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757313, 37.602139, 39.416019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369690, 37.503822, 39.406986>,  <37.137115, 37.444832, 39.401566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369690, 37.503822, 39.406986>,  <37.757313, 37.602139, 39.416019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369690, 37.503822, 39.406986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005600, -0.113368, 0.993537,
		-0.246766, 0.962670, 0.111237,
		-0.969059, -0.245794, -0.022585,
		37.078972, 37.430084, 39.400211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494522, 38.093613, 39.818928>,  <37.757313, 37.602139, 39.416019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494522, 38.093613, 39.818928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219856, 37.803562, 39.798229>,  <37.055058, 37.629532, 39.785809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219856, 37.803562, 39.798229>,  <37.494522, 38.093613, 39.818928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219856, 37.803562, 39.798229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041269, -0.032184, 0.998630,
		-0.725802, 0.687859, -0.007825,
		-0.686664, -0.725131, -0.051746,
		37.013859, 37.586021, 39.782703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121159, 38.253998, 40.355648>,  <37.494522, 38.093613, 39.818928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121159, 38.253998, 40.355648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007660, 37.887260, 40.243305>,  <36.939560, 37.667217, 40.175900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007660, 37.887260, 40.243305>,  <37.121159, 38.253998, 40.355648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007660, 37.887260, 40.243305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024307, -0.285922, 0.957944,
		-0.958592, 0.278637, 0.058843,
		-0.283743, -0.916848, -0.280856,
		36.922539, 37.612206, 40.159050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460506, 38.054596, 40.745201>,  <37.121159, 38.253998, 40.355648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460506, 38.054596, 40.745201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572460, 37.682480, 40.650352>,  <36.639633, 37.459209, 40.593445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572460, 37.682480, 40.650352>,  <36.460506, 38.054596, 40.745201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572460, 37.682480, 40.650352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025524, -0.239695, 0.970513,
		-0.959694, -0.277685, -0.043342,
		0.279885, -0.930289, -0.237122,
		36.656425, 37.403393, 40.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978390, 37.527515, 41.094437>,  <36.460506, 38.054596, 40.745201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978390, 37.527515, 41.094437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302799, 37.312092, 41.003048>,  <36.497444, 37.182838, 40.948215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302799, 37.312092, 41.003048>,  <35.978390, 37.527515, 41.094437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302799, 37.312092, 41.003048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090439, -0.270430, 0.958482,
		-0.577982, -0.798014, -0.170619,
		0.811022, -0.538555, -0.228476,
		36.546104, 37.150524, 40.934505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853134, 36.918468, 41.448090>,  <35.978390, 37.527515, 41.094437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853134, 36.918468, 41.448090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243431, 36.938019, 41.362740>,  <36.477612, 36.949749, 41.311527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243431, 36.938019, 41.362740>,  <35.853134, 36.918468, 41.448090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243431, 36.938019, 41.362740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218733, -0.256153, 0.941563,
		-0.008642, -0.965400, -0.260631,
		0.975747, 0.048872, -0.213378,
		36.536156, 36.952679, 41.298725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553284, 36.206879, 41.190392>,  <35.853134, 36.918468, 41.448090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553284, 36.206879, 41.190392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446487, 35.821556, 41.201427>,  <35.382412, 35.590363, 41.208050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446487, 35.821556, 41.201427>,  <35.553284, 36.206879, 41.190392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446487, 35.821556, 41.201427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643458, 0.156881, -0.749233,
		0.717411, -0.217789, -0.661732,
		-0.266988, -0.963305, 0.027590,
		35.366390, 35.532566, 41.209705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467789, 35.999756, 40.450691>,  <35.553284, 36.206879, 41.190392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467789, 35.999756, 40.450691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295792, 35.709274, 40.665257>,  <35.192593, 35.534985, 40.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295792, 35.709274, 40.665257>,  <35.467789, 35.999756, 40.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295792, 35.709274, 40.665257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684375, -0.125338, -0.718277,
		0.588845, -0.675962, -0.443099,
		-0.429991, -0.726200, 0.536416,
		35.166794, 35.491413, 40.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355141, 35.463745, 39.984913>,  <35.467789, 35.999756, 40.450691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355141, 35.463745, 39.984913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092010, 35.390514, 40.277145>,  <34.934132, 35.346577, 40.452484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092010, 35.390514, 40.277145>,  <35.355141, 35.463745, 39.984913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092010, 35.390514, 40.277145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734140, -0.060822, -0.676269,
		0.168246, -0.981215, -0.094394,
		-0.657824, -0.183078, 0.730582,
		34.894665, 35.335590, 40.496319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041424, 34.801170, 39.817642>,  <35.355141, 35.463745, 39.984913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041424, 34.801170, 39.817642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777851, 34.983620, 40.056892>,  <34.619705, 35.093090, 40.200443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777851, 34.983620, 40.056892>,  <35.041424, 34.801170, 39.817642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777851, 34.983620, 40.056892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728310, -0.188069, -0.658934,
		-0.188069, -0.869815, 0.456127,
		0.658934, -0.456127, -0.598125,
		34.580170, 35.120457, 40.236328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508965, 34.210938, 39.931271>,  <35.041424, 34.801170, 39.817642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508965, 34.210938, 39.931271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322338, 34.542843, 40.053780>,  <34.210361, 34.741985, 40.127285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322338, 34.542843, 40.053780>,  <34.508965, 34.210938, 39.931271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322338, 34.542843, 40.053780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775376, -0.217098, -0.593010,
		-0.425568, -0.514156, 0.744671,
		-0.466566, 0.829767, 0.306274,
		34.182369, 34.791771, 40.145660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790279, 34.029430, 39.957085>,  <34.508965, 34.210938, 39.931271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790279, 34.029430, 39.957085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784412, 34.426498, 39.909115>,  <33.780891, 34.664742, 39.880333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784412, 34.426498, 39.909115>,  <33.790279, 34.029430, 39.957085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784412, 34.426498, 39.909115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734137, -0.092124, -0.672723,
		-0.678843, 0.078174, 0.730110,
		-0.014671, 0.992674, -0.119928,
		33.780010, 34.724300, 39.873135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026512, 34.158833, 40.025295>,  <33.790279, 34.029430, 39.957085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026512, 34.158833, 40.025295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223179, 34.465649, 39.860409>,  <33.341179, 34.649738, 39.761478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223179, 34.465649, 39.860409>,  <33.026512, 34.158833, 40.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223179, 34.465649, 39.860409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754658, 0.139152, -0.641193,
		-0.434458, 0.626333, 0.647267,
		0.491668, 0.767036, -0.412212,
		33.370678, 34.695759, 39.736744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581795, 34.786900, 39.989174>,  <33.026512, 34.158833, 40.025295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581795, 34.786900, 39.989174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835758, 34.831882, 39.683430>,  <32.988136, 34.858871, 39.499985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835758, 34.831882, 39.683430>,  <32.581795, 34.786900, 39.989174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835758, 34.831882, 39.683430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772449, 0.073712, -0.630785,
		-0.014592, 0.990919, 0.133665,
		0.634909, 0.112454, -0.764359,
		33.026230, 34.865620, 39.454121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390865, 35.356045, 39.592094>,  <32.581795, 34.786900, 39.989174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390865, 35.356045, 39.592094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632561, 35.157074, 39.343109>,  <32.777580, 35.037693, 39.193718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632561, 35.157074, 39.343109>,  <32.390865, 35.356045, 39.592094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632561, 35.157074, 39.343109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726249, -0.022430, -0.687065,
		0.327802, 0.867216, -0.374808,
		0.604241, -0.497426, -0.622463,
		32.813831, 35.007847, 39.156372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081627, 35.640072, 38.935535>,  <32.390865, 35.356045, 39.592094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081627, 35.640072, 38.935535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319897, 35.335201, 38.834141>,  <32.462860, 35.152279, 38.773304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319897, 35.335201, 38.834141>,  <32.081627, 35.640072, 38.935535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319897, 35.335201, 38.834141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597304, -0.209330, -0.774215,
		0.537024, 0.612594, -0.579943,
		0.595678, -0.762174, -0.253490,
		32.498600, 35.106548, 38.758095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207878, 35.790901, 38.320347>,  <32.081627, 35.640072, 38.935535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207878, 35.790901, 38.320347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281120, 35.400364, 38.366333>,  <32.325066, 35.166042, 38.393925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281120, 35.400364, 38.366333>,  <32.207878, 35.790901, 38.320347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281120, 35.400364, 38.366333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734636, -0.213604, -0.643960,
		0.653286, 0.033452, -0.756372,
		0.183106, -0.976347, 0.114969,
		32.336052, 35.107460, 38.400826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261444, 35.506176, 37.598560>,  <32.207878, 35.790901, 38.320347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261444, 35.506176, 37.598560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192593, 35.200974, 37.847778>,  <32.151283, 35.017853, 37.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192593, 35.200974, 37.847778>,  <32.261444, 35.506176, 37.598560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192593, 35.200974, 37.847778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714836, -0.338432, -0.611942,
		0.677778, -0.550707, -0.487174,
		-0.172125, -0.763010, 0.623047,
		32.140957, 34.972069, 38.034691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385616, 34.903137, 37.248310>,  <32.261444, 35.506176, 37.598560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385616, 34.903137, 37.248310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121101, 34.790409, 37.526382>,  <31.962393, 34.722771, 37.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121101, 34.790409, 37.526382>,  <32.385616, 34.903137, 37.248310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121101, 34.790409, 37.526382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437720, -0.607633, -0.662710,
		0.609182, -0.742535, 0.278458,
		-0.661285, -0.281824, 0.695181,
		31.922716, 34.705860, 37.734936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298046, 34.087009, 37.205341>,  <32.385616, 34.903137, 37.248310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298046, 34.087009, 37.205341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976122, 34.217701, 37.403545>,  <31.782967, 34.296116, 37.522469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976122, 34.217701, 37.403545>,  <32.298046, 34.087009, 37.205341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976122, 34.217701, 37.403545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578346, -0.619327, -0.530990,
		0.133392, -0.713921, 0.687403,
		-0.804812, 0.326727, 0.495507,
		31.734678, 34.315720, 37.552197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065315, 33.817978, 37.366165>,  <32.298046, 34.087009, 37.205341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065315, 33.817978, 37.366165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121151, 33.529247, 37.095024>,  <33.154652, 33.356010, 36.932339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121151, 33.529247, 37.095024>,  <33.065315, 33.817978, 37.366165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121151, 33.529247, 37.095024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108185, -0.691572, 0.714160,
		-0.984282, -0.026356, -0.174627,
		0.139590, -0.721827, -0.677850,
		33.163029, 33.312698, 36.891670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573914, 33.284603, 37.368233>,  <33.065315, 33.817978, 37.366165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573914, 33.284603, 37.368233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862480, 33.050690, 37.219864>,  <33.035622, 32.910343, 37.130840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862480, 33.050690, 37.219864>,  <32.573914, 33.284603, 37.368233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862480, 33.050690, 37.219864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037010, -0.567424, 0.822594,
		-0.691510, -0.579706, -0.430993,
		0.721418, -0.584783, -0.370924,
		33.078907, 32.875256, 37.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314842, 32.645313, 37.305847>,  <32.573914, 33.284603, 37.368233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314842, 32.645313, 37.305847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706551, 32.653114, 37.386497>,  <32.941574, 32.657795, 37.434887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706551, 32.653114, 37.386497>,  <32.314842, 32.645313, 37.305847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706551, 32.653114, 37.386497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174164, -0.427235, 0.887208,
		0.103442, -0.903930, -0.414981,
		0.979269, 0.019500, 0.201626,
		33.000332, 32.658966, 37.446987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038857, 32.553665, 37.963158>,  <32.314842, 32.645313, 37.305847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038857, 32.553665, 37.963158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415916, 32.648804, 38.056824>,  <32.642155, 32.705887, 38.113022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415916, 32.648804, 38.056824>,  <32.038857, 32.553665, 37.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415916, 32.648804, 38.056824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025824, -0.751432, 0.659304,
		0.332774, -0.615448, -0.714482,
		0.942653, 0.237850, 0.234164,
		32.698711, 32.720158, 38.127071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400715, 31.897881, 37.888798>,  <32.038857, 32.553665, 37.963158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400715, 31.897881, 37.888798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579659, 32.138393, 38.153625>,  <32.687023, 32.282700, 38.312523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579659, 32.138393, 38.153625>,  <32.400715, 31.897881, 37.888798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579659, 32.138393, 38.153625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098935, -0.702458, 0.704815,
		0.888867, -0.380805, -0.254760,
		0.447355, 0.601283, 0.662067,
		32.713863, 32.318779, 38.352245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856144, 31.496969, 38.231209>,  <32.400715, 31.897881, 37.888798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856144, 31.496969, 38.231209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826973, 31.812164, 38.475754>,  <32.809471, 32.001282, 38.622478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826973, 31.812164, 38.475754>,  <32.856144, 31.496969, 38.231209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826973, 31.812164, 38.475754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209848, -0.587143, 0.781810,
		0.975010, 0.185310, -0.122537,
		-0.072930, 0.787987, 0.611358,
		32.805096, 32.048561, 38.659161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432957, 31.510525, 38.566135>,  <32.856144, 31.496969, 38.231209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432957, 31.510525, 38.566135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242710, 31.758358, 38.815903>,  <33.128563, 31.907059, 38.965763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242710, 31.758358, 38.815903>,  <33.432957, 31.510525, 38.566135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242710, 31.758358, 38.815903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445219, -0.442659, 0.778352,
		0.758660, 0.648205, -0.065312,
		-0.475621, 0.619583, 0.624421,
		33.100025, 31.944233, 39.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909355, 31.697201, 38.995384>,  <33.432957, 31.510525, 38.566135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909355, 31.697201, 38.995384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560806, 31.775410, 39.175377>,  <33.351677, 31.822336, 39.283375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560806, 31.775410, 39.175377>,  <33.909355, 31.697201, 38.995384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560806, 31.775410, 39.175377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284851, -0.545141, 0.788468,
		0.399470, 0.815225, 0.419323,
		-0.871369, 0.195524, 0.449985,
		33.299397, 31.834066, 39.310371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956715, 31.965006, 39.623562>,  <33.909355, 31.697201, 38.995384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956715, 31.965006, 39.623562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590435, 31.812302, 39.673759>,  <33.370667, 31.720678, 39.703876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590435, 31.812302, 39.673759>,  <33.956715, 31.965006, 39.623562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590435, 31.812302, 39.673759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328691, -0.531866, 0.780436,
		-0.231196, 0.755895, 0.612513,
		-0.915702, -0.381761, 0.125490,
		33.315723, 31.697773, 39.711407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664303, 32.175247, 40.347874>,  <33.956715, 31.965006, 39.623562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664303, 32.175247, 40.347874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448532, 31.857498, 40.236164>,  <33.319069, 31.666849, 40.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448532, 31.857498, 40.236164>,  <33.664303, 32.175247, 40.347874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448532, 31.857498, 40.236164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033130, -0.351427, 0.935629,
		-0.841382, 0.495449, 0.215885,
		-0.539424, -0.794374, -0.279270,
		33.286705, 31.619186, 40.152382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164295, 31.985113, 40.943920>,  <33.664303, 32.175247, 40.347874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164295, 31.985113, 40.943920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180565, 31.657074, 40.715607>,  <33.190327, 31.460251, 40.578621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180565, 31.657074, 40.715607>,  <33.164295, 31.985113, 40.943920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180565, 31.657074, 40.715607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128458, -0.562219, 0.816951,
		-0.990880, -0.106549, 0.082481,
		0.040673, -0.820096, -0.570779,
		33.192768, 31.411045, 40.544373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609734, 31.618063, 41.143196>,  <33.164295, 31.985113, 40.943920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609734, 31.618063, 41.143196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885036, 31.369505, 40.993443>,  <33.050220, 31.220371, 40.903591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885036, 31.369505, 40.993443>,  <32.609734, 31.618063, 41.143196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885036, 31.369505, 40.993443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036617, -0.485653, 0.873384,
		-0.724538, -0.614825, -0.311503,
		0.688261, -0.621394, -0.374388,
		33.091515, 31.183086, 40.881126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332344, 30.943151, 41.224411>,  <32.609734, 31.618063, 41.143196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332344, 30.943151, 41.224411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729897, 30.922783, 41.185188>,  <32.968426, 30.910563, 41.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729897, 30.922783, 41.185188>,  <32.332344, 30.943151, 41.224411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729897, 30.922783, 41.185188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044956, -0.624298, 0.779892,
		-0.100927, -0.779525, -0.618187,
		0.993878, -0.050921, -0.098053,
		33.028061, 30.907507, 41.155773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537804, 30.174101, 41.300114>,  <32.332344, 30.943151, 41.224411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537804, 30.174101, 41.300114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847691, 30.418673, 41.364567>,  <33.033623, 30.565416, 41.403240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847691, 30.418673, 41.364567>,  <32.537804, 30.174101, 41.300114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847691, 30.418673, 41.364567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302312, -0.581995, 0.754910,
		0.555357, -0.536128, -0.635725,
		0.774717, 0.611431, 0.161137,
		33.080105, 30.602102, 41.412907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051022, 29.758265, 41.603497>,  <32.537804, 30.174101, 41.300114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051022, 29.758265, 41.603497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245365, 30.103849, 41.656429>,  <33.361973, 30.311201, 41.688190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245365, 30.103849, 41.656429>,  <33.051022, 29.758265, 41.603497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245365, 30.103849, 41.656429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477932, -0.389371, 0.787383,
		0.731794, -0.319311, -0.602094,
		0.485858, 0.863962, 0.132331,
		33.391121, 30.363039, 41.696129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819508, 29.649538, 41.526150>,  <33.051022, 29.758265, 41.603497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819508, 29.649538, 41.526150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726791, 29.955107, 41.767048>,  <33.671162, 30.138449, 41.911587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726791, 29.955107, 41.767048>,  <33.819508, 29.649538, 41.526150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726791, 29.955107, 41.767048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586341, -0.384282, 0.713114,
		0.776195, 0.518411, -0.358848,
		-0.231787, 0.763922, 0.602244,
		33.657257, 30.184284, 41.947720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422501, 29.604090, 41.888073>,  <33.819508, 29.649538, 41.526150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422501, 29.604090, 41.888073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187496, 29.850039, 42.098507>,  <34.046494, 29.997608, 42.224766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187496, 29.850039, 42.098507>,  <34.422501, 29.604090, 41.888073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187496, 29.850039, 42.098507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570988, -0.145687, 0.807928,
		0.573415, 0.775055, -0.265491,
		-0.587510, 0.614870, 0.526086,
		34.011242, 30.034500, 42.256332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905785, 30.038618, 42.400684>,  <34.422501, 29.604090, 41.888073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905785, 30.038618, 42.400684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541172, 30.072237, 42.561699>,  <34.322403, 30.092409, 42.658310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541172, 30.072237, 42.561699>,  <34.905785, 30.038618, 42.400684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541172, 30.072237, 42.561699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396143, -0.083164, 0.914415,
		0.110331, 0.992985, 0.042512,
		-0.911536, 0.084048, 0.402539,
		34.267712, 30.097452, 42.682461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932346, 30.519173, 42.973701>,  <34.905785, 30.038618, 42.400684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932346, 30.519173, 42.973701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627132, 30.277653, 43.065964>,  <34.444004, 30.132740, 43.121323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627132, 30.277653, 43.065964>,  <34.932346, 30.519173, 42.973701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627132, 30.277653, 43.065964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272158, 0.023554, 0.961964,
		-0.586269, 0.796786, 0.146357,
		-0.763033, -0.603802, 0.230660,
		34.398224, 30.096512, 43.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648941, 30.889297, 43.522224>,  <34.932346, 30.519173, 42.973701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648941, 30.889297, 43.522224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510208, 30.514271, 43.511860>,  <34.426968, 30.289255, 43.505642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510208, 30.514271, 43.511860>,  <34.648941, 30.889297, 43.522224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510208, 30.514271, 43.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251021, -0.119408, 0.960588,
		-0.903711, 0.326660, 0.276765,
		-0.346834, -0.937568, -0.025912,
		34.406158, 30.233000, 43.504086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304829, 30.738190, 44.196198>,  <34.648941, 30.889297, 43.522224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304829, 30.738190, 44.196198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386395, 30.364491, 44.079166>,  <34.435333, 30.140272, 44.008945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386395, 30.364491, 44.079166>,  <34.304829, 30.738190, 44.196198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386395, 30.364491, 44.079166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045488, -0.289496, 0.956098,
		-0.977932, -0.208269, -0.016535,
		0.203912, -0.934246, -0.292581,
		34.447567, 30.084217, 43.991390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903149, 30.292616, 44.637348>,  <34.304829, 30.738190, 44.196198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903149, 30.292616, 44.637348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179337, 30.048855, 44.481464>,  <34.345051, 29.902597, 44.387936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179337, 30.048855, 44.481464>,  <33.903149, 30.292616, 44.637348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179337, 30.048855, 44.481464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043372, -0.502901, 0.863255,
		-0.722057, -0.612957, -0.320809,
		0.690473, -0.609405, -0.389708,
		34.386478, 29.866034, 44.364552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781536, 29.649916, 44.896584>,  <33.903149, 30.292616, 44.637348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781536, 29.649916, 44.896584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155212, 29.593159, 44.765652>,  <34.379417, 29.559105, 44.687092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155212, 29.593159, 44.765652>,  <33.781536, 29.649916, 44.896584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155212, 29.593159, 44.765652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282233, -0.267306, 0.921353,
		-0.218227, -0.953108, -0.209671,
		0.934196, -0.141888, -0.327332,
		34.435471, 29.550592, 44.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975304, 28.980057, 45.031422>,  <33.781536, 29.649916, 44.896584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975304, 28.980057, 45.031422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325607, 29.169168, 44.992397>,  <34.535789, 29.282637, 44.968983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325607, 29.169168, 44.992397>,  <33.975304, 28.980057, 45.031422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325607, 29.169168, 44.992397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339078, -0.458598, 0.821410,
		0.343606, -0.752441, -0.561933,
		0.875763, 0.472781, -0.097559,
		34.588337, 29.311003, 44.963131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436123, 28.527637, 45.161934>,  <33.975304, 28.980057, 45.031422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436123, 28.527637, 45.161934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620262, 28.878513, 45.216507>,  <34.730747, 29.089039, 45.249249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620262, 28.878513, 45.216507>,  <34.436123, 28.527637, 45.161934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620262, 28.878513, 45.216507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409111, -0.346021, 0.844333,
		0.787848, -0.332875, -0.518160,
		0.460352, 0.877190, 0.136429,
		34.758369, 29.141670, 45.257435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134739, 28.293203, 45.451778>,  <34.436123, 28.527637, 45.161934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134739, 28.293203, 45.451778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107910, 28.686424, 45.520027>,  <35.091812, 28.922358, 45.560974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107910, 28.686424, 45.520027>,  <35.134739, 28.293203, 45.451778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107910, 28.686424, 45.520027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578391, -0.101030, 0.809479,
		0.812998, 0.152977, -0.561812,
		-0.067072, 0.983052, 0.170618,
		35.087788, 28.981340, 45.571213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763916, 28.473103, 45.547211>,  <35.134739, 28.293203, 45.451778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763916, 28.473103, 45.547211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538578, 28.765469, 45.701305>,  <35.403374, 28.940889, 45.793762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538578, 28.765469, 45.701305>,  <35.763916, 28.473103, 45.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538578, 28.765469, 45.701305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509608, -0.059620, 0.858339,
		0.650341, 0.679858, -0.338894,
		-0.563344, 0.730916, 0.385234,
		35.369576, 28.984743, 45.816875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236267, 28.791662, 45.916580>,  <35.763916, 28.473103, 45.547211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236267, 28.791662, 45.916580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914368, 28.929937, 46.109612>,  <35.721230, 29.012903, 46.225430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914368, 28.929937, 46.109612>,  <36.236267, 28.791662, 45.916580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914368, 28.929937, 46.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495124, -0.057587, 0.866912,
		0.327472, 0.936581, -0.124816,
		-0.804745, 0.345689, 0.482581,
		35.672943, 29.033644, 46.254387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849415, 29.354002, 45.745712>,  <36.236267, 28.791662, 45.916580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849415, 29.354002, 45.745712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182308, 29.145149, 45.671131>,  <37.382046, 29.019836, 45.626381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182308, 29.145149, 45.671131>,  <36.849415, 29.354002, 45.745712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182308, 29.145149, 45.671131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128628, 0.145291, -0.980992,
		0.539300, 0.840397, 0.053754,
		0.832232, -0.522134, -0.186454,
		37.431976, 28.988508, 45.615196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254852, 29.786728, 45.316399>,  <36.849415, 29.354002, 45.745712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254852, 29.786728, 45.316399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392555, 29.417572, 45.247391>,  <37.475178, 29.196079, 45.205986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392555, 29.417572, 45.247391>,  <37.254852, 29.786728, 45.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392555, 29.417572, 45.247391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096839, 0.147864, -0.984255,
		0.933867, 0.355546, -0.038468,
		0.344260, -0.922888, -0.172517,
		37.495834, 29.140705, 45.195637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645191, 29.824627, 44.782486>,  <37.254852, 29.786728, 45.316399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645191, 29.824627, 44.782486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580818, 29.430035, 44.794861>,  <37.542194, 29.193279, 44.802288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580818, 29.430035, 44.794861>,  <37.645191, 29.824627, 44.782486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580818, 29.430035, 44.794861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031752, -0.036507, -0.998829,
		0.986455, -0.159760, 0.037197,
		-0.160931, -0.986480, 0.030940,
		37.532539, 29.134090, 44.804142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143707, 29.558466, 44.392563>,  <37.645191, 29.824627, 44.782486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143707, 29.558466, 44.392563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835491, 29.303728, 44.403145>,  <37.650562, 29.150885, 44.409492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835491, 29.303728, 44.403145>,  <38.143707, 29.558466, 44.392563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835491, 29.303728, 44.403145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028000, -0.075283, -0.996769,
		0.636778, -0.767308, 0.075840,
		-0.770538, -0.636844, 0.026453,
		37.604328, 29.112675, 44.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386044, 28.962057, 44.090179>,  <38.143707, 29.558466, 44.392563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386044, 28.962057, 44.090179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988228, 28.992537, 44.061657>,  <37.749538, 29.010824, 44.044544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988228, 28.992537, 44.061657>,  <38.386044, 28.962057, 44.090179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988228, 28.992537, 44.061657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062258, -0.115132, -0.991397,
		-0.083746, -0.990424, 0.109760,
		-0.994540, 0.076192, -0.071304,
		37.689865, 29.015396, 44.040264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
