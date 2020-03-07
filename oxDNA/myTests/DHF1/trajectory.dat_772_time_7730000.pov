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
	<3.114179, 5.351820, 1.824183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975346, 4.976711, 1.828466>,  <2.892046, 4.751646, 1.831036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975346, 4.976711, 1.828466>,  <3.114179, 5.351820, 1.824183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.975346, 4.976711, 1.828466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836044, -0.304218, 0.456597,
		-0.424927, 0.167430, 0.889609,
		-0.347083, -0.937773, 0.010709,
		2.871221, 4.695379, 1.831679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.292084, 5.160640, 2.566144>,  <3.114179, 5.351820, 1.824183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.292084, 5.160640, 2.566144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.270779, 4.896973, 2.266102>,  <3.257996, 4.738772, 2.086076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.270779, 4.896973, 2.266102>,  <3.292084, 5.160640, 2.566144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.270779, 4.896973, 2.266102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859409, -0.412779, 0.301712,
		-0.508507, -0.628578, 0.588481,
		-0.053263, -0.659169, -0.750107,
		3.254800, 4.699222, 2.041070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.399393, 4.410740, 2.779305>,  <3.292084, 5.160640, 2.566144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.399393, 4.410740, 2.779305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520187, 4.472588, 2.403028>,  <3.592664, 4.509696, 2.177263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520187, 4.472588, 2.403028>,  <3.399393, 4.410740, 2.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520187, 4.472588, 2.403028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825530, -0.535907, 0.176930,
		-0.476766, -0.829998, -0.289479,
		0.301985, 0.154619, -0.940690,
		3.610783, 4.518973, 2.120821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.633668, 3.695789, 2.437683>,  <3.399393, 4.410740, 2.779305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.633668, 3.695789, 2.437683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824596, 4.006241, 2.272861>,  <3.939153, 4.192512, 2.173969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824596, 4.006241, 2.272861>,  <3.633668, 3.695789, 2.437683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.824596, 4.006241, 2.272861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821791, -0.560321, -0.103441,
		-0.311166, -0.289247, -0.905269,
		0.477321, 0.776129, -0.412053,
		3.967793, 4.239079, 2.149246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.962970, 3.382754, 1.886502>,  <3.633668, 3.695789, 2.437683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.962970, 3.382754, 1.886502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161816, 3.721546, 1.961868>,  <4.281123, 3.924822, 2.007088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.161816, 3.721546, 1.961868>,  <3.962970, 3.382754, 1.886502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.161816, 3.721546, 1.961868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857637, -0.446683, -0.254820,
		-0.131666, 0.288267, -0.948455,
		0.497115, 0.846981, 0.188415,
		4.310950, 3.975641, 2.018393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.363989, 3.466792, 1.280098>,  <3.962970, 3.382754, 1.886502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.363989, 3.466792, 1.280098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.528034, 3.686302, 1.571482>,  <4.626462, 3.818008, 1.746312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.528034, 3.686302, 1.571482>,  <4.363989, 3.466792, 1.280098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.528034, 3.686302, 1.571482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889563, -0.416897, -0.186747,
		0.201210, 0.724597, -0.659146,
		0.410113, 0.548777, 0.728459,
		4.651068, 3.850935, 1.790019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.981727, 3.701471, 0.999115>,  <4.363989, 3.466792, 1.280098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.981727, 3.701471, 0.999115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.056217, 3.778473, 1.384501>,  <5.100912, 3.824674, 1.615732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.056217, 3.778473, 1.384501>,  <4.981727, 3.701471, 0.999115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.056217, 3.778473, 1.384501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945144, -0.302955, -0.122153,
		0.268371, 0.933359, -0.238364,
		0.186226, 0.192506, 0.963463,
		5.112085, 3.836225, 1.673540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.568960, 4.163159, 0.974339>,  <4.981727, 3.701471, 0.999115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.568960, 4.163159, 0.974339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538017, 3.989727, 1.333454>,  <5.519452, 3.885668, 1.548923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.538017, 3.989727, 1.333454>,  <5.568960, 4.163159, 0.974339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538017, 3.989727, 1.333454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867142, -0.473646, -0.154028,
		0.492017, 0.766594, 0.412616,
		-0.077357, -0.433581, 0.897788,
		5.514810, 3.859653, 1.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.222962, 2.618726, 1.226669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.391159, 2.725773, 1.573441>,  <1.492077, 2.790001, 1.781504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.391159, 2.725773, 1.573441>,  <1.222962, 2.618726, 1.226669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.391159, 2.725773, 1.573441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652076, 0.753522, 0.083671,
		-0.630859, -0.600487, 0.491358,
		0.420493, 0.267619, 0.866929,
		1.517307, 2.806058, 1.833519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.754063, 2.425734, 1.729293>,  <1.222962, 2.618726, 1.226669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.754063, 2.425734, 1.729293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.965752, 2.752254, 1.821880>,  <1.092765, 2.948167, 1.877433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.965752, 2.752254, 1.821880>,  <0.754063, 2.425734, 1.729293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.965752, 2.752254, 1.821880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847765, 0.519946, 0.104651,
		-0.034925, -0.251615, 0.967197,
		0.529222, 0.816301, 0.231469,
		1.124518, 2.997145, 1.891321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.476260, 2.758958, 2.352288>,  <0.754063, 2.425734, 1.729293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.476260, 2.758958, 2.352288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.688789, 3.062496, 2.201637>,  <0.816307, 3.244619, 2.111247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.688789, 3.062496, 2.201637>,  <0.476260, 2.758958, 2.352288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.688789, 3.062496, 2.201637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794542, 0.600614, 0.089250,
		0.293935, 0.251826, 0.922055,
		0.531323, 0.758846, -0.376628,
		0.848186, 3.290150, 2.088649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.318811, 3.262023, 2.747900>,  <0.476260, 2.758958, 2.352288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.318811, 3.262023, 2.747900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.406738, 3.449394, 2.405613>,  <0.459495, 3.561817, 2.200240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.406738, 3.449394, 2.405613>,  <0.318811, 3.262023, 2.747900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.406738, 3.449394, 2.405613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696356, 0.689659, 0.198644,
		0.683204, 0.552219, 0.477793,
		0.219819, 0.468429, -0.855718,
		0.472684, 3.589923, 2.148897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.357259, 3.952829, 2.909287>,  <0.318811, 3.262023, 2.747900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.357259, 3.952829, 2.909287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.264069, 3.913822, 2.522255>,  <0.208155, 3.890418, 2.290035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.264069, 3.913822, 2.522255>,  <0.357259, 3.952829, 2.909287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.264069, 3.913822, 2.522255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855931, 0.492865, 0.156419,
		0.461633, 0.864624, -0.198292,
		-0.232975, -0.097516, -0.967581,
		0.194176, 3.884567, 2.231981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.268902, 4.601933, 2.694965>,  <0.357259, 3.952829, 2.909287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.268902, 4.601933, 2.694965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.060333, 4.364521, 2.449741>,  <-0.064808, 4.222074, 2.302607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.060333, 4.364521, 2.449741>,  <0.268902, 4.601933, 2.694965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.060333, 4.364521, 2.449741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760538, 0.649029, 0.018505,
		0.386910, 0.475904, -0.789820,
		-0.521423, -0.593529, -0.613060,
		-0.096094, 4.186462, 2.265823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.081663, 4.971331, 2.175401>,  <0.268902, 4.601933, 2.694965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.081663, 4.971331, 2.175401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.184357, 4.673111, 2.158131>,  <-0.343969, 4.494179, 2.147768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.184357, 4.673111, 2.158131>,  <0.081663, 4.971331, 2.175401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.184357, 4.673111, 2.158131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745153, 0.666310, -0.027895,
		0.049565, 0.013621, -0.998678,
		-0.665049, -0.745551, -0.043176,
		-0.383871, 4.449446, 2.145178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.369781, 5.132124, 1.569257>,  <0.081663, 4.971331, 2.175401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.369781, 5.132124, 1.569257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.572365, 4.870274, 1.793743>,  <-0.693915, 4.713163, 1.928435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.572365, 4.870274, 1.793743>,  <-0.369781, 5.132124, 1.569257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.572365, 4.870274, 1.793743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744239, 0.660555, 0.098873,
		-0.435439, -0.367603, -0.821743,
		-0.506460, -0.654626, 0.561215,
		-0.724303, 4.673886, 1.962108>
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
