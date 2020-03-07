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
	<1.347164, 2.350615, 3.525011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.980473, 2.198120, 3.477228>,  <0.760458, 2.106623, 3.448559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.980473, 2.198120, 3.477228>,  <1.347164, 2.350615, 3.525011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980473, 2.198120, 3.477228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297402, -0.850854, 0.433127,
		-0.266763, 0.361534, 0.893382,
		-0.916728, -0.381236, -0.119456,
		0.705454, 2.083749, 3.441391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.145082, 2.196111, 4.216568>,  <1.347164, 2.350615, 3.525011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.145082, 2.196111, 4.216568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.968346, 1.969696, 3.938179>,  <0.862304, 1.833847, 3.771145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.968346, 1.969696, 3.938179>,  <1.145082, 2.196111, 4.216568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.968346, 1.969696, 3.938179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392500, -0.819589, 0.417394,
		-0.806672, -0.088748, 0.584297,
		-0.441840, -0.566037, -0.695973,
		0.835793, 1.799885, 3.729387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.654624, 1.674201, 4.527662>,  <1.145082, 2.196111, 4.216568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.654624, 1.674201, 4.527662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.783558, 1.555824, 4.167992>,  <0.860918, 1.484798, 3.952189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.783558, 1.555824, 4.167992>,  <0.654624, 1.674201, 4.527662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.783558, 1.555824, 4.167992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304595, -0.866934, 0.394521,
		-0.896283, -0.401052, -0.189299,
		0.322334, -0.295943, -0.899177,
		0.880259, 1.467042, 3.898239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.272805, 1.003747, 4.373344>,  <0.654624, 1.674201, 4.527662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.272805, 1.003747, 4.373344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.639240, 1.052391, 4.220509>,  <0.859102, 1.081577, 4.128807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.639240, 1.052391, 4.220509>,  <0.272805, 1.003747, 4.373344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.639240, 1.052391, 4.220509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246695, -0.922146, 0.297975,
		-0.316105, -0.367231, -0.874768,
		0.916089, 0.121609, -0.382089,
		0.914067, 1.088874, 4.105882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.506555, 0.334994, 4.054609>,  <0.272805, 1.003747, 4.373344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.506555, 0.334994, 4.054609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.832565, 0.559708, 4.111362>,  <1.028172, 0.694536, 4.145414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.832565, 0.559708, 4.111362>,  <0.506555, 0.334994, 4.054609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.832565, 0.559708, 4.111362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459117, -0.775521, 0.433335,
		0.353475, -0.288038, -0.889995,
		0.815026, 0.561785, 0.141884,
		1.077073, 0.728243, 4.153928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973179, -0.030908, 3.657434>,  <0.506555, 0.334994, 4.054609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973179, -0.030908, 3.657434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.180592, 0.199760, 3.909966>,  <1.305039, 0.338162, 4.061484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.180592, 0.199760, 3.909966>,  <0.973179, -0.030908, 3.657434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.180592, 0.199760, 3.909966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547336, -0.791109, 0.273074,
		0.656924, 0.203951, -0.725848,
		0.518531, 0.576672, 0.631328,
		1.336151, 0.372762, 4.099364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.573881, -0.305294, 3.651397>,  <0.973179, -0.030908, 3.657434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.573881, -0.305294, 3.651397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.633461, -0.087532, 3.981594>,  <1.669209, 0.043125, 4.179712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.633461, -0.087532, 3.981594>,  <1.573881, -0.305294, 3.651397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.633461, -0.087532, 3.981594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480190, -0.769588, 0.420893,
		0.864426, 0.333702, -0.376047,
		0.148949, 0.544405, 0.825492,
		1.678146, 0.075790, 4.229242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.243658, -0.354663, 3.846889>,  <1.573881, -0.305294, 3.651397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.243658, -0.354663, 3.846889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.005737, -0.285248, 4.160856>,  <1.862985, -0.243599, 4.349236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.005737, -0.285248, 4.160856>,  <2.243658, -0.354663, 3.846889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005737, -0.285248, 4.160856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144487, -0.937440, 0.316748,
		0.790781, 0.301813, 0.532517,
		-0.594802, 0.173537, 0.784918,
		1.827297, -0.233187, 4.396332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.790430, -1.418744, 4.522437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754700, -1.318230, 4.907950>,  <1.733262, -1.257921, 5.139258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.754700, -1.318230, 4.907950>,  <1.790430, -1.418744, 4.522437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.754700, -1.318230, 4.907950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204350, 0.942442, -0.264660,
		-0.974814, -0.220590, -0.032833,
		-0.089325, 0.251285, 0.963783,
		1.727902, -1.242844, 5.197085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.143887, -0.962385, 4.661666>,  <1.790430, -1.418744, 4.522437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.143887, -0.962385, 4.661666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.471016, -0.881874, 4.877316>,  <1.667293, -0.833568, 5.006705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.471016, -0.881874, 4.877316>,  <1.143887, -0.962385, 4.661666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.471016, -0.881874, 4.877316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073826, 0.965794, -0.248580,
		-0.570715, 0.163493, 0.804708,
		0.817823, 0.201276, 0.539123,
		1.716363, -0.821491, 5.039052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.090493, -0.551346, 5.224547>,  <1.143887, -0.962385, 4.661666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.090493, -0.551346, 5.224547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.466629, -0.504341, 5.096828>,  <1.692311, -0.476138, 5.020197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.466629, -0.504341, 5.096828>,  <1.090493, -0.551346, 5.224547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.466629, -0.504341, 5.096828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206417, 0.943060, -0.260824,
		0.270466, 0.311171, 0.911055,
		0.940340, 0.117513, -0.319297,
		1.748731, -0.469087, 5.001040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.211673, 0.071179, 5.501966>,  <1.090493, -0.551346, 5.224547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.211673, 0.071179, 5.501966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.447830, -0.007942, 5.188965>,  <1.589525, -0.055415, 5.001164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.447830, -0.007942, 5.188965>,  <1.211673, 0.071179, 5.501966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.447830, -0.007942, 5.188965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249196, 0.877465, -0.409825,
		0.767683, 0.436954, 0.468758,
		0.590393, -0.197803, -0.782502,
		1.624948, -0.067283, 4.954214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.553022, 0.664567, 5.371679>,  <1.211673, 0.071179, 5.501966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.553022, 0.664567, 5.371679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595886, 0.487366, 5.015642>,  <1.621605, 0.381045, 4.802020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.595886, 0.487366, 5.015642>,  <1.553022, 0.664567, 5.371679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595886, 0.487366, 5.015642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257301, 0.852394, -0.455216,
		0.960371, 0.277804, -0.022641,
		0.107162, -0.443002, -0.890093,
		1.628035, 0.354465, 4.748614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.979252, 1.085572, 5.018596>,  <1.553022, 0.664567, 5.371679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.979252, 1.085572, 5.018596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.801224, 0.864059, 4.737103>,  <1.694407, 0.731152, 4.568208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.801224, 0.864059, 4.737103>,  <1.979252, 1.085572, 5.018596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.801224, 0.864059, 4.737103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331390, 0.831921, -0.445071,
		0.831921, 0.035122, -0.553781,
		0.445071, 0.553781, 0.703732,
		1.667703, 0.697925, 4.525984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.211192, 1.308013, 4.306233>,  <1.979252, 1.085572, 5.018596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.211192, 1.308013, 4.306233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.857407, 1.128250, 4.256023>,  <1.645135, 1.020392, 4.225897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.857407, 1.128250, 4.256023>,  <2.211192, 1.308013, 4.306233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.857407, 1.128250, 4.256023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249022, 0.682124, -0.687528,
		0.394604, -0.576835, -0.715227,
		-0.884464, -0.449408, -0.125524,
		1.592067, 0.993428, 4.218366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.142960, 1.451920, 3.597584>,  <2.211192, 1.308013, 4.306233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.142960, 1.451920, 3.597584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.781403, 1.352104, 3.736554>,  <1.564468, 1.292215, 3.819936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.781403, 1.352104, 3.736554>,  <2.142960, 1.451920, 3.597584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.781403, 1.352104, 3.736554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427735, 0.535241, -0.728395,
		-0.004194, -0.806999, -0.590538,
		-0.903894, -0.249539, 0.347426,
		1.510234, 1.277242, 3.840782>
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
