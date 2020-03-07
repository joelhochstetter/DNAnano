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
	<3.599775, 6.474388, 4.539356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.592304, 6.204208, 4.244488>,  <3.587822, 6.042100, 4.067567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.592304, 6.204208, 4.244488>,  <3.599775, 6.474388, 4.539356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592304, 6.204208, 4.244488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063707, -0.736603, 0.673317,
		-0.997794, -0.034388, 0.056788,
		-0.018676, -0.675450, -0.737169,
		3.586701, 6.001574, 4.023337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.100488, 6.052768, 4.766293>,  <3.599775, 6.474388, 4.539356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.100488, 6.052768, 4.766293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.332030, 5.858234, 4.504482>,  <3.470956, 5.741514, 4.347396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.332030, 5.858234, 4.504482>,  <3.100488, 6.052768, 4.766293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.332030, 5.858234, 4.504482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012008, -0.807673, 0.589508,
		-0.815347, -0.333376, -0.473360,
		0.578848, -0.486338, -0.654531,
		3.505687, 5.712334, 4.308125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.800163, 5.372075, 4.818609>,  <3.100488, 6.052768, 4.766293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.800163, 5.372075, 4.818609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.169316, 5.331760, 4.669947>,  <3.390808, 5.307571, 4.580749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.169316, 5.331760, 4.669947>,  <2.800163, 5.372075, 4.818609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.169316, 5.331760, 4.669947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163199, -0.771811, 0.614552,
		-0.348786, -0.627814, -0.695843,
		0.922884, -0.100787, -0.371656,
		3.446181, 5.301524, 4.558450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.851203, 4.690482, 4.508881>,  <2.800163, 5.372075, 4.818609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.851203, 4.690482, 4.508881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.206441, 4.827744, 4.631214>,  <3.419584, 4.910100, 4.704614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.206441, 4.827744, 4.631214>,  <2.851203, 4.690482, 4.508881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.206441, 4.827744, 4.631214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156345, -0.851180, 0.501047,
		0.432255, -0.397162, -0.809579,
		0.888094, 0.343154, 0.305833,
		3.472869, 4.930690, 4.722964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378808, 4.100641, 4.438374>,  <2.851203, 4.690482, 4.508881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378808, 4.100641, 4.438374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459866, 4.382385, 4.710495>,  <3.508500, 4.551432, 4.873768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459866, 4.382385, 4.710495>,  <3.378808, 4.100641, 4.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.459866, 4.382385, 4.710495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187578, -0.709772, 0.678997,
		0.961119, -0.009984, -0.275953,
		0.202643, 0.704360, 0.680303,
		3.520658, 4.593693, 4.914586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.011173, 4.007578, 4.643016>,  <3.378808, 4.100641, 4.438374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.011173, 4.007578, 4.643016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.851635, 4.207474, 4.950569>,  <3.755912, 4.327411, 5.135101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.851635, 4.207474, 4.950569>,  <4.011173, 4.007578, 4.643016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.851635, 4.207474, 4.950569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116174, -0.804169, 0.582937,
		0.909629, 0.321827, 0.262683,
		-0.398846, 0.499740, 0.768884,
		3.731981, 4.357396, 5.181234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.528137, 3.899741, 5.171225>,  <4.011173, 4.007578, 4.643016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.528137, 3.899741, 5.171225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.189281, 4.007137, 5.354645>,  <3.985968, 4.071575, 5.464697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.189281, 4.007137, 5.354645>,  <4.528137, 3.899741, 5.171225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189281, 4.007137, 5.354645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084216, -0.784209, 0.614755,
		0.524655, 0.559400, 0.641723,
		-0.847139, 0.268491, 0.458550,
		3.935140, 4.087685, 5.492209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.711170, 3.810075, 5.825097>,  <4.528137, 3.899741, 5.171225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.711170, 3.810075, 5.825097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.311495, 3.824772, 5.831722>,  <4.071690, 3.833590, 5.835697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.311495, 3.824772, 5.831722>,  <4.711170, 3.810075, 5.825097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.311495, 3.824772, 5.831722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012691, -0.676884, 0.735980,
		0.038253, 0.735172, 0.676801,
		-0.999187, 0.036743, 0.016563,
		4.011739, 3.835795, 5.836691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.314464, 2.536101, -1.065900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623924, 2.611763, -0.824013>,  <2.809601, 2.657161, -0.678881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623924, 2.611763, -0.824013>,  <2.314464, 2.536101, -1.065900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.623924, 2.611763, -0.824013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255181, 0.966593, 0.024118,
		-0.579953, -0.172971, 0.796075,
		0.773652, 0.189156, 0.604718,
		2.856020, 2.668510, -0.642597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.980547, 2.974288, -0.613055>,  <2.314464, 2.536101, -1.065900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.980547, 2.974288, -0.613055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.379482, 3.003326, -0.610363>,  <2.618844, 3.020750, -0.608748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.379482, 3.003326, -0.610363>,  <1.980547, 2.974288, -0.613055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.379482, 3.003326, -0.610363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072242, 0.971561, 0.225501,
		0.009832, -0.225387, 0.974220,
		0.997339, 0.072597, 0.006730,
		2.678684, 3.025105, -0.608344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.420703, 3.212684, 0.094541>,  <1.980547, 2.974288, -0.613055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.420703, 3.212684, 0.094541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.575050, 3.311234, -0.261078>,  <2.667659, 3.370363, -0.474449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.575050, 3.311234, -0.261078>,  <2.420703, 3.212684, 0.094541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.575050, 3.311234, -0.261078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254492, 0.954716, 0.154114,
		0.886757, 0.166788, 0.431095,
		0.385869, 0.246373, -0.889048,
		2.690811, 3.385145, -0.527792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.942745, 3.124885, 0.669923>,  <2.420703, 3.212684, 0.094541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.942745, 3.124885, 0.669923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.234745, 3.284561, 0.891823>,  <3.409945, 3.380367, 1.024963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.234745, 3.284561, 0.891823>,  <2.942745, 3.124885, 0.669923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.234745, 3.284561, 0.891823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195899, 0.899850, -0.389735,
		-0.654770, 0.175832, 0.735092,
		0.730000, 0.399190, 0.554750,
		3.453745, 3.404318, 1.058248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.692913, 3.833889, 0.858194>,  <2.942745, 3.124885, 0.669923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.692913, 3.833889, 0.858194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.092777, 3.825607, 0.864536>,  <3.332696, 3.820639, 0.868342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.092777, 3.825607, 0.864536>,  <2.692913, 3.833889, 0.858194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.092777, 3.825607, 0.864536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025995, 0.839593, -0.542593,
		-0.002080, 0.542821, 0.839846,
		0.999660, -0.020703, 0.015857,
		3.392675, 3.819396, 0.869293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.799494, 4.448091, 1.009338>,  <2.692913, 3.833889, 0.858194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.799494, 4.448091, 1.009338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.143513, 4.321152, 0.849533>,  <3.349924, 4.244988, 0.753650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.143513, 4.321152, 0.849533>,  <2.799494, 4.448091, 1.009338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.143513, 4.321152, 0.849533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058190, 0.838927, -0.541125,
		0.506887, 0.442145, 0.739982,
		0.860046, -0.317348, -0.399513,
		3.401527, 4.225947, 0.729679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.015484, 5.071961, 0.953300>,  <2.799494, 4.448091, 1.009338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.015484, 5.071961, 0.953300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.252075, 4.836670, 0.732704>,  <3.394030, 4.695495, 0.600347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.252075, 4.836670, 0.732704>,  <3.015484, 5.071961, 0.953300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.252075, 4.836670, 0.732704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034634, 0.701861, -0.711472,
		0.805577, 0.401720, 0.435508,
		0.591478, -0.588229, -0.551490,
		3.429519, 4.660202, 0.567257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.597373, 5.535948, 0.772135>,  <3.015484, 5.071961, 0.953300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.597373, 5.535948, 0.772135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607586, 5.226349, 0.519066>,  <3.613714, 5.040589, 0.367224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607586, 5.226349, 0.519066>,  <3.597373, 5.535948, 0.772135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.607586, 5.226349, 0.519066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139405, 0.629452, -0.764432,
		0.989906, -0.068679, 0.123971,
		0.025533, -0.773998, -0.632673,
		3.615246, 4.994149, 0.329264>
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
