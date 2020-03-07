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
	<4.019935, 5.507865, 1.091949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.211208, 5.522099, 1.442965>,  <4.325973, 5.530639, 1.653574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.211208, 5.522099, 1.442965>,  <4.019935, 5.507865, 1.091949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.211208, 5.522099, 1.442965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284035, -0.951749, -0.116181,
		0.831062, 0.304807, -0.465219,
		0.478184, 0.035585, 0.877538,
		4.354664, 5.532774, 1.706226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.745907, 5.414517, 0.958544>,  <4.019935, 5.507865, 1.091949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.745907, 5.414517, 0.958544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.640193, 5.263767, 1.313648>,  <4.576765, 5.173317, 1.526711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.640193, 5.263767, 1.313648>,  <4.745907, 5.414517, 0.958544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.640193, 5.263767, 1.313648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303751, -0.906170, -0.294263,
		0.915363, 0.191889, 0.353962,
		-0.264285, -0.376874, 0.887761,
		4.560908, 5.150705, 1.579977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.267817, 5.104774, 1.340139>,  <4.745907, 5.414517, 0.958544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.267817, 5.104774, 1.340139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945357, 4.919829, 1.487839>,  <4.751881, 4.808863, 1.576458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945357, 4.919829, 1.487839>,  <5.267817, 5.104774, 1.340139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.945357, 4.919829, 1.487839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369499, -0.880767, -0.296174,
		0.462162, -0.102324, 0.880872,
		-0.806149, -0.462362, 0.369249,
		4.703512, 4.781121, 1.598613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.377274, 4.630790, 1.783296>,  <5.267817, 5.104774, 1.340139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.377274, 4.630790, 1.783296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022414, 4.521436, 1.634583>,  <4.809497, 4.455823, 1.545354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022414, 4.521436, 1.634583>,  <5.377274, 4.630790, 1.783296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.022414, 4.521436, 1.634583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411295, -0.833766, -0.368336,
		-0.209284, -0.479682, 0.852118,
		-0.887151, -0.273385, -0.371784,
		4.756269, 4.439420, 1.523047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.406934, 3.831938, 1.791076>,  <5.377274, 4.630790, 1.783296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.406934, 3.831938, 1.791076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.110881, 3.942080, 1.545675>,  <4.933250, 4.008166, 1.398435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.110881, 3.942080, 1.545675>,  <5.406934, 3.831938, 1.791076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.110881, 3.942080, 1.545675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117866, -0.845079, -0.521488,
		-0.662052, -0.458281, 0.593014,
		-0.740132, 0.275355, -0.613502,
		4.888842, 4.024687, 1.361625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.033125, 3.300929, 1.711776>,  <5.406934, 3.831938, 1.791076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.033125, 3.300929, 1.711776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.941671, 3.503620, 1.379282>,  <4.886799, 3.625235, 1.179785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.941671, 3.503620, 1.379282>,  <5.033125, 3.300929, 1.711776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.941671, 3.503620, 1.379282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141402, -0.827511, -0.543352,
		-0.963189, -0.241767, 0.117544,
		-0.228634, 0.506729, -0.831235,
		4.873081, 3.655639, 1.129911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.677863, 2.759158, 1.302710>,  <5.033125, 3.300929, 1.711776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.677863, 2.759158, 1.302710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.786619, 3.039875, 1.039328>,  <4.851872, 3.208305, 0.881298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.786619, 3.039875, 1.039328>,  <4.677863, 2.759158, 1.302710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.786619, 3.039875, 1.039328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155865, -0.707312, -0.689504,
		-0.949622, 0.084839, -0.301696,
		0.271890, 0.701792, -0.658455,
		4.868186, 3.250413, 0.841791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.413433, 2.565745, 0.688342>,  <4.677863, 2.759158, 1.302710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.413433, 2.565745, 0.688342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693590, 2.820545, 0.559544>,  <4.861684, 2.973425, 0.482265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693590, 2.820545, 0.559544>,  <4.413433, 2.565745, 0.688342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.693590, 2.820545, 0.559544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134725, -0.561002, -0.816778,
		-0.700928, 0.528684, -0.478741,
		0.700392, 0.637001, -0.321995,
		4.903708, 3.011645, 0.462945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.625020, 1.866844, 0.169275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.587780, 2.162948, -0.097063>,  <0.565436, 2.340610, -0.256866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.587780, 2.162948, -0.097063>,  <0.625020, 1.866844, 0.169275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.587780, 2.162948, -0.097063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297706, 0.617458, 0.728091,
		0.950107, 0.266012, 0.162894,
		-0.093101, 0.740259, -0.665845,
		0.559850, 2.385025, -0.296816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.921985, 2.459615, 0.415511>,  <0.625020, 1.866844, 0.169275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.921985, 2.459615, 0.415511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.696983, 2.606280, 0.119093>,  <0.561982, 2.694279, -0.058758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.696983, 2.606280, 0.119093>,  <0.921985, 2.459615, 0.415511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.696983, 2.606280, 0.119093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169100, 0.826320, 0.537215,
		0.809317, 0.427497, -0.402807,
		-0.562505, 0.366662, -0.741045,
		0.528232, 2.716279, -0.103220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.080160, 3.202465, 0.362398>,  <0.921985, 2.459615, 0.415511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.080160, 3.202465, 0.362398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.708889, 3.140390, 0.227103>,  <0.486127, 3.103145, 0.145926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.708889, 3.140390, 0.227103>,  <1.080160, 3.202465, 0.362398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.708889, 3.140390, 0.227103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330528, 0.761415, 0.557673,
		0.170995, 0.629416, -0.758021,
		-0.928177, -0.155187, -0.338238,
		0.430436, 3.093834, 0.125632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.800506, 3.825796, 0.010230>,  <1.080160, 3.202465, 0.362398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.800506, 3.825796, 0.010230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.508713, 3.589442, 0.148047>,  <0.333637, 3.447630, 0.230738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.508713, 3.589442, 0.148047>,  <0.800506, 3.825796, 0.010230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.508713, 3.589442, 0.148047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389601, 0.772965, 0.500735,
		-0.562196, 0.231044, -0.794075,
		-0.729484, -0.590883, 0.344543,
		0.289868, 3.412177, 0.251410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.144219, 4.158963, -0.051289>,  <0.800506, 3.825796, 0.010230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.144219, 4.158963, -0.051289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.073330, 3.889495, 0.235699>,  <0.030797, 3.727814, 0.407891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.073330, 3.889495, 0.235699>,  <0.144219, 4.158963, -0.051289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.073330, 3.889495, 0.235699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445613, 0.704927, 0.551822,
		-0.877509, -0.221918, -0.425124,
		-0.177223, -0.673670, 0.717469,
		0.020163, 3.687394, 0.450939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.561973, 4.335374, 0.108296>,  <0.144219, 4.158963, -0.051289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.561973, 4.335374, 0.108296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.405354, 4.119226, 0.406207>,  <-0.311382, 3.989538, 0.584953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.405354, 4.119226, 0.406207>,  <-0.561973, 4.335374, 0.108296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.405354, 4.119226, 0.406207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401681, 0.627831, 0.666694,
		-0.827854, -0.560205, 0.028770,
		0.391548, -0.540368, 0.744776,
		-0.287889, 3.957116, 0.629640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.069418, 4.326408, 0.534946>,  <-0.561973, 4.335374, 0.108296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.069418, 4.326408, 0.534946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.765175, 4.253469, 0.784177>,  <-0.582629, 4.209706, 0.933715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.765175, 4.253469, 0.784177>,  <-1.069418, 4.326408, 0.534946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.765175, 4.253469, 0.784177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408020, 0.612242, 0.677259,
		-0.504969, -0.769356, 0.391276,
		0.760609, -0.182346, 0.623076,
		-0.536992, 4.198766, 0.971100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.449805, 4.271748, 1.128859>,  <-1.069418, 4.326408, 0.534946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.449805, 4.271748, 1.128859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.070194, 4.312329, 1.248227>,  <-0.842428, 4.336678, 1.319848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.070194, 4.312329, 1.248227>,  <-1.449805, 4.271748, 1.128859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.070194, 4.312329, 1.248227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301233, 0.570596, 0.763989,
		-0.092769, -0.814940, 0.572072,
		0.949027, 0.101452, 0.298421,
		-0.785486, 4.342765, 1.337753>
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
