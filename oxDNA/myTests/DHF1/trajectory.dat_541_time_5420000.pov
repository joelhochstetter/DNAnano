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
	<0.251927, 1.574161, 5.105701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.460440, 1.831779, 5.329655>,  <0.585547, 1.986351, 5.464027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.460440, 1.831779, 5.329655>,  <0.251927, 1.574161, 5.105701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.460440, 1.831779, 5.329655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009166, 0.660262, -0.750979,
		-0.853336, 0.386339, 0.350086,
		0.521281, 0.644047, 0.559884,
		0.616824, 2.024993, 5.497620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.026469, 2.227718, 5.127185>,  <0.251927, 1.574161, 5.105701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.026469, 2.227718, 5.127185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.420679, 2.270504, 5.179794>,  <0.657205, 2.296176, 5.211360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.420679, 2.270504, 5.179794>,  <0.026469, 2.227718, 5.127185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.420679, 2.270504, 5.179794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033608, 0.637144, -0.770011,
		-0.166164, 0.763286, 0.624327,
		0.985525, 0.106966, 0.131523,
		0.716337, 2.302594, 5.219251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.274188, 2.974149, 5.195295>,  <0.026469, 2.227718, 5.127185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.274188, 2.974149, 5.195295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.582851, 2.766994, 5.047600>,  <0.768050, 2.642702, 4.958983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.582851, 2.766994, 5.047600>,  <0.274188, 2.974149, 5.195295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.582851, 2.766994, 5.047600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098423, 0.670764, -0.735112,
		0.628375, 0.530914, 0.568573,
		0.771659, -0.517887, -0.369237,
		0.814349, 2.611629, 4.936829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.849705, 3.462454, 5.248196>,  <0.274188, 2.974149, 5.195295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.849705, 3.462454, 5.248196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885603, 3.171696, 4.975853>,  <0.907142, 2.997241, 4.812447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885603, 3.171696, 4.975853>,  <0.849705, 3.462454, 5.248196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885603, 3.171696, 4.975853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047556, 0.679710, -0.731938,
		0.994829, 0.098066, 0.026432,
		0.089744, -0.726896, -0.680858,
		0.912526, 2.953627, 4.771595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.510348, 3.495875, 4.934440>,  <0.849705, 3.462454, 5.248196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.510348, 3.495875, 4.934440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.282326, 3.285275, 4.682144>,  <1.145512, 3.158914, 4.530766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.282326, 3.285275, 4.682144>,  <1.510348, 3.495875, 4.934440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.282326, 3.285275, 4.682144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151140, 0.687390, -0.710388,
		0.807585, -0.500290, -0.312275,
		-0.570055, -0.526502, -0.630740,
		1.111309, 3.127324, 4.492922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.845413, 3.787110, 4.264571>,  <1.510348, 3.495875, 4.934440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.845413, 3.787110, 4.264571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.515348, 3.575794, 4.184551>,  <1.317310, 3.449005, 4.136539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.515348, 3.575794, 4.184551>,  <1.845413, 3.787110, 4.264571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.515348, 3.575794, 4.184551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068057, 0.444526, -0.893177,
		0.560785, -0.723399, -0.402759,
		-0.825160, -0.528291, -0.200051,
		1.267800, 3.417307, 4.124536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.950437, 3.456999, 3.592639>,  <1.845413, 3.787110, 4.264571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.950437, 3.456999, 3.592639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551432, 3.474049, 3.615082>,  <1.312028, 3.484279, 3.628547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551432, 3.474049, 3.615082>,  <1.950437, 3.456999, 3.592639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.551432, 3.474049, 3.615082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030178, 0.461112, -0.886829,
		-0.063673, -0.886318, -0.458680,
		-0.997515, 0.042625, 0.056108,
		1.252177, 3.486836, 3.631914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.760865, 3.423265, 2.895745>,  <1.950437, 3.456999, 3.592639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.760865, 3.423265, 2.895745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.418453, 3.541962, 3.065052>,  <1.213006, 3.613180, 3.166636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.418453, 3.541962, 3.065052>,  <1.760865, 3.423265, 2.895745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.418453, 3.541962, 3.065052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217139, 0.536654, -0.815385,
		-0.469108, -0.789902, -0.394958,
		-0.856030, 0.296743, 0.423267,
		1.161644, 3.630985, 3.192032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.241448, 4.844161, 2.266158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.872459, 4.813133, 2.417435>,  <0.651066, 4.794517, 2.508201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.872459, 4.813133, 2.417435>,  <1.241448, 4.844161, 2.266158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.872459, 4.813133, 2.417435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352432, -0.569101, 0.742911,
		0.157603, 0.818601, 0.552317,
		-0.922471, -0.077569, 0.378193,
		0.595718, 4.789863, 2.530892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.357334, 4.758420, 3.062864>,  <1.241448, 4.844161, 2.266158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.357334, 4.758420, 3.062864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.003983, 4.598686, 2.964745>,  <0.791971, 4.502846, 2.905873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.003983, 4.598686, 2.964745>,  <1.357334, 4.758420, 3.062864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.003983, 4.598686, 2.964745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084175, -0.650088, 0.755182,
		-0.461037, 0.646464, 0.607889,
		-0.883379, -0.399336, -0.245299,
		0.738969, 4.478886, 2.891155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.874326, 4.768332, 3.667625>,  <1.357334, 4.758420, 3.062864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.874326, 4.768332, 3.667625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.820259, 4.452225, 3.428558>,  <0.787819, 4.262560, 3.285118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.820259, 4.452225, 3.428558>,  <0.874326, 4.768332, 3.667625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.820259, 4.452225, 3.428558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150322, -0.612576, 0.775986,
		-0.979353, 0.015046, 0.201595,
		-0.135168, -0.790269, -0.597666,
		0.779709, 4.215144, 3.249259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.277762, 4.298912, 3.903913>,  <0.874326, 4.768332, 3.667625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.277762, 4.298912, 3.903913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.531517, 4.074295, 3.691414>,  <0.683770, 3.939525, 3.563914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.531517, 4.074295, 3.691414>,  <0.277762, 4.298912, 3.903913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.531517, 4.074295, 3.691414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054709, -0.718133, 0.693753,
		-0.771080, -0.411042, -0.486293,
		0.634385, -0.561543, -0.531250,
		0.721833, 3.905833, 3.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.034034, 3.659667, 3.782498>,  <0.277762, 4.298912, 3.903913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.034034, 3.659667, 3.782498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.360916, 3.614380, 3.738190>,  <0.597886, 3.587208, 3.711605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.360916, 3.614380, 3.738190>,  <-0.034034, 3.659667, 3.782498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.360916, 3.614380, 3.738190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010176, -0.743238, 0.668949,
		-0.158065, -0.659378, -0.735008,
		0.987377, -0.113217, -0.110770,
		0.657129, 3.580415, 3.704959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.039939, 2.903186, 3.819297>,  <-0.034034, 3.659667, 3.782498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.039939, 2.903186, 3.819297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.409668, 3.046158, 3.872772>,  <0.631505, 3.131941, 3.904857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.409668, 3.046158, 3.872772>,  <0.039939, 2.903186, 3.819297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.409668, 3.046158, 3.872772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190210, -0.735223, 0.650590,
		0.330831, -0.575926, -0.747569,
		0.924322, 0.357431, 0.133688,
		0.686965, 3.153387, 3.912879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.484041, 2.327808, 3.699301>,  <0.039939, 2.903186, 3.819297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.484041, 2.327808, 3.699301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.675400, 2.591408, 3.931458>,  <0.790215, 2.749568, 4.070752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.675400, 2.591408, 3.931458>,  <0.484041, 2.327808, 3.699301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.675400, 2.591408, 3.931458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136799, -0.708789, 0.692029,
		0.867423, -0.251667, -0.429233,
		0.478397, 0.659000, 0.580392,
		0.818919, 2.789108, 4.105575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.071839, 2.056673, 3.829127>,  <0.484041, 2.327808, 3.699301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.071839, 2.056673, 3.829127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.974045, 2.302444, 4.129181>,  <0.915368, 2.449908, 4.309214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.974045, 2.302444, 4.129181>,  <1.071839, 2.056673, 3.829127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.974045, 2.302444, 4.129181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081533, -0.757847, 0.647318,
		0.966219, 0.219420, 0.135185,
		-0.244485, 0.614429, 0.750136,
		0.900699, 2.486773, 4.354222>
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
