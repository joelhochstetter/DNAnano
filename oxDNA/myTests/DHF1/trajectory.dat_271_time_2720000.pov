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
	<1.094665, 1.426406, 3.354985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.122555, 1.801804, 3.490257>,  <1.139289, 2.027042, 3.571421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.122555, 1.801804, 3.490257>,  <1.094665, 1.426406, 3.354985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.122555, 1.801804, 3.490257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992663, -0.031702, -0.116685,
		-0.098787, 0.343837, -0.933819,
		0.069725, 0.938494, 0.338182,
		1.143472, 2.083352, 3.591712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.489176, 1.903264, 2.925266>,  <1.094665, 1.426406, 3.354985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.489176, 1.903264, 2.925266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.556671, 2.012009, 3.304237>,  <1.597168, 2.077255, 3.531620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.556671, 2.012009, 3.304237>,  <1.489176, 1.903264, 2.925266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.556671, 2.012009, 3.304237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981781, -0.131559, -0.137105,
		0.087369, 0.953301, -0.289108,
		0.168737, 0.271862, 0.947427,
		1.607292, 2.093567, 3.588466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886688, 2.651678, 3.041036>,  <1.489176, 1.903264, 2.925266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886688, 2.651678, 3.041036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.953568, 2.347183, 3.291656>,  <1.993695, 2.164487, 3.442029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.953568, 2.347183, 3.291656>,  <1.886688, 2.651678, 3.041036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.953568, 2.347183, 3.291656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896784, -0.146632, -0.417465,
		0.409661, 0.631680, 0.658148,
		0.167198, -0.761236, 0.626550,
		2.003727, 2.118813, 3.479622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.639258, 2.752167, 3.414810>,  <1.886688, 2.651678, 3.041036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.639258, 2.752167, 3.414810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.486679, 2.392822, 3.327682>,  <2.395132, 2.177216, 3.275406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.486679, 2.392822, 3.327682>,  <2.639258, 2.752167, 3.414810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.486679, 2.392822, 3.327682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796909, -0.200172, -0.569971,
		0.468439, -0.390996, 0.792267,
		-0.381447, -0.898361, -0.217820,
		2.372245, 2.123314, 3.262336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.107901, 2.031210, 3.433554>,  <2.639258, 2.752167, 3.414810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.107901, 2.031210, 3.433554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814453, 2.008942, 3.162643>,  <2.638384, 1.995581, 3.000097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814453, 2.008942, 3.162643>,  <3.107901, 2.031210, 3.433554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.814453, 2.008942, 3.162643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667456, -0.246293, -0.702739,
		-0.127686, -0.967595, 0.217844,
		-0.733620, -0.055671, -0.677275,
		2.594367, 1.992240, 2.959461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.272079, 1.481131, 3.063937>,  <3.107901, 2.031210, 3.433554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.272079, 1.481131, 3.063937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.049034, 1.688202, 2.804375>,  <2.915207, 1.812444, 2.648637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.049034, 1.688202, 2.804375>,  <3.272079, 1.481131, 3.063937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.049034, 1.688202, 2.804375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640883, -0.228350, -0.732889,
		-0.527577, -0.824541, -0.204439,
		-0.557613, 0.517677, -0.648906,
		2.881750, 1.843505, 2.609703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.154876, 1.049018, 2.417524>,  <3.272079, 1.481131, 3.063937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.154876, 1.049018, 2.417524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.087296, 1.432846, 2.327477>,  <3.046747, 1.663143, 2.273448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.087296, 1.432846, 2.327477>,  <3.154876, 1.049018, 2.417524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.087296, 1.432846, 2.327477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516687, -0.108276, -0.849300,
		-0.839339, -0.259807, -0.477504,
		-0.168952, 0.959571, -0.225119,
		3.036610, 1.720717, 2.259941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.012993, 0.967592, 1.733539>,  <3.154876, 1.049018, 2.417524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.012993, 0.967592, 1.733539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.124523, 1.347183, 1.792458>,  <3.191441, 1.574938, 1.827809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.124523, 1.347183, 1.792458>,  <3.012993, 0.967592, 1.733539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.124523, 1.347183, 1.792458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697611, -0.094738, -0.710186,
		-0.659996, 0.300774, -0.688433,
		0.278826, 0.948978, 0.147296,
		3.208171, 1.631877, 1.836646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.966038, 1.360218, 1.060352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.087240, 1.621429, 0.782722>,  <5.159962, 1.778156, 0.616144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.087240, 1.621429, 0.782722>,  <4.966038, 1.360218, 1.060352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.087240, 1.621429, 0.782722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640788, 0.678702, 0.358822,
		0.705392, 0.336031, 0.624103,
		0.303005, 0.653028, -0.694076,
		5.178142, 1.817338, 0.574500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.092796, 1.973590, 1.353812>,  <4.966038, 1.360218, 1.060352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.092796, 1.973590, 1.353812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.969337, 2.024933, 0.976822>,  <4.895262, 2.055739, 0.750628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.969337, 2.024933, 0.976822>,  <5.092796, 1.973590, 1.353812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.969337, 2.024933, 0.976822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635279, 0.709636, 0.304691,
		0.707924, 0.692778, -0.137485,
		-0.308647, 0.128357, -0.942476,
		4.876743, 2.063440, 0.694079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.500863, 1.979569, 1.812524>,  <5.092796, 1.973590, 1.353812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.500863, 1.979569, 1.812524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185584, 2.026535, 1.570877>,  <3.996417, 2.054714, 1.425889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185584, 2.026535, 1.570877>,  <4.500863, 1.979569, 1.812524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185584, 2.026535, 1.570877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569294, 0.233770, 0.788198,
		0.233770, 0.965177, -0.117414,
		-0.788198, 0.117414, -0.604118,
		3.949125, 2.061759, 1.389642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.079982, 2.576768, 2.047525>,  <4.500863, 1.979569, 1.812524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.079982, 2.576768, 2.047525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.833325, 2.352737, 1.826233>,  <3.685331, 2.218319, 1.693457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.833325, 2.352737, 1.826233>,  <4.079982, 2.576768, 2.047525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.833325, 2.352737, 1.826233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775749, 0.312654, 0.548144,
		-0.134033, 0.767177, -0.627275,
		-0.616643, -0.560077, -0.553231,
		3.648332, 2.184714, 1.660264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.488267, 2.894496, 1.981995>,  <4.079982, 2.576768, 2.047525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.488267, 2.894496, 1.981995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383194, 2.515060, 1.911369>,  <3.320150, 2.287399, 1.868994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383194, 2.515060, 1.911369>,  <3.488267, 2.894496, 1.981995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383194, 2.515060, 1.911369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821111, 0.123666, 0.557211,
		-0.506730, 0.291347, -0.811382,
		-0.262682, -0.948590, -0.176563,
		3.304389, 2.230483, 1.858400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.805736, 2.922996, 1.787155>,  <3.488267, 2.894496, 1.981995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.805736, 2.922996, 1.787155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.867051, 2.555374, 1.932396>,  <2.903840, 2.334801, 2.019541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.867051, 2.555374, 1.932396>,  <2.805736, 2.922996, 1.787155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867051, 2.555374, 1.932396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838072, 0.073780, 0.540548,
		-0.523583, -0.387165, -0.758923,
		0.153288, -0.919054, 0.363102,
		2.913037, 2.279658, 2.041327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179386, 2.655302, 1.891300>,  <2.805736, 2.922996, 1.787155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179386, 2.655302, 1.891300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.378289, 2.403763, 2.130394>,  <2.497630, 2.252840, 2.273850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.378289, 2.403763, 2.130394>,  <2.179386, 2.655302, 1.891300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.378289, 2.403763, 2.130394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730180, 0.068769, 0.679786,
		-0.468587, -0.774482, -0.424975,
		0.497257, -0.628847, 0.597735,
		2.527466, 2.215109, 2.309715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.706013, 2.114654, 2.125617>,  <2.179386, 2.655302, 1.891300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.706013, 2.114654, 2.125617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.006176, 2.132034, 2.389435>,  <2.186274, 2.142463, 2.547726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.006176, 2.132034, 2.389435>,  <1.706013, 2.114654, 2.125617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.006176, 2.132034, 2.389435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655926, 0.172063, 0.734953,
		-0.081549, -0.984127, 0.157618,
		0.750407, 0.043451, 0.659546,
		2.231298, 2.145070, 2.587299>
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
