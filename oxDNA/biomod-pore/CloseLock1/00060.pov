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
	<24.380829, 34.736671, 34.947205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029343, 34.911037, 35.025009>,  <23.818451, 35.015656, 35.071693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029343, 34.911037, 35.025009>,  <24.380829, 34.736671, 34.947205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029343, 34.911037, 35.025009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440252, 0.897587, -0.022692,
		-0.184483, 0.065695, -0.980638,
		-0.878717, 0.435914, 0.194512,
		23.765728, 35.041813, 35.083363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121304, 35.047813, 35.095570>,  <24.380829, 34.736671, 34.947205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121304, 35.047813, 35.095570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195316, 34.785149, 34.803116>,  <25.239723, 34.627552, 34.627644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195316, 34.785149, 34.803116>,  <25.121304, 35.047813, 35.095570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195316, 34.785149, 34.803116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102963, 0.726936, -0.678942,
		0.977324, 0.200906, 0.066896,
		0.185033, -0.656659, -0.731138,
		25.250826, 34.588150, 34.583775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773386, 35.174137, 34.858734>,  <25.121304, 35.047813, 35.095570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773386, 35.174137, 34.858734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471272, 35.036057, 34.635887>,  <25.290003, 34.953209, 34.502178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471272, 35.036057, 34.635887>,  <25.773386, 35.174137, 34.858734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471272, 35.036057, 34.635887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014472, 0.841051, -0.540762,
		0.655235, -0.416492, -0.630239,
		-0.755286, -0.345206, -0.557114,
		25.244686, 34.932495, 34.468754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937109, 35.300030, 34.188728>,  <25.773386, 35.174137, 34.858734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937109, 35.300030, 34.188728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537373, 35.288132, 34.197090>,  <25.297531, 35.280994, 34.202106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537373, 35.288132, 34.197090>,  <25.937109, 35.300030, 34.188728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537373, 35.288132, 34.197090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036346, 0.830511, -0.555815,
		-0.000833, -0.556207, -0.831043,
		-0.999339, -0.029743, 0.020907,
		25.237572, 35.279209, 34.203362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720039, 35.435364, 34.034843>,  <25.937109, 35.300030, 34.188728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720039, 35.435364, 34.034843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935093, 35.531517, 33.711567>,  <27.064125, 35.589207, 33.517601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935093, 35.531517, 33.711567>,  <26.720039, 35.435364, 34.034843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935093, 35.531517, 33.711567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725107, 0.357356, 0.588657,
		0.430311, -0.902505, 0.017827,
		0.537636, 0.240379, -0.808187,
		27.096384, 35.603630, 33.469112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453127, 35.121391, 33.995415>,  <26.720039, 35.435364, 34.034843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453127, 35.121391, 33.995415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409071, 35.488319, 33.842369>,  <27.382637, 35.708477, 33.750542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409071, 35.488319, 33.842369>,  <27.453127, 35.121391, 33.995415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409071, 35.488319, 33.842369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576444, 0.372552, 0.727266,
		0.809679, -0.140454, -0.569817,
		-0.110140, 0.917321, -0.382612,
		27.376028, 35.763515, 33.727585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199314, 35.014748, 33.833035>,  <27.453127, 35.121391, 33.995415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199314, 35.014748, 33.833035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503185, 34.790813, 33.965378>,  <28.685509, 34.656452, 34.044785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503185, 34.790813, 33.965378>,  <28.199314, 35.014748, 33.833035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503185, 34.790813, 33.965378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171619, -0.663346, -0.728367,
		0.627243, 0.496543, -0.600009,
		0.759679, -0.559836, 0.330863,
		28.731089, 34.622864, 34.064636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672848, 34.910995, 33.205624>,  <28.199314, 35.014748, 33.833035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672848, 34.910995, 33.205624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768114, 34.629036, 33.472874>,  <28.825274, 34.459858, 33.633224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768114, 34.629036, 33.472874>,  <28.672848, 34.910995, 33.205624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768114, 34.629036, 33.472874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031061, -0.682039, -0.730656,
		0.970727, 0.194771, -0.140544,
		0.238167, -0.704902, 0.668123,
		28.839563, 34.417564, 33.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148554, 34.496803, 32.932285>,  <28.672848, 34.910995, 33.205624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148554, 34.496803, 32.932285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995182, 34.244511, 33.202148>,  <28.903160, 34.093136, 33.364067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995182, 34.244511, 33.202148>,  <29.148554, 34.496803, 32.932285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995182, 34.244511, 33.202148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073914, -0.749102, -0.658319,
		0.920609, -0.202551, 0.333846,
		-0.383427, -0.630730, 0.674658,
		28.880154, 34.055290, 33.404545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476257, 33.900936, 32.834782>,  <29.148554, 34.496803, 32.932285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476257, 33.900936, 32.834782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182922, 33.770348, 33.073322>,  <29.006922, 33.691994, 33.216446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182922, 33.770348, 33.073322>,  <29.476257, 33.900936, 32.834782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182922, 33.770348, 33.073322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001459, -0.877914, -0.478817,
		0.679863, -0.350264, 0.644284,
		-0.733338, -0.326470, 0.596350,
		28.962921, 33.672405, 33.252228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733982, 33.343498, 33.195389>,  <29.476257, 33.900936, 32.834782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733982, 33.343498, 33.195389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336531, 33.301029, 33.210491>,  <29.098059, 33.275547, 33.219555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336531, 33.301029, 33.210491>,  <29.733982, 33.343498, 33.195389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336531, 33.301029, 33.210491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085937, -0.930690, -0.355570,
		0.072894, -0.350060, 0.933887,
		-0.993630, -0.106175, 0.037759,
		29.038441, 33.269176, 33.221817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625711, 32.698742, 33.511883>,  <29.733982, 33.343498, 33.195389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625711, 32.698742, 33.511883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291389, 32.789394, 33.311855>,  <29.090796, 32.843784, 33.191837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291389, 32.789394, 33.311855>,  <29.625711, 32.698742, 33.511883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291389, 32.789394, 33.311855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247198, -0.657941, -0.711342,
		-0.490225, -0.718159, 0.493889,
		-0.835806, 0.226629, -0.500067,
		29.040648, 32.857384, 33.161835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273891, 32.093330, 33.425262>,  <29.625711, 32.698742, 33.511883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273891, 32.093330, 33.425262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156166, 32.338654, 33.132076>,  <29.085531, 32.485847, 32.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156166, 32.338654, 33.132076>,  <29.273891, 32.093330, 33.425262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156166, 32.338654, 33.132076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116604, -0.738159, -0.664473,
		-0.948569, -0.281030, 0.145737,
		-0.294314, 0.613305, -0.732964,
		29.067871, 32.522644, 32.912186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942587, 31.683306, 32.992603>,  <29.273891, 32.093330, 33.425262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942587, 31.683306, 32.992603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040777, 32.004044, 32.774693>,  <29.099691, 32.196487, 32.643948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040777, 32.004044, 32.774693>,  <28.942587, 31.683306, 32.992603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040777, 32.004044, 32.774693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224688, -0.593731, -0.772657,
		-0.943004, 0.067265, -0.325913,
		0.245477, 0.801847, -0.544778,
		29.114420, 32.244598, 32.611259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772953, 31.608736, 32.224216>,  <28.942587, 31.683306, 32.992603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772953, 31.608736, 32.224216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024874, 31.915430, 32.174465>,  <29.176025, 32.099445, 32.144615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024874, 31.915430, 32.174465>,  <28.772953, 31.608736, 32.224216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024874, 31.915430, 32.174465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354895, -0.426477, -0.831966,
		-0.690941, 0.479832, -0.540705,
		0.629802, 0.766733, -0.124381,
		29.213814, 32.145451, 32.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704380, 31.836805, 31.618547>,  <28.772953, 31.608736, 32.224216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704380, 31.836805, 31.618547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069805, 31.970896, 31.710657>,  <29.289061, 32.051350, 31.765923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069805, 31.970896, 31.710657>,  <28.704380, 31.836805, 31.618547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069805, 31.970896, 31.710657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327730, -0.271532, -0.904911,
		-0.240821, 0.902161, -0.357925,
		0.913563, 0.335224, 0.230275,
		29.343874, 32.071465, 31.779739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889053, 32.070335, 30.925308>,  <28.704380, 31.836805, 31.618547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889053, 32.070335, 30.925308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238531, 32.067200, 31.119873>,  <29.448217, 32.065319, 31.236612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238531, 32.067200, 31.119873>,  <28.889053, 32.070335, 30.925308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238531, 32.067200, 31.119873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483810, -0.090558, -0.870475,
		0.050869, 0.995860, -0.075330,
		0.873693, -0.007835, 0.486414,
		29.500639, 32.064850, 31.265797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370832, 32.446373, 30.460217>,  <28.889053, 32.070335, 30.925308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370832, 32.446373, 30.460217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602400, 32.228436, 30.702869>,  <29.741341, 32.097675, 30.848461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602400, 32.228436, 30.702869>,  <29.370832, 32.446373, 30.460217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602400, 32.228436, 30.702869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564324, -0.269283, -0.780401,
		0.588549, 0.794126, 0.151572,
		0.578921, -0.544840, 0.606630,
		29.776075, 32.064983, 30.884859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104364, 32.694000, 30.391886>,  <29.370832, 32.446373, 30.460217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104364, 32.694000, 30.391886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147589, 32.331852, 30.556139>,  <30.173523, 32.114563, 30.654692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147589, 32.331852, 30.556139>,  <30.104364, 32.694000, 30.391886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147589, 32.331852, 30.556139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712423, -0.217564, -0.667172,
		0.693380, 0.364640, 0.621500,
		0.108062, -0.905375, 0.410632,
		30.180008, 32.060238, 30.679329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769152, 32.568661, 30.349676>,  <30.104364, 32.694000, 30.391886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769152, 32.568661, 30.349676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610121, 32.206226, 30.407547>,  <30.514702, 31.988764, 30.442270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610121, 32.206226, 30.407547>,  <30.769152, 32.568661, 30.349676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610121, 32.206226, 30.407547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681234, -0.397113, -0.614997,
		0.614695, -0.145951, 0.775144,
		-0.397579, -0.906090, 0.144677,
		30.490847, 31.934399, 30.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336769, 32.164883, 30.431431>,  <30.769152, 32.568661, 30.349676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336769, 32.164883, 30.431431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058744, 31.898558, 30.322927>,  <30.891930, 31.738764, 30.257826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058744, 31.898558, 30.322927>,  <31.336769, 32.164883, 30.431431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058744, 31.898558, 30.322927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617703, -0.359988, -0.699180,
		0.367872, -0.653532, 0.661488,
		-0.695064, -0.665811, -0.271259,
		30.850225, 31.698814, 30.241550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688005, 31.496429, 30.266439>,  <31.336769, 32.164883, 30.431431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688005, 31.496429, 30.266439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329002, 31.468082, 30.092335>,  <31.113600, 31.451075, 29.987871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329002, 31.468082, 30.092335>,  <31.688005, 31.496429, 30.266439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329002, 31.468082, 30.092335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436964, -0.276051, -0.856071,
		-0.059485, -0.958527, 0.278726,
		-0.897509, -0.070870, -0.435262,
		31.059750, 31.446821, 29.961756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500641, 30.850071, 30.179495>,  <31.688005, 31.496429, 30.266439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500641, 30.850071, 30.179495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311922, 31.062250, 29.897778>,  <31.198690, 31.189558, 29.728746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311922, 31.062250, 29.897778>,  <31.500641, 30.850071, 30.179495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311922, 31.062250, 29.897778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550813, -0.446416, -0.705208,
		-0.688485, -0.720650, -0.081560,
		-0.471799, 0.530450, -0.704294,
		31.170382, 31.221386, 29.686489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441256, 30.408930, 29.702522>,  <31.500641, 30.850071, 30.179495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441256, 30.408930, 29.702522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343943, 30.709299, 29.456945>,  <31.285555, 30.889521, 29.309599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343943, 30.709299, 29.456945>,  <31.441256, 30.408930, 29.702522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343943, 30.709299, 29.456945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557840, -0.409483, -0.721899,
		-0.793491, -0.518108, -0.319275,
		-0.243284, 0.750925, -0.613942,
		31.270958, 30.934576, 29.272762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958975, 30.171774, 29.145449>,  <31.441256, 30.408930, 29.702522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958975, 30.171774, 29.145449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208139, 30.476711, 29.075232>,  <31.357637, 30.659674, 29.033100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208139, 30.476711, 29.075232>,  <30.958975, 30.171774, 29.145449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208139, 30.476711, 29.075232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471865, -0.545126, -0.692951,
		-0.623960, 0.348813, -0.699288,
		0.622910, 0.762343, -0.175544,
		31.395012, 30.705414, 29.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817883, 30.316906, 28.454575>,  <30.958975, 30.171774, 29.145449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817883, 30.316906, 28.454575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170383, 30.459885, 28.578270>,  <31.381884, 30.545671, 28.652487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170383, 30.459885, 28.578270>,  <30.817883, 30.316906, 28.454575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170383, 30.459885, 28.578270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465922, -0.547001, -0.695490,
		-0.079446, 0.756982, -0.648588,
		0.881252, 0.357445, 0.309238,
		31.434759, 30.567118, 28.671041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305508, 30.610336, 27.898426>,  <30.817883, 30.316906, 28.454575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305508, 30.610336, 27.898426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513927, 30.451599, 28.200689>,  <31.638979, 30.356356, 28.382048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513927, 30.451599, 28.200689>,  <31.305508, 30.610336, 27.898426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513927, 30.451599, 28.200689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551643, -0.519004, -0.652936,
		0.651304, 0.757067, -0.051511,
		0.521051, -0.396844, 0.755659,
		31.670242, 30.332546, 28.427387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961020, 30.711893, 27.801096>,  <31.305508, 30.610336, 27.898426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961020, 30.711893, 27.801096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890965, 30.376165, 28.006958>,  <31.848932, 30.174728, 28.130476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890965, 30.376165, 28.006958>,  <31.961020, 30.711893, 27.801096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890965, 30.376165, 28.006958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377199, -0.540053, -0.752373,
		0.909422, 0.062359, 0.411173,
		-0.175138, -0.839318, 0.514657,
		31.838423, 30.124371, 28.161356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585239, 30.312321, 27.625610>,  <31.961020, 30.711893, 27.801096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585239, 30.312321, 27.625610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270950, 30.102623, 27.756947>,  <32.082375, 29.976805, 27.835749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270950, 30.102623, 27.756947>,  <32.585239, 30.312321, 27.625610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270950, 30.102623, 27.756947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294657, -0.783908, -0.546503,
		0.543887, -0.332653, 0.770408,
		-0.785725, -0.524242, 0.328339,
		32.035233, 29.945351, 27.855448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785789, 29.699253, 27.911667>,  <32.585239, 30.312321, 27.625610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785789, 29.699253, 27.911667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409210, 29.630968, 27.795370>,  <32.183262, 29.589996, 27.725592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409210, 29.630968, 27.795370>,  <32.785789, 29.699253, 27.911667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409210, 29.630968, 27.795370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293721, -0.838661, -0.458668,
		-0.165534, -0.517209, 0.839698,
		-0.941449, -0.170712, -0.290742,
		32.126774, 29.579754, 27.708147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646267, 29.043625, 28.038998>,  <32.785789, 29.699253, 27.911667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646267, 29.043625, 28.038998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410213, 29.161467, 27.738346>,  <32.268581, 29.232172, 27.557955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410213, 29.161467, 27.738346>,  <32.646267, 29.043625, 28.038998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410213, 29.161467, 27.738346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369975, -0.728817, -0.576146,
		-0.717536, -0.618089, 0.321105,
		-0.590136, 0.294604, -0.751630,
		32.233173, 29.249847, 27.512857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292740, 28.456879, 27.801197>,  <32.646267, 29.043625, 28.038998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292740, 28.456879, 27.801197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319859, 28.720404, 27.501499>,  <32.336132, 28.878519, 27.321680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319859, 28.720404, 27.501499>,  <32.292740, 28.456879, 27.801197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319859, 28.720404, 27.501499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335719, -0.722245, -0.604694,
		-0.939519, -0.210537, -0.270145,
		0.067800, 0.658814, -0.749244,
		32.340199, 28.918049, 27.276726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443954, 28.416803, 28.556309>,  <32.292740, 28.456879, 27.801197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443954, 28.416803, 28.556309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825211, 28.537573, 28.548611>,  <33.053963, 28.610035, 28.543991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825211, 28.537573, 28.548611>,  <32.443954, 28.416803, 28.556309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825211, 28.537573, 28.548611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130381, 0.467334, 0.874414,
		0.272999, -0.830928, 0.484799,
		0.953138, 0.301923, -0.019245,
		33.111153, 28.628149, 28.542837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677799, 28.438721, 29.209383>,  <32.443954, 28.416803, 28.556309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677799, 28.438721, 29.209383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918411, 28.704380, 29.031815>,  <33.062778, 28.863775, 28.925274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918411, 28.704380, 29.031815>,  <32.677799, 28.438721, 29.209383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918411, 28.704380, 29.031815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078937, 0.503566, 0.860343,
		0.794938, -0.552567, 0.250486,
		0.601534, 0.664147, -0.443922,
		33.098869, 28.903624, 28.898638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417645, 28.652437, 29.523716>,  <32.677799, 28.438721, 29.209383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417645, 28.652437, 29.523716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264641, 28.956484, 29.313608>,  <33.172836, 29.138912, 29.187544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264641, 28.956484, 29.313608>,  <33.417645, 28.652437, 29.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264641, 28.956484, 29.313608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001274, 0.568069, 0.822980,
		0.923950, 0.315468, -0.216324,
		-0.382511, 0.760117, -0.525269,
		33.149887, 29.184519, 29.156027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909824, 29.127462, 29.624060>,  <33.417645, 28.652437, 29.523716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909824, 29.127462, 29.624060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553734, 29.295229, 29.552977>,  <33.340080, 29.395889, 29.510326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553734, 29.295229, 29.552977>,  <33.909824, 29.127462, 29.624060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553734, 29.295229, 29.552977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030414, 0.443985, 0.895518,
		0.454493, 0.791813, -0.408005,
		-0.890231, 0.419416, -0.177706,
		33.286663, 29.421053, 29.499664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961140, 29.868076, 29.781105>,  <33.909824, 29.127462, 29.624060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961140, 29.868076, 29.781105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567585, 29.799507, 29.801466>,  <33.331451, 29.758366, 29.813683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567585, 29.799507, 29.801466>,  <33.961140, 29.868076, 29.781105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567585, 29.799507, 29.801466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048012, 0.527438, 0.848236,
		-0.172252, 0.832120, -0.527167,
		-0.983882, -0.171421, 0.050901,
		33.272419, 29.748081, 29.816736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747833, 30.469942, 30.049002>,  <33.961140, 29.868076, 29.781105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747833, 30.469942, 30.049002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424492, 30.235870, 30.074734>,  <33.230488, 30.095428, 30.090172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424492, 30.235870, 30.074734>,  <33.747833, 30.469942, 30.049002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424492, 30.235870, 30.074734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183453, 0.354222, 0.916991,
		-0.559389, 0.729447, -0.393688,
		-0.808349, -0.585178, 0.064329,
		33.181988, 30.060316, 30.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265514, 30.869764, 30.121794>,  <33.747833, 30.469942, 30.049002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265514, 30.869764, 30.121794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109253, 30.533100, 30.270924>,  <33.015495, 30.331102, 30.360401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109253, 30.533100, 30.270924>,  <33.265514, 30.869764, 30.121794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109253, 30.533100, 30.270924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253508, 0.487710, 0.835388,
		-0.884944, 0.231832, -0.403892,
		-0.390652, -0.841661, 0.372825,
		32.992058, 30.280602, 30.382771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975822, 31.153151, 30.697760>,  <33.265514, 30.869764, 30.121794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975822, 31.153151, 30.697760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908134, 30.761293, 30.740963>,  <32.867519, 30.526180, 30.766886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908134, 30.761293, 30.740963>,  <32.975822, 31.153151, 30.697760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908134, 30.761293, 30.740963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243306, 0.147722, 0.958635,
		-0.955073, 0.135946, -0.263350,
		-0.169225, -0.979641, 0.108009,
		32.857368, 30.467402, 30.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317867, 31.056591, 30.862190>,  <32.975822, 31.153151, 30.697760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317867, 31.056591, 30.862190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531937, 30.753906, 31.012377>,  <32.660378, 30.572296, 31.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531937, 30.753906, 31.012377>,  <32.317867, 31.056591, 30.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531937, 30.753906, 31.012377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417389, 0.149555, 0.896337,
		-0.734421, -0.636414, -0.235804,
		0.535176, -0.756710, 0.375468,
		32.692490, 30.526894, 31.125017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837030, 30.512632, 31.162504>,  <32.317867, 31.056591, 30.862190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837030, 30.512632, 31.162504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197441, 30.469843, 31.330652>,  <32.413689, 30.444168, 31.431541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197441, 30.469843, 31.330652>,  <31.837030, 30.512632, 31.162504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197441, 30.469843, 31.330652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388943, 0.229789, 0.892144,
		-0.192033, -0.967344, 0.165438,
		0.901025, -0.106975, 0.420369,
		32.467751, 30.437750, 31.456762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694235, 30.170637, 31.757490>,  <31.837030, 30.512632, 31.162504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694235, 30.170637, 31.757490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064137, 30.295309, 31.844841>,  <32.286076, 30.370111, 31.897251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064137, 30.295309, 31.844841>,  <31.694235, 30.170637, 31.757490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064137, 30.295309, 31.844841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307203, 0.272656, 0.911748,
		0.224628, -0.910229, 0.347887,
		0.924753, 0.311676, 0.218379,
		32.341560, 30.388813, 31.910355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828695, 29.867100, 32.513027>,  <31.694235, 30.170637, 31.757490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828695, 29.867100, 32.513027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094128, 30.155767, 32.434177>,  <32.253387, 30.328968, 32.386868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094128, 30.155767, 32.434177>,  <31.828695, 29.867100, 32.513027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094128, 30.155767, 32.434177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291999, 0.492449, 0.819897,
		0.688767, -0.486506, 0.537505,
		0.663579, 0.721669, -0.197123,
		32.293201, 30.372269, 32.375042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093239, 30.041235, 33.170006>,  <31.828695, 29.867100, 32.513027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093239, 30.041235, 33.170006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165344, 30.352482, 32.929329>,  <32.208607, 30.539230, 32.784924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165344, 30.352482, 32.929329>,  <32.093239, 30.041235, 33.170006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165344, 30.352482, 32.929329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087074, 0.621939, 0.778210,
		0.979756, -0.087893, 0.179868,
		0.180266, 0.778118, -0.601695,
		32.219425, 30.585917, 32.748821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437935, 30.510500, 33.654892>,  <32.093239, 30.041235, 33.170006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437935, 30.510500, 33.654892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335888, 30.719902, 33.329720>,  <32.274662, 30.845543, 33.134617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335888, 30.719902, 33.329720>,  <32.437935, 30.510500, 33.654892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335888, 30.719902, 33.329720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055776, 0.831385, 0.552891,
		0.965301, 0.186393, -0.182900,
		-0.255115, 0.523504, -0.812933,
		32.259354, 30.876953, 33.085838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858433, 31.209576, 33.631718>,  <32.437935, 30.510500, 33.654892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858433, 31.209576, 33.631718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528690, 31.278194, 33.415939>,  <32.330845, 31.319365, 33.286472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528690, 31.278194, 33.415939>,  <32.858433, 31.209576, 33.631718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528690, 31.278194, 33.415939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161429, 0.842161, 0.514496,
		0.542560, 0.511212, -0.666551,
		-0.824360, 0.171545, -0.539447,
		32.281384, 31.329659, 33.254105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883533, 31.931507, 33.402149>,  <32.858433, 31.209576, 33.631718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883533, 31.931507, 33.402149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503906, 31.809149, 33.371944>,  <32.276131, 31.735733, 33.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503906, 31.809149, 33.371944>,  <32.883533, 31.931507, 33.402149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503906, 31.809149, 33.371944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303426, 0.822749, 0.480642,
		-0.084899, 0.479073, -0.873660,
		-0.949065, -0.305897, -0.075513,
		32.219185, 31.717381, 33.349289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525688, 32.444378, 33.066402>,  <32.883533, 31.931507, 33.402149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525688, 32.444378, 33.066402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255566, 32.244396, 33.283291>,  <32.093491, 32.124409, 33.413425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255566, 32.244396, 33.283291>,  <32.525688, 32.444378, 33.066402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255566, 32.244396, 33.283291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235206, 0.842783, 0.484143,
		-0.699025, 0.199413, -0.686731,
		-0.675310, -0.499951, 0.542223,
		32.052971, 32.094410, 33.445957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022732, 32.922909, 33.053513>,  <32.525688, 32.444378, 33.066402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022732, 32.922909, 33.053513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942509, 32.671482, 33.354092>,  <31.894375, 32.520626, 33.534439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942509, 32.671482, 33.354092>,  <32.022732, 32.922909, 33.053513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942509, 32.671482, 33.354092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499817, 0.725351, 0.473337,
		-0.842591, -0.280658, -0.459643,
		-0.200557, -0.628567, 0.751452,
		31.882341, 32.482910, 33.579529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427925, 33.075237, 33.205254>,  <32.022732, 32.922909, 33.053513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427925, 33.075237, 33.205254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484179, 32.838276, 33.522560>,  <31.517931, 32.696098, 33.712944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484179, 32.838276, 33.522560>,  <31.427925, 33.075237, 33.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484179, 32.838276, 33.522560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462719, 0.669014, 0.581645,
		-0.875278, -0.448861, -0.180030,
		0.140635, -0.592405, 0.793270,
		31.526369, 32.660553, 33.760540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820141, 33.111622, 33.632137>,  <31.427925, 33.075237, 33.205254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820141, 33.111622, 33.632137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116219, 32.991585, 33.872822>,  <31.293865, 32.919563, 34.017235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116219, 32.991585, 33.872822>,  <30.820141, 33.111622, 33.632137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116219, 32.991585, 33.872822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120313, 0.821328, 0.557624,
		-0.661543, -0.485143, 0.571836,
		0.740193, -0.300093, 0.601714,
		31.338276, 32.901558, 34.053337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546036, 33.146900, 34.363445>,  <30.820141, 33.111622, 33.632137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546036, 33.146900, 34.363445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944929, 33.160839, 34.389709>,  <31.184265, 33.169205, 34.405468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944929, 33.160839, 34.389709>,  <30.546036, 33.146900, 34.363445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944929, 33.160839, 34.389709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068919, 0.764376, 0.641077,
		-0.027845, -0.643828, 0.764664,
		0.997234, 0.034849, 0.065656,
		31.244099, 33.171295, 34.409405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667519, 33.254070, 35.084053>,  <30.546036, 33.146900, 34.363445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667519, 33.254070, 35.084053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009954, 33.339588, 34.895840>,  <31.215416, 33.390900, 34.782913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009954, 33.339588, 34.895840>,  <30.667519, 33.254070, 35.084053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009954, 33.339588, 34.895840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173276, 0.739001, 0.651040,
		0.486913, -0.638881, 0.595606,
		0.856090, 0.213796, -0.470532,
		31.266781, 33.403728, 34.754681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214703, 33.399780, 35.689121>,  <30.667519, 33.254070, 35.084053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214703, 33.399780, 35.689121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346649, 33.577831, 35.356121>,  <31.425817, 33.684662, 35.156322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346649, 33.577831, 35.356121>,  <31.214703, 33.399780, 35.689121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346649, 33.577831, 35.356121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089276, 0.863195, 0.496914,
		0.939797, -0.238237, 0.245000,
		0.329866, 0.445126, -0.832497,
		31.445610, 33.711369, 35.106373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955429, 33.621395, 35.738262>,  <31.214703, 33.399780, 35.689121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955429, 33.621395, 35.738262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788027, 33.856907, 35.461655>,  <31.687586, 33.998215, 35.295692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788027, 33.856907, 35.461655>,  <31.955429, 33.621395, 35.738262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788027, 33.856907, 35.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300737, 0.808285, 0.506194,
		0.856977, 0.003882, -0.515341,
		-0.418507, 0.588778, -0.691514,
		31.662476, 34.033539, 35.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419624, 34.205944, 35.482185>,  <31.955429, 33.621395, 35.738262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419624, 34.205944, 35.482185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041180, 34.323635, 35.428062>,  <31.814114, 34.394249, 35.395588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041180, 34.323635, 35.428062>,  <32.419624, 34.205944, 35.482185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041180, 34.323635, 35.428062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198287, 0.856633, 0.476300,
		0.256050, 0.423802, -0.868810,
		-0.946108, 0.294230, -0.135306,
		31.757347, 34.411903, 35.387470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371983, 34.907986, 35.321774>,  <32.419624, 34.205944, 35.482185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371983, 34.907986, 35.321774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017555, 34.824558, 35.487370>,  <31.804899, 34.774502, 35.586727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017555, 34.824558, 35.487370>,  <32.371983, 34.907986, 35.321774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017555, 34.824558, 35.487370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139297, 0.731998, 0.666915,
		-0.442137, 0.648598, -0.619545,
		-0.886065, -0.208567, 0.413991,
		31.751736, 34.761990, 35.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051243, 35.612244, 35.470718>,  <32.371983, 34.907986, 35.321774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051243, 35.612244, 35.470718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849781, 35.337112, 35.679806>,  <31.728905, 35.172035, 35.805256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849781, 35.337112, 35.679806>,  <32.051243, 35.612244, 35.470718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849781, 35.337112, 35.679806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063212, 0.574097, 0.816343,
		-0.861592, 0.444194, -0.245665,
		-0.503650, -0.687826, 0.522716,
		31.698687, 35.130764, 35.836620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761551, 35.527016, 35.223351>,  <32.051243, 35.612244, 35.470718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761551, 35.527016, 35.223351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103687, 35.472839, 35.023335>,  <33.308968, 35.440334, 34.903324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103687, 35.472839, 35.023335>,  <32.761551, 35.527016, 35.223351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103687, 35.472839, 35.023335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493368, 0.507421, 0.706478,
		0.158043, -0.850986, 0.500844,
		0.855342, -0.135446, -0.500044,
		33.360291, 35.432205, 34.873322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374107, 35.197811, 35.544067>,  <32.761551, 35.527016, 35.223351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374107, 35.197811, 35.544067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527893, 35.484676, 35.311562>,  <33.620163, 35.656796, 35.172058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527893, 35.484676, 35.311562>,  <33.374107, 35.197811, 35.544067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527893, 35.484676, 35.311562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670915, 0.215425, 0.709553,
		0.634085, -0.662771, -0.398335,
		0.384460, 0.717166, -0.581261,
		33.643230, 35.699825, 35.137184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084511, 35.105438, 35.671951>,  <33.374107, 35.197811, 35.544067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084511, 35.105438, 35.671951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948494, 35.462582, 35.553856>,  <33.866882, 35.676868, 35.482998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948494, 35.462582, 35.553856>,  <34.084511, 35.105438, 35.671951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948494, 35.462582, 35.553856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281763, 0.396256, 0.873837,
		0.897206, 0.213958, -0.386321,
		-0.340046, 0.892863, -0.295238,
		33.846481, 35.730442, 35.465286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619301, 35.607212, 35.596519>,  <34.084511, 35.105438, 35.671951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619301, 35.607212, 35.596519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266582, 35.761211, 35.705482>,  <34.054951, 35.853611, 35.770859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266582, 35.761211, 35.705482>,  <34.619301, 35.607212, 35.596519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266582, 35.761211, 35.705482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388897, 0.266810, 0.881800,
		0.266810, 0.883509, -0.384998,
		-0.881800, 0.384998, 0.272406,
		34.002041, 35.876709, 35.787205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574234, 36.195271, 35.853252>,  <34.619301, 35.607212, 35.596519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574234, 36.195271, 35.853252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237766, 36.141804, 36.062851>,  <34.035885, 36.109722, 36.188610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237766, 36.141804, 36.062851>,  <34.574234, 36.195271, 35.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237766, 36.141804, 36.062851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412929, 0.466912, 0.781974,
		-0.349186, 0.874143, -0.337554,
		-0.841165, -0.133669, 0.523998,
		33.985416, 36.101704, 36.220051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272736, 36.701096, 36.362823>,  <34.574234, 36.195271, 35.853252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272736, 36.701096, 36.362823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107025, 36.413273, 36.585754>,  <34.007599, 36.240582, 36.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107025, 36.413273, 36.585754>,  <34.272736, 36.701096, 36.362823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107025, 36.413273, 36.585754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114513, 0.566272, 0.816225,
		-0.902917, 0.401967, -0.152197,
		-0.414280, -0.719555, 0.557327,
		33.982742, 36.197407, 36.752953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633999, 36.891956, 36.679302>,  <34.272736, 36.701096, 36.362823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633999, 36.891956, 36.679302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860195, 36.644016, 36.896931>,  <33.995911, 36.495255, 37.027508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860195, 36.644016, 36.896931>,  <33.633999, 36.891956, 36.679302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860195, 36.644016, 36.896931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010066, 0.664814, 0.746941,
		-0.824696, -0.416909, 0.382184,
		0.565487, -0.619846, 0.544073,
		34.029842, 36.458061, 37.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313824, 36.769222, 37.355518>,  <33.633999, 36.891956, 36.679302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313824, 36.769222, 37.355518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709656, 36.718224, 37.382259>,  <33.947155, 36.687626, 37.398304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709656, 36.718224, 37.382259>,  <33.313824, 36.769222, 37.355518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709656, 36.718224, 37.382259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004446, 0.437086, 0.899409,
		-0.143889, -0.890338, 0.431966,
		0.989584, -0.127494, 0.066851,
		34.006531, 36.679974, 37.402313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381527, 36.528542, 38.067196>,  <33.313824, 36.769222, 37.355518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381527, 36.528542, 38.067196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742069, 36.657921, 37.951996>,  <33.958393, 36.735550, 37.882877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742069, 36.657921, 37.951996>,  <33.381527, 36.528542, 38.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742069, 36.657921, 37.951996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085249, 0.519481, 0.850219,
		0.424611, -0.790900, 0.440662,
		0.901354, 0.323446, -0.288001,
		34.012474, 36.754955, 37.865597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815964, 36.458946, 38.689938>,  <33.381527, 36.528542, 38.067196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815964, 36.458946, 38.689938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990154, 36.720787, 38.442760>,  <34.094669, 36.877892, 38.294453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990154, 36.720787, 38.442760>,  <33.815964, 36.458946, 38.689938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990154, 36.720787, 38.442760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167809, 0.615386, 0.770156,
		0.884420, -0.439082, 0.158138,
		0.435478, 0.654604, -0.617942,
		34.120796, 36.917168, 38.257378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513042, 36.536747, 38.993732>,  <33.815964, 36.458946, 38.689938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513042, 36.536747, 38.993732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386120, 36.841305, 38.767601>,  <34.309967, 37.024040, 38.631924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386120, 36.841305, 38.767601>,  <34.513042, 36.536747, 38.993732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386120, 36.841305, 38.767601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014423, 0.599941, 0.799914,
		0.948213, 0.245665, -0.201348,
		-0.317308, 0.761393, -0.565328,
		34.290928, 37.069721, 38.598003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769207, 37.155540, 39.349701>,  <34.513042, 36.536747, 38.993732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769207, 37.155540, 39.349701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541893, 37.350632, 39.084621>,  <34.405506, 37.467686, 38.925571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541893, 37.350632, 39.084621>,  <34.769207, 37.155540, 39.349701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541893, 37.350632, 39.084621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044849, 0.785837, 0.616806,
		0.821608, 0.380244, -0.424706,
		-0.568286, 0.487725, -0.662703,
		34.371407, 37.496948, 38.885811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056023, 37.799225, 39.253601>,  <34.769207, 37.155540, 39.349701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056023, 37.799225, 39.253601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665211, 37.829922, 39.174076>,  <34.430725, 37.848339, 39.126362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665211, 37.829922, 39.174076>,  <35.056023, 37.799225, 39.253601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665211, 37.829922, 39.174076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061052, 0.793010, 0.606142,
		0.204172, 0.604356, -0.770108,
		-0.977029, 0.076740, -0.198808,
		34.372101, 37.852943, 39.114433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961205, 38.525414, 39.257866>,  <35.056023, 37.799225, 39.253601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961205, 38.525414, 39.257866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610592, 38.335888, 39.291763>,  <34.400223, 38.222172, 39.312103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610592, 38.335888, 39.291763>,  <34.961205, 38.525414, 39.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610592, 38.335888, 39.291763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318618, 0.703122, 0.635690,
		-0.360788, 0.530204, -0.767278,
		-0.876536, -0.473818, 0.084745,
		34.347630, 38.193741, 39.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389126, 39.088757, 39.366440>,  <34.961205, 38.525414, 39.257866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389126, 39.088757, 39.366440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210995, 38.757874, 39.503498>,  <34.104115, 38.559341, 39.585732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210995, 38.757874, 39.503498>,  <34.389126, 39.088757, 39.366440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210995, 38.757874, 39.503498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397214, 0.525488, 0.752385,
		-0.802435, 0.198958, -0.562595,
		-0.445330, -0.827211, 0.342642,
		34.077396, 38.509708, 39.606289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817726, 39.310894, 39.608147>,  <34.389126, 39.088757, 39.366440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817726, 39.310894, 39.608147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847164, 38.961899, 39.801369>,  <33.864826, 38.752502, 39.917301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847164, 38.961899, 39.801369>,  <33.817726, 39.310894, 39.608147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847164, 38.961899, 39.801369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415988, 0.413367, 0.809989,
		-0.906388, -0.260555, -0.332524,
		0.073592, -0.872490, 0.483059,
		33.869244, 38.700153, 39.946285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199116, 39.163265, 39.938366>,  <33.817726, 39.310894, 39.608147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199116, 39.163265, 39.938366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488708, 38.968933, 40.134251>,  <33.662464, 38.852333, 40.251781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488708, 38.968933, 40.134251>,  <33.199116, 39.163265, 39.938366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488708, 38.968933, 40.134251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302050, 0.414974, 0.858232,
		-0.620171, -0.769264, 0.153690,
		0.723984, -0.485829, 0.489711,
		33.705902, 38.823185, 40.281162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897400, 38.993443, 40.532948>,  <33.199116, 39.163265, 39.938366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897400, 38.993443, 40.532948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284611, 38.945881, 40.621296>,  <33.516937, 38.917343, 40.674305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284611, 38.945881, 40.621296>,  <32.897400, 38.993443, 40.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284611, 38.945881, 40.621296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141210, 0.469423, 0.871609,
		-0.207318, -0.874931, 0.437625,
		0.968028, -0.118903, 0.220868,
		33.575020, 38.910210, 40.687557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899418, 38.867104, 41.145557>,  <32.897400, 38.993443, 40.532948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899418, 38.867104, 41.145557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275551, 38.998268, 41.109238>,  <33.501232, 39.076969, 41.087444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275551, 38.998268, 41.109238>,  <32.899418, 38.867104, 41.145557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275551, 38.998268, 41.109238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172776, 0.690063, 0.702824,
		0.293123, -0.645202, 0.705545,
		0.940334, 0.327915, -0.090798,
		33.557652, 39.096642, 41.081997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145855, 38.814594, 41.809082>,  <32.899418, 38.867104, 41.145557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145855, 38.814594, 41.809082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356236, 39.090698, 41.610317>,  <33.482464, 39.256359, 41.491058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356236, 39.090698, 41.610317>,  <33.145855, 38.814594, 41.809082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356236, 39.090698, 41.610317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098965, 0.629946, 0.770308,
		0.844737, -0.355968, 0.399632,
		0.525951, 0.690257, -0.496910,
		33.514023, 39.297775, 41.461243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612091, 39.096172, 42.362564>,  <33.145855, 38.814594, 41.809082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612091, 39.096172, 42.362564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588291, 39.359249, 42.062191>,  <33.574013, 39.517094, 41.881966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588291, 39.359249, 42.062191>,  <33.612091, 39.096172, 42.362564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588291, 39.359249, 42.062191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192820, 0.730530, 0.655093,
		0.979428, 0.183774, 0.083349,
		-0.059500, 0.657688, -0.750937,
		33.570442, 39.556557, 41.836910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889874, 39.651104, 42.604836>,  <33.612091, 39.096172, 42.362564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889874, 39.651104, 42.604836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677414, 39.796249, 42.298576>,  <33.549938, 39.883335, 42.114822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677414, 39.796249, 42.298576>,  <33.889874, 39.651104, 42.604836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677414, 39.796249, 42.298576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300141, 0.764473, 0.570523,
		0.792336, 0.532834, -0.297139,
		-0.531149, 0.362863, -0.765644,
		33.518070, 39.905109, 42.068882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992733, 40.346996, 42.627541>,  <33.889874, 39.651104, 42.604836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992733, 40.346996, 42.627541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654797, 40.298492, 42.419102>,  <33.452034, 40.269390, 42.294037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654797, 40.298492, 42.419102>,  <33.992733, 40.346996, 42.627541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654797, 40.298492, 42.419102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452840, 0.680757, 0.575765,
		0.284927, 0.722404, -0.630039,
		-0.844838, -0.121256, -0.521100,
		33.401344, 40.262115, 42.262772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921707, 41.005421, 42.337769>,  <33.992733, 40.346996, 42.627541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921707, 41.005421, 42.337769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574860, 40.810528, 42.379169>,  <33.366753, 40.693592, 42.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574860, 40.810528, 42.379169>,  <33.921707, 41.005421, 42.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574860, 40.810528, 42.379169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293941, 0.668290, 0.683364,
		-0.402128, 0.562133, -0.722703,
		-0.867117, -0.487232, 0.103504,
		33.314724, 40.664356, 42.410221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380695, 41.536976, 42.500935>,  <33.921707, 41.005421, 42.337769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380695, 41.536976, 42.500935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210491, 41.191257, 42.608219>,  <33.108368, 40.983826, 42.672588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210491, 41.191257, 42.608219>,  <33.380695, 41.536976, 42.500935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210491, 41.191257, 42.608219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498788, 0.471291, 0.727389,
		-0.755083, 0.175732, -0.631639,
		-0.425512, -0.864293, 0.268211,
		33.082836, 40.931969, 42.688683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665749, 41.741753, 42.614391>,  <33.380695, 41.536976, 42.500935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665749, 41.741753, 42.614391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730530, 41.398434, 42.809158>,  <32.769398, 41.192440, 42.926018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730530, 41.398434, 42.809158>,  <32.665749, 41.741753, 42.614391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730530, 41.398434, 42.809158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486304, 0.359936, 0.796213,
		-0.858650, -0.365742, -0.359101,
		0.161955, -0.858299, 0.486921,
		32.779118, 41.140945, 42.955235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071663, 41.651470, 42.960735>,  <32.665749, 41.741753, 42.614391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071663, 41.651470, 42.960735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340351, 41.428085, 43.155434>,  <32.501564, 41.294056, 43.272251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340351, 41.428085, 43.155434>,  <32.071663, 41.651470, 42.960735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340351, 41.428085, 43.155434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413707, 0.262253, 0.871820,
		-0.614527, -0.786985, -0.054880,
		0.671717, -0.558461, 0.486742,
		32.541866, 41.260548, 43.301456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685049, 41.384727, 43.611103>,  <32.071663, 41.651470, 42.960735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685049, 41.384727, 43.611103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068085, 41.315918, 43.703560>,  <32.297905, 41.274632, 43.759033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068085, 41.315918, 43.703560>,  <31.685049, 41.384727, 43.611103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068085, 41.315918, 43.703560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210712, 0.129030, 0.968995,
		-0.196517, -0.976605, 0.087310,
		0.957592, -0.172026, 0.231139,
		32.355362, 41.264309, 43.772903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647095, 40.919746, 44.198311>,  <31.685049, 41.384727, 43.611103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647095, 40.919746, 44.198311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017262, 41.071327, 44.198582>,  <32.239361, 41.162277, 44.198746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017262, 41.071327, 44.198582>,  <31.647095, 40.919746, 44.198311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017262, 41.071327, 44.198582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063534, 0.153391, 0.986121,
		0.373589, -0.912615, 0.166027,
		0.925416, 0.378953, 0.000677,
		32.294888, 41.185013, 44.198784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025780, 40.569206, 44.813385>,  <31.647095, 40.919746, 44.198311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025780, 40.569206, 44.813385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219761, 40.904297, 44.712952>,  <32.336147, 41.105350, 44.652691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219761, 40.904297, 44.712952>,  <32.025780, 40.569206, 44.813385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219761, 40.904297, 44.712952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094292, 0.335513, 0.937305,
		0.869444, -0.430871, 0.241697,
		0.484950, 0.837724, -0.251082,
		32.365246, 41.155613, 44.637627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695232, 40.723351, 45.297729>,  <32.025780, 40.569206, 44.813385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695232, 40.723351, 45.297729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556595, 41.063950, 45.140339>,  <32.473412, 41.268311, 45.045906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556595, 41.063950, 45.140339>,  <32.695232, 40.723351, 45.297729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556595, 41.063950, 45.140339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100218, 0.450693, 0.887036,
		0.932646, 0.268009, -0.241543,
		-0.346595, 0.851497, -0.393478,
		32.452618, 41.319397, 45.022297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106728, 41.227959, 45.527706>,  <32.695232, 40.723351, 45.297729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106728, 41.227959, 45.527706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776936, 41.429996, 45.425632>,  <32.579060, 41.551220, 45.364388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776936, 41.429996, 45.425632>,  <33.106728, 41.227959, 45.527706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776936, 41.429996, 45.425632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094116, 0.567048, 0.818290,
		0.558015, 0.650644, -0.515055,
		-0.824477, 0.505093, -0.255185,
		32.529594, 41.581524, 45.349075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191700, 41.963169, 45.795002>,  <33.106728, 41.227959, 45.527706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191700, 41.963169, 45.795002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799561, 41.917439, 45.730698>,  <32.564278, 41.889999, 45.692116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799561, 41.917439, 45.730698>,  <33.191700, 41.963169, 45.795002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799561, 41.917439, 45.730698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195472, 0.672537, 0.713782,
		0.026514, 0.731180, -0.681669,
		-0.980351, -0.114322, -0.160757,
		32.505455, 41.883141, 45.682472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993401, 42.607868, 45.680401>,  <33.191700, 41.963169, 45.795002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993401, 42.607868, 45.680401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666882, 42.403549, 45.788288>,  <32.470970, 42.280956, 45.853020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666882, 42.403549, 45.788288>,  <32.993401, 42.607868, 45.680401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666882, 42.403549, 45.788288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112603, 0.598689, 0.793027,
		-0.566557, 0.616971, -0.546224,
		-0.816293, -0.510801, 0.269718,
		32.421993, 42.250309, 45.869202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565578, 43.183792, 45.874897>,  <32.993401, 42.607868, 45.680401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565578, 43.183792, 45.874897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400768, 42.846992, 46.014191>,  <32.301884, 42.644913, 46.097767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400768, 42.846992, 46.014191>,  <32.565578, 43.183792, 45.874897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400768, 42.846992, 46.014191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229281, 0.465691, 0.854730,
		-0.881853, 0.272329, -0.384932,
		-0.412027, -0.842003, 0.348231,
		32.277161, 42.594391, 46.118660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096539, 43.568504, 46.361706>,  <32.565578, 43.183792, 45.874897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096539, 43.568504, 46.361706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090839, 43.170807, 46.404179>,  <32.087418, 42.932190, 46.429661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090839, 43.170807, 46.404179>,  <32.096539, 43.568504, 46.361706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090839, 43.170807, 46.404179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160954, 0.107088, 0.981135,
		-0.986859, -0.003107, -0.161554,
		-0.014252, -0.994245, 0.106181,
		32.086563, 42.872532, 46.436031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491215, 43.399731, 46.659706>,  <32.096539, 43.568504, 46.361706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491215, 43.399731, 46.659706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762913, 43.130501, 46.776737>,  <31.925932, 42.968964, 46.846954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762913, 43.130501, 46.776737>,  <31.491215, 43.399731, 46.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762913, 43.130501, 46.776737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139295, 0.273171, 0.951827,
		-0.720571, -0.687278, 0.091795,
		0.679245, -0.673072, 0.292574,
		31.966686, 42.928577, 46.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246143, 42.944092, 47.226788>,  <31.491215, 43.399731, 46.659706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246143, 42.944092, 47.226788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645607, 42.929924, 47.241894>,  <31.885284, 42.921425, 47.250957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645607, 42.929924, 47.241894>,  <31.246143, 42.944092, 47.226788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645607, 42.929924, 47.241894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031373, 0.166324, 0.985572,
		-0.041191, -0.985435, 0.164990,
		0.998658, -0.035420, 0.037767,
		31.945204, 42.919300, 47.253223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345856, 42.434860, 47.746307>,  <31.246143, 42.944092, 47.226788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345856, 42.434860, 47.746307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679287, 42.654255, 47.720047>,  <31.879347, 42.785892, 47.704292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679287, 42.654255, 47.720047>,  <31.345856, 42.434860, 47.746307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679287, 42.654255, 47.720047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016289, 0.094387, 0.995402,
		0.552160, -0.830816, 0.069745,
		0.833579, 0.548485, -0.065650,
		31.929361, 42.818802, 47.700352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711306, 42.279907, 48.251965>,  <31.345856, 42.434860, 47.746307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711306, 42.279907, 48.251965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892239, 42.621632, 48.149563>,  <32.000797, 42.826668, 48.088120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892239, 42.621632, 48.149563>,  <31.711306, 42.279907, 48.251965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892239, 42.621632, 48.149563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058155, 0.258187, 0.964343,
		0.889950, -0.451094, 0.067104,
		0.452334, 0.854315, -0.256006,
		32.027939, 42.877926, 48.072762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203751, 42.353519, 48.666946>,  <31.711306, 42.279907, 48.251965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203751, 42.353519, 48.666946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169838, 42.734562, 48.550083>,  <32.149490, 42.963188, 48.479965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169838, 42.734562, 48.550083>,  <32.203751, 42.353519, 48.666946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169838, 42.734562, 48.550083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246774, 0.304149, 0.920107,
		0.965358, 0.005909, -0.260864,
		-0.084778, 0.952606, -0.292154,
		32.144405, 43.020344, 48.462437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817703, 42.733540, 48.942760>,  <32.203751, 42.353519, 48.666946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817703, 42.733540, 48.942760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500404, 42.971611, 48.891342>,  <32.310024, 43.114452, 48.860489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500404, 42.971611, 48.891342>,  <32.817703, 42.733540, 48.942760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500404, 42.971611, 48.891342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103409, 0.339727, 0.934822,
		0.600058, 0.728250, -0.331033,
		-0.793245, 0.595179, -0.128548,
		32.262432, 43.150166, 48.852779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928082, 43.424236, 49.239960>,  <32.817703, 42.733540, 48.942760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928082, 43.424236, 49.239960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528889, 43.421768, 49.214676>,  <32.289371, 43.420288, 49.199505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528889, 43.421768, 49.214676>,  <32.928082, 43.424236, 49.239960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528889, 43.421768, 49.214676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061820, 0.322196, 0.944652,
		0.014540, 0.946653, -0.321927,
		-0.997981, -0.006166, -0.063207,
		32.229496, 43.419918, 49.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723858, 43.871666, 49.750534>,  <32.928082, 43.424236, 49.239960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723858, 43.871666, 49.750534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360619, 43.719398, 49.680733>,  <32.142673, 43.628040, 49.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360619, 43.719398, 49.680733>,  <32.723858, 43.871666, 49.750534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360619, 43.719398, 49.680733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285998, 0.259398, 0.922452,
		-0.305879, 0.887585, -0.344428,
		-0.908099, -0.380665, -0.174503,
		32.088188, 43.605198, 49.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244923, 44.338688, 49.977905>,  <32.723858, 43.871666, 49.750534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244923, 44.338688, 49.977905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998838, 44.023842, 49.995640>,  <31.851189, 43.834934, 50.006283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998838, 44.023842, 49.995640>,  <32.244923, 44.338688, 49.977905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998838, 44.023842, 49.995640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254832, 0.251771, 0.933634,
		-0.746042, 0.563080, -0.355474,
		-0.615209, -0.787116, 0.044341,
		31.814276, 43.787708, 50.008942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595682, 44.565041, 50.149990>,  <32.244923, 44.338688, 49.977905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595682, 44.565041, 50.149990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610979, 44.178337, 50.251118>,  <31.620157, 43.946316, 50.311794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610979, 44.178337, 50.251118>,  <31.595682, 44.565041, 50.149990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610979, 44.178337, 50.251118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415825, 0.214665, 0.883747,
		-0.908640, -0.138928, -0.393792,
		0.038244, -0.966756, 0.252822,
		31.622452, 43.888309, 50.326965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002995, 44.376495, 50.329243>,  <31.595682, 44.565041, 50.149990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002995, 44.376495, 50.329243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240549, 44.128521, 50.534367>,  <31.383081, 43.979736, 50.657440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240549, 44.128521, 50.534367>,  <31.002995, 44.376495, 50.329243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240549, 44.128521, 50.534367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331818, 0.391917, 0.858078,
		-0.732935, -0.679761, 0.027048,
		0.593889, -0.619941, 0.512807,
		31.418716, 43.942539, 50.688210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322737, 44.317101, 50.832657>,  <31.002995, 44.376495, 50.329243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322737, 44.317101, 50.832657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303097, 44.525440, 51.173550>,  <30.291313, 44.650444, 51.378086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303097, 44.525440, 51.173550>,  <30.322737, 44.317101, 50.832657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303097, 44.525440, 51.173550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045980, -0.853537, 0.519000,
		0.997735, -0.013703, 0.065856,
		-0.049099, 0.520852, 0.852234,
		30.288366, 44.681698, 51.429218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995752, 44.361053, 51.304504>,  <30.322737, 44.317101, 50.832657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995752, 44.361053, 51.304504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633492, 44.337669, 51.472492>,  <30.416136, 44.323639, 51.573284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633492, 44.337669, 51.472492>,  <30.995752, 44.361053, 51.304504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633492, 44.337669, 51.472492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252794, -0.869625, 0.424084,
		0.340426, 0.490238, 0.802357,
		-0.905652, -0.058462, 0.419972,
		30.361795, 44.320129, 51.598484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959763, 44.266125, 52.037754>,  <30.995752, 44.361053, 51.304504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959763, 44.266125, 52.037754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670578, 44.048470, 51.867462>,  <30.497068, 43.917877, 51.765289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670578, 44.048470, 51.867462>,  <30.959763, 44.266125, 52.037754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670578, 44.048470, 51.867462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506650, -0.836493, 0.208773,
		-0.469718, -0.064760, 0.880438,
		-0.722960, -0.544138, -0.425727,
		30.453690, 43.885227, 51.739742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252542, 43.780109, 52.635353>,  <30.959763, 44.266125, 52.037754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252542, 43.780109, 52.635353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619488, 43.927250, 52.574512>,  <31.839655, 44.015533, 52.538010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619488, 43.927250, 52.574512>,  <31.252542, 43.780109, 52.635353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619488, 43.927250, 52.574512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394014, -0.893441, 0.215675,
		-0.056555, -0.257780, -0.964547,
		0.917363, 0.367848, -0.152098,
		31.894697, 44.037605, 52.528885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554449, 43.214878, 52.291477>,  <31.252542, 43.780109, 52.635353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554449, 43.214878, 52.291477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815226, 43.456146, 52.475285>,  <31.971691, 43.600906, 52.585567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815226, 43.456146, 52.475285>,  <31.554449, 43.214878, 52.291477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815226, 43.456146, 52.475285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557021, -0.792136, 0.249495,
		0.514488, 0.093304, -0.852406,
		0.651943, 0.603171, 0.459517,
		32.010807, 43.637096, 52.613140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142372, 43.430317, 51.916779>,  <31.554449, 43.214878, 52.291477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142372, 43.430317, 51.916779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221912, 43.372997, 52.304577>,  <32.269638, 43.338604, 52.537254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221912, 43.372997, 52.304577>,  <32.142372, 43.430317, 51.916779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221912, 43.372997, 52.304577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454952, -0.862701, -0.220829,
		0.868031, 0.484986, -0.106353,
		0.198850, -0.143301, 0.969497,
		32.281567, 43.330006, 52.595425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925323, 43.383751, 52.106174>,  <32.142372, 43.430317, 51.916779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925323, 43.383751, 52.106174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687611, 43.180664, 52.355671>,  <32.544983, 43.058811, 52.505367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687611, 43.180664, 52.355671>,  <32.925323, 43.383751, 52.106174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687611, 43.180664, 52.355671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391528, -0.860078, -0.327064,
		0.702521, 0.049843, 0.709916,
		-0.594281, -0.507721, 0.623738,
		32.509327, 43.028347, 52.542793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352482, 42.820999, 52.452282>,  <32.925323, 43.383751, 52.106174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352482, 42.820999, 52.452282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958115, 42.754211, 52.448494>,  <32.721493, 42.714138, 52.446220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958115, 42.754211, 52.448494>,  <33.352482, 42.820999, 52.452282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958115, 42.754211, 52.448494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158787, -0.916850, -0.366296,
		0.052477, -0.362641, 0.930450,
		-0.985918, -0.166965, -0.009469,
		32.662338, 42.704121, 52.445652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235069, 42.099045, 52.681515>,  <33.352482, 42.820999, 52.452282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235069, 42.099045, 52.681515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910419, 42.206490, 52.474010>,  <32.715630, 42.270958, 52.349510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910419, 42.206490, 52.474010>,  <33.235069, 42.099045, 52.681515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910419, 42.206490, 52.474010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089410, -0.934670, -0.344089,
		-0.577296, -0.232889, 0.782619,
		-0.811625, 0.268615, -0.518759,
		32.666931, 42.287075, 52.318382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679230, 41.654461, 52.825844>,  <33.235069, 42.099045, 52.681515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679230, 41.654461, 52.825844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629654, 41.797886, 52.455750>,  <32.599907, 41.883942, 52.233692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629654, 41.797886, 52.455750>,  <32.679230, 41.654461, 52.825844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629654, 41.797886, 52.455750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202379, -0.921964, -0.330188,
		-0.971433, 0.146327, 0.186833,
		-0.123938, 0.358567, -0.925240,
		32.592472, 41.905457, 52.178177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425583, 41.035614, 52.466961>,  <32.679230, 41.654461, 52.825844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425583, 41.035614, 52.466961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513737, 41.294827, 52.175346>,  <32.566628, 41.450352, 52.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513737, 41.294827, 52.175346>,  <32.425583, 41.035614, 52.466961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513737, 41.294827, 52.175346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221248, -0.694718, -0.684409,
		-0.949990, 0.312129, -0.009729,
		0.220383, 0.648029, -0.729033,
		32.579853, 41.489235, 51.956635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859703, 41.036785, 51.894524>,  <32.425583, 41.035614, 52.466961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859703, 41.036785, 51.894524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196640, 41.157185, 51.715702>,  <32.398804, 41.229424, 51.608410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196640, 41.157185, 51.715702>,  <31.859703, 41.036785, 51.894524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196640, 41.157185, 51.715702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247899, -0.520155, -0.817303,
		-0.478544, 0.799275, -0.363532,
		0.842343, 0.300997, -0.447057,
		32.449345, 41.247482, 51.581585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678123, 41.089901, 51.202229>,  <31.859703, 41.036785, 51.894524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678123, 41.089901, 51.202229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076630, 41.055573, 51.206047>,  <32.315735, 41.034973, 51.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076630, 41.055573, 51.206047>,  <31.678123, 41.089901, 51.202229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076630, 41.055573, 51.206047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046705, -0.628531, -0.776381,
		0.072634, 0.773035, -0.630191,
		0.996265, -0.085825, 0.009548,
		32.375507, 41.029823, 51.208912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898575, 41.096249, 50.424225>,  <31.678123, 41.089901, 51.202229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898575, 41.096249, 50.424225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163002, 40.904419, 50.655052>,  <32.321659, 40.789322, 50.793549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163002, 40.904419, 50.655052>,  <31.898575, 41.096249, 50.424225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163002, 40.904419, 50.655052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099130, -0.706521, -0.700715,
		0.743751, 0.520423, -0.419517,
		0.661066, -0.479570, 0.577065,
		32.361320, 40.760548, 50.828171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328110, 40.809818, 49.891308>,  <31.898575, 41.096249, 50.424225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328110, 40.809818, 49.891308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422142, 40.595097, 50.215424>,  <32.478561, 40.466263, 50.409893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422142, 40.595097, 50.215424>,  <32.328110, 40.809818, 49.891308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422142, 40.595097, 50.215424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322470, -0.743364, -0.586023,
		0.916923, 0.399061, -0.001650,
		0.235085, -0.536805, 0.810293,
		32.492668, 40.434055, 50.458511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057049, 40.601803, 49.786156>,  <32.328110, 40.809818, 49.891308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057049, 40.601803, 49.786156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886768, 40.369701, 50.063885>,  <32.784599, 40.230442, 50.230522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886768, 40.369701, 50.063885>,  <33.057049, 40.601803, 49.786156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886768, 40.369701, 50.063885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309880, -0.814414, -0.490616,
		0.850149, 0.006303, 0.526504,
		-0.425700, -0.580250, 0.694327,
		32.759060, 40.195625, 50.272182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570839, 40.173546, 49.901081>,  <33.057049, 40.601803, 49.786156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570839, 40.173546, 49.901081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261532, 39.978905, 50.063694>,  <33.075947, 39.862118, 50.161263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261532, 39.978905, 50.063694>,  <33.570839, 40.173546, 49.901081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261532, 39.978905, 50.063694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331406, -0.856757, -0.395142,
		0.540578, -0.170824, 0.823769,
		-0.773269, -0.486607, 0.406532,
		33.029552, 39.832924, 50.185654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842102, 39.622738, 50.190060>,  <33.570839, 40.173546, 49.901081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842102, 39.622738, 50.190060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456276, 39.579586, 50.093754>,  <33.224781, 39.553696, 50.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456276, 39.579586, 50.093754>,  <33.842102, 39.622738, 50.190060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456276, 39.579586, 50.093754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233045, -0.776185, -0.585855,
		-0.123681, -0.621208, 0.773824,
		-0.964569, -0.107876, -0.240769,
		33.166904, 39.547222, 50.021523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848370, 38.970379, 49.845364>,  <33.842102, 39.622738, 50.190060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848370, 38.970379, 49.845364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472126, 39.074402, 49.758080>,  <33.246380, 39.136818, 49.705708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472126, 39.074402, 49.758080>,  <33.848370, 38.970379, 49.845364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472126, 39.074402, 49.758080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018279, -0.603046, -0.797497,
		-0.338987, -0.754125, 0.562479,
		-0.940613, 0.260060, -0.218209,
		33.189941, 39.152420, 49.692616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464916, 38.364182, 49.830189>,  <33.848370, 38.970379, 49.845364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464916, 38.364182, 49.830189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293167, 38.650925, 49.610462>,  <33.190117, 38.822971, 49.478626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293167, 38.650925, 49.610462>,  <33.464916, 38.364182, 49.830189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293167, 38.650925, 49.610462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033625, -0.620502, -0.783484,
		-0.902499, -0.317939, 0.290533,
		-0.429376, 0.716863, -0.549312,
		33.164352, 38.865982, 49.445667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968479, 37.978836, 49.330734>,  <33.464916, 38.364182, 49.830189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968479, 37.978836, 49.330734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009880, 38.348377, 49.183338>,  <33.034721, 38.570103, 49.094902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009880, 38.348377, 49.183338>,  <32.968479, 37.978836, 49.330734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009880, 38.348377, 49.183338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014730, -0.369014, -0.929307,
		-0.994520, 0.101618, -0.024587,
		0.103507, 0.923852, -0.368488,
		33.040932, 38.625534, 49.072792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502735, 38.030998, 48.779690>,  <32.968479, 37.978836, 49.330734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502735, 38.030998, 48.779690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752472, 38.336987, 48.716415>,  <32.902313, 38.520580, 48.678452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752472, 38.336987, 48.716415>,  <32.502735, 38.030998, 48.779690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752472, 38.336987, 48.716415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093253, -0.274042, -0.957186,
		-0.775567, 0.582858, -0.242431,
		0.624340, 0.764969, -0.158185,
		32.939774, 38.566479, 48.668961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310276, 38.459499, 48.185749>,  <32.502735, 38.030998, 48.779690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310276, 38.459499, 48.185749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700207, 38.548477, 48.179745>,  <32.934166, 38.601864, 48.176140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700207, 38.548477, 48.179745>,  <32.310276, 38.459499, 48.185749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700207, 38.548477, 48.179745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024384, -0.173315, -0.984564,
		-0.221612, 0.959417, -0.174377,
		0.974830, 0.222443, -0.015015,
		32.992657, 38.615211, 48.175240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359470, 38.948597, 47.637497>,  <32.310276, 38.459499, 48.185749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359470, 38.948597, 47.637497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713207, 38.770943, 47.695030>,  <32.925449, 38.664352, 47.729549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713207, 38.770943, 47.695030>,  <32.359470, 38.948597, 47.637497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713207, 38.770943, 47.695030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006918, -0.320531, -0.947213,
		0.466791, 0.836664, -0.286531,
		0.884341, -0.444133, 0.143833,
		32.978508, 38.637703, 47.738178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685413, 38.940083, 46.986732>,  <32.359470, 38.948597, 47.637497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685413, 38.940083, 46.986732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942127, 38.691959, 47.167099>,  <33.096157, 38.543087, 47.275318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942127, 38.691959, 47.167099>,  <32.685413, 38.940083, 46.986732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942127, 38.691959, 47.167099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190448, -0.440650, -0.877244,
		0.742860, 0.648879, -0.164666,
		0.641785, -0.620309, 0.450919,
		33.134663, 38.505867, 47.302376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190056, 38.893993, 46.542191>,  <32.685413, 38.940083, 46.986732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190056, 38.893993, 46.542191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211693, 38.576015, 46.783894>,  <33.224674, 38.385227, 46.928917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211693, 38.576015, 46.783894>,  <33.190056, 38.893993, 46.542191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211693, 38.576015, 46.783894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192518, -0.585490, -0.787489,
		0.979801, 0.158926, 0.121373,
		0.054090, -0.794949, 0.604260,
		33.227921, 38.337532, 46.965172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680752, 38.454838, 46.297977>,  <33.190056, 38.893993, 46.542191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680752, 38.454838, 46.297977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461842, 38.200626, 46.515820>,  <33.330494, 38.048100, 46.646523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461842, 38.200626, 46.515820>,  <33.680752, 38.454838, 46.297977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461842, 38.200626, 46.515820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001690, -0.649858, -0.760054,
		0.836948, -0.416883, 0.354580,
		-0.547280, -0.635526, 0.544602,
		33.297657, 38.009968, 46.679199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080177, 37.791771, 46.468353>,  <33.680752, 38.454838, 46.297977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080177, 37.791771, 46.468353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686306, 37.724575, 46.487061>,  <33.449982, 37.684258, 46.498283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686306, 37.724575, 46.487061>,  <34.080177, 37.791771, 46.468353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686306, 37.724575, 46.487061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097389, -0.752249, -0.651641,
		0.144647, -0.637103, 0.757084,
		-0.984679, -0.167989, 0.046764,
		33.390903, 37.674179, 46.501091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082363, 37.096684, 46.365688>,  <34.080177, 37.791771, 46.468353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082363, 37.096684, 46.365688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714531, 37.234707, 46.290535>,  <33.493832, 37.317520, 46.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714531, 37.234707, 46.290535>,  <34.082363, 37.096684, 46.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714531, 37.234707, 46.290535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108296, -0.682297, -0.723010,
		-0.377673, -0.644521, 0.664797,
		-0.919584, 0.345057, -0.187886,
		33.438656, 37.338223, 46.234169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553963, 36.557880, 46.532532>,  <34.082363, 37.096684, 46.365688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553963, 36.557880, 46.532532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416759, 36.810596, 46.254486>,  <33.334438, 36.962227, 46.087658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416759, 36.810596, 46.254486>,  <33.553963, 36.557880, 46.532532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416759, 36.810596, 46.254486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031160, -0.747254, -0.663808,
		-0.938815, -0.206032, 0.276001,
		-0.343009, 0.631794, -0.695113,
		33.313858, 37.000134, 46.045952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050343, 36.105961, 46.161034>,  <33.553963, 36.557880, 46.532532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050343, 36.105961, 46.161034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092915, 36.424118, 45.922359>,  <33.118458, 36.615013, 45.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092915, 36.424118, 45.922359>,  <33.050343, 36.105961, 46.161034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092915, 36.424118, 45.922359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051669, -0.594855, -0.802170,
		-0.992977, 0.116205, -0.022213,
		0.106430, 0.795389, -0.596682,
		33.124844, 36.662735, 45.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551689, 36.006260, 45.528366>,  <33.050343, 36.105961, 46.161034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551689, 36.006260, 45.528366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796272, 36.301857, 45.415226>,  <32.943024, 36.479218, 45.347343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796272, 36.301857, 45.415226>,  <32.551689, 36.006260, 45.528366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796272, 36.301857, 45.415226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086609, -0.417814, -0.904395,
		-0.786523, 0.528503, -0.319480,
		0.611458, 0.738997, -0.282847,
		32.979710, 36.523556, 45.330372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334103, 36.403477, 44.785748>,  <32.551689, 36.006260, 45.528366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334103, 36.403477, 44.785748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724792, 36.441807, 44.862507>,  <32.959206, 36.464806, 44.908562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724792, 36.441807, 44.862507>,  <32.334103, 36.403477, 44.785748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724792, 36.441807, 44.862507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213623, -0.353919, -0.910553,
		-0.019337, 0.930354, -0.366152,
		0.976725, 0.095826, 0.191902,
		33.017811, 36.470554, 44.920078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580097, 36.748482, 44.165302>,  <32.334103, 36.403477, 44.785748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580097, 36.748482, 44.165302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916763, 36.617947, 44.337399>,  <33.118763, 36.539623, 44.440655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916763, 36.617947, 44.337399>,  <32.580097, 36.748482, 44.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916763, 36.617947, 44.337399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389191, -0.185723, -0.902240,
		0.374343, 0.926827, -0.029307,
		0.841664, -0.326341, 0.430237,
		33.169262, 36.520042, 44.466469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101818, 36.990181, 43.701862>,  <32.580097, 36.748482, 44.165302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101818, 36.990181, 43.701862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266331, 36.700596, 43.923393>,  <33.365040, 36.526844, 44.056313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266331, 36.700596, 43.923393>,  <33.101818, 36.990181, 43.701862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266331, 36.700596, 43.923393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389652, -0.409638, -0.824844,
		0.824026, 0.555043, 0.113617,
		0.411282, -0.723964, 0.553826,
		33.389717, 36.483406, 44.089542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677124, 36.960884, 43.436020>,  <33.101818, 36.990181, 43.701862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677124, 36.960884, 43.436020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639679, 36.604397, 43.613544>,  <33.617210, 36.390503, 43.720058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639679, 36.604397, 43.613544>,  <33.677124, 36.960884, 43.436020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639679, 36.604397, 43.613544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465576, -0.433213, -0.771729,
		0.880043, 0.134385, 0.455483,
		-0.093612, -0.891217, 0.443813,
		33.611595, 36.337032, 43.746689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277699, 36.650959, 43.285278>,  <33.677124, 36.960884, 43.436020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277699, 36.650959, 43.285278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015415, 36.363667, 43.378399>,  <33.858044, 36.191292, 43.434269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015415, 36.363667, 43.378399>,  <34.277699, 36.650959, 43.285278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015415, 36.363667, 43.378399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297032, -0.528869, -0.795028,
		0.694131, -0.452158, 0.560121,
		-0.655709, -0.718228, 0.232799,
		33.818703, 36.148197, 43.448238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505009, 35.971516, 43.147186>,  <34.277699, 36.650959, 43.285278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505009, 35.971516, 43.147186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113972, 35.889935, 43.168022>,  <33.879349, 35.840988, 43.180523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113972, 35.889935, 43.168022>,  <34.505009, 35.971516, 43.147186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113972, 35.889935, 43.168022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114265, -0.721990, -0.682403,
		0.176784, -0.661162, 0.729118,
		-0.977594, -0.203951, 0.052089,
		33.820694, 35.828751, 43.183647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501587, 35.311180, 42.909714>,  <34.505009, 35.971516, 43.147186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501587, 35.311180, 42.909714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126114, 35.442932, 42.868961>,  <33.900829, 35.521984, 42.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126114, 35.442932, 42.868961>,  <34.501587, 35.311180, 42.909714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126114, 35.442932, 42.868961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034285, -0.383203, -0.923028,
		-0.343069, -0.862939, 0.370999,
		-0.938685, 0.329382, -0.101879,
		33.844509, 35.541748, 42.838398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080936, 34.804756, 42.699997>,  <34.501587, 35.311180, 42.909714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080936, 34.804756, 42.699997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867924, 35.122993, 42.584457>,  <33.740116, 35.313938, 42.515133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867924, 35.122993, 42.584457>,  <34.080936, 34.804756, 42.699997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867924, 35.122993, 42.584457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032936, -0.360488, -0.932182,
		-0.845767, -0.486906, 0.218176,
		-0.532534, 0.795595, -0.288852,
		33.708164, 35.361671, 42.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553238, 34.514099, 42.261536>,  <34.080936, 34.804756, 42.699997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553238, 34.514099, 42.261536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542309, 34.903568, 42.171009>,  <33.535751, 35.137249, 42.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542309, 34.903568, 42.171009>,  <33.553238, 34.514099, 42.261536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542309, 34.903568, 42.171009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013561, -0.226016, -0.974029,
		-0.999535, -0.029684, -0.007028,
		-0.027324, 0.973671, -0.226313,
		33.534111, 35.195671, 42.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929985, 34.561516, 41.900772>,  <33.553238, 34.514099, 42.261536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929985, 34.561516, 41.900772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190075, 34.846058, 41.794056>,  <33.346130, 35.016785, 41.730026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190075, 34.846058, 41.794056>,  <32.929985, 34.561516, 41.900772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190075, 34.846058, 41.794056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082967, -0.282572, -0.955651,
		-0.755194, 0.643527, -0.124718,
		0.650229, 0.711355, -0.266788,
		33.385143, 35.059464, 41.714020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649052, 34.742825, 41.373337>,  <32.929985, 34.561516, 41.900772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649052, 34.742825, 41.373337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013538, 34.896038, 41.312714>,  <33.232231, 34.987965, 41.276340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013538, 34.896038, 41.312714>,  <32.649052, 34.742825, 41.373337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013538, 34.896038, 41.312714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062494, -0.235129, -0.969953,
		-0.407159, 0.893309, -0.190317,
		0.911217, 0.383031, -0.151561,
		33.286903, 35.010948, 41.267246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508972, 35.062798, 40.656811>,  <32.649052, 34.742825, 41.373337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508972, 35.062798, 40.656811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903404, 35.049290, 40.721943>,  <33.140064, 35.041187, 40.761021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903404, 35.049290, 40.721943>,  <32.508972, 35.062798, 40.656811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903404, 35.049290, 40.721943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144632, -0.309104, -0.939966,
		0.082070, 0.950429, -0.299916,
		0.986076, -0.033766, 0.162831,
		33.199226, 35.039162, 40.770794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857471, 35.434719, 40.028133>,  <32.508972, 35.062798, 40.656811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857471, 35.434719, 40.028133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141758, 35.212246, 40.200432>,  <33.312332, 35.078762, 40.303810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141758, 35.212246, 40.200432>,  <32.857471, 35.434719, 40.028133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141758, 35.212246, 40.200432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372579, -0.221782, -0.901109,
		0.596712, 0.800922, 0.049597,
		0.710718, -0.556181, 0.430747,
		33.354973, 35.045391, 40.329655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458447, 35.668610, 39.624489>,  <32.857471, 35.434719, 40.028133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458447, 35.668610, 39.624489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527893, 35.321705, 39.811131>,  <33.569561, 35.113564, 39.923115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527893, 35.321705, 39.811131>,  <33.458447, 35.668610, 39.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527893, 35.321705, 39.811131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429568, -0.359657, -0.828322,
		0.886187, 0.344248, 0.310105,
		0.173617, -0.867260, 0.466601,
		33.579979, 35.061527, 39.951111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144379, 35.507904, 39.622196>,  <33.458447, 35.668610, 39.624489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144379, 35.507904, 39.622196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978985, 35.151917, 39.699120>,  <33.879749, 34.938324, 39.745274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978985, 35.151917, 39.699120>,  <34.144379, 35.507904, 39.622196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978985, 35.151917, 39.699120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507279, -0.400566, -0.763030,
		0.756106, -0.217950, 0.617092,
		-0.413488, -0.889969, 0.192309,
		33.854939, 34.884926, 39.756813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657936, 35.100254, 39.520649>,  <34.144379, 35.507904, 39.622196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657936, 35.100254, 39.520649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339455, 34.859890, 39.492466>,  <34.148365, 34.715672, 39.475555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339455, 34.859890, 39.492466>,  <34.657936, 35.100254, 39.520649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339455, 34.859890, 39.492466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321050, -0.320919, -0.891032,
		0.512821, -0.732063, 0.448440,
		-0.796205, -0.600911, -0.070454,
		34.100594, 34.679615, 39.471329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902443, 34.417561, 39.381096>,  <34.657936, 35.100254, 39.520649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902443, 34.417561, 39.381096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525669, 34.428009, 39.247189>,  <34.299603, 34.434277, 39.166843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525669, 34.428009, 39.247189>,  <34.902443, 34.417561, 39.381096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525669, 34.428009, 39.247189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319559, -0.236466, -0.917587,
		-0.103127, -0.971289, 0.214390,
		-0.941938, 0.026118, -0.334770,
		34.243088, 34.435844, 39.146759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300087, 33.901775, 38.950893>,  <34.902443, 34.417561, 39.381096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300087, 33.901775, 38.950893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691875, 33.847309, 39.010342>,  <35.926949, 33.814629, 39.046013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691875, 33.847309, 39.010342>,  <35.300087, 33.901775, 38.950893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691875, 33.847309, 39.010342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095845, 0.334036, 0.937674,
		-0.177325, -0.932673, 0.314129,
		0.979474, -0.136166, 0.148625,
		35.985718, 33.806461, 39.054928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302467, 33.506855, 39.593918>,  <35.300087, 33.901775, 38.950893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302467, 33.506855, 39.593918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657135, 33.685001, 39.544178>,  <35.869938, 33.791889, 39.514332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657135, 33.685001, 39.544178>,  <35.302467, 33.506855, 39.593918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657135, 33.685001, 39.544178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010405, 0.288080, 0.957550,
		0.462283, -0.847738, 0.260066,
		0.886671, 0.445365, -0.124354,
		35.923138, 33.818611, 39.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714893, 33.366516, 40.179451>,  <35.302467, 33.506855, 39.593918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714893, 33.366516, 40.179451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963024, 33.643867, 40.032799>,  <36.111904, 33.810280, 39.944809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963024, 33.643867, 40.032799>,  <35.714893, 33.366516, 40.179451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963024, 33.643867, 40.032799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204741, 0.308077, 0.929069,
		0.757146, -0.651394, 0.049146,
		0.620331, 0.693379, -0.366626,
		36.149124, 33.851883, 39.922810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436447, 33.359913, 40.532417>,  <35.714893, 33.366516, 40.179451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436447, 33.359913, 40.532417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415455, 33.714375, 40.348255>,  <36.402859, 33.927052, 40.237759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415455, 33.714375, 40.348255>,  <36.436447, 33.359913, 40.532417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415455, 33.714375, 40.348255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290116, 0.454686, 0.842076,
		0.955551, -0.089381, -0.280949,
		-0.052478, 0.886155, -0.460407,
		36.399712, 33.980221, 40.210133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082176, 33.689178, 40.755539>,  <36.436447, 33.359913, 40.532417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082176, 33.689178, 40.755539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793430, 33.947109, 40.655056>,  <36.620182, 34.101868, 40.594769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793430, 33.947109, 40.655056>,  <37.082176, 33.689178, 40.755539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793430, 33.947109, 40.655056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240230, 0.573914, 0.782887,
		0.648998, 0.504793, -0.569197,
		-0.721866, 0.644830, -0.251203,
		36.576870, 34.140560, 40.579697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383739, 34.411358, 40.798962>,  <37.082176, 33.689178, 40.755539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383739, 34.411358, 40.798962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985775, 34.437637, 40.829540>,  <36.746998, 34.453403, 40.847889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985775, 34.437637, 40.829540>,  <37.383739, 34.411358, 40.798962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985775, 34.437637, 40.829540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100780, 0.662521, 0.742233,
		-0.001888, 0.746157, -0.665767,
		-0.994907, 0.065695, 0.076449,
		36.687302, 34.457344, 40.852474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317966, 35.103596, 40.928684>,  <37.383739, 34.411358, 40.798962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317966, 35.103596, 40.928684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956108, 34.968224, 41.032288>,  <36.738995, 34.887001, 41.094448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956108, 34.968224, 41.032288>,  <37.317966, 35.103596, 40.928684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956108, 34.968224, 41.032288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020802, 0.642098, 0.766341,
		-0.425665, 0.687876, -0.587908,
		-0.904642, -0.338434, 0.259010,
		36.684715, 34.866692, 41.109989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906303, 35.630608, 41.008022>,  <37.317966, 35.103596, 40.928684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906303, 35.630608, 41.008022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734768, 35.348934, 41.234375>,  <36.631847, 35.179928, 41.370186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734768, 35.348934, 41.234375>,  <36.906303, 35.630608, 41.008022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734768, 35.348934, 41.234375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043806, 0.641873, 0.765559,
		-0.902319, 0.303512, -0.306107,
		-0.428839, -0.704187, 0.565878,
		36.606117, 35.137676, 41.404137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269081, 36.008347, 41.198338>,  <36.906303, 35.630608, 41.008022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269081, 36.008347, 41.198338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341999, 35.703949, 41.447384>,  <36.385750, 35.521309, 41.596813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341999, 35.703949, 41.447384>,  <36.269081, 36.008347, 41.198338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341999, 35.703949, 41.447384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222321, 0.584928, 0.780021,
		-0.957779, -0.280618, -0.062554,
		0.182298, -0.760995, 0.622619,
		36.396690, 35.475651, 41.634171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703087, 35.991386, 41.655548>,  <36.269081, 36.008347, 41.198338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703087, 35.991386, 41.655548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993313, 35.795521, 41.848949>,  <36.167450, 35.678001, 41.964989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993313, 35.795521, 41.848949>,  <35.703087, 35.991386, 41.655548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993313, 35.795521, 41.848949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193890, 0.528677, 0.826382,
		-0.660270, -0.693343, 0.288649,
		0.725569, -0.489669, 0.483502,
		36.210983, 35.648621, 41.993999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519665, 35.998249, 42.406555>,  <35.703087, 35.991386, 41.655548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519665, 35.998249, 42.406555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897266, 35.869732, 42.436569>,  <36.123829, 35.792622, 42.454578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897266, 35.869732, 42.436569>,  <35.519665, 35.998249, 42.406555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897266, 35.869732, 42.436569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058345, 0.386408, 0.920481,
		-0.324736, -0.864559, 0.383516,
		0.944003, -0.321289, 0.075038,
		36.180466, 35.773346, 42.459080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616440, 35.697063, 43.080704>,  <35.519665, 35.998249, 42.406555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616440, 35.697063, 43.080704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987892, 35.787430, 42.962986>,  <36.210762, 35.841648, 42.892357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987892, 35.787430, 42.962986>,  <35.616440, 35.697063, 43.080704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987892, 35.787430, 42.962986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130311, 0.544077, 0.828854,
		0.347364, -0.808050, 0.475809,
		0.928632, 0.225911, -0.294290,
		36.266483, 35.855202, 42.874699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129349, 35.353214, 43.478046>,  <35.616440, 35.697063, 43.080704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129349, 35.353214, 43.478046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323471, 35.665924, 43.321430>,  <36.439945, 35.853550, 43.227459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323471, 35.665924, 43.321430>,  <36.129349, 35.353214, 43.478046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323471, 35.665924, 43.321430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278707, 0.286135, 0.916760,
		0.828732, -0.554039, -0.079021,
		0.485310, 0.781772, -0.391544,
		36.469063, 35.900455, 43.203968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736553, 35.442322, 43.784691>,  <36.129349, 35.353214, 43.478046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736553, 35.442322, 43.784691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630886, 35.805019, 43.653217>,  <36.567486, 36.022636, 43.574333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630886, 35.805019, 43.653217>,  <36.736553, 35.442322, 43.784691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630886, 35.805019, 43.653217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125661, 0.370240, 0.920398,
		0.956256, 0.201834, -0.211747,
		-0.264165, 0.906744, -0.328681,
		36.551636, 36.077042, 43.554611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109383, 35.900871, 44.300201>,  <36.736553, 35.442322, 43.784691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109383, 35.900871, 44.300201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828270, 36.124283, 44.123951>,  <36.659603, 36.258327, 44.018200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828270, 36.124283, 44.123951>,  <37.109383, 35.900871, 44.300201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828270, 36.124283, 44.123951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014568, 0.607947, 0.793844,
		0.711261, 0.564315, -0.419114,
		-0.702777, 0.558524, -0.440630,
		36.617435, 36.291840, 43.991760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342262, 36.553825, 44.460091>,  <37.109383, 35.900871, 44.300201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342262, 36.553825, 44.460091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950745, 36.589409, 44.386284>,  <36.715836, 36.610760, 44.341999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950745, 36.589409, 44.386284>,  <37.342262, 36.553825, 44.460091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950745, 36.589409, 44.386284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105360, 0.553858, 0.825918,
		0.175674, 0.827845, -0.532739,
		-0.978794, 0.088963, -0.184521,
		36.657104, 36.616096, 44.330929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160904, 37.213562, 44.692459>,  <37.342262, 36.553825, 44.460091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160904, 37.213562, 44.692459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801186, 37.038746, 44.686035>,  <36.585354, 36.933857, 44.682178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801186, 37.038746, 44.686035>,  <37.160904, 37.213562, 44.692459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801186, 37.038746, 44.686035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222094, 0.424752, 0.877644,
		-0.376741, 0.792833, -0.479043,
		-0.899300, -0.437037, -0.016062,
		36.531395, 36.907635, 44.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681686, 37.645763, 45.047012>,  <37.160904, 37.213562, 44.692459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681686, 37.645763, 45.047012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465355, 37.310837, 45.079006>,  <36.335556, 37.109879, 45.098202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465355, 37.310837, 45.079006>,  <36.681686, 37.645763, 45.047012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465355, 37.310837, 45.079006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224619, 0.235410, 0.945584,
		-0.810586, 0.493433, -0.315394,
		-0.540829, -0.837321, 0.079986,
		36.303104, 37.059639, 45.103001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054466, 37.829342, 45.233974>,  <36.681686, 37.645763, 45.047012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054466, 37.829342, 45.233974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083233, 37.454414, 45.370361>,  <36.100491, 37.229458, 45.452194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083233, 37.454414, 45.370361>,  <36.054466, 37.829342, 45.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083233, 37.454414, 45.370361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351128, 0.296180, 0.888249,
		-0.933562, -0.183602, -0.307820,
		0.071914, -0.937319, 0.340970,
		36.104809, 37.173218, 45.472652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375134, 37.711540, 45.572403>,  <36.054466, 37.829342, 45.233974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375134, 37.711540, 45.572403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624298, 37.430283, 45.709553>,  <35.773796, 37.261528, 45.791843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624298, 37.430283, 45.709553>,  <35.375134, 37.711540, 45.572403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624298, 37.430283, 45.709553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385982, 0.104980, 0.916513,
		-0.680440, -0.703251, -0.206009,
		0.622912, -0.703148, 0.342876,
		35.811172, 37.219337, 45.812416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983086, 37.249573, 46.048901>,  <35.375134, 37.711540, 45.572403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983086, 37.249573, 46.048901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370140, 37.277649, 46.145863>,  <35.602371, 37.294495, 46.204041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370140, 37.277649, 46.145863>,  <34.983086, 37.249573, 46.048901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370140, 37.277649, 46.145863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252332, 0.253582, 0.933823,
		0.004074, -0.964764, 0.263085,
		0.967632, 0.070189, 0.242408,
		35.660431, 37.298706, 46.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986805, 36.968750, 46.638897>,  <34.983086, 37.249573, 46.048901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986805, 36.968750, 46.638897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305576, 37.208210, 46.606590>,  <35.496838, 37.351887, 46.587208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305576, 37.208210, 46.606590>,  <34.986805, 36.968750, 46.638897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305576, 37.208210, 46.606590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203436, 0.391863, 0.897250,
		0.568789, -0.698613, 0.434073,
		0.796927, 0.598652, -0.080764,
		35.544655, 37.387806, 46.582359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234814, 36.962597, 47.301495>,  <34.986805, 36.968750, 46.638897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234814, 36.962597, 47.301495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370495, 37.298218, 47.131348>,  <35.451904, 37.499592, 47.029259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370495, 37.298218, 47.131348>,  <35.234814, 36.962597, 47.301495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370495, 37.298218, 47.131348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114279, 0.485577, 0.866692,
		0.933746, -0.245374, 0.260595,
		0.339203, 0.839051, -0.425364,
		35.472256, 37.549934, 47.003738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744690, 37.203159, 47.734631>,  <35.234814, 36.962597, 47.301495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744690, 37.203159, 47.734631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678989, 37.547867, 47.542641>,  <35.639568, 37.754692, 47.427448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678989, 37.547867, 47.542641>,  <35.744690, 37.203159, 47.734631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678989, 37.547867, 47.542641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181781, 0.451803, 0.873401,
		0.969524, 0.230706, 0.082445,
		-0.164250, 0.861771, -0.479972,
		35.629715, 37.806396, 47.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919495, 37.789993, 48.118420>,  <35.744690, 37.203159, 47.734631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919495, 37.789993, 48.118420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684135, 37.982510, 47.858528>,  <35.542919, 38.098019, 47.702595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684135, 37.982510, 47.858528>,  <35.919495, 37.789993, 48.118420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684135, 37.982510, 47.858528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044247, 0.783182, 0.620216,
		0.807358, 0.393684, -0.439529,
		-0.588400, 0.481288, -0.649728,
		35.507614, 38.126896, 47.663609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326645, 38.395370, 48.097248>,  <35.919495, 37.789993, 48.118420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326645, 38.395370, 48.097248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947769, 38.450699, 47.981522>,  <35.720444, 38.483898, 47.912086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947769, 38.450699, 47.981522>,  <36.326645, 38.395370, 48.097248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947769, 38.450699, 47.981522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065069, 0.800517, 0.595767,
		0.314007, 0.583129, -0.749240,
		-0.947188, 0.138323, -0.289312,
		35.663612, 38.492195, 47.894730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169113, 39.192997, 47.838921>,  <36.326645, 38.395370, 48.097248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169113, 39.192997, 47.838921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866470, 39.005478, 48.021248>,  <35.684883, 38.892967, 48.130646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866470, 39.005478, 48.021248>,  <36.169113, 39.192997, 47.838921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866470, 39.005478, 48.021248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007301, 0.691013, 0.722806,
		-0.653828, 0.550208, -0.519403,
		-0.756608, -0.468799, 0.455821,
		35.639488, 38.864838, 48.157993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602776, 39.658329, 47.960293>,  <36.169113, 39.192997, 47.838921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602776, 39.658329, 47.960293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526939, 39.381718, 48.239101>,  <35.481438, 39.215752, 48.406387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526939, 39.381718, 48.239101>,  <35.602776, 39.658329, 47.960293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526939, 39.381718, 48.239101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134835, 0.721510, 0.679149,
		-0.972561, 0.034776, -0.230032,
		-0.189588, -0.691530, 0.697024,
		35.470062, 39.174259, 48.448208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057781, 39.890587, 48.444435>,  <35.602776, 39.658329, 47.960293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057781, 39.890587, 48.444435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230686, 39.596821, 48.653732>,  <35.334427, 39.420559, 48.779312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230686, 39.596821, 48.653732>,  <35.057781, 39.890587, 48.444435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230686, 39.596821, 48.653732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055847, 0.557336, 0.828407,
		-0.900019, -0.387307, 0.199898,
		0.432258, -0.734418, 0.523243,
		35.360363, 39.376495, 48.810707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607582, 39.884228, 49.055103>,  <35.057781, 39.890587, 48.444435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607582, 39.884228, 49.055103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933941, 39.678223, 49.160225>,  <35.129757, 39.554619, 49.223297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933941, 39.678223, 49.160225>,  <34.607582, 39.884228, 49.055103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933941, 39.678223, 49.160225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013123, 0.470907, 0.882085,
		-0.578042, -0.716246, 0.390972,
		0.815901, -0.515013, 0.262805,
		35.178711, 39.523720, 49.239067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545963, 39.686485, 49.782890>,  <34.607582, 39.884228, 49.055103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545963, 39.686485, 49.782890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937145, 39.682785, 49.699444>,  <35.171856, 39.680565, 49.649376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937145, 39.682785, 49.699444>,  <34.545963, 39.686485, 49.782890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937145, 39.682785, 49.699444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179935, 0.544295, 0.819370,
		0.105965, -0.838843, 0.533960,
		0.977955, -0.009253, -0.208614,
		35.230530, 39.680008, 49.636860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813301, 39.377682, 50.342491>,  <34.545963, 39.686485, 49.782890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813301, 39.377682, 50.342491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089733, 39.593452, 50.150063>,  <35.255592, 39.722916, 50.034607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089733, 39.593452, 50.150063>,  <34.813301, 39.377682, 50.342491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089733, 39.593452, 50.150063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088947, 0.597049, 0.797259,
		0.717286, -0.593758, 0.364626,
		0.691078, 0.539430, -0.481068,
		35.297058, 39.755283, 50.005741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257553, 39.535057, 50.866165>,  <34.813301, 39.377682, 50.342491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257553, 39.535057, 50.866165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360386, 39.788845, 50.574589>,  <35.422085, 39.941116, 50.399643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360386, 39.788845, 50.574589>,  <35.257553, 39.535057, 50.866165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360386, 39.788845, 50.574589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149803, 0.719015, 0.678658,
		0.954708, -0.283669, 0.089802,
		0.257083, 0.634467, -0.728944,
		35.437511, 39.979187, 50.355907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775856, 39.738514, 51.110275>,  <35.257553, 39.535057, 50.866165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775856, 39.738514, 51.110275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648239, 40.017399, 50.853497>,  <35.571667, 40.184731, 50.699429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648239, 40.017399, 50.853497>,  <35.775856, 39.738514, 51.110275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648239, 40.017399, 50.853497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140822, 0.704704, 0.695386,
		0.937219, 0.131458, -0.323015,
		-0.319044, 0.697217, -0.641950,
		35.552525, 40.226562, 50.660912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302292, 40.221653, 51.244488>,  <35.775856, 39.738514, 51.110275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302292, 40.221653, 51.244488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050026, 40.452183, 51.036598>,  <35.898666, 40.590500, 50.911865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050026, 40.452183, 51.036598>,  <36.302292, 40.221653, 51.244488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050026, 40.452183, 51.036598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106006, 0.727392, 0.677985,
		0.768782, 0.372487, -0.519834,
		-0.630664, 0.576328, -0.519720,
		35.860828, 40.625080, 50.880684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690620, 40.864788, 51.182404>,  <36.302292, 40.221653, 51.244488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690620, 40.864788, 51.182404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291924, 40.890511, 51.162960>,  <36.052704, 40.905945, 51.151295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291924, 40.890511, 51.162960>,  <36.690620, 40.864788, 51.182404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291924, 40.890511, 51.162960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024539, 0.816443, 0.576904,
		0.076783, 0.573834, -0.815364,
		-0.996746, 0.064304, -0.048608,
		35.992901, 40.909801, 51.148376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517788, 41.613976, 51.220604>,  <36.690620, 40.864788, 51.182404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517788, 41.613976, 51.220604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180683, 41.421898, 51.317905>,  <35.978420, 41.306652, 51.376286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180683, 41.421898, 51.317905>,  <36.517788, 41.613976, 51.220604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180683, 41.421898, 51.317905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162306, 0.657551, 0.735720,
		-0.513236, 0.580555, -0.632096,
		-0.842761, -0.480190, 0.243251,
		35.927856, 41.277840, 51.390881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042328, 42.152260, 51.274345>,  <36.517788, 41.613976, 51.220604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042328, 42.152260, 51.274345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876621, 41.848354, 51.474800>,  <35.777199, 41.666012, 51.595074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876621, 41.848354, 51.474800>,  <36.042328, 42.152260, 51.274345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876621, 41.848354, 51.474800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260180, 0.626488, 0.734724,
		-0.872175, 0.173986, -0.457209,
		-0.414268, -0.759764, 0.501139,
		35.752342, 41.620426, 51.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616188, 42.395309, 50.729538>,  <36.042328, 42.152260, 51.274345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616188, 42.395309, 50.729538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956268, 42.599136, 50.782440>,  <36.160316, 42.721432, 50.814182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956268, 42.599136, 50.782440>,  <35.616188, 42.395309, 50.729538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956268, 42.599136, 50.782440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465469, -0.610234, -0.641056,
		-0.245953, 0.606591, -0.756012,
		0.850203, 0.509570, 0.132260,
		36.211330, 42.752007, 50.822117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687965, 42.591312, 50.014347>,  <35.616188, 42.395309, 50.729538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687965, 42.591312, 50.014347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036228, 42.605404, 50.210598>,  <36.245186, 42.613861, 50.328350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036228, 42.605404, 50.210598>,  <35.687965, 42.591312, 50.014347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036228, 42.605404, 50.210598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436839, -0.513893, -0.738300,
		0.226120, 0.857131, -0.462814,
		0.870656, 0.035231, 0.490629,
		36.297424, 42.615974, 50.357788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122097, 42.814449, 49.487049>,  <35.687965, 42.591312, 50.014347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122097, 42.814449, 49.487049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350468, 42.631100, 49.759499>,  <36.487492, 42.521088, 49.922970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350468, 42.631100, 49.759499>,  <36.122097, 42.814449, 49.487049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350468, 42.631100, 49.759499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550019, -0.402385, -0.731823,
		0.609526, 0.792450, 0.022384,
		0.570926, -0.458377, 0.681126,
		36.521744, 42.493587, 49.963837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778496, 43.046581, 49.306652>,  <36.122097, 42.814449, 49.487049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778496, 43.046581, 49.306652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828392, 42.709499, 49.516144>,  <36.858330, 42.507252, 49.641838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828392, 42.709499, 49.516144>,  <36.778496, 43.046581, 49.306652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828392, 42.709499, 49.516144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490184, -0.406590, -0.770976,
		0.862647, 0.352891, 0.362364,
		0.124737, -0.842705, 0.523726,
		36.865814, 42.456688, 49.673260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468048, 42.751713, 49.185787>,  <36.778496, 43.046581, 49.306652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468048, 42.751713, 49.185787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241035, 42.438656, 49.288059>,  <37.104828, 42.250820, 49.349422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241035, 42.438656, 49.288059>,  <37.468048, 42.751713, 49.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241035, 42.438656, 49.288059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413229, -0.539346, -0.733722,
		0.712145, -0.310757, 0.629508,
		-0.567532, -0.782647, 0.255679,
		37.070774, 42.203861, 49.364761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951115, 42.126938, 49.119179>,  <37.468048, 42.751713, 49.185787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951115, 42.126938, 49.119179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570179, 42.005516, 49.131241>,  <37.341618, 41.932663, 49.138477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570179, 42.005516, 49.131241>,  <37.951115, 42.126938, 49.119179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570179, 42.005516, 49.131241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209468, -0.722583, -0.658784,
		0.221767, -0.621068, 0.751727,
		-0.952335, -0.303559, 0.030151,
		37.284477, 41.914448, 49.140285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985611, 41.503376, 49.388767>,  <37.951115, 42.126938, 49.119179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985611, 41.503376, 49.388767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668694, 41.574371, 49.155266>,  <37.478542, 41.616970, 49.015163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668694, 41.574371, 49.155266>,  <37.985611, 41.503376, 49.388767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668694, 41.574371, 49.155266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312283, -0.703979, -0.637882,
		-0.524166, -0.687686, 0.502332,
		-0.792294, 0.177486, -0.583755,
		37.431007, 41.627617, 48.980141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959476, 40.828022, 49.060745>,  <37.985611, 41.503376, 49.388767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959476, 40.828022, 49.060745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711037, 41.048374, 48.837757>,  <37.561974, 41.180584, 48.703964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711037, 41.048374, 48.837757>,  <37.959476, 40.828022, 49.060745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711037, 41.048374, 48.837757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088032, -0.657761, -0.748064,
		-0.778776, -0.513694, 0.360037,
		-0.621094, 0.550879, -0.557470,
		37.524708, 41.213638, 48.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445595, 40.354771, 48.742542>,  <37.959476, 40.828022, 49.060745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445595, 40.354771, 48.742542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460079, 40.688976, 48.523232>,  <37.468769, 40.889500, 48.391644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460079, 40.688976, 48.523232>,  <37.445595, 40.354771, 48.742542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460079, 40.688976, 48.523232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050789, -0.549468, -0.833970,
		-0.998053, 0.002351, -0.062331,
		0.036210, 0.835511, -0.548279,
		37.470943, 40.939629, 48.358749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940166, 40.218468, 48.222618>,  <37.445595, 40.354771, 48.742542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940166, 40.218468, 48.222618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186085, 40.516193, 48.118301>,  <37.333637, 40.694828, 48.055710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186085, 40.516193, 48.118301>,  <36.940166, 40.218468, 48.222618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186085, 40.516193, 48.118301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146013, -0.432374, -0.889794,
		-0.775050, 0.508965, -0.374503,
		0.614799, 0.744317, -0.260796,
		37.370525, 40.739487, 48.040062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701115, 40.365429, 47.651680>,  <36.940166, 40.218468, 48.222618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701115, 40.365429, 47.651680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078224, 40.498787, 47.653481>,  <37.304489, 40.578804, 47.654560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078224, 40.498787, 47.653481>,  <36.701115, 40.365429, 47.651680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078224, 40.498787, 47.653481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099161, -0.267468, -0.958451,
		-0.318343, 0.904050, -0.285222,
		0.942775, 0.333399, 0.004500,
		37.361057, 40.598808, 47.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799099, 40.750160, 47.032322>,  <36.701115, 40.365429, 47.651680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799099, 40.750160, 47.032322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183525, 40.694973, 47.128086>,  <37.414181, 40.661861, 47.185543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183525, 40.694973, 47.128086>,  <36.799099, 40.750160, 47.032322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183525, 40.694973, 47.128086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214259, -0.175037, -0.960966,
		0.174488, 0.974847, -0.138661,
		0.961066, -0.137968, 0.239411,
		37.471844, 40.653584, 47.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108845, 41.046005, 46.488693>,  <36.799099, 40.750160, 47.032322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108845, 41.046005, 46.488693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348679, 40.785988, 46.675430>,  <37.492577, 40.629978, 46.787472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348679, 40.785988, 46.675430>,  <37.108845, 41.046005, 46.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348679, 40.785988, 46.675430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210404, -0.434773, -0.875616,
		0.772160, 0.623230, -0.123911,
		0.599583, -0.650044, 0.466844,
		37.528553, 40.590973, 46.815483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757172, 41.040184, 46.169411>,  <37.108845, 41.046005, 46.488693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757172, 41.040184, 46.169411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718513, 40.699158, 46.374851>,  <37.695320, 40.494541, 46.498116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718513, 40.699158, 46.374851>,  <37.757172, 41.040184, 46.169411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718513, 40.699158, 46.374851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320683, -0.515174, -0.794832,
		0.942244, 0.087891, 0.323191,
		-0.096641, -0.852567, 0.513605,
		37.689522, 40.443386, 46.528934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124001, 40.526848, 45.787704>,  <37.757172, 41.040184, 46.169411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124001, 40.526848, 45.787704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941429, 40.283569, 46.047482>,  <37.831886, 40.137604, 46.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941429, 40.283569, 46.047482>,  <38.124001, 40.526848, 45.787704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941429, 40.283569, 46.047482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236310, -0.786555, -0.570517,
		0.857806, -0.106930, 0.502728,
		-0.456429, -0.608192, 0.649442,
		37.804501, 40.101112, 46.242313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617218, 39.975586, 45.921337>,  <38.124001, 40.526848, 45.787704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617218, 39.975586, 45.921337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247543, 39.843414, 45.997967>,  <38.025738, 39.764111, 46.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247543, 39.843414, 45.997967>,  <38.617218, 39.975586, 45.921337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247543, 39.843414, 45.997967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163277, -0.795212, -0.583933,
		0.345290, -0.508382, 0.788874,
		-0.924184, -0.330432, 0.191572,
		37.970287, 39.744286, 46.055439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654823, 39.221695, 45.922390>,  <38.617218, 39.975586, 45.921337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654823, 39.221695, 45.922390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273273, 39.313297, 45.844749>,  <38.044342, 39.368259, 45.798164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273273, 39.313297, 45.844749>,  <38.654823, 39.221695, 45.922390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273273, 39.313297, 45.844749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021071, -0.696060, -0.717675,
		-0.299462, -0.680482, 0.668780,
		-0.953876, 0.229008, -0.194105,
		37.987110, 39.382000, 45.786518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366829, 38.624275, 45.919231>,  <38.654823, 39.221695, 45.922390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366829, 38.624275, 45.919231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147179, 38.875202, 45.698353>,  <38.015388, 39.025761, 45.565826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147179, 38.875202, 45.698353>,  <38.366829, 38.624275, 45.919231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147179, 38.875202, 45.698353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005953, -0.657781, -0.753186,
		-0.835716, -0.416884, 0.357473,
		-0.549129, 0.627322, -0.552200,
		37.982441, 39.063400, 45.532692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077526, 38.185131, 45.597370>,  <38.366829, 38.624275, 45.919231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077526, 38.185131, 45.597370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997066, 38.513847, 45.384129>,  <37.948792, 38.711075, 45.256184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997066, 38.513847, 45.384129>,  <38.077526, 38.185131, 45.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997066, 38.513847, 45.384129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105699, -0.559263, -0.822224,
		-0.973841, -0.109044, 0.199359,
		-0.201153, 0.821787, -0.533107,
		37.936722, 38.760384, 45.224197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431881, 38.099590, 45.235645>,  <38.077526, 38.185131, 45.597370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431881, 38.099590, 45.235645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619110, 38.371906, 45.010281>,  <37.731445, 38.535297, 44.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619110, 38.371906, 45.010281>,  <37.431881, 38.099590, 45.235645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619110, 38.371906, 45.010281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048982, -0.616596, -0.785754,
		-0.882333, 0.395385, -0.255263,
		0.468070, 0.680794, -0.563410,
		37.759533, 38.576145, 44.841259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105392, 38.027359, 44.562126>,  <37.431881, 38.099590, 45.235645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105392, 38.027359, 44.562126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442863, 38.238182, 44.521297>,  <37.645348, 38.364677, 44.496799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442863, 38.238182, 44.521297>,  <37.105392, 38.027359, 44.562126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442863, 38.238182, 44.521297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064720, -0.288595, -0.955261,
		-0.532937, 0.799325, -0.277592,
		0.843676, 0.527060, -0.102071,
		37.695965, 38.396301, 44.490677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025982, 38.267540, 43.904415>,  <37.105392, 38.027359, 44.562126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025982, 38.267540, 43.904415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414509, 38.278378, 43.998917>,  <37.647625, 38.284878, 44.055618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414509, 38.278378, 43.998917>,  <37.025982, 38.267540, 43.904415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414509, 38.278378, 43.998917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219621, -0.483182, -0.847527,
		0.091192, 0.875101, -0.475271,
		0.971314, 0.027092, 0.236253,
		37.705902, 38.286507, 44.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314178, 38.554546, 43.313095>,  <37.025982, 38.267540, 43.904415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314178, 38.554546, 43.313095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589996, 38.345448, 43.513599>,  <37.755486, 38.219986, 43.633904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589996, 38.345448, 43.513599>,  <37.314178, 38.554546, 43.313095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589996, 38.345448, 43.513599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184533, -0.542462, -0.819563,
		0.700342, 0.657622, -0.277585,
		0.689542, -0.522751, 0.501262,
		37.796860, 38.188622, 43.663979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817104, 38.450493, 42.832767>,  <37.314178, 38.554546, 43.313095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817104, 38.450493, 42.832767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899803, 38.164722, 43.100155>,  <37.949421, 37.993259, 43.260586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899803, 38.164722, 43.100155>,  <37.817104, 38.450493, 42.832767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899803, 38.164722, 43.100155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256613, -0.619716, -0.741689,
		0.944144, 0.324877, 0.055210,
		0.206743, -0.714428, 0.668468,
		37.961826, 37.950394, 43.300694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572659, 38.242786, 42.786293>,  <37.817104, 38.450493, 42.832767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572659, 38.242786, 42.786293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391666, 37.931286, 42.960098>,  <38.283070, 37.744385, 43.064381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391666, 37.931286, 42.960098>,  <38.572659, 38.242786, 42.786293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391666, 37.931286, 42.960098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698033, -0.612527, -0.370892,
		0.554985, 0.135484, 0.820753,
		-0.452483, -0.778752, 0.434516,
		38.255920, 37.697659, 43.090454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173603, 37.946377, 43.126896>,  <38.572659, 38.242786, 42.786293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173603, 37.946377, 43.126896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867760, 37.689072, 43.110966>,  <38.684254, 37.534687, 43.101406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867760, 37.689072, 43.110966>,  <39.173603, 37.946377, 43.126896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867760, 37.689072, 43.110966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593047, -0.678026, -0.434254,
		0.252335, -0.355654, 0.899909,
		-0.764606, -0.643266, -0.039830,
		38.638378, 37.496094, 43.099018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556866, 37.408993, 43.218136>,  <39.173603, 37.946377, 43.126896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556866, 37.408993, 43.218136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214096, 37.304615, 43.040337>,  <39.008434, 37.241989, 42.933655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214096, 37.304615, 43.040337>,  <39.556866, 37.408993, 43.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214096, 37.304615, 43.040337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496586, -0.649050, -0.576313,
		-0.138116, -0.714591, 0.685772,
		-0.856929, -0.260946, -0.444500,
		38.957016, 37.226330, 42.906986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545547, 36.745747, 43.203091>,  <39.556866, 37.408993, 43.218136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545547, 36.745747, 43.203091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265648, 36.794361, 42.921501>,  <39.097710, 36.823528, 42.752548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265648, 36.794361, 42.921501>,  <39.545547, 36.745747, 43.203091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265648, 36.794361, 42.921501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443460, -0.698678, -0.561420,
		-0.560085, -0.705038, 0.435002,
		-0.699748, 0.121537, -0.703975,
		39.055725, 36.830822, 42.710308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419666, 36.039700, 42.920856>,  <39.545547, 36.745747, 43.203091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419666, 36.039700, 42.920856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314297, 36.298340, 42.634495>,  <39.251076, 36.453526, 42.462677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314297, 36.298340, 42.634495>,  <39.419666, 36.039700, 42.920856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314297, 36.298340, 42.634495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325058, -0.639217, -0.696949,
		-0.908265, -0.416303, -0.041798,
		-0.263424, 0.646601, -0.715901,
		39.235268, 36.492321, 42.419724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056458, 35.651222, 42.337521>,  <39.419666, 36.039700, 42.920856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056458, 35.651222, 42.337521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172947, 35.985836, 42.151878>,  <39.242840, 36.186604, 42.040493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172947, 35.985836, 42.151878>,  <39.056458, 35.651222, 42.337521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172947, 35.985836, 42.151878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360375, -0.545324, -0.756803,
		-0.886182, 0.053149, -0.460279,
		0.291225, 0.836538, -0.464103,
		39.260315, 36.236797, 42.012646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719734, 35.765511, 41.679924>,  <39.056458, 35.651222, 42.337521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719734, 35.765511, 41.679924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082966, 35.932751, 41.670238>,  <39.300903, 36.033096, 41.664425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082966, 35.932751, 41.670238>,  <38.719734, 35.765511, 41.679924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082966, 35.932751, 41.670238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202047, -0.488009, -0.849132,
		-0.366843, 0.766183, -0.527626,
		0.908077, 0.418103, -0.024218,
		39.355389, 36.058182, 41.662971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780125, 35.835663, 40.973774>,  <38.719734, 35.765511, 41.679924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780125, 35.835663, 40.973774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142960, 35.884956, 41.134773>,  <39.360661, 35.914532, 41.231373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142960, 35.884956, 41.134773>,  <38.780125, 35.835663, 40.973774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142960, 35.884956, 41.134773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417379, -0.387479, -0.821983,
		0.054668, 0.913605, -0.402910,
		0.907087, 0.123230, 0.402502,
		39.415085, 35.921925, 41.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167576, 36.063629, 40.459400>,  <38.780125, 35.835663, 40.973774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167576, 36.063629, 40.459400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464024, 35.946033, 40.700832>,  <39.641891, 35.875477, 40.845692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464024, 35.946033, 40.700832>,  <39.167576, 36.063629, 40.459400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464024, 35.946033, 40.700832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596383, -0.124606, -0.792970,
		0.308338, 0.947650, 0.082984,
		0.741118, -0.293993, 0.603583,
		39.686359, 35.857834, 40.881908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748451, 36.273426, 40.219978>,  <39.167576, 36.063629, 40.459400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748451, 36.273426, 40.219978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928780, 36.013325, 40.464581>,  <40.036976, 35.857265, 40.611340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928780, 36.013325, 40.464581>,  <39.748451, 36.273426, 40.219978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928780, 36.013325, 40.464581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748389, -0.098030, -0.655976,
		0.486496, 0.753367, 0.442448,
		0.450817, -0.650253, 0.611502,
		40.064026, 35.818249, 40.648033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442928, 36.459396, 40.129292>,  <39.748451, 36.273426, 40.219978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442928, 36.459396, 40.129292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434570, 36.086014, 40.272518>,  <40.429558, 35.861984, 40.358456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434570, 36.086014, 40.272518>,  <40.442928, 36.459396, 40.129292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434570, 36.086014, 40.272518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849143, -0.205620, -0.486494,
		0.527749, 0.293890, 0.796938,
		-0.020891, -0.933461, 0.358070,
		40.428303, 35.805977, 40.379940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134094, 36.349434, 40.228340>,  <40.442928, 36.459396, 40.129292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134094, 36.349434, 40.228340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957371, 35.990700, 40.219406>,  <40.851337, 35.775459, 40.214046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957371, 35.990700, 40.219406>,  <41.134094, 36.349434, 40.228340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957371, 35.990700, 40.219406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807923, -0.386940, -0.444453,
		0.389959, -0.214405, 0.895524,
		-0.441807, -0.896832, -0.022332,
		40.824829, 35.721649, 40.212708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714882, 35.962402, 40.304924>,  <41.134094, 36.349434, 40.228340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714882, 35.962402, 40.304924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436977, 35.710114, 40.166653>,  <41.270233, 35.558739, 40.083691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436977, 35.710114, 40.166653>,  <41.714882, 35.962402, 40.304924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436977, 35.710114, 40.166653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712285, -0.536689, -0.452345,
		0.099786, -0.560490, 0.822127,
		-0.694761, -0.630727, -0.345674,
		41.228550, 35.520897, 40.062950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017250, 35.216320, 40.418343>,  <41.714882, 35.962402, 40.304924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017250, 35.216320, 40.418343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747028, 35.165546, 40.127823>,  <41.584896, 35.135082, 39.953510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747028, 35.165546, 40.127823>,  <42.017250, 35.216320, 40.418343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747028, 35.165546, 40.127823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608354, -0.652516, -0.451806,
		-0.416573, -0.747068, 0.518031,
		-0.675553, -0.126935, -0.726303,
		41.544361, 35.127464, 39.909931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087761, 34.543365, 40.294975>,  <42.017250, 35.216320, 40.418343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087761, 34.543365, 40.294975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889168, 34.673042, 39.972881>,  <41.770012, 34.750847, 39.779625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889168, 34.673042, 39.972881>,  <42.087761, 34.543365, 40.294975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889168, 34.673042, 39.972881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592443, -0.551446, -0.587298,
		-0.634438, -0.768641, 0.081723,
		-0.496487, 0.324188, -0.805235,
		41.740223, 34.770298, 39.731312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854935, 33.923996, 39.866596>,  <42.087761, 34.543365, 40.294975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854935, 33.923996, 39.866596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876614, 34.250134, 39.636021>,  <41.889622, 34.445816, 39.497677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876614, 34.250134, 39.636021>,  <41.854935, 33.923996, 39.866596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876614, 34.250134, 39.636021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502187, -0.521223, -0.690026,
		-0.863059, -0.252081, -0.437704,
		0.054199, 0.815342, -0.576437,
		41.892872, 34.494736, 39.463089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692303, 33.659912, 39.224380>,  <41.854935, 33.923996, 39.866596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692303, 33.659912, 39.224380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879105, 34.013054, 39.204453>,  <41.991184, 34.224937, 39.192497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879105, 34.013054, 39.204453>,  <41.692303, 33.659912, 39.224380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879105, 34.013054, 39.204453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599807, -0.357670, -0.715753,
		-0.649722, 0.304379, -0.696574,
		0.467004, 0.882851, -0.049818,
		42.019207, 34.277908, 39.189507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721535, 34.018803, 38.633205>,  <41.692303, 33.659912, 39.224380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721535, 34.018803, 38.633205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063923, 34.119122, 38.814053>,  <42.269356, 34.179314, 38.922562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063923, 34.119122, 38.814053>,  <41.721535, 34.018803, 38.633205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063923, 34.119122, 38.814053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509271, -0.258161, -0.820972,
		-0.089178, 0.932981, -0.348702,
		0.855973, 0.250797, 0.452118,
		42.320713, 34.194359, 38.949688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062996, 34.506523, 38.171909>,  <41.721535, 34.018803, 38.633205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062996, 34.506523, 38.171909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337208, 34.369709, 38.428989>,  <42.501736, 34.287621, 38.583237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337208, 34.369709, 38.428989>,  <42.062996, 34.506523, 38.171909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337208, 34.369709, 38.428989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683322, -0.002351, -0.730113,
		0.251236, 0.939684, 0.232109,
		0.685530, -0.342036, 0.642698,
		42.542866, 34.267097, 38.621799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185078, 35.032696, 37.776077>,  <42.062996, 34.506523, 38.171909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185078, 35.032696, 37.776077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501007, 35.249001, 37.660309>,  <42.690563, 35.378784, 37.590847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501007, 35.249001, 37.660309>,  <42.185078, 35.032696, 37.776077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501007, 35.249001, 37.660309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230488, 0.698973, 0.676988,
		0.568382, -0.467992, 0.676702,
		0.789821, 0.540759, -0.289417,
		42.737953, 35.411228, 37.573483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634731, 35.128750, 38.319782>,  <42.185078, 35.032696, 37.776077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634731, 35.128750, 38.319782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680824, 35.444340, 38.078373>,  <42.708481, 35.633694, 37.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680824, 35.444340, 38.078373>,  <42.634731, 35.128750, 38.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680824, 35.444340, 38.078373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095298, 0.613551, 0.783883,
		0.988756, -0.032818, 0.145891,
		0.115237, 0.788972, -0.603525,
		42.715397, 35.681030, 37.897316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325489, 35.578674, 38.427616>,  <42.634731, 35.128750, 38.319782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325489, 35.578674, 38.427616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985779, 35.756470, 38.313667>,  <42.781952, 35.863148, 38.245300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985779, 35.756470, 38.313667>,  <43.325489, 35.578674, 38.427616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985779, 35.756470, 38.313667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017169, 0.516046, 0.856389,
		0.527663, 0.732205, -0.430636,
		-0.849280, 0.444491, -0.284870,
		42.730995, 35.889816, 38.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269699, 36.291458, 38.338730>,  <43.325489, 35.578674, 38.427616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269699, 36.291458, 38.338730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894688, 36.197460, 38.441345>,  <42.669682, 36.141060, 38.502914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894688, 36.197460, 38.441345>,  <43.269699, 36.291458, 38.338730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894688, 36.197460, 38.441345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007970, 0.751699, 0.659458,
		-0.347810, 0.616217, -0.706614,
		-0.937531, -0.234998, 0.256538,
		42.613430, 36.126961, 38.518307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599293, 36.765102, 37.988235>,  <43.269699, 36.291458, 38.338730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599293, 36.765102, 37.988235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819454, 36.682289, 37.664707>,  <43.951553, 36.632603, 37.470589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819454, 36.682289, 37.664707>,  <43.599293, 36.765102, 37.988235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819454, 36.682289, 37.664707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453119, 0.739604, -0.497663,
		0.701238, 0.640410, 0.313274,
		0.550407, -0.207030, -0.808821,
		43.984577, 36.620182, 37.422062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040173, 37.333885, 37.891575>,  <43.599293, 36.765102, 37.988235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040173, 37.333885, 37.891575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966854, 37.137409, 37.550957>,  <43.922863, 37.019524, 37.346584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966854, 37.137409, 37.550957>,  <44.040173, 37.333885, 37.891575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966854, 37.137409, 37.550957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449209, 0.812348, -0.371889,
		0.874422, 0.314357, -0.369549,
		-0.183297, -0.491192, -0.851547,
		43.911865, 36.990051, 37.295494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245453, 37.758072, 37.418476>,  <44.040173, 37.333885, 37.891575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245453, 37.758072, 37.418476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004436, 37.526031, 37.199230>,  <43.859825, 37.386806, 37.067684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004436, 37.526031, 37.199230>,  <44.245453, 37.758072, 37.418476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004436, 37.526031, 37.199230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221547, 0.781369, -0.583421,
		0.766721, -0.230103, -0.599326,
		-0.602542, -0.580100, -0.548113,
		43.823673, 37.352001, 37.034798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372601, 37.996326, 36.718979>,  <44.245453, 37.758072, 37.418476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372601, 37.996326, 36.718979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030285, 37.789730, 36.707272>,  <43.824894, 37.665771, 36.700249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030285, 37.789730, 36.707272>,  <44.372601, 37.996326, 36.718979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030285, 37.789730, 36.707272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363078, 0.639975, -0.677205,
		0.368499, -0.568921, -0.735212,
		-0.855794, -0.516489, -0.029267,
		43.773548, 37.634785, 36.698490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323616, 38.103035, 36.036495>,  <44.372601, 37.996326, 36.718979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323616, 38.103035, 36.036495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979031, 37.988117, 36.203991>,  <43.772278, 37.919167, 36.304489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979031, 37.988117, 36.203991>,  <44.323616, 38.103035, 36.036495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979031, 37.988117, 36.203991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488243, 0.695314, -0.527405,
		-0.139638, -0.658788, -0.739256,
		-0.861463, -0.287291, 0.418741,
		43.720592, 37.901928, 36.329613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855587, 37.893272, 35.488937>,  <44.323616, 38.103035, 36.036495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855587, 37.893272, 35.488937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613235, 37.980598, 35.794941>,  <43.467823, 38.032993, 35.978542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613235, 37.980598, 35.794941>,  <43.855587, 37.893272, 35.488937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613235, 37.980598, 35.794941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632039, 0.451904, -0.629531,
		-0.483150, -0.864940, -0.135814,
		-0.605881, 0.218318, 0.765013,
		43.431473, 38.046093, 36.024445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147270, 37.523163, 35.357616>,  <43.855587, 37.893272, 35.488937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147270, 37.523163, 35.357616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084904, 37.835651, 35.599403>,  <43.047485, 38.023144, 35.744476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084904, 37.835651, 35.599403>,  <43.147270, 37.523163, 35.357616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084904, 37.835651, 35.599403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715027, 0.332938, -0.614727,
		-0.681489, -0.528055, 0.506686,
		-0.155915, 0.781224, 0.604467,
		43.038128, 38.070019, 35.780743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568199, 37.756157, 35.116833>,  <43.147270, 37.523163, 35.357616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568199, 37.756157, 35.116833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677330, 38.056644, 35.357246>,  <42.742809, 38.236935, 35.501495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677330, 38.056644, 35.357246>,  <42.568199, 37.756157, 35.116833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677330, 38.056644, 35.357246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557509, 0.632595, -0.537594,
		-0.784060, -0.188414, 0.591396,
		0.272824, 0.751215, 0.601035,
		42.759178, 38.282009, 35.537556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915493, 38.117428, 35.222095>,  <42.568199, 37.756157, 35.116833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915493, 38.117428, 35.222095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207317, 38.374050, 35.316872>,  <42.382412, 38.528023, 35.373737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207317, 38.374050, 35.316872>,  <41.915493, 38.117428, 35.222095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207317, 38.374050, 35.316872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619060, 0.766739, -0.169931,
		-0.290694, -0.022707, 0.956546,
		0.729563, 0.641557, 0.236944,
		42.426186, 38.566517, 35.387955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617958, 38.592789, 35.700989>,  <41.915493, 38.117428, 35.222095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617958, 38.592789, 35.700989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921204, 38.766022, 35.505974>,  <42.103153, 38.869961, 35.388966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921204, 38.766022, 35.505974>,  <41.617958, 38.592789, 35.700989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921204, 38.766022, 35.505974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592217, 0.770233, -0.236687,
		0.273012, 0.468165, 0.840408,
		0.758119, 0.433085, -0.487538,
		42.148640, 38.895947, 35.359711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540806, 39.286652, 35.724346>,  <41.617958, 38.592789, 35.700989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540806, 39.286652, 35.724346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809547, 39.270699, 35.428501>,  <41.970791, 39.261127, 35.250996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809547, 39.270699, 35.428501>,  <41.540806, 39.286652, 35.724346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809547, 39.270699, 35.428501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468337, 0.750725, -0.465911,
		0.573822, 0.659411, 0.485702,
		0.671855, -0.039878, -0.739609,
		42.011105, 39.258736, 35.206619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615833, 39.986767, 35.568352>,  <41.540806, 39.286652, 35.724346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615833, 39.986767, 35.568352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779221, 39.809650, 35.249081>,  <41.877254, 39.703381, 35.057518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779221, 39.809650, 35.249081>,  <41.615833, 39.986767, 35.568352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779221, 39.809650, 35.249081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226767, 0.797812, -0.558635,
		0.884154, 0.409187, 0.225474,
		0.408471, -0.442789, -0.798179,
		41.901760, 39.676815, 35.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985882, 40.515682, 35.212662>,  <41.615833, 39.986767, 35.568352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985882, 40.515682, 35.212662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928471, 40.232281, 34.936279>,  <41.894024, 40.062241, 34.770451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928471, 40.232281, 34.936279>,  <41.985882, 40.515682, 35.212662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928471, 40.232281, 34.936279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105674, 0.705167, -0.701122,
		0.983988, -0.027615, -0.176083,
		-0.143529, -0.708503, -0.690958,
		41.885410, 40.019730, 34.728992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283455, 40.840752, 34.458927>,  <41.985882, 40.515682, 35.212662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283455, 40.840752, 34.458927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040020, 40.533997, 34.377441>,  <41.893959, 40.349945, 34.328548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040020, 40.533997, 34.377441>,  <42.283455, 40.840752, 34.458927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040020, 40.533997, 34.377441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401826, 0.519248, -0.754266,
		0.684217, -0.377180, -0.624165,
		-0.608590, -0.766887, -0.203717,
		41.857441, 40.303932, 34.316326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236736, 40.848881, 33.762280>,  <42.283455, 40.840752, 34.458927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236736, 40.848881, 33.762280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933617, 40.600174, 33.841423>,  <41.751747, 40.450951, 33.888908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933617, 40.600174, 33.841423>,  <42.236736, 40.848881, 33.762280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933617, 40.600174, 33.841423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450381, 0.279024, -0.848117,
		0.472128, -0.731810, -0.491477,
		-0.757794, -0.621771, 0.197859,
		41.706280, 40.413643, 33.900780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072025, 40.532944, 33.172371>,  <42.236736, 40.848881, 33.762280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072025, 40.532944, 33.172371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744038, 40.465115, 33.391056>,  <41.547245, 40.424416, 33.522266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744038, 40.465115, 33.391056>,  <42.072025, 40.532944, 33.172371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744038, 40.465115, 33.391056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571089, 0.307085, -0.761286,
		-0.038795, -0.936453, -0.348640,
		-0.819971, -0.169570, 0.546712,
		41.498047, 40.414242, 33.555069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588287, 39.930473, 32.793552>,  <42.072025, 40.532944, 33.172371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588287, 39.930473, 32.793552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385952, 40.176830, 33.035149>,  <41.264549, 40.324646, 33.180107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385952, 40.176830, 33.035149>,  <41.588287, 39.930473, 32.793552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385952, 40.176830, 33.035149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549549, 0.309622, -0.775971,
		-0.664923, -0.724438, 0.181844,
		-0.505840, 0.615893, 0.603989,
		41.234200, 40.361599, 33.216347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891338, 39.854065, 32.546928>,  <41.588287, 39.930473, 32.793552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891338, 39.854065, 32.546928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899231, 40.193096, 32.759052>,  <40.903965, 40.396515, 32.886326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899231, 40.193096, 32.759052>,  <40.891338, 39.854065, 32.546928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899231, 40.193096, 32.759052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557371, 0.449668, -0.697951,
		-0.830029, -0.281809, 0.481285,
		0.019730, 0.847574, 0.530309,
		40.905151, 40.447369, 32.918144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216496, 40.006413, 32.710697>,  <40.891338, 39.854065, 32.546928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216496, 40.006413, 32.710697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421616, 40.347778, 32.748051>,  <40.544685, 40.552597, 32.770462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421616, 40.347778, 32.748051>,  <40.216496, 40.006413, 32.710697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421616, 40.347778, 32.748051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630865, 0.448362, -0.633230,
		-0.582278, 0.265807, 0.768309,
		0.512798, 0.853415, 0.093384,
		40.575455, 40.603802, 32.776066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686077, 40.470459, 32.696808>,  <40.216496, 40.006413, 32.710697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686077, 40.470459, 32.696808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015270, 40.661648, 32.574013>,  <40.212788, 40.776360, 32.500336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015270, 40.661648, 32.574013>,  <39.686077, 40.470459, 32.696808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015270, 40.661648, 32.574013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523110, 0.426966, -0.737602,
		-0.221482, 0.767621, 0.601418,
		0.822983, 0.477973, -0.306985,
		40.262165, 40.805038, 32.481918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492863, 41.171902, 32.626434>,  <39.686077, 40.470459, 32.696808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492863, 41.171902, 32.626434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826965, 41.187153, 32.407021>,  <40.027428, 41.196304, 32.275372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826965, 41.187153, 32.407021>,  <39.492863, 41.171902, 32.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826965, 41.187153, 32.407021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427275, 0.672909, -0.603845,
		0.346090, 0.738742, 0.578345,
		0.835259, 0.038128, -0.548533,
		40.077541, 41.198589, 32.242462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699104, 41.861195, 32.595478>,  <39.492863, 41.171902, 32.626434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699104, 41.861195, 32.595478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832127, 41.654091, 32.280178>,  <39.911942, 41.529831, 32.091000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832127, 41.654091, 32.280178>,  <39.699104, 41.861195, 32.595478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832127, 41.654091, 32.280178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510536, 0.603919, -0.612075,
		0.792942, 0.605979, -0.063494,
		0.332559, -0.517756, -0.788247,
		39.931896, 41.498764, 32.043705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904728, 42.317665, 32.004704>,  <39.699104, 41.861195, 32.595478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904728, 42.317665, 32.004704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824398, 41.958599, 31.847799>,  <39.776199, 41.743160, 31.753656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824398, 41.958599, 31.847799>,  <39.904728, 42.317665, 32.004704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824398, 41.958599, 31.847799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480710, 0.439192, -0.758965,
		0.853574, 0.036147, -0.519716,
		-0.200820, -0.897665, -0.392259,
		39.764153, 41.689301, 31.730122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084919, 42.273952, 31.245714>,  <39.904728, 42.317665, 32.004704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084919, 42.273952, 31.245714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795002, 42.007061, 31.314394>,  <39.621052, 41.846928, 31.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795002, 42.007061, 31.314394>,  <40.084919, 42.273952, 31.245714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795002, 42.007061, 31.314394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428351, 0.241218, -0.870821,
		0.539620, -0.704713, -0.460641,
		-0.724793, -0.667229, 0.171698,
		39.577564, 41.806892, 31.365904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074585, 41.865711, 30.602264>,  <40.084919, 42.273952, 31.245714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074585, 41.865711, 30.602264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733097, 41.859680, 30.810471>,  <39.528206, 41.856060, 30.935394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733097, 41.859680, 30.810471>,  <40.074585, 41.865711, 30.602264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733097, 41.859680, 30.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505146, 0.266704, -0.820790,
		-0.126449, -0.963661, -0.235306,
		-0.853720, -0.015076, 0.520514,
		39.476982, 41.855156, 30.966625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753658, 42.203541, 30.582655>,  <40.074585, 41.865711, 30.602264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753658, 42.203541, 30.582655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784023, 42.403053, 30.928013>,  <40.802242, 42.522762, 31.135227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784023, 42.403053, 30.928013>,  <40.753658, 42.203541, 30.582655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784023, 42.403053, 30.928013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840217, 0.498252, -0.213964,
		-0.536910, -0.709197, 0.456911,
		0.075914, 0.498784, 0.863395,
		40.806797, 42.552689, 31.187031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347961, 42.580704, 30.404352>,  <40.753658, 42.203541, 30.582655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347961, 42.580704, 30.404352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200653, 42.212318, 30.353437>,  <41.112267, 41.991287, 30.322889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200653, 42.212318, 30.353437>,  <41.347961, 42.580704, 30.404352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200653, 42.212318, 30.353437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333648, -0.003131, -0.942692,
		0.867786, -0.389637, 0.308431,
		-0.368274, -0.920963, -0.127285,
		41.090172, 41.936031, 30.315252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914566, 42.212769, 29.989838>,  <41.347961, 42.580704, 30.404352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914566, 42.212769, 29.989838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558681, 42.033325, 29.956005>,  <41.345150, 41.925659, 29.935705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558681, 42.033325, 29.956005>,  <41.914566, 42.212769, 29.989838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558681, 42.033325, 29.956005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144370, -0.100729, -0.984384,
		0.433087, -0.888032, 0.154387,
		-0.889715, -0.448612, -0.084581,
		41.291767, 41.898743, 29.930632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995735, 41.463840, 29.660486>,  <41.914566, 42.212769, 29.989838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995735, 41.463840, 29.660486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658974, 41.670628, 29.598589>,  <41.456917, 41.794701, 29.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658974, 41.670628, 29.598589>,  <41.995735, 41.463840, 29.660486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658974, 41.670628, 29.598589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208090, 0.046440, -0.977007,
		-0.497899, -0.854742, -0.146674,
		-0.841900, 0.516972, -0.154741,
		41.406403, 41.825718, 29.552166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235672, 41.446869, 28.902485>,  <41.995735, 41.463840, 29.660486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235672, 41.446869, 28.902485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883175, 41.635868, 28.897371>,  <41.671677, 41.749268, 28.894304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883175, 41.635868, 28.897371>,  <42.235672, 41.446869, 28.902485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883175, 41.635868, 28.897371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105815, 0.170849, -0.979599,
		-0.460677, -0.864612, -0.200556,
		-0.881238, 0.472500, -0.012783,
		41.618805, 41.777618, 28.893536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698547, 41.109108, 29.433144>,  <42.235672, 41.446869, 28.902485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698547, 41.109108, 29.433144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866085, 41.002796, 29.085827>,  <42.966606, 40.939011, 28.877436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866085, 41.002796, 29.085827>,  <42.698547, 41.109108, 29.433144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866085, 41.002796, 29.085827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889309, -0.073248, 0.451402,
		-0.183574, -0.961247, 0.205681,
		0.418843, -0.265780, -0.868292,
		42.991737, 40.923061, 28.825338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891720, 40.341850, 29.151936>,  <42.698547, 41.109108, 29.433144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891720, 40.341850, 29.151936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758877, 40.342960, 29.529230>,  <42.679169, 40.343628, 29.755608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758877, 40.342960, 29.529230>,  <42.891720, 40.341850, 29.151936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758877, 40.342960, 29.529230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916279, -0.236434, 0.323314,
		0.223911, 0.971643, 0.075978,
		-0.332110, 0.002776, 0.943237,
		42.659245, 40.343792, 29.812201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419456, 40.609348, 29.585941>,  <42.891720, 40.341850, 29.151936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419456, 40.609348, 29.585941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170113, 40.367874, 29.784735>,  <43.020508, 40.222992, 29.904011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170113, 40.367874, 29.784735>,  <43.419456, 40.609348, 29.585941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170113, 40.367874, 29.784735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776959, -0.549794, 0.306696,
		0.088091, 0.577316, 0.811755,
		-0.623358, -0.603683, 0.496982,
		42.983105, 40.186768, 29.933830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755322, 40.457081, 30.127447>,  <43.419456, 40.609348, 29.585941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755322, 40.457081, 30.127447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473759, 40.174370, 30.155689>,  <43.304821, 40.004745, 30.172634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473759, 40.174370, 30.155689>,  <43.755322, 40.457081, 30.127447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473759, 40.174370, 30.155689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648196, -0.598537, 0.470740,
		-0.290447, 0.377123, 0.879442,
		-0.703906, -0.706776, 0.070607,
		43.262589, 39.962337, 30.176870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812851, 40.120602, 30.827156>,  <43.755322, 40.457081, 30.127447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812851, 40.120602, 30.827156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586632, 39.857151, 30.628614>,  <43.450901, 39.699081, 30.509489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586632, 39.857151, 30.628614>,  <43.812851, 40.120602, 30.827156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586632, 39.857151, 30.628614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197001, -0.692310, 0.694188,
		-0.800841, 0.294814, 0.521285,
		-0.565547, -0.658628, -0.496352,
		43.416969, 39.659561, 30.479710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405220, 39.830624, 31.302732>,  <43.812851, 40.120602, 30.827156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405220, 39.830624, 31.302732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408985, 39.569660, 30.999607>,  <43.411243, 39.413082, 30.817732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408985, 39.569660, 30.999607>,  <43.405220, 39.830624, 31.302732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408985, 39.569660, 30.999607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260458, -0.730087, 0.631771,
		-0.965439, -0.203326, 0.163051,
		0.009414, -0.652405, -0.757812,
		43.411808, 39.373940, 30.772263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005623, 39.249359, 31.510761>,  <43.405220, 39.830624, 31.302732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005623, 39.249359, 31.510761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236950, 39.131176, 31.206591>,  <43.375748, 39.060265, 31.024088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236950, 39.131176, 31.206591>,  <43.005623, 39.249359, 31.510761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236950, 39.131176, 31.206591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328599, -0.768793, 0.548617,
		-0.746702, -0.567154, -0.347525,
		0.578324, -0.295456, -0.760425,
		43.410446, 39.042538, 30.978462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828552, 38.562531, 31.429735>,  <43.005623, 39.249359, 31.510761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828552, 38.562531, 31.429735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192650, 38.613461, 31.272135>,  <43.411110, 38.644016, 31.177574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192650, 38.613461, 31.272135>,  <42.828552, 38.562531, 31.429735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192650, 38.613461, 31.272135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334830, -0.786129, 0.519509,
		-0.243591, -0.604806, -0.758204,
		0.910248, 0.127322, -0.394001,
		43.465725, 38.651657, 31.153934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039730, 37.892227, 31.244986>,  <42.828552, 38.562531, 31.429735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039730, 37.892227, 31.244986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362888, 38.127586, 31.258226>,  <43.556782, 38.268803, 31.266171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362888, 38.127586, 31.258226>,  <43.039730, 37.892227, 31.244986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362888, 38.127586, 31.258226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420171, -0.614482, 0.667734,
		0.413233, -0.525550, -0.743664,
		0.807895, 0.588396, 0.033103,
		43.605255, 38.304104, 31.268158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610401, 37.476082, 31.064552>,  <43.039730, 37.892227, 31.244986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610401, 37.476082, 31.064552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755608, 37.766998, 31.297539>,  <43.842731, 37.941547, 31.437330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755608, 37.766998, 31.297539>,  <43.610401, 37.476082, 31.064552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755608, 37.766998, 31.297539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421037, -0.685687, 0.593769,
		0.831233, 0.029692, -0.555131,
		0.363016, 0.727291, 0.582467,
		43.864513, 37.985184, 31.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021305, 37.163578, 31.576981>,  <43.610401, 37.476082, 31.064552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021305, 37.163578, 31.576981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075989, 37.530697, 31.726088>,  <44.108799, 37.750969, 31.815552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075989, 37.530697, 31.726088>,  <44.021305, 37.163578, 31.576981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075989, 37.530697, 31.726088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335121, -0.396960, 0.854469,
		0.932205, 0.008112, -0.361840,
		0.136705, 0.917800, 0.372766,
		44.117001, 37.806038, 31.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660511, 37.171818, 31.898027>,  <44.021305, 37.163578, 31.576981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660511, 37.171818, 31.898027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450180, 37.461353, 32.076721>,  <44.323982, 37.635075, 32.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450180, 37.461353, 32.076721>,  <44.660511, 37.171818, 31.898027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450180, 37.461353, 32.076721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330147, -0.310349, 0.891452,
		0.783908, 0.616235, -0.075783,
		-0.525824, 0.723836, 0.446734,
		44.292431, 37.678505, 32.210743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187462, 37.494545, 32.266998>,  <44.660511, 37.171818, 31.898027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187462, 37.494545, 32.266998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844784, 37.592999, 32.448322>,  <44.639175, 37.652069, 32.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844784, 37.592999, 32.448322>,  <45.187462, 37.494545, 32.266998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844784, 37.592999, 32.448322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364500, -0.332968, 0.869639,
		0.364984, 0.910248, 0.195538,
		-0.856695, 0.246131, 0.453313,
		44.587776, 37.666840, 32.584316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299862, 37.978443, 32.974823>,  <45.187462, 37.494545, 32.266998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299862, 37.978443, 32.974823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954853, 37.776836, 32.992825>,  <44.747849, 37.655872, 33.003624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954853, 37.776836, 32.992825>,  <45.299862, 37.978443, 32.974823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954853, 37.776836, 32.992825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273235, -0.389031, 0.879771,
		-0.425914, 0.771116, 0.473262,
		-0.862520, -0.504019, 0.045003,
		44.696098, 37.625629, 33.006325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026653, 38.113758, 33.747475>,  <45.299862, 37.978443, 32.974823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026653, 38.113758, 33.747475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820202, 37.808739, 33.591457>,  <44.696331, 37.625729, 33.497849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820202, 37.808739, 33.591457>,  <45.026653, 38.113758, 33.747475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820202, 37.808739, 33.591457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135717, -0.522441, 0.841805,
		-0.845690, 0.381546, 0.373138,
		-0.516130, -0.762547, -0.390041,
		44.665363, 37.579975, 33.474445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504375, 37.982822, 34.337551>,  <45.026653, 38.113758, 33.747475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504375, 37.982822, 34.337551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507870, 37.654469, 34.109142>,  <44.509968, 37.457455, 33.972095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507870, 37.654469, 34.109142>,  <44.504375, 37.982822, 34.337551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507870, 37.654469, 34.109142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189350, -0.559357, 0.807011,
		-0.981871, -0.115176, 0.150547,
		0.008739, -0.820886, -0.571025,
		44.510490, 37.408203, 33.937836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051498, 37.404099, 34.756912>,  <44.504375, 37.982822, 34.337551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051498, 37.404099, 34.756912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279114, 37.205269, 34.494888>,  <44.415684, 37.085972, 34.337673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279114, 37.205269, 34.494888>,  <44.051498, 37.404099, 34.756912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279114, 37.205269, 34.494888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330836, -0.590907, 0.735783,
		-0.752822, -0.635408, -0.171799,
		0.569040, -0.497076, -0.655064,
		44.449825, 37.056145, 34.298370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976955, 36.671974, 34.898048>,  <44.051498, 37.404099, 34.756912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976955, 36.671974, 34.898048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314445, 36.754612, 34.699883>,  <44.516941, 36.804195, 34.580982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314445, 36.754612, 34.699883>,  <43.976955, 36.671974, 34.898048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314445, 36.754612, 34.699883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510697, -0.593118, 0.622415,
		-0.165254, -0.778158, -0.605938,
		0.843729, 0.206594, -0.495418,
		44.567566, 36.816589, 34.551258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376026, 35.986698, 34.936432>,  <43.976955, 36.671974, 34.898048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376026, 35.986698, 34.936432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642006, 36.274521, 34.856350>,  <44.801594, 36.447212, 34.808300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642006, 36.274521, 34.856350>,  <44.376026, 35.986698, 34.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642006, 36.274521, 34.856350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664629, -0.447779, 0.598132,
		0.340742, -0.530788, -0.775989,
		0.664953, 0.719554, -0.200200,
		44.841492, 36.490387, 34.796291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892673, 35.641018, 34.684559>,  <44.376026, 35.986698, 34.936432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892673, 35.641018, 34.684559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034599, 35.990601, 34.817402>,  <45.119755, 36.200352, 34.897110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034599, 35.990601, 34.817402>,  <44.892673, 35.641018, 34.684559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034599, 35.990601, 34.817402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830167, -0.457896, 0.318047,
		0.430032, 0.162859, -0.888003,
		0.354817, 0.873961, 0.332110,
		45.141045, 36.252789, 34.917034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614796, 35.677361, 34.328480>,  <44.892673, 35.641018, 34.684559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614796, 35.677361, 34.328480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600136, 35.931179, 34.637283>,  <45.591339, 36.083469, 34.822567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600136, 35.931179, 34.637283>,  <45.614796, 35.677361, 34.328480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600136, 35.931179, 34.637283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730351, -0.510283, 0.454091,
		0.682088, 0.580482, -0.444743,
		-0.036648, 0.634549, 0.772014,
		45.589142, 36.121544, 34.868889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290661, 35.808804, 34.440388>,  <45.614796, 35.677361, 34.328480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290661, 35.808804, 34.440388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090424, 35.875023, 34.780270>,  <45.970280, 35.914757, 34.984200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090424, 35.875023, 34.780270>,  <46.290661, 35.808804, 34.440388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090424, 35.875023, 34.780270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713148, -0.477553, 0.513189,
		0.490738, 0.862865, 0.120997,
		-0.500595, 0.165552, 0.849704,
		45.940247, 35.924690, 35.035179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582611, 36.312740, 35.116486>,  <46.290661, 35.808804, 34.440388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582611, 36.312740, 35.116486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341003, 36.004784, 35.198868>,  <46.196037, 35.820007, 35.248295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341003, 36.004784, 35.198868>,  <46.582611, 36.312740, 35.116486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341003, 36.004784, 35.198868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711507, -0.404515, 0.574565,
		-0.359045, 0.493587, 0.792123,
		-0.604024, -0.769896, 0.205951,
		46.159798, 35.773815, 35.260654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942020, 36.189640, 35.699593>,  <46.582611, 36.312740, 35.116486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942020, 36.189640, 35.699593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712540, 36.510990, 35.635784>,  <46.574852, 36.703800, 35.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712540, 36.510990, 35.635784>,  <46.942020, 36.189640, 35.699593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712540, 36.510990, 35.635784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804734, -0.589144, -0.072889,
		-0.152537, 0.086554, 0.984500,
		-0.573703, 0.803379, -0.159520,
		46.540428, 36.752003, 35.587929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322941, 35.618519, 35.524746>,  <46.942020, 36.189640, 35.699593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322941, 35.618519, 35.524746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093433, 35.454327, 35.241253>,  <46.955730, 35.355812, 35.071159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093433, 35.454327, 35.241253>,  <47.322941, 35.618519, 35.524746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093433, 35.454327, 35.241253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790578, -0.503637, -0.348335,
		-0.213957, -0.760168, 0.613487,
		-0.573767, -0.410481, -0.708729,
		46.921303, 35.331181, 35.028633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.653320, 35.052296, 35.329716>,  <47.322941, 35.618519, 35.524746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.653320, 35.052296, 35.329716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440170, 35.119343, 34.997944>,  <47.312283, 35.159573, 34.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440170, 35.119343, 34.997944>,  <47.653320, 35.052296, 35.329716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.440170, 35.119343, 34.997944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630979, -0.574409, -0.521459,
		-0.563839, -0.801223, 0.200321,
		-0.532871, 0.167621, -0.829429,
		47.280308, 35.169628, 34.749115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.905151, 42.715637, 43.199898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525333, 42.634823, 43.103935>,  <35.297443, 42.586334, 43.046356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525333, 42.634823, 43.103935>,  <35.905151, 42.715637, 43.199898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525333, 42.634823, 43.103935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313329, -0.645329, -0.696689,
		-0.014065, -0.736704, 0.676069,
		-0.949540, -0.202033, -0.239908,
		35.240471, 42.574211, 43.031963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763096, 42.010700, 43.148327>,  <35.905151, 42.715637, 43.199898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763096, 42.010700, 43.148327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445408, 42.103298, 42.923603>,  <35.254795, 42.158859, 42.788769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445408, 42.103298, 42.923603>,  <35.763096, 42.010700, 43.148327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445408, 42.103298, 42.923603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378565, -0.534699, -0.755503,
		-0.475293, -0.812715, 0.337032,
		-0.794219, 0.231497, -0.561805,
		35.207142, 42.172749, 42.755062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545860, 41.368992, 42.928314>,  <35.763096, 42.010700, 43.148327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545860, 41.368992, 42.928314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404888, 41.645050, 42.675495>,  <35.320305, 41.810684, 42.523804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404888, 41.645050, 42.675495>,  <35.545860, 41.368992, 42.928314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404888, 41.645050, 42.675495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243166, -0.584655, -0.773982,
		-0.903693, -0.426470, 0.038231,
		-0.352432, 0.690146, -0.632052,
		35.299160, 41.852093, 42.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934467, 41.082531, 42.679230>,  <35.545860, 41.368992, 42.928314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934467, 41.082531, 42.679230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.041969, 41.365185, 42.417408>,  <35.106468, 41.534779, 42.260315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.041969, 41.365185, 42.417408>,  <34.934467, 41.082531, 42.679230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041969, 41.365185, 42.417408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190409, -0.705118, -0.683047,
		-0.944201, 0.058939, -0.324053,
		0.268753, 0.706637, -0.654551,
		35.122597, 41.577175, 42.221043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642838, 40.830116, 41.956863>,  <34.934467, 41.082531, 42.679230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642838, 40.830116, 41.956863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928036, 41.102486, 41.889950>,  <35.099155, 41.265907, 41.849804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928036, 41.102486, 41.889950>,  <34.642838, 40.830116, 41.956863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928036, 41.102486, 41.889950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406104, -0.595510, -0.693143,
		-0.571595, 0.426273, -0.701121,
		0.712992, 0.680925, -0.167279,
		35.141933, 41.306763, 41.839767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675137, 40.880070, 41.230614>,  <34.642838, 40.830116, 41.956863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675137, 40.880070, 41.230614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039158, 41.005901, 41.338566>,  <35.257572, 41.081402, 41.403336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039158, 41.005901, 41.338566>,  <34.675137, 40.880070, 41.230614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039158, 41.005901, 41.338566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410097, -0.588896, -0.696435,
		-0.060154, 0.744473, -0.664938,
		0.910056, 0.314583, 0.269882,
		35.312176, 41.100277, 41.419529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919399, 40.928787, 40.563202>,  <34.675137, 40.880070, 41.230614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919399, 40.928787, 40.563202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.234852, 40.892357, 40.806435>,  <35.424126, 40.870499, 40.952374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.234852, 40.892357, 40.806435>,  <34.919399, 40.928787, 40.563202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234852, 40.892357, 40.806435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468464, -0.551553, -0.690168,
		0.398245, 0.829153, -0.392308,
		0.788634, -0.091074, 0.608081,
		35.471443, 40.865036, 40.988857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505451, 41.022018, 40.148216>,  <34.919399, 40.928787, 40.563202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505451, 41.022018, 40.148216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632927, 40.831974, 40.476292>,  <35.709412, 40.717949, 40.673138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632927, 40.831974, 40.476292>,  <35.505451, 41.022018, 40.148216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632927, 40.831974, 40.476292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684707, -0.482969, -0.545817,
		0.655448, 0.735535, 0.171393,
		0.318690, -0.475109, 0.820188,
		35.728535, 40.689442, 40.722347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165657, 40.775078, 39.970009>,  <35.505451, 41.022018, 40.148216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165657, 40.775078, 39.970009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124481, 40.519344, 40.274811>,  <36.099777, 40.365906, 40.457691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124481, 40.519344, 40.274811>,  <36.165657, 40.775078, 39.970009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124481, 40.519344, 40.274811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412026, -0.724670, -0.552347,
		0.905339, 0.257111, 0.338016,
		-0.102935, -0.639333, 0.762009,
		36.093601, 40.327545, 40.503414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722027, 40.485878, 40.158127>,  <36.165657, 40.775078, 39.970009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722027, 40.485878, 40.158127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472534, 40.213219, 40.311127>,  <36.322838, 40.049622, 40.402927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472534, 40.213219, 40.311127>,  <36.722027, 40.485878, 40.158127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472534, 40.213219, 40.311127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511511, -0.725989, -0.459669,
		0.591028, -0.091056, 0.801495,
		-0.623733, -0.681651, 0.382504,
		36.285416, 40.008724, 40.425877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138512, 39.930943, 40.253357>,  <36.722027, 40.485878, 40.158127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138512, 39.930943, 40.253357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777287, 39.762444, 40.286900>,  <36.560551, 39.661346, 40.307026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777287, 39.762444, 40.286900>,  <37.138512, 39.930943, 40.253357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777287, 39.762444, 40.286900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357963, -0.846044, -0.395060,
		0.237365, -0.326745, 0.914820,
		-0.903062, -0.421245, 0.083858,
		36.506367, 39.636070, 40.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195156, 39.329494, 40.606640>,  <37.138512, 39.930943, 40.253357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195156, 39.329494, 40.606640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868988, 39.264965, 40.384266>,  <36.673286, 39.226250, 40.250843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868988, 39.264965, 40.384266>,  <37.195156, 39.329494, 40.606640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868988, 39.264965, 40.384266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459688, -0.764147, -0.452511,
		-0.351818, -0.624544, 0.697259,
		-0.815421, -0.161320, -0.555935,
		36.624363, 39.216568, 40.217484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199085, 38.657154, 40.554642>,  <37.195156, 39.329494, 40.606640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199085, 38.657154, 40.554642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973171, 38.786663, 40.251015>,  <36.837624, 38.864368, 40.068836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973171, 38.786663, 40.251015>,  <37.199085, 38.657154, 40.554642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973171, 38.786663, 40.251015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423588, -0.675664, -0.603367,
		-0.708230, -0.662306, 0.244459,
		-0.564786, 0.323773, -0.759070,
		36.803738, 38.883797, 40.023293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907475, 38.062771, 40.241089>,  <37.199085, 38.657154, 40.554642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907475, 38.062771, 40.241089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854950, 38.331703, 39.949684>,  <36.823433, 38.493061, 39.774841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854950, 38.331703, 39.949684>,  <36.907475, 38.062771, 40.241089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854950, 38.331703, 39.949684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182188, -0.705989, -0.684388,
		-0.974456, -0.222595, -0.029785,
		-0.131314, 0.672332, -0.728509,
		36.815556, 38.533401, 39.731133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376106, 37.809723, 39.702553>,  <36.907475, 38.062771, 40.241089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376106, 37.809723, 39.702553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588642, 38.097401, 39.523472>,  <36.716164, 38.270008, 39.416023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588642, 38.097401, 39.523472>,  <36.376106, 37.809723, 39.702553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588642, 38.097401, 39.523472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110017, -0.582575, -0.805297,
		-0.839984, 0.378633, -0.388669,
		0.531341, 0.719196, -0.447698,
		36.748043, 38.313160, 39.389164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141350, 37.831272, 39.023209>,  <36.376106, 37.809723, 39.702553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141350, 37.831272, 39.023209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509521, 37.985706, 38.998703>,  <36.730423, 38.078369, 38.984001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509521, 37.985706, 38.998703>,  <36.141350, 37.831272, 39.023209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509521, 37.985706, 38.998703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182741, -0.563485, -0.805661,
		-0.345578, 0.730356, -0.589200,
		0.920425, 0.386089, -0.061262,
		36.785648, 38.101532, 38.980324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264549, 37.646259, 38.372952>,  <36.141350, 37.831272, 39.023209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264549, 37.646259, 38.372952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623592, 37.783978, 38.483047>,  <36.839020, 37.866608, 38.549107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.623592, 37.783978, 38.483047>,  <36.264549, 37.646259, 38.372952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623592, 37.783978, 38.483047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440795, -0.701570, -0.559910,
		0.000326, 0.623906, -0.781500,
		0.897608, 0.344299, 0.275243,
		36.892876, 37.887268, 38.565620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618961, 37.950787, 37.809788>,  <36.264549, 37.646259, 38.372952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618961, 37.950787, 37.809788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901623, 37.830048, 38.065765>,  <37.071220, 37.757603, 38.219353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901623, 37.830048, 38.065765>,  <36.618961, 37.950787, 37.809788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901623, 37.830048, 38.065765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459899, -0.491383, -0.739618,
		0.537710, 0.816964, -0.208419,
		0.706655, -0.301848, 0.639943,
		37.113621, 37.739494, 38.257748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292110, 37.904755, 37.513386>,  <36.618961, 37.950787, 37.809788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292110, 37.904755, 37.513386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368637, 37.678410, 37.834187>,  <37.414555, 37.542603, 38.026665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368637, 37.678410, 37.834187>,  <37.292110, 37.904755, 37.513386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368637, 37.678410, 37.834187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446893, -0.677268, -0.584461,
		0.873890, 0.470225, 0.123306,
		0.191317, -0.565860, 0.801998,
		37.426033, 37.508652, 38.074787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047489, 37.798782, 37.586285>,  <37.292110, 37.904755, 37.513386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047489, 37.798782, 37.586285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892212, 37.488590, 37.785458>,  <37.799046, 37.302475, 37.904961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892212, 37.488590, 37.785458>,  <38.047489, 37.798782, 37.586285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892212, 37.488590, 37.785458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620088, -0.619490, -0.481377,
		0.681761, 0.121894, 0.721348,
		-0.388191, -0.775483, 0.497929,
		37.775753, 37.255947, 37.934837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593616, 37.508537, 38.078785>,  <38.047489, 37.798782, 37.586285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593616, 37.508537, 38.078785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331009, 37.222588, 37.982502>,  <38.173443, 37.051018, 37.924732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331009, 37.222588, 37.982502>,  <38.593616, 37.508537, 38.078785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331009, 37.222588, 37.982502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745593, -0.566641, -0.350726,
		0.114329, -0.409729, 0.905014,
		-0.656521, -0.714870, -0.240708,
		38.134052, 37.008125, 37.910290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042866, 37.068230, 37.887470>,  <38.593616, 37.508537, 38.078785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042866, 37.068230, 37.887470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706242, 36.877468, 37.786015>,  <38.504265, 36.763012, 37.725140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706242, 36.877468, 37.786015>,  <39.042866, 37.068230, 37.887470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706242, 36.877468, 37.786015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536231, -0.681093, -0.498567,
		0.065013, -0.555587, 0.828913,
		-0.841564, -0.476902, -0.253643,
		38.453773, 36.734398, 37.709923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827065, 37.044102, 38.106636>,  <39.042866, 37.068230, 37.887470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827065, 37.044102, 38.106636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152954, 37.004688, 38.335205>,  <40.348488, 36.981041, 38.472347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152954, 37.004688, 38.335205>,  <39.827065, 37.044102, 38.106636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152954, 37.004688, 38.335205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306732, 0.763057, 0.568910,
		-0.492081, -0.638776, 0.591456,
		0.814722, -0.098531, 0.571420,
		40.397369, 36.975128, 38.506630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515400, 37.062416, 38.832565>,  <39.827065, 37.044102, 38.106636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515400, 37.062416, 38.832565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.906700, 37.140633, 38.860268>,  <40.141479, 37.187561, 38.876888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.906700, 37.140633, 38.860268>,  <39.515400, 37.062416, 38.832565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906700, 37.140633, 38.860268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195779, 0.759940, 0.619808,
		0.068567, -0.619884, 0.781692,
		0.978248, 0.195537, 0.069253,
		40.200176, 37.199295, 38.881042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684177, 37.023041, 39.512253>,  <39.515400, 37.062416, 38.832565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684177, 37.023041, 39.512253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949440, 37.270496, 39.343723>,  <40.108597, 37.418968, 39.242607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949440, 37.270496, 39.343723>,  <39.684177, 37.023041, 39.512253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949440, 37.270496, 39.343723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316546, 0.741889, 0.591100,
		0.678251, -0.258624, 0.687815,
		0.663155, 0.618639, -0.421320,
		40.148388, 37.456089, 39.217327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669659, 37.405384, 40.042221>,  <39.684177, 37.023041, 39.512253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669659, 37.405384, 40.042221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873085, 37.602821, 39.760021>,  <39.995140, 37.721283, 39.590702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873085, 37.602821, 39.760021>,  <39.669659, 37.405384, 40.042221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873085, 37.602821, 39.760021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247292, 0.868584, 0.429428,
		0.824748, -0.043927, 0.563791,
		0.508564, 0.493591, -0.705500,
		40.025654, 37.750900, 39.548370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146702, 37.708618, 40.420879>,  <39.669659, 37.405384, 40.042221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146702, 37.708618, 40.420879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092155, 37.912041, 40.080814>,  <40.059429, 38.034096, 39.876778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092155, 37.912041, 40.080814>,  <40.146702, 37.708618, 40.420879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092155, 37.912041, 40.080814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309871, 0.793217, 0.524202,
		0.940949, 0.334923, 0.049420,
		-0.136366, 0.508561, -0.850159,
		40.051247, 38.064610, 39.825768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452805, 38.372791, 40.456188>,  <40.146702, 37.708618, 40.420879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452805, 38.372791, 40.456188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.181297, 38.400997, 40.163803>,  <40.018394, 38.417919, 39.988373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.181297, 38.400997, 40.163803>,  <40.452805, 38.372791, 40.456188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181297, 38.400997, 40.163803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328317, 0.861219, 0.387957,
		0.656872, 0.503319, -0.561417,
		-0.678769, 0.070515, -0.730959,
		39.977665, 38.422153, 39.944515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571381, 39.029484, 40.349579>,  <40.452805, 38.372791, 40.456188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571381, 39.029484, 40.349579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215881, 38.942173, 40.188343>,  <40.002583, 38.889786, 40.091602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215881, 38.942173, 40.188343>,  <40.571381, 39.029484, 40.349579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215881, 38.942173, 40.188343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409556, 0.773068, 0.484387,
		0.205881, 0.595585, -0.776461,
		-0.888750, -0.218278, -0.403085,
		39.949257, 38.876690, 40.067417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328827, 39.646591, 40.096687>,  <40.571381, 39.029484, 40.349579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328827, 39.646591, 40.096687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007637, 39.412899, 40.143852>,  <39.814922, 39.272682, 40.172150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007637, 39.412899, 40.143852>,  <40.328827, 39.646591, 40.096687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007637, 39.412899, 40.143852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499801, 0.767829, 0.400797,
		-0.324693, 0.262899, -0.908548,
		-0.802978, -0.584229, 0.117912,
		39.766743, 39.237629, 40.179226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675186, 40.131599, 39.967827>,  <40.328827, 39.646591, 40.096687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675186, 40.131599, 39.967827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581207, 39.804523, 40.178040>,  <39.524818, 39.608276, 40.304165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581207, 39.804523, 40.178040>,  <39.675186, 40.131599, 39.967827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581207, 39.804523, 40.178040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562644, 0.555285, 0.612447,
		-0.792610, -0.151790, -0.590533,
		-0.234950, -0.817691, 0.525528,
		39.510723, 39.559216, 40.335697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052780, 40.249798, 40.146687>,  <39.675186, 40.131599, 39.967827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052780, 40.249798, 40.146687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142460, 39.965977, 40.413902>,  <39.196266, 39.795685, 40.574230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142460, 39.965977, 40.413902>,  <39.052780, 40.249798, 40.146687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142460, 39.965977, 40.413902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474222, 0.519425, 0.710852,
		-0.851381, -0.476169, -0.220031,
		0.224196, -0.709550, 0.668038,
		39.209721, 39.753113, 40.614315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443344, 40.203384, 40.528000>,  <39.052780, 40.249798, 40.146687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443344, 40.203384, 40.528000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726299, 40.032684, 40.753384>,  <38.896072, 39.930264, 40.888615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726299, 40.032684, 40.753384>,  <38.443344, 40.203384, 40.528000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726299, 40.032684, 40.753384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261810, 0.582271, 0.769686,
		-0.656553, -0.691984, 0.300161,
		0.707385, -0.426755, 0.563460,
		38.938515, 39.904659, 40.922421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088894, 39.991028, 41.131641>,  <38.443344, 40.203384, 40.528000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088894, 39.991028, 41.131641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473919, 39.990353, 41.240067>,  <38.704933, 39.989948, 41.305122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473919, 39.990353, 41.240067>,  <38.088894, 39.991028, 41.131641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473919, 39.990353, 41.240067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230664, 0.520144, 0.822341,
		-0.142384, -0.854077, 0.500279,
		0.962559, -0.001692, 0.271065,
		38.762688, 39.989845, 41.321384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134388, 39.521709, 41.781975>,  <38.088894, 39.991028, 41.131641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134388, 39.521709, 41.781975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430763, 39.788273, 41.748734>,  <38.608589, 39.948212, 41.728790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430763, 39.788273, 41.748734>,  <38.134388, 39.521709, 41.781975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430763, 39.788273, 41.748734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398557, 0.535932, 0.744264,
		0.540556, -0.518304, 0.662692,
		0.740913, 0.666436, -0.083127,
		38.653046, 39.988197, 41.723804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344551, 39.670052, 42.519974>,  <38.134388, 39.521709, 41.781975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344551, 39.670052, 42.519974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480087, 39.957657, 42.277252>,  <38.561409, 40.130219, 42.131618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480087, 39.957657, 42.277252>,  <38.344551, 39.670052, 42.519974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480087, 39.957657, 42.277252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228795, 0.688566, 0.688135,
		0.912603, -0.094331, 0.397817,
		0.338835, 0.719013, -0.606804,
		38.581738, 40.173359, 42.095211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764011, 40.045872, 42.933064>,  <38.344551, 39.670052, 42.519974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764011, 40.045872, 42.933064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705578, 40.314247, 42.642273>,  <38.670517, 40.475273, 42.467796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705578, 40.314247, 42.642273>,  <38.764011, 40.045872, 42.933064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705578, 40.314247, 42.642273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349544, 0.652456, 0.672399,
		0.925461, 0.352338, 0.139210,
		-0.146083, 0.670939, -0.726980,
		38.661755, 40.515530, 42.424179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909794, 40.667763, 43.207214>,  <38.764011, 40.045872, 42.933064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909794, 40.667763, 43.207214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676983, 40.775688, 42.900372>,  <38.537296, 40.840443, 42.716267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676983, 40.775688, 42.900372>,  <38.909794, 40.667763, 43.207214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676983, 40.775688, 42.900372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540660, 0.576240, 0.612890,
		0.607400, 0.771460, -0.189511,
		-0.582024, 0.269809, -0.767106,
		38.502377, 40.856632, 42.670238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926888, 41.397633, 43.140587>,  <38.909794, 40.667763, 43.207214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926888, 41.397633, 43.140587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591595, 41.288933, 42.951477>,  <38.390419, 41.223713, 42.838013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591595, 41.288933, 42.951477>,  <38.926888, 41.397633, 43.140587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591595, 41.288933, 42.951477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523348, 0.644475, 0.557458,
		0.153200, 0.714705, -0.682441,
		-0.838234, -0.271752, -0.472773,
		38.340126, 41.207409, 42.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694553, 42.036530, 43.074680>,  <38.926888, 41.397633, 43.140587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694553, 42.036530, 43.074680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380749, 41.791710, 43.034801>,  <38.192467, 41.644817, 43.010876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380749, 41.791710, 43.034801>,  <38.694553, 42.036530, 43.074680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380749, 41.791710, 43.034801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569039, 0.646637, 0.507991,
		-0.246446, 0.455257, -0.855573,
		-0.784512, -0.612047, -0.099697,
		38.145393, 41.608097, 43.004890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.012211, 42.569069, 42.779388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855564, 42.218754, 42.892258>,  <37.761574, 42.008564, 42.959980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.855564, 42.218754, 42.892258>,  <38.012211, 42.569069, 42.779388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855564, 42.218754, 42.892258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639521, 0.479563, 0.600859,
		-0.661547, 0.054852, -0.747895,
		-0.391621, -0.875791, 0.282175,
		37.738079, 41.956017, 42.976910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233284, 42.675388, 42.771629>,  <38.012211, 42.569069, 42.779388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233284, 42.675388, 42.771629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333561, 42.382164, 43.024540>,  <37.393726, 42.206230, 43.176285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333561, 42.382164, 43.024540>,  <37.233284, 42.675388, 42.771629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333561, 42.382164, 43.024540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712580, 0.302360, 0.633094,
		-0.655272, -0.609261, -0.446565,
		0.250696, -0.733062, 0.632276,
		37.408772, 42.162247, 43.214222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662251, 42.385597, 43.098145>,  <37.233284, 42.675388, 42.771629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662251, 42.385597, 43.098145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928490, 42.272839, 43.374554>,  <37.088234, 42.205185, 43.540401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928490, 42.272839, 43.374554>,  <36.662251, 42.385597, 43.098145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928490, 42.272839, 43.374554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555975, 0.430400, 0.711089,
		-0.497871, -0.857491, 0.129745,
		0.665595, -0.281895, 0.691027,
		37.128166, 42.188271, 43.581863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281616, 42.272343, 43.657150>,  <36.662251, 42.385597, 43.098145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281616, 42.272343, 43.657150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644173, 42.289833, 43.825214>,  <36.861706, 42.300327, 43.926052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644173, 42.289833, 43.825214>,  <36.281616, 42.272343, 43.657150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644173, 42.289833, 43.825214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382247, 0.508290, 0.771705,
		-0.179819, -0.860075, 0.477427,
		0.906395, 0.043728, 0.420161,
		36.916092, 42.302952, 43.951263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154087, 42.144722, 44.314686>,  <36.281616, 42.272343, 43.657150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154087, 42.144722, 44.314686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.517494, 42.311855, 44.315762>,  <36.735538, 42.412136, 44.316406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.517494, 42.311855, 44.315762>,  <36.154087, 42.144722, 44.314686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517494, 42.311855, 44.315762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232575, 0.500328, 0.834015,
		0.347136, -0.758344, 0.551735,
		0.908519, 0.417836, 0.002690,
		36.790051, 42.437206, 44.316566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484901, 41.935238, 44.958618>,  <36.154087, 42.144722, 44.314686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484901, 41.935238, 44.958618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673286, 42.268639, 44.843056>,  <36.786320, 42.468678, 44.773720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673286, 42.268639, 44.843056>,  <36.484901, 41.935238, 44.958618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673286, 42.268639, 44.843056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228480, 0.431581, 0.872659,
		0.852050, -0.344983, 0.393698,
		0.470965, 0.833501, -0.288907,
		36.814575, 42.518688, 44.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011856, 42.047951, 45.557575>,  <36.484901, 41.935238, 44.958618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011856, 42.047951, 45.557575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940247, 42.369801, 45.331116>,  <36.897282, 42.562912, 45.195240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940247, 42.369801, 45.331116>,  <37.011856, 42.047951, 45.557575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940247, 42.369801, 45.331116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029070, 0.570870, 0.820525,
		0.983415, 0.163352, -0.078809,
		-0.179024, 0.804626, -0.566151,
		36.886539, 42.611187, 45.161270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515331, 42.561684, 45.790653>,  <37.011856, 42.047951, 45.557575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515331, 42.561684, 45.790653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.224342, 42.757595, 45.598442>,  <37.049751, 42.875141, 45.483116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.224342, 42.757595, 45.598442>,  <37.515331, 42.561684, 45.790653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224342, 42.757595, 45.598442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047501, 0.662710, 0.747368,
		0.684495, 0.566512, -0.458836,
		-0.727468, 0.489774, -0.480532,
		37.006104, 42.904526, 45.454281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658840, 43.264187, 45.760136>,  <37.515331, 42.561684, 45.790653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658840, 43.264187, 45.760136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260048, 43.255043, 45.730431>,  <37.020775, 43.249557, 45.712608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260048, 43.255043, 45.730431>,  <37.658840, 43.264187, 45.760136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260048, 43.255043, 45.730431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067317, 0.731418, 0.678599,
		0.038810, 0.681547, -0.730745,
		-0.996976, -0.022855, -0.074266,
		36.960957, 43.248188, 45.708153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470692, 43.914776, 45.657272>,  <37.658840, 43.264187, 45.760136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470692, 43.914776, 45.657272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135685, 43.770935, 45.821835>,  <36.934681, 43.684631, 45.920570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135685, 43.770935, 45.821835>,  <37.470692, 43.914776, 45.657272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135685, 43.770935, 45.821835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033333, 0.717893, 0.695355,
		-0.545394, 0.596085, -0.589261,
		-0.837517, -0.359601, 0.411404,
		36.884430, 43.663055, 45.945255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167042, 44.505642, 45.864552>,  <37.470692, 43.914776, 45.657272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167042, 44.505642, 45.864552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.968960, 44.216190, 46.056854>,  <36.850109, 44.042519, 46.172237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.968960, 44.216190, 46.056854>,  <37.167042, 44.505642, 45.864552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968960, 44.216190, 46.056854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262937, 0.652259, 0.710931,
		-0.828032, 0.225647, -0.513271,
		-0.495205, -0.723631, 0.480760,
		36.820400, 43.999100, 46.201084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581970, 44.856262, 46.121429>,  <37.167042, 44.505642, 45.864552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581970, 44.856262, 46.121429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.613464, 44.529343, 46.349754>,  <36.632362, 44.333191, 46.486752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.613464, 44.529343, 46.349754>,  <36.581970, 44.856262, 46.121429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613464, 44.529343, 46.349754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418687, 0.492534, 0.762963,
		-0.904711, -0.299065, -0.303410,
		0.078736, -0.817295, 0.570816,
		36.637085, 44.284153, 46.521000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002560, 44.955528, 46.539513>,  <36.581970, 44.856262, 46.121429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002560, 44.955528, 46.539513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242466, 44.690769, 46.719368>,  <36.386410, 44.531914, 46.827282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242466, 44.690769, 46.719368>,  <36.002560, 44.955528, 46.539513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242466, 44.690769, 46.719368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288575, 0.345196, 0.893065,
		-0.746332, -0.665381, 0.016028,
		0.599761, -0.661898, 0.449643,
		36.422394, 44.492199, 46.854259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571072, 44.589176, 47.079288>,  <36.002560, 44.955528, 46.539513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571072, 44.589176, 47.079288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959751, 44.539974, 47.159954>,  <36.192959, 44.510452, 47.208355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959751, 44.539974, 47.159954>,  <35.571072, 44.589176, 47.079288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959751, 44.539974, 47.159954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202855, 0.002895, 0.979205,
		-0.121032, -0.992402, -0.022140,
		0.971700, -0.123006, 0.201664,
		36.251263, 44.503075, 47.220451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669010, 44.091240, 47.653709>,  <35.571072, 44.589176, 47.079288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669010, 44.091240, 47.653709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017044, 44.287544, 47.672096>,  <36.225864, 44.405327, 47.683128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017044, 44.287544, 47.672096>,  <35.669010, 44.091240, 47.653709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017044, 44.287544, 47.672096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138920, 0.154677, 0.978150,
		0.472925, -0.857456, 0.202758,
		0.870082, 0.490759, 0.045967,
		36.278069, 44.434772, 47.685886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049206, 43.846504, 48.343353>,  <35.669010, 44.091240, 47.653709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049206, 43.846504, 48.343353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236588, 44.189758, 48.259308>,  <36.349014, 44.395710, 48.208881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236588, 44.189758, 48.259308>,  <36.049206, 43.846504, 48.343353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236588, 44.189758, 48.259308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121659, 0.172903, 0.977396,
		0.875072, -0.483426, -0.023403,
		0.468452, 0.858140, -0.210115,
		36.377125, 44.447201, 48.196274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690369, 43.975170, 48.846737>,  <36.049206, 43.846504, 48.343353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690369, 43.975170, 48.846737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605080, 44.340172, 48.707096>,  <36.553905, 44.559174, 48.623314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605080, 44.340172, 48.707096>,  <36.690369, 43.975170, 48.846737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605080, 44.340172, 48.707096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062942, 0.369401, 0.927136,
		0.974975, 0.175709, -0.136198,
		-0.213218, 0.912507, -0.349098,
		36.541115, 44.613922, 48.602367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865520, 44.382874, 49.406067>,  <36.690369, 43.975170, 48.846737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865520, 44.382874, 49.406067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654228, 44.654793, 49.202557>,  <36.527454, 44.817944, 49.080448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654228, 44.654793, 49.202557>,  <36.865520, 44.382874, 49.406067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654228, 44.654793, 49.202557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217267, 0.471036, 0.854939,
		0.820835, 0.562142, -0.101117,
		-0.528227, 0.679795, -0.508778,
		36.495762, 44.858730, 49.049923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952423, 45.032722, 49.769215>,  <36.865520, 44.382874, 49.406067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952423, 45.032722, 49.769215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629822, 45.095467, 49.541199>,  <36.436260, 45.133114, 49.404388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629822, 45.095467, 49.541199>,  <36.952423, 45.032722, 49.769215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629822, 45.095467, 49.541199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499827, 0.334093, 0.799096,
		0.315794, 0.929396, -0.191044,
		-0.806503, 0.156861, -0.570041,
		36.387871, 45.142525, 49.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799744, 45.766811, 49.904190>,  <36.952423, 45.032722, 49.769215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799744, 45.766811, 49.904190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486546, 45.549763, 49.782551>,  <36.298626, 45.419533, 49.709568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486546, 45.549763, 49.782551>,  <36.799744, 45.766811, 49.904190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486546, 45.549763, 49.782551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546616, 0.366921, 0.752715,
		-0.296862, 0.755597, -0.583905,
		-0.782997, -0.542624, -0.304096,
		36.251648, 45.386974, 49.691322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144047, 46.196644, 50.095116>,  <36.799744, 45.766811, 49.904190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144047, 46.196644, 50.095116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004570, 45.829906, 50.017326>,  <35.920883, 45.609863, 49.970654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004570, 45.829906, 50.017326>,  <36.144047, 46.196644, 50.095116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004570, 45.829906, 50.017326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789568, 0.175560, 0.588015,
		-0.504975, 0.358582, -0.785124,
		-0.348688, -0.916841, -0.194471,
		35.899963, 45.554855, 49.958984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505783, 46.377327, 49.896980>,  <36.144047, 46.196644, 50.095116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505783, 46.377327, 49.896980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535866, 46.001087, 50.029411>,  <35.553917, 45.775341, 50.108868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535866, 46.001087, 50.029411>,  <35.505783, 46.377327, 49.896980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535866, 46.001087, 50.029411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857558, 0.108421, 0.502830,
		-0.508859, -0.321731, -0.798469,
		0.075205, -0.940603, 0.331074,
		35.558426, 45.718906, 50.128735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873684, 46.050690, 49.763660>,  <35.505783, 46.377327, 49.896980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873684, 46.050690, 49.763660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006927, 45.814651, 50.057823>,  <35.086872, 45.673027, 50.234322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006927, 45.814651, 50.057823>,  <34.873684, 46.050690, 49.763660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006927, 45.814651, 50.057823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837646, 0.172876, 0.518135,
		-0.432884, -0.788606, -0.436705,
		0.333108, -0.590097, 0.735408,
		35.106861, 45.637623, 50.278446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215260, 46.159836, 50.158909>,  <34.873684, 46.050690, 49.763660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215260, 46.159836, 50.158909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525066, 46.177116, 50.411343>,  <34.710949, 46.187485, 50.562801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525066, 46.177116, 50.411343>,  <34.215260, 46.159836, 50.158909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525066, 46.177116, 50.411343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295606, 0.857303, -0.421483,
		-0.559238, 0.512995, 0.651221,
		0.774512, 0.043205, 0.631082,
		34.757420, 46.190079, 50.600666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870090, 46.592426, 49.660187>,  <34.215260, 46.159836, 50.158909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870090, 46.592426, 49.660187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490582, 46.483475, 49.596142>,  <33.262875, 46.418102, 49.557716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490582, 46.483475, 49.596142>,  <33.870090, 46.592426, 49.660187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490582, 46.483475, 49.596142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262123, -0.395630, -0.880210,
		0.176407, -0.877089, 0.446760,
		-0.948774, -0.272381, -0.160113,
		33.205948, 46.401760, 49.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841702, 45.890419, 49.528992>,  <33.870090, 46.592426, 49.660187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841702, 45.890419, 49.528992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507626, 46.036930, 49.364899>,  <33.307178, 46.124836, 49.266441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507626, 46.036930, 49.364899>,  <33.841702, 45.890419, 49.528992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507626, 46.036930, 49.364899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206217, -0.482940, -0.851025,
		-0.509836, -0.795366, 0.327813,
		-0.835190, 0.366282, -0.410237,
		33.257069, 46.146812, 49.241829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562374, 45.326687, 49.299408>,  <33.841702, 45.890419, 49.528992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562374, 45.326687, 49.299408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386707, 45.618729, 49.089996>,  <33.281307, 45.793953, 48.964352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386707, 45.618729, 49.089996>,  <33.562374, 45.326687, 49.299408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386707, 45.618729, 49.089996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240676, -0.465817, -0.851522,
		-0.865568, -0.499960, 0.028852,
		-0.439167, 0.730106, -0.523525,
		33.254955, 45.837761, 48.932938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232529, 44.975948, 48.818119>,  <33.562374, 45.326687, 49.299408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232529, 44.975948, 48.818119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245735, 45.335354, 48.643044>,  <33.253658, 45.550999, 48.537998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245735, 45.335354, 48.643044>,  <33.232529, 44.975948, 48.818119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245735, 45.335354, 48.643044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305130, -0.426086, -0.851673,
		-0.951738, -0.105433, -0.288233,
		0.033018, 0.898518, -0.437693,
		33.255642, 45.604908, 48.511734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695618, 45.011387, 48.273598>,  <33.232529, 44.975948, 48.818119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695618, 45.011387, 48.273598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992859, 45.271355, 48.209839>,  <33.171204, 45.427334, 48.171581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992859, 45.271355, 48.209839>,  <32.695618, 45.011387, 48.273598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992859, 45.271355, 48.209839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132084, -0.375967, -0.917171,
		-0.656017, 0.660494, -0.365225,
		0.743099, 0.649920, -0.159400,
		33.215790, 45.466331, 48.162018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497700, 45.203968, 47.638680>,  <32.695618, 45.011387, 48.273598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497700, 45.203968, 47.638680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872307, 45.343292, 47.654751>,  <33.097073, 45.426888, 47.664394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872307, 45.343292, 47.654751>,  <32.497700, 45.203968, 47.638680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872307, 45.343292, 47.654751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189989, -0.407801, -0.893086,
		-0.294689, 0.844023, -0.448088,
		0.936516, 0.348314, 0.040181,
		33.153263, 45.447788, 47.666805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616970, 45.404667, 46.828335>,  <32.497700, 45.203968, 47.638680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616970, 45.404667, 46.828335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938366, 45.378693, 47.065041>,  <33.131203, 45.363110, 47.207062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938366, 45.378693, 47.065041>,  <32.616970, 45.404667, 46.828335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938366, 45.378693, 47.065041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468069, -0.545307, -0.695379,
		0.367844, 0.835718, -0.407758,
		0.803494, -0.064933, 0.591761,
		33.179413, 45.359211, 47.242569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120300, 45.587086, 46.287922>,  <32.616970, 45.404667, 46.828335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120300, 45.587086, 46.287922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294228, 45.390987, 46.590073>,  <33.398582, 45.273331, 46.771362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294228, 45.390987, 46.590073>,  <33.120300, 45.587086, 46.287922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294228, 45.390987, 46.590073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473521, -0.589025, -0.654850,
		0.765972, 0.642426, -0.023977,
		0.434816, -0.490243, 0.755379,
		33.424671, 45.243916, 46.816685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751152, 45.374100, 46.007771>,  <33.120300, 45.587086, 46.287922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751152, 45.374100, 46.007771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682304, 45.132595, 46.319115>,  <33.640995, 44.987694, 46.505920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682304, 45.132595, 46.319115>,  <33.751152, 45.374100, 46.007771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682304, 45.132595, 46.319115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405369, -0.763562, -0.502642,
		0.897803, 0.229007, 0.376173,
		-0.172123, -0.603763, 0.778360,
		33.630669, 44.951466, 46.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358150, 45.112663, 46.205906>,  <33.751152, 45.374100, 46.007771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358150, 45.112663, 46.205906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.086571, 44.851578, 46.340366>,  <33.923622, 44.694927, 46.421043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.086571, 44.851578, 46.340366>,  <34.358150, 45.112663, 46.205906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086571, 44.851578, 46.340366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463054, -0.736000, -0.493848,
		0.569750, -0.179638, 0.801945,
		-0.678945, -0.652713, 0.336153,
		33.882889, 44.655766, 46.441212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773319, 44.493839, 46.365181>,  <34.358150, 45.112663, 46.205906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773319, 44.493839, 46.365181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382915, 44.409943, 46.341831>,  <34.148674, 44.359604, 46.327820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382915, 44.409943, 46.341831>,  <34.773319, 44.493839, 46.365181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382915, 44.409943, 46.341831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212252, -0.857002, -0.469571,
		0.048461, -0.470697, 0.880963,
		-0.976013, -0.209742, -0.058376,
		34.090111, 44.347019, 46.324318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657372, 43.831200, 46.554405>,  <34.773319, 44.493839, 46.365181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657372, 43.831200, 46.554405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355274, 43.935966, 46.314068>,  <34.174015, 43.998825, 46.169865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355274, 43.935966, 46.314068>,  <34.657372, 43.831200, 46.554405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355274, 43.935966, 46.314068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221207, -0.761055, -0.609805,
		-0.616989, -0.593461, 0.516844,
		-0.755243, 0.261914, -0.600841,
		34.128700, 44.014542, 46.133816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335106, 43.168503, 46.286221>,  <34.657372, 43.831200, 46.554405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335106, 43.168503, 46.286221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212032, 43.464325, 46.046761>,  <34.138187, 43.641819, 45.903084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212032, 43.464325, 46.046761>,  <34.335106, 43.168503, 46.286221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212032, 43.464325, 46.046761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094026, -0.602462, -0.792590,
		-0.946831, -0.300156, 0.115831,
		-0.307684, 0.739557, -0.598653,
		34.119728, 43.686192, 45.867165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900131, 42.849743, 45.726517>,  <34.335106, 43.168503, 46.286221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900131, 42.849743, 45.726517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018703, 43.204006, 45.583549>,  <34.089848, 43.416565, 45.497768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018703, 43.204006, 45.583549>,  <33.900131, 42.849743, 45.726517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018703, 43.204006, 45.583549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102474, -0.401571, -0.910076,
		-0.949542, 0.233144, -0.209793,
		0.296426, 0.885655, -0.357418,
		34.107632, 43.469704, 45.476326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568840, 42.912140, 45.029751>,  <33.900131, 42.849743, 45.726517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568840, 42.912140, 45.029751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879917, 43.163475, 45.021854>,  <34.066563, 43.314278, 45.017117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879917, 43.163475, 45.021854>,  <33.568840, 42.912140, 45.029751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879917, 43.163475, 45.021854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276706, -0.370332, -0.886729,
		-0.564477, 0.684137, -0.461869,
		0.777688, 0.628340, -0.019739,
		34.113224, 43.351978, 45.015934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469460, 43.246403, 44.419258>,  <33.568840, 42.912140, 45.029751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469460, 43.246403, 44.419258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.857521, 43.305676, 44.496033>,  <34.090359, 43.341240, 44.542095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.857521, 43.305676, 44.496033>,  <33.469460, 43.246403, 44.419258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857521, 43.305676, 44.496033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213740, -0.148806, -0.965491,
		-0.114511, 0.977700, -0.176038,
		0.970156, 0.148186, 0.191933,
		34.148567, 43.350132, 44.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700863, 43.602016, 43.788620>,  <33.469460, 43.246403, 44.419258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700863, 43.602016, 43.788620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018650, 43.454185, 43.981380>,  <34.209320, 43.365486, 44.097038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018650, 43.454185, 43.981380>,  <33.700863, 43.602016, 43.788620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018650, 43.454185, 43.981380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372916, -0.329414, -0.867421,
		0.479329, 0.868847, -0.123885,
		0.794466, -0.369582, 0.481905,
		34.256989, 43.343311, 44.125954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187363, 43.772682, 43.379978>,  <33.700863, 43.602016, 43.788620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187363, 43.772682, 43.379978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334488, 43.487411, 43.618671>,  <34.422764, 43.316250, 43.761887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334488, 43.487411, 43.618671>,  <34.187363, 43.772682, 43.379978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334488, 43.487411, 43.618671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431481, -0.437564, -0.788899,
		0.823733, 0.547650, 0.146779,
		0.367815, -0.713175, 0.596736,
		34.444832, 43.273460, 43.797691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966934, 43.720451, 43.189400>,  <34.187363, 43.772682, 43.379978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966934, 43.720451, 43.189400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806595, 43.397137, 43.361904>,  <34.710392, 43.203148, 43.465405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806595, 43.397137, 43.361904>,  <34.966934, 43.720451, 43.189400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806595, 43.397137, 43.361904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299695, -0.560526, -0.772006,
		0.865737, -0.180214, 0.466929,
		-0.400852, -0.808290, 0.431259,
		34.686340, 43.154648, 43.491283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516087, 43.338539, 43.211811>,  <34.966934, 43.720451, 43.189400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516087, 43.338539, 43.211811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226578, 43.063305, 43.232567>,  <35.052872, 42.898163, 43.245022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226578, 43.063305, 43.232567>,  <35.516087, 43.338539, 43.211811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226578, 43.063305, 43.232567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444323, -0.522262, -0.727887,
		0.527950, -0.503767, 0.683731,
		-0.723772, -0.688085, 0.051893,
		35.009445, 42.856880, 43.248135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.177567, 41.321907, 31.625334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.831566, 41.312035, 31.825796>,  <40.623966, 41.306110, 31.946074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.831566, 41.312035, 31.825796>,  <41.177567, 41.321907, 31.625334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831566, 41.312035, 31.825796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448078, -0.487490, 0.749386,
		0.225811, 0.872780, 0.432742,
		-0.865006, -0.024683, 0.501154,
		40.572063, 41.304630, 31.976143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369610, 41.515579, 32.347076>,  <41.177567, 41.321907, 31.625334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369610, 41.515579, 32.347076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022598, 41.317970, 32.370148>,  <40.814392, 41.199406, 32.383991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022598, 41.317970, 32.370148>,  <41.369610, 41.515579, 32.347076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022598, 41.317970, 32.370148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411838, -0.648466, 0.640219,
		-0.278883, 0.579165, 0.766024,
		-0.867533, -0.494024, 0.057676,
		40.762337, 41.169762, 32.387451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133774, 41.738701, 33.012222>,  <41.369610, 41.515579, 32.347076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133774, 41.738701, 33.012222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959927, 41.390003, 32.921745>,  <40.855618, 41.180782, 32.867458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959927, 41.390003, 32.921745>,  <41.133774, 41.738701, 33.012222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959927, 41.390003, 32.921745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483638, -0.437783, 0.757918,
		-0.759738, 0.220007, 0.611878,
		-0.434617, -0.871747, -0.226197,
		40.829540, 41.128479, 32.853886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879581, 41.547077, 33.644058>,  <41.133774, 41.738701, 33.012222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879581, 41.547077, 33.644058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.897373, 41.218048, 33.417290>,  <40.908051, 41.020630, 33.281227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.897373, 41.218048, 33.417290>,  <40.879581, 41.547077, 33.644058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897373, 41.218048, 33.417290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265217, -0.537395, 0.800541,
		-0.963162, -0.185967, 0.194255,
		0.044482, -0.822571, -0.566920,
		40.910717, 40.971275, 33.247215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387798, 40.991161, 33.951591>,  <40.879581, 41.547077, 33.644058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387798, 40.991161, 33.951591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666885, 40.799469, 33.738605>,  <40.834339, 40.684452, 33.610813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666885, 40.799469, 33.738605>,  <40.387798, 40.991161, 33.951591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666885, 40.799469, 33.738605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144649, -0.633729, 0.759911,
		-0.701620, -0.607223, -0.372841,
		0.697715, -0.479237, -0.532471,
		40.876202, 40.655697, 33.578865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365456, 40.301090, 34.267563>,  <40.387798, 40.991161, 33.951591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365456, 40.301090, 34.267563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.702770, 40.323318, 34.053730>,  <40.905159, 40.336655, 33.925430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.702770, 40.323318, 34.053730>,  <40.365456, 40.301090, 34.267563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702770, 40.323318, 34.053730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438071, -0.647327, 0.623748,
		-0.311386, -0.760184, -0.570227,
		0.843286, 0.055573, -0.534583,
		40.955757, 40.339989, 33.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719177, 39.668705, 34.286922>,  <40.365456, 40.301090, 34.267563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719177, 39.668705, 34.286922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022346, 39.897526, 34.161510>,  <41.204250, 40.034817, 34.086262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022346, 39.897526, 34.161510>,  <40.719177, 39.668705, 34.286922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022346, 39.897526, 34.161510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646926, -0.597345, 0.473988,
		0.083857, -0.562082, -0.822819,
		0.757928, 0.572051, -0.313534,
		41.249725, 40.069141, 34.067451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194431, 39.192509, 34.125450>,  <40.719177, 39.668705, 34.286922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194431, 39.192509, 34.125450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398201, 39.532532, 34.178936>,  <41.520462, 39.736546, 34.211025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398201, 39.532532, 34.178936>,  <41.194431, 39.192509, 34.125450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398201, 39.532532, 34.178936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739835, -0.512019, 0.436441,
		0.439464, -0.123411, -0.889742,
		0.509427, 0.850062, 0.133710,
		41.551029, 39.787552, 34.219048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774246, 39.104366, 33.777260>,  <41.194431, 39.192509, 34.125450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774246, 39.104366, 33.777260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827381, 39.380569, 34.061668>,  <41.859264, 39.546291, 34.232315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827381, 39.380569, 34.061668>,  <41.774246, 39.104366, 33.777260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827381, 39.380569, 34.061668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734691, -0.550119, 0.396987,
		0.665269, 0.469645, -0.580388,
		0.132839, 0.690509, 0.711021,
		41.867233, 39.587723, 34.274975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437073, 39.092388, 33.895367>,  <41.774246, 39.104366, 33.777260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437073, 39.092388, 33.895367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284542, 39.253033, 34.228424>,  <42.193024, 39.349419, 34.428261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284542, 39.253033, 34.228424>,  <42.437073, 39.092388, 33.895367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284542, 39.253033, 34.228424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594588, -0.583124, 0.553563,
		0.707852, 0.706169, -0.016431,
		-0.381327, 0.401610, 0.832645,
		42.170143, 39.373516, 34.478218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972485, 39.137325, 34.358887>,  <42.437073, 39.092388, 33.895367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972485, 39.137325, 34.358887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657394, 39.169514, 34.603184>,  <42.468338, 39.188828, 34.749763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657394, 39.169514, 34.603184>,  <42.972485, 39.137325, 34.358887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657394, 39.169514, 34.603184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443482, -0.614035, 0.652905,
		0.427559, 0.785166, 0.448005,
		-0.787729, 0.080473, 0.610743,
		42.421074, 39.193657, 34.786407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209621, 39.453259, 34.891903>,  <42.972485, 39.137325, 34.358887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209621, 39.453259, 34.891903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886120, 39.273754, 35.043972>,  <42.692020, 39.166050, 35.135216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886120, 39.273754, 35.043972>,  <43.209621, 39.453259, 34.891903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886120, 39.273754, 35.043972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587865, -0.596546, 0.546395,
		-0.018409, 0.665390, 0.746269,
		-0.808750, -0.448764, 0.380177,
		42.643494, 39.139126, 35.158024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406887, 39.372509, 35.582237>,  <43.209621, 39.453259, 34.891903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406887, 39.372509, 35.582237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082314, 39.139679, 35.561195>,  <42.887569, 38.999981, 35.548569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082314, 39.139679, 35.561195>,  <43.406887, 39.372509, 35.582237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082314, 39.139679, 35.561195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362904, -0.572357, 0.735329,
		-0.458126, 0.577578, 0.675666,
		-0.811432, -0.582074, -0.052606,
		42.838882, 38.965057, 35.545414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177067, 39.326862, 36.202053>,  <43.406887, 39.372509, 35.582237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177067, 39.326862, 36.202053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044113, 39.007835, 36.000694>,  <42.964340, 38.816418, 35.879879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044113, 39.007835, 36.000694>,  <43.177067, 39.326862, 36.202053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044113, 39.007835, 36.000694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226534, -0.585630, 0.778280,
		-0.915536, 0.144648, 0.375328,
		-0.332380, -0.797568, -0.503398,
		42.944401, 38.768566, 35.849674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747070, 39.003716, 36.672817>,  <43.177067, 39.326862, 36.202053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747070, 39.003716, 36.672817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841705, 38.721615, 36.405491>,  <42.898487, 38.552353, 36.245094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841705, 38.721615, 36.405491>,  <42.747070, 39.003716, 36.672817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841705, 38.721615, 36.405491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296481, -0.602633, 0.740900,
		-0.925271, -0.373430, 0.066519,
		0.236587, -0.705255, -0.668313,
		42.912682, 38.510040, 36.204998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725185, 38.346222, 37.059795>,  <42.747070, 39.003716, 36.672817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725185, 38.346222, 37.059795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927044, 38.235508, 36.732693>,  <43.048157, 38.169079, 36.536430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927044, 38.235508, 36.732693>,  <42.725185, 38.346222, 37.059795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927044, 38.235508, 36.732693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365805, -0.789427, 0.492941,
		-0.781998, -0.547899, -0.297130,
		0.504644, -0.276788, -0.817755,
		43.078438, 38.152470, 36.487366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554302, 37.640202, 36.923012>,  <42.725185, 38.346222, 37.059795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554302, 37.640202, 36.923012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.904404, 37.702484, 36.739845>,  <43.114464, 37.739853, 36.629948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.904404, 37.702484, 36.739845>,  <42.554302, 37.640202, 36.923012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904404, 37.702484, 36.739845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321781, -0.894296, 0.310953,
		-0.361090, -0.419510, -0.832841,
		0.875255, 0.155711, -0.457912,
		43.166981, 37.749199, 36.602470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661774, 36.994953, 36.642708>,  <42.554302, 37.640202, 36.923012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661774, 36.994953, 36.642708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016083, 37.180462, 36.635475>,  <43.228668, 37.291767, 36.631138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016083, 37.180462, 36.635475>,  <42.661774, 36.994953, 36.642708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016083, 37.180462, 36.635475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436636, -0.819475, 0.371227,
		0.157351, -0.336715, -0.928366,
		0.885771, 0.463771, -0.018077,
		43.281815, 37.319592, 36.630051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149216, 36.589748, 36.302288>,  <42.661774, 36.994953, 36.642708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149216, 36.589748, 36.302288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378681, 36.829010, 36.526115>,  <43.516361, 36.972569, 36.660412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378681, 36.829010, 36.526115>,  <43.149216, 36.589748, 36.302288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378681, 36.829010, 36.526115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629852, -0.758880, 0.165494,
		0.523638, 0.257509, -0.812091,
		0.573663, 0.598156, 0.559571,
		43.550781, 37.008457, 36.693985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846405, 36.500595, 36.110916>,  <43.149216, 36.589748, 36.302288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846405, 36.500595, 36.110916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883862, 36.657124, 36.477108>,  <43.906334, 36.751041, 36.696823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883862, 36.657124, 36.477108>,  <43.846405, 36.500595, 36.110916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883862, 36.657124, 36.477108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607360, -0.751051, 0.258914,
		0.788889, 0.531780, -0.308000,
		0.093639, 0.391322, 0.915478,
		43.911953, 36.774521, 36.751751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604195, 36.551624, 36.252659>,  <43.846405, 36.500595, 36.110916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604195, 36.551624, 36.252659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397175, 36.544102, 36.594837>,  <44.272964, 36.539589, 36.800144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397175, 36.544102, 36.594837>,  <44.604195, 36.551624, 36.252659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397175, 36.544102, 36.594837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614080, -0.704376, 0.356034,
		0.595859, 0.709578, 0.376100,
		-0.517550, -0.018809, 0.855446,
		44.241909, 36.538460, 36.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298611, 36.381104, 36.041367>,  <44.604195, 36.551624, 36.252659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298611, 36.381104, 36.041367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.573139, 36.304020, 35.760841>,  <45.737854, 36.257771, 35.592525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.573139, 36.304020, 35.760841>,  <45.298611, 36.381104, 36.041367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573139, 36.304020, 35.760841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547722, 0.497461, -0.672706,
		0.478507, 0.845812, 0.235867,
		0.686317, -0.192705, -0.701309,
		45.779034, 36.246208, 35.550449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610126, 37.000851, 35.851036>,  <45.298611, 36.381104, 36.041367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610126, 37.000851, 35.851036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605831, 36.736900, 35.550514>,  <45.603252, 36.578529, 35.370201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605831, 36.736900, 35.550514>,  <45.610126, 37.000851, 35.851036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605831, 36.736900, 35.550514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634851, 0.584991, -0.504727,
		0.772560, 0.471544, -0.425202,
		-0.010738, -0.659872, -0.751301,
		45.602608, 36.538940, 35.325123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607227, 37.380760, 35.337666>,  <45.610126, 37.000851, 35.851036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607227, 37.380760, 35.337666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464054, 37.040337, 35.184002>,  <45.378151, 36.836082, 35.091805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464054, 37.040337, 35.184002>,  <45.607227, 37.380760, 35.337666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464054, 37.040337, 35.184002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673928, 0.520226, -0.524581,
		0.646301, 0.071132, -0.759760,
		-0.357932, -0.851061, -0.384160,
		45.356674, 36.785019, 35.068752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709667, 37.394245, 34.573475>,  <45.607227, 37.380760, 35.337666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709667, 37.394245, 34.573475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439175, 37.104797, 34.628735>,  <45.276878, 36.931129, 34.661888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439175, 37.104797, 34.628735>,  <45.709667, 37.394245, 34.573475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439175, 37.104797, 34.628735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603017, 0.435989, -0.668046,
		0.423169, -0.535071, -0.731182,
		-0.676239, -0.723611, 0.138160,
		45.236305, 36.887711, 34.670177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614079, 37.041412, 33.844280>,  <45.709667, 37.394245, 34.573475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614079, 37.041412, 33.844280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294086, 36.980083, 34.076324>,  <45.102093, 36.943287, 34.215549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294086, 36.980083, 34.076324>,  <45.614079, 37.041412, 33.844280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294086, 36.980083, 34.076324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594708, 0.331053, -0.732616,
		-0.079721, -0.931073, -0.356017,
		-0.799979, -0.153321, 0.580108,
		45.054092, 36.934086, 34.250359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342262, 36.460613, 33.516647>,  <45.614079, 37.041412, 33.844280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342262, 36.460613, 33.516647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058098, 36.635666, 33.737118>,  <44.887600, 36.740700, 33.869400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058098, 36.635666, 33.737118>,  <45.342262, 36.460613, 33.516647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058098, 36.635666, 33.737118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437055, 0.339512, -0.832896,
		-0.551633, -0.832591, -0.049923,
		-0.710411, 0.437634, 0.551174,
		44.844975, 36.766956, 33.902470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685390, 36.275578, 33.233780>,  <45.342262, 36.460613, 33.516647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685390, 36.275578, 33.233780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.622334, 36.611378, 33.441772>,  <44.584499, 36.812859, 33.566570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.622334, 36.611378, 33.441772>,  <44.685390, 36.275578, 33.233780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622334, 36.611378, 33.441772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440040, 0.411680, -0.798051,
		-0.884034, -0.354617, 0.304518,
		-0.157639, 0.839504, 0.519984,
		44.575043, 36.863228, 33.597767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973053, 36.546368, 33.054848>,  <44.685390, 36.275578, 33.233780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973053, 36.546368, 33.054848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183647, 36.853275, 33.201336>,  <44.310005, 37.037418, 33.289227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183647, 36.853275, 33.201336>,  <43.973053, 36.546368, 33.054848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183647, 36.853275, 33.201336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313844, 0.575723, -0.755013,
		-0.790135, 0.282570, 0.543913,
		0.526487, 0.767266, 0.366216,
		44.341595, 37.083454, 33.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536373, 37.062450, 33.103912>,  <43.973053, 36.546368, 33.054848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536373, 37.062450, 33.103912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903324, 37.219440, 33.077454>,  <44.123497, 37.313637, 33.061581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903324, 37.219440, 33.077454>,  <43.536373, 37.062450, 33.103912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903324, 37.219440, 33.077454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321515, 0.632801, -0.704408,
		-0.234610, 0.667475, 0.706707,
		0.917380, 0.392478, -0.066142,
		44.178539, 37.337185, 33.057610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379993, 37.816578, 33.051704>,  <43.536373, 37.062450, 33.103912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379993, 37.816578, 33.051704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751823, 37.749557, 32.920364>,  <43.974922, 37.709347, 32.841560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751823, 37.749557, 32.920364>,  <43.379993, 37.816578, 33.051704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751823, 37.749557, 32.920364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151566, 0.638248, -0.754763,
		0.336031, 0.751377, 0.567905,
		0.929576, -0.167549, -0.328354,
		44.030697, 37.699291, 32.821857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533451, 38.545033, 32.802746>,  <43.379993, 37.816578, 33.051704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533451, 38.545033, 32.802746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781471, 38.280201, 32.634369>,  <43.930283, 38.121304, 32.533344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781471, 38.280201, 32.634369>,  <43.533451, 38.545033, 32.802746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781471, 38.280201, 32.634369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043318, 0.506819, -0.860963,
		0.783366, 0.552073, 0.285573,
		0.620049, -0.662080, -0.420939,
		43.967487, 38.081577, 32.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060909, 38.897449, 32.544762>,  <43.533451, 38.545033, 32.802746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060909, 38.897449, 32.544762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076466, 38.568336, 32.317951>,  <44.085800, 38.370869, 32.181866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076466, 38.568336, 32.317951>,  <44.060909, 38.897449, 32.544762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076466, 38.568336, 32.317951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110641, 0.567516, -0.815894,
		0.993099, -0.031005, 0.113105,
		0.038893, -0.822778, -0.567030,
		44.088135, 38.321503, 32.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440105, 39.112900, 32.009388>,  <44.060909, 38.897449, 32.544762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440105, 39.112900, 32.009388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.288898, 38.769711, 31.870253>,  <44.198174, 38.563797, 31.786772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.288898, 38.769711, 31.870253>,  <44.440105, 39.112900, 32.009388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288898, 38.769711, 31.870253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070300, 0.401236, -0.913273,
		0.923125, -0.320780, -0.211989,
		-0.378017, -0.857968, -0.347840,
		44.175491, 38.512321, 31.765900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651165, 39.045815, 31.309464>,  <44.440105, 39.112900, 32.009388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651165, 39.045815, 31.309464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316647, 38.826874, 31.322166>,  <44.115936, 38.695511, 31.329788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316647, 38.826874, 31.322166>,  <44.651165, 39.045815, 31.309464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316647, 38.826874, 31.322166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302831, 0.412855, -0.858979,
		0.457056, -0.727979, -0.511025,
		-0.836297, -0.547356, 0.031756,
		44.065758, 38.662666, 31.331694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646847, 38.932312, 30.623762>,  <44.651165, 39.045815, 31.309464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646847, 38.932312, 30.623762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295700, 38.816772, 30.776554>,  <44.085011, 38.747448, 30.868229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295700, 38.816772, 30.776554>,  <44.646847, 38.932312, 30.623762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295700, 38.816772, 30.776554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478459, 0.494882, -0.725375,
		0.020491, -0.819547, -0.572646,
		-0.877871, -0.288852, 0.381979,
		44.032337, 38.730118, 30.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282272, 38.794888, 30.046692>,  <44.646847, 38.932312, 30.623762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282272, 38.794888, 30.046692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016006, 38.853039, 30.339474>,  <43.856247, 38.887928, 30.515142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016006, 38.853039, 30.339474>,  <44.282272, 38.794888, 30.046692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016006, 38.853039, 30.339474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576164, 0.523230, -0.627905,
		-0.474261, -0.839700, -0.264538,
		-0.665667, 0.145374, 0.731952,
		43.816307, 38.896652, 30.559059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549435, 38.710732, 29.687990>,  <44.282272, 38.794888, 30.046692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549435, 38.710732, 29.687990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.495251, 38.888039, 30.042427>,  <43.462742, 38.994423, 30.255089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.495251, 38.888039, 30.042427>,  <43.549435, 38.710732, 29.687990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495251, 38.888039, 30.042427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639824, 0.643714, -0.419830,
		-0.756489, -0.623814, 0.196419,
		-0.135458, 0.443271, 0.886094,
		43.454613, 39.021019, 30.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756542, 38.815651, 29.737320>,  <43.549435, 38.710732, 29.687990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756542, 38.815651, 29.737320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943199, 39.063133, 29.990128>,  <43.055191, 39.211624, 30.141813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943199, 39.063133, 29.990128>,  <42.756542, 38.815651, 29.737320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943199, 39.063133, 29.990128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546703, 0.763503, -0.343772,
		-0.695243, -0.185110, 0.694529,
		0.466640, 0.618706, 0.632020,
		43.083191, 39.248745, 30.179733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330883, 39.077251, 30.281118>,  <42.756542, 38.815651, 29.737320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330883, 39.077251, 30.281118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618977, 39.353054, 30.250515>,  <42.791832, 39.518536, 30.232153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618977, 39.353054, 30.250515>,  <42.330883, 39.077251, 30.281118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618977, 39.353054, 30.250515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693731, 0.715431, -0.083038,
		-0.002518, 0.112884, 0.993605,
		0.720229, 0.689504, -0.076509,
		42.835045, 39.559906, 30.227562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122829, 39.589512, 30.635071>,  <42.330883, 39.077251, 30.281118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122829, 39.589512, 30.635071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392437, 39.766685, 30.398596>,  <42.554203, 39.872990, 30.256710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392437, 39.766685, 30.398596>,  <42.122829, 39.589512, 30.635071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392437, 39.766685, 30.398596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557775, 0.829872, -0.014165,
		0.484335, 0.339297, 0.806409,
		0.674023, 0.442934, -0.591188,
		42.594643, 39.899567, 30.221239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205982, 40.256256, 30.966249>,  <42.122829, 39.589512, 30.635071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205982, 40.256256, 30.966249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.318913, 40.256294, 30.582523>,  <42.386673, 40.256317, 30.352287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.318913, 40.256294, 30.582523>,  <42.205982, 40.256256, 30.966249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318913, 40.256294, 30.582523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513195, 0.844894, -0.150947,
		0.810506, 0.534933, 0.238590,
		0.282330, 0.000100, -0.959317,
		42.403610, 40.256325, 30.294727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.985714, 40.057995, 41.727207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610764, 40.000664, 41.600224>,  <39.385792, 39.966267, 41.524033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610764, 40.000664, 41.600224>,  <39.985714, 40.057995, 41.727207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610764, 40.000664, 41.600224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332370, -0.640638, -0.692180,
		-0.104165, -0.754347, 0.648159,
		-0.937379, -0.143328, -0.317455,
		39.329552, 39.957664, 41.504986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815868, 39.326855, 41.658348>,  <39.985714, 40.057995, 41.727207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815868, 39.326855, 41.658348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560444, 39.517750, 41.416859>,  <39.407188, 39.632286, 41.271965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560444, 39.517750, 41.416859>,  <39.815868, 39.326855, 41.658348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560444, 39.517750, 41.416859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125267, -0.709573, -0.693408,
		-0.759313, -0.518406, 0.393318,
		-0.638555, 0.477244, -0.603727,
		39.368877, 39.660923, 41.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364895, 38.835415, 41.470047>,  <39.815868, 39.326855, 41.658348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364895, 38.835415, 41.470047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313599, 39.118919, 41.192570>,  <39.282822, 39.289021, 41.026081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313599, 39.118919, 41.192570>,  <39.364895, 38.835415, 41.470047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313599, 39.118919, 41.192570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102937, -0.686181, -0.720110,
		-0.986386, -0.163756, 0.015041,
		-0.128243, 0.708759, -0.693696,
		39.275124, 39.331547, 40.984459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025475, 38.516907, 41.024204>,  <39.364895, 38.835415, 41.470047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025475, 38.516907, 41.024204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155422, 38.820724, 40.798798>,  <39.233391, 39.003014, 40.663551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155422, 38.820724, 40.798798>,  <39.025475, 38.516907, 41.024204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155422, 38.820724, 40.798798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190881, -0.636236, -0.747508,
		-0.926295, 0.135280, -0.351678,
		0.324873, 0.759541, -0.563520,
		39.252884, 39.048588, 40.629742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778389, 38.388130, 40.323254>,  <39.025475, 38.516907, 41.024204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778389, 38.388130, 40.323254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070198, 38.655178, 40.263817>,  <39.245281, 38.815407, 40.228153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070198, 38.655178, 40.263817>,  <38.778389, 38.388130, 40.323254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070198, 38.655178, 40.263817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393106, -0.587064, -0.707689,
		-0.559706, 0.457858, -0.690721,
		0.729519, 0.667624, -0.148597,
		39.289055, 38.855465, 40.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770565, 38.499886, 39.529453>,  <38.778389, 38.388130, 40.323254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770565, 38.499886, 39.529453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119938, 38.568436, 39.711769>,  <39.329563, 38.609566, 39.821159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119938, 38.568436, 39.711769>,  <38.770565, 38.499886, 39.529453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119938, 38.568436, 39.711769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486628, -0.340849, -0.804373,
		0.017508, 0.924367, -0.381104,
		0.873434, 0.171372, 0.455790,
		39.381969, 38.619846, 39.848507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229729, 38.780674, 38.951645>,  <38.770565, 38.499886, 39.529453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229729, 38.780674, 38.951645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454788, 38.668606, 39.262753>,  <39.589825, 38.601364, 39.449417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454788, 38.668606, 39.262753>,  <39.229729, 38.780674, 38.951645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454788, 38.668606, 39.262753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521703, -0.609480, -0.596959,
		0.641286, 0.741645, -0.196758,
		0.562652, -0.280172, 0.777770,
		39.623585, 38.584553, 39.496082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872787, 38.689167, 38.612053>,  <39.229729, 38.780674, 38.951645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872787, 38.689167, 38.612053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933647, 38.512505, 38.965729>,  <39.970161, 38.406506, 39.177933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933647, 38.512505, 38.965729>,  <39.872787, 38.689167, 38.612053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933647, 38.512505, 38.965729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554903, -0.702128, -0.446205,
		0.817883, 0.558528, 0.138248,
		0.152150, -0.441658, 0.884188,
		39.979294, 38.380009, 39.230984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464455, 38.459560, 38.537746>,  <39.872787, 38.689167, 38.612053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464455, 38.459560, 38.537746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343704, 38.251961, 38.857624>,  <40.271255, 38.127399, 39.049549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343704, 38.251961, 38.857624>,  <40.464455, 38.459560, 38.537746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343704, 38.251961, 38.857624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599020, -0.755821, -0.264404,
		0.741650, 0.399214, 0.539057,
		-0.301877, -0.519002, 0.799692,
		40.253139, 38.096260, 39.097530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108028, 38.230003, 38.849762>,  <40.464455, 38.459560, 38.537746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108028, 38.230003, 38.849762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799347, 37.992260, 38.940273>,  <40.614136, 37.849613, 38.994579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799347, 37.992260, 38.940273>,  <41.108028, 38.230003, 38.849762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799347, 37.992260, 38.940273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533054, -0.798551, -0.279588,
		0.346871, -0.095142, 0.933075,
		-0.771708, -0.594361, 0.226278,
		40.567833, 37.813953, 39.008156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399403, 37.630817, 39.159534>,  <41.108028, 38.230003, 38.849762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399403, 37.630817, 39.159534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037880, 37.505573, 39.042854>,  <40.820965, 37.430428, 38.972847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037880, 37.505573, 39.042854>,  <41.399403, 37.630817, 39.159534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037880, 37.505573, 39.042854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397157, -0.867564, -0.299331,
		-0.159348, -0.386390, 0.908466,
		-0.903811, -0.313106, -0.291702,
		40.766735, 37.411640, 38.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477528, 36.892570, 39.326183>,  <41.399403, 37.630817, 39.159534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477528, 36.892570, 39.326183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176186, 36.898693, 39.063210>,  <40.995380, 36.902367, 38.905426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176186, 36.898693, 39.063210>,  <41.477528, 36.892570, 39.326183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176186, 36.898693, 39.063210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282378, -0.895341, -0.344423,
		-0.593899, -0.445118, 0.670190,
		-0.753357, 0.015305, -0.657433,
		40.950180, 36.903286, 38.865978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266319, 36.180153, 39.252483>,  <41.477528, 36.892570, 39.326183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266319, 36.180153, 39.252483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145321, 36.392700, 38.935966>,  <41.072723, 36.520229, 38.746056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145321, 36.392700, 38.935966>,  <41.266319, 36.180153, 39.252483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145321, 36.392700, 38.935966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181649, -0.782832, -0.595128,
		-0.935682, -0.323759, 0.140279,
		-0.302493, 0.531369, -0.791293,
		41.054573, 36.552113, 38.698578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886730, 35.951874, 39.237141>,  <41.266319, 36.180153, 39.252483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886730, 35.951874, 39.237141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691509, 36.213741, 39.006241>,  <41.574379, 36.370861, 38.867702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691509, 36.213741, 39.006241>,  <41.886730, 35.951874, 39.237141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691509, 36.213741, 39.006241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221060, -0.547084, -0.807361,
		-0.844359, -0.521637, 0.122282,
		-0.488048, 0.654671, -0.577249,
		41.545094, 36.410141, 38.833065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844898, 35.512821, 38.628029>,  <41.886730, 35.951874, 39.237141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844898, 35.512821, 38.628029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853256, 35.195450, 38.871349>,  <41.858273, 35.005028, 39.017342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853256, 35.195450, 38.871349>,  <41.844898, 35.512821, 38.628029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853256, 35.195450, 38.871349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735014, 0.400254, 0.547313,
		-0.677730, -0.458546, -0.574819,
		0.020894, -0.793430, 0.608302,
		41.859524, 34.957420, 39.053841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162594, 35.298630, 38.679489>,  <41.844898, 35.512821, 38.628029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162594, 35.298630, 38.679489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332329, 35.122314, 38.995880>,  <41.434170, 35.016525, 39.185715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332329, 35.122314, 38.995880>,  <41.162594, 35.298630, 38.679489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332329, 35.122314, 38.995880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715191, 0.372609, 0.591325,
		-0.555375, -0.816619, -0.157137,
		0.424336, -0.440790, 0.790976,
		41.459629, 34.990078, 39.233173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634979, 34.977757, 39.019367>,  <41.162594, 35.298630, 38.679489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634979, 34.977757, 39.019367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915585, 35.045681, 39.296219>,  <41.083946, 35.086433, 39.462330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915585, 35.045681, 39.296219>,  <40.634979, 34.977757, 39.019367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915585, 35.045681, 39.296219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709892, 0.251996, 0.657686,
		-0.062735, -0.952714, 0.297323,
		0.701512, 0.169808, 0.692133,
		41.126038, 35.096622, 39.503860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319679, 34.677567, 39.562386>,  <40.634979, 34.977757, 39.019367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319679, 34.677567, 39.562386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592983, 34.919922, 39.725388>,  <40.756966, 35.065334, 39.823189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592983, 34.919922, 39.725388>,  <40.319679, 34.677567, 39.562386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592983, 34.919922, 39.725388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690447, 0.354535, 0.630546,
		0.237565, -0.712185, 0.660572,
		0.683261, 0.605885, 0.407501,
		40.797962, 35.101688, 39.847637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250637, 34.598137, 40.175014>,  <40.319679, 34.677567, 39.562386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250637, 34.598137, 40.175014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445641, 34.945419, 40.212036>,  <40.562641, 35.153790, 40.234249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445641, 34.945419, 40.212036>,  <40.250637, 34.598137, 40.175014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445641, 34.945419, 40.212036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587023, 0.247449, 0.770826,
		0.646331, -0.430111, 0.630287,
		0.487505, 0.868201, 0.092551,
		40.591892, 35.205879, 40.239803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388790, 34.599678, 40.852917>,  <40.250637, 34.598137, 40.175014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388790, 34.599678, 40.852917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399334, 34.973957, 40.712185>,  <40.405659, 35.198524, 40.627747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399334, 34.973957, 40.712185>,  <40.388790, 34.599678, 40.852917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399334, 34.973957, 40.712185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487190, 0.319348, 0.812811,
		0.872898, 0.149984, 0.464278,
		0.026358, 0.935693, -0.351829,
		40.407242, 35.254665, 40.606636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678261, 35.001675, 41.376579>,  <40.388790, 34.599678, 40.852917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678261, 35.001675, 41.376579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470589, 35.238583, 41.130112>,  <40.345985, 35.380726, 40.982231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470589, 35.238583, 41.130112>,  <40.678261, 35.001675, 41.376579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470589, 35.238583, 41.130112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602507, 0.257693, 0.755367,
		0.606164, 0.763420, 0.223057,
		-0.519182, 0.592270, -0.616171,
		40.314835, 35.416264, 40.945259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579338, 35.520412, 41.719913>,  <40.678261, 35.001675, 41.376579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579338, 35.520412, 41.719913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307945, 35.623722, 41.444828>,  <40.145107, 35.685707, 41.279778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307945, 35.623722, 41.444828>,  <40.579338, 35.520412, 41.719913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307945, 35.623722, 41.444828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541425, 0.456911, 0.705756,
		0.496504, 0.851190, -0.170171,
		-0.678485, 0.258276, -0.687714,
		40.104401, 35.701206, 41.238514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658512, 36.220566, 41.632980>,  <40.579338, 35.520412, 41.719913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658512, 36.220566, 41.632980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294956, 36.138859, 41.487545>,  <40.076824, 36.089832, 41.400284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294956, 36.138859, 41.487545>,  <40.658512, 36.220566, 41.632980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294956, 36.138859, 41.487545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409821, 0.598979, 0.687947,
		0.077252, 0.774272, -0.628120,
		-0.908889, -0.204271, -0.363585,
		40.022289, 36.077576, 41.378468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331436, 36.938103, 41.634209>,  <40.658512, 36.220566, 41.632980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331436, 36.938103, 41.634209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052189, 36.651711, 41.634804>,  <39.884640, 36.479874, 41.635159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052189, 36.651711, 41.634804>,  <40.331436, 36.938103, 41.634209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052189, 36.651711, 41.634804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560842, 0.548137, 0.620485,
		-0.445068, 0.432340, -0.784217,
		-0.698119, -0.715980, 0.001484,
		39.842754, 36.436916, 41.635250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780533, 37.307808, 41.614128>,  <40.331436, 36.938103, 41.634209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780533, 37.307808, 41.614128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584846, 36.973965, 41.715397>,  <39.467434, 36.773659, 41.776157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584846, 36.973965, 41.715397>,  <39.780533, 37.307808, 41.614128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584846, 36.973965, 41.715397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554621, 0.521732, 0.648221,
		-0.673097, 0.176709, -0.718132,
		-0.489219, -0.834607, 0.253170,
		39.438080, 36.723583, 41.791348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934277, 37.312122, 41.466866>,  <39.780533, 37.307808, 41.614128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934277, 37.312122, 41.466866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012535, 37.068199, 41.774075>,  <39.059490, 36.921844, 41.958401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012535, 37.068199, 41.774075>,  <38.934277, 37.312122, 41.466866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012535, 37.068199, 41.774075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689035, 0.471796, 0.550128,
		-0.697821, -0.636826, -0.327871,
		0.195647, -0.609805, 0.768024,
		39.071228, 36.885258, 42.004482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254860, 37.080151, 41.775284>,  <38.934277, 37.312122, 41.466866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254860, 37.080151, 41.775284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517735, 36.995754, 42.064724>,  <38.675457, 36.945118, 42.238388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517735, 36.995754, 42.064724>,  <38.254860, 37.080151, 41.775284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517735, 36.995754, 42.064724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614603, 0.405726, 0.676498,
		-0.436317, -0.889308, 0.136961,
		0.657184, -0.210991, 0.723597,
		38.714890, 36.932457, 42.281803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950615, 36.635151, 42.308098>,  <38.254860, 37.080151, 41.775284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950615, 36.635151, 42.308098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240448, 36.834789, 42.498211>,  <38.414349, 36.954571, 42.612278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240448, 36.834789, 42.498211>,  <37.950615, 36.635151, 42.308098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240448, 36.834789, 42.498211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648846, 0.261515, 0.714569,
		0.232333, -0.826152, 0.513316,
		0.724583, 0.499081, 0.475287,
		38.457821, 36.984516, 42.640793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463531, 36.160896, 42.391254>,  <37.950615, 36.635151, 42.308098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463531, 36.160896, 42.391254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098389, 36.074780, 42.530018>,  <36.879303, 36.023109, 42.613277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098389, 36.074780, 42.530018>,  <37.463531, 36.160896, 42.391254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098389, 36.074780, 42.530018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148041, -0.617311, -0.772665,
		0.380501, -0.756687, 0.531643,
		-0.912854, -0.215295, 0.346908,
		36.824532, 36.010193, 42.634090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445122, 35.421703, 42.451565>,  <37.463531, 36.160896, 42.391254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445122, 35.421703, 42.451565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058910, 35.525810, 42.449993>,  <36.827183, 35.588272, 42.449051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058910, 35.525810, 42.449993>,  <37.445122, 35.421703, 42.451565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058910, 35.525810, 42.449993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201352, -0.756374, -0.622379,
		-0.164953, -0.600135, 0.782706,
		-0.965530, 0.260262, -0.003928,
		36.769253, 35.603889, 42.448814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032402, 34.827007, 42.623177>,  <37.445122, 35.421703, 42.451565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032402, 34.827007, 42.623177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810513, 35.095253, 42.426178>,  <36.677380, 35.256199, 42.307980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810513, 35.095253, 42.426178>,  <37.032402, 34.827007, 42.623177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810513, 35.095253, 42.426178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237288, -0.694849, -0.678881,
		-0.797479, -0.259730, 0.544581,
		-0.554727, 0.670616, -0.492496,
		36.644093, 35.296436, 42.278431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577122, 34.400505, 42.392456>,  <37.032402, 34.827007, 42.623177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577122, 34.400505, 42.392456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528069, 34.729156, 42.169785>,  <36.498638, 34.926346, 42.036182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528069, 34.729156, 42.169785>,  <36.577122, 34.400505, 42.392456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528069, 34.729156, 42.169785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186703, -0.569992, -0.800157,
		-0.974733, 0.005811, 0.223298,
		-0.122629, 0.821630, -0.556675,
		36.491280, 34.975647, 42.002781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841335, 34.406166, 42.109146>,  <36.577122, 34.400505, 42.392456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841335, 34.406166, 42.109146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075855, 34.636066, 41.880795>,  <36.216568, 34.774006, 41.743782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075855, 34.636066, 41.880795>,  <35.841335, 34.406166, 42.109146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075855, 34.636066, 41.880795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320254, -0.482860, -0.815036,
		-0.744100, 0.660686, -0.099037,
		0.586304, 0.574751, -0.570883,
		36.251747, 34.808491, 41.709530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462280, 34.413971, 41.494095>,  <35.841335, 34.406166, 42.109146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462280, 34.413971, 41.494095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823620, 34.549831, 41.389332>,  <36.040424, 34.631348, 41.326473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823620, 34.549831, 41.389332>,  <35.462280, 34.413971, 41.494095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823620, 34.549831, 41.389332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097548, -0.431947, -0.896608,
		-0.417663, 0.835500, -0.357067,
		0.903350, 0.339649, -0.261909,
		36.094624, 34.651726, 41.310760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407551, 34.685223, 40.811760>,  <35.462280, 34.413971, 41.494095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407551, 34.685223, 40.811760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800404, 34.617561, 40.844749>,  <36.036114, 34.576965, 40.864544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800404, 34.617561, 40.844749>,  <35.407551, 34.685223, 40.811760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800404, 34.617561, 40.844749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003948, -0.419631, -0.907686,
		0.188144, 0.891794, -0.411466,
		0.982133, -0.169151, 0.082472,
		36.095043, 34.566814, 40.869492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697289, 35.016605, 40.192371>,  <35.407551, 34.685223, 40.811760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697289, 35.016605, 40.192371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974937, 34.759663, 40.322338>,  <36.141525, 34.605495, 40.400318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974937, 34.759663, 40.322338>,  <35.697289, 35.016605, 40.192371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974937, 34.759663, 40.322338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061612, -0.396689, -0.915883,
		0.717215, 0.655754, -0.235774,
		0.694123, -0.642359, 0.324914,
		36.183174, 34.566956, 40.419811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202908, 35.126423, 39.642349>,  <35.697289, 35.016605, 40.192371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202908, 35.126423, 39.642349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207264, 34.784149, 39.849304>,  <36.209877, 34.578785, 39.973476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207264, 34.784149, 39.849304>,  <36.202908, 35.126423, 39.642349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207264, 34.784149, 39.849304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048989, -0.516337, -0.854983,
		0.998740, 0.034654, 0.036297,
		0.010887, -0.855684, 0.517384,
		36.210529, 34.527443, 40.004520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891060, 34.874306, 39.561630>,  <36.202908, 35.126423, 39.642349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891060, 34.874306, 39.561630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666599, 34.561436, 39.669937>,  <36.531925, 34.373714, 39.734921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666599, 34.561436, 39.669937>,  <36.891060, 34.874306, 39.561630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666599, 34.561436, 39.669937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146248, -0.415677, -0.897677,
		0.814692, -0.464131, 0.347648,
		-0.561149, -0.782174, 0.270771,
		36.498253, 34.326782, 39.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158436, 34.301647, 39.265068>,  <36.891060, 34.874306, 39.561630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158436, 34.301647, 39.265068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817368, 34.122486, 39.372643>,  <36.612724, 34.014988, 39.437187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817368, 34.122486, 39.372643>,  <37.158436, 34.301647, 39.265068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817368, 34.122486, 39.372643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078113, -0.618278, -0.782068,
		0.516571, -0.645842, 0.562177,
		-0.852674, -0.447907, 0.268936,
		36.561565, 33.988113, 39.453323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314133, 33.626770, 39.446075>,  <37.158436, 34.301647, 39.265068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314133, 33.626770, 39.446075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952557, 33.667786, 39.280003>,  <36.735611, 33.692394, 39.180359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952557, 33.667786, 39.280003>,  <37.314133, 33.626770, 39.446075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952557, 33.667786, 39.280003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128565, -0.860767, -0.492495,
		-0.407874, -0.498565, 0.764900,
		-0.903941, 0.102537, -0.415183,
		36.681374, 33.698547, 39.155449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.792950, 36.900639, 46.671726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432377, 36.997406, 46.528122>,  <36.216034, 37.055466, 46.441959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432377, 36.997406, 46.528122>,  <36.792950, 36.900639, 46.671726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432377, 36.997406, 46.528122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318492, -0.191092, -0.928465,
		-0.293217, -0.951293, 0.095208,
		-0.901436, 0.241918, -0.359011,
		36.161945, 37.069981, 46.420418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609871, 36.382870, 46.304020>,  <36.792950, 36.900639, 46.671726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609871, 36.382870, 46.304020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374004, 36.668644, 46.153351>,  <36.232487, 36.840107, 46.062950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374004, 36.668644, 46.153351>,  <36.609871, 36.382870, 46.304020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374004, 36.668644, 46.153351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198845, -0.323600, -0.925064,
		-0.782789, -0.620375, 0.048754,
		-0.589663, 0.714435, -0.376669,
		36.197105, 36.882973, 46.040352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237061, 35.957020, 45.800083>,  <36.609871, 36.382870, 46.304020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237061, 35.957020, 45.800083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199913, 36.343231, 45.702820>,  <36.177624, 36.574959, 45.644463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199913, 36.343231, 45.702820>,  <36.237061, 35.957020, 45.800083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199913, 36.343231, 45.702820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058813, -0.238465, -0.969368,
		-0.993940, -0.104328, -0.034639,
		-0.092872, 0.965531, -0.243156,
		36.172050, 36.632889, 45.629871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714863, 35.936729, 45.285042>,  <36.237061, 35.957020, 45.800083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714863, 35.936729, 45.285042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.894882, 36.287956, 45.219982>,  <36.002895, 36.498692, 45.180946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.894882, 36.287956, 45.219982>,  <35.714863, 35.936729, 45.285042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894882, 36.287956, 45.219982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147574, -0.252766, -0.956207,
		-0.880724, 0.406340, -0.243338,
		0.450053, 0.878064, -0.162652,
		36.029900, 36.551376, 45.171188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477184, 36.229462, 44.597916>,  <35.714863, 35.936729, 45.285042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477184, 36.229462, 44.597916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800789, 36.463520, 44.620220>,  <35.994949, 36.603954, 44.633602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800789, 36.463520, 44.620220>,  <35.477184, 36.229462, 44.597916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800789, 36.463520, 44.620220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147971, -0.110929, -0.982751,
		-0.568867, 0.803305, -0.176327,
		0.809009, 0.585146, 0.055762,
		36.043491, 36.639065, 44.636948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391037, 36.773903, 44.046570>,  <35.477184, 36.229462, 44.597916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391037, 36.773903, 44.046570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775845, 36.699951, 44.126900>,  <36.006729, 36.655579, 44.175098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775845, 36.699951, 44.126900>,  <35.391037, 36.773903, 44.046570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775845, 36.699951, 44.126900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175054, -0.146634, -0.973578,
		0.209446, 0.971759, -0.108701,
		0.962023, -0.184883, 0.200823,
		36.064453, 36.644485, 44.187145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806011, 37.161472, 43.502941>,  <35.391037, 36.773903, 44.046570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806011, 37.161472, 43.502941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047089, 36.876217, 43.646156>,  <36.191734, 36.705063, 43.732086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047089, 36.876217, 43.646156>,  <35.806011, 37.161472, 43.502941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047089, 36.876217, 43.646156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166496, -0.326426, -0.930444,
		0.780409, 0.620385, -0.078000,
		0.602694, -0.713140, 0.358038,
		36.227898, 36.662273, 43.753567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515377, 37.233482, 43.019367>,  <35.806011, 37.161472, 43.502941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515377, 37.233482, 43.019367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517300, 36.873550, 43.193851>,  <36.518456, 36.657589, 43.298542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517300, 36.873550, 43.193851>,  <36.515377, 37.233482, 43.019367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517300, 36.873550, 43.193851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270142, -0.418827, -0.866953,
		0.962809, 0.122009, 0.241067,
		0.004811, -0.899832, 0.436210,
		36.518742, 36.603600, 43.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145821, 36.844528, 42.756470>,  <36.515377, 37.233482, 43.019367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145821, 36.844528, 42.756470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946426, 36.532780, 42.908302>,  <36.826790, 36.345730, 42.999401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946426, 36.532780, 42.908302>,  <37.145821, 36.844528, 42.756470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946426, 36.532780, 42.908302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075098, -0.475043, -0.876752,
		0.863637, -0.408545, 0.295333,
		-0.498489, -0.779375, 0.379584,
		36.796879, 36.298965, 43.022179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712917, 36.567287, 43.153599>,  <37.145821, 36.844528, 42.756470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712917, 36.567287, 43.153599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002060, 36.842125, 43.124271>,  <38.175545, 37.007027, 43.106674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002060, 36.842125, 43.124271>,  <37.712917, 36.567287, 43.153599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002060, 36.842125, 43.124271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414552, 0.516105, 0.749521,
		0.552831, -0.511405, 0.657908,
		0.722858, 0.687096, -0.073315,
		38.218918, 37.048252, 43.102276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552670, 36.872334, 43.733673>,  <37.712917, 36.567287, 43.153599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552670, 36.872334, 43.733673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.819916, 37.101147, 43.543346>,  <37.980263, 37.238434, 43.429150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.819916, 37.101147, 43.543346>,  <37.552670, 36.872334, 43.733673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819916, 37.101147, 43.543346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275749, 0.784311, 0.555715,
		0.691077, -0.240074, 0.681746,
		0.668113, 0.572032, -0.475819,
		38.020351, 37.272755, 43.400600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115921, 37.088223, 44.224674>,  <37.552670, 36.872334, 43.733673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115921, 37.088223, 44.224674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120140, 37.359226, 43.930500>,  <38.122669, 37.521828, 43.753994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120140, 37.359226, 43.930500>,  <38.115921, 37.088223, 44.224674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120140, 37.359226, 43.930500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017474, 0.735492, 0.677308,
		0.999792, 0.005708, 0.019595,
		0.010546, 0.677509, -0.735438,
		38.123302, 37.562481, 43.709869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684700, 37.490459, 44.387699>,  <38.115921, 37.088223, 44.224674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684700, 37.490459, 44.387699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426830, 37.708012, 44.172821>,  <38.272106, 37.838543, 44.043892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426830, 37.708012, 44.172821>,  <38.684700, 37.490459, 44.387699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426830, 37.708012, 44.172821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032624, 0.682505, 0.730153,
		0.763758, 0.488238, -0.422252,
		-0.644677, 0.543885, -0.537197,
		38.233429, 37.871178, 44.011662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932373, 38.239719, 44.360023>,  <38.684700, 37.490459, 44.387699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932373, 38.239719, 44.360023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546776, 38.281181, 44.262058>,  <38.315418, 38.306057, 44.203278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546776, 38.281181, 44.262058>,  <38.932373, 38.239719, 44.360023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546776, 38.281181, 44.262058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123906, 0.639813, 0.758477,
		0.235315, 0.761509, -0.603929,
		-0.963989, 0.103650, -0.244913,
		38.257580, 38.312275, 44.188583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857380, 39.019958, 44.233608>,  <38.932373, 38.239719, 44.360023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857380, 39.019958, 44.233608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503723, 38.840199, 44.284737>,  <38.291531, 38.732342, 44.315414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503723, 38.840199, 44.284737>,  <38.857380, 39.019958, 44.233608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503723, 38.840199, 44.284737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112552, 0.470374, 0.875260,
		-0.453467, 0.759464, -0.466457,
		-0.884138, -0.449403, 0.127820,
		38.238483, 38.705379, 44.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353970, 39.490589, 44.188274>,  <38.857380, 39.019958, 44.233608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353970, 39.490589, 44.188274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192371, 39.209072, 44.422012>,  <38.095413, 39.040161, 44.562256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192371, 39.209072, 44.422012>,  <38.353970, 39.490589, 44.188274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192371, 39.209072, 44.422012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213808, 0.693750, 0.687748,
		-0.889421, 0.152913, -0.430752,
		-0.404000, -0.703796, 0.584342,
		38.071171, 38.997932, 44.597313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717213, 39.782726, 44.439964>,  <38.353970, 39.490589, 44.188274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717213, 39.782726, 44.439964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.784607, 39.483158, 44.696320>,  <37.825043, 39.303417, 44.850132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.784607, 39.483158, 44.696320>,  <37.717213, 39.782726, 44.439964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784607, 39.483158, 44.696320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301157, 0.579981, 0.756919,
		-0.938571, -0.320541, -0.127821,
		0.168490, -0.748916, 0.640887,
		37.835155, 39.258484, 44.888584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071888, 39.689644, 44.882553>,  <37.717213, 39.782726, 44.439964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071888, 39.689644, 44.882553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362446, 39.503571, 45.084923>,  <37.536781, 39.391926, 45.206345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362446, 39.503571, 45.084923>,  <37.071888, 39.689644, 44.882553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362446, 39.503571, 45.084923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282606, 0.468843, 0.836851,
		-0.626483, -0.750863, 0.209103,
		0.726397, -0.465179, 0.505921,
		37.580364, 39.364017, 45.236698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695972, 39.564342, 45.579174>,  <37.071888, 39.689644, 44.882553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695972, 39.564342, 45.579174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089905, 39.517628, 45.630516>,  <37.326263, 39.489597, 45.661320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089905, 39.517628, 45.630516>,  <36.695972, 39.564342, 45.579174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089905, 39.517628, 45.630516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037590, 0.578512, 0.814808,
		-0.169411, -0.807270, 0.565345,
		0.984828, -0.116786, 0.128351,
		37.385353, 39.482594, 45.669022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720886, 39.459270, 46.282681>,  <36.695972, 39.564342, 45.579174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720886, 39.459270, 46.282681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097462, 39.558636, 46.191479>,  <37.323406, 39.618256, 46.136757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097462, 39.558636, 46.191479>,  <36.720886, 39.459270, 46.282681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097462, 39.558636, 46.191479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062256, 0.536523, 0.841586,
		0.331390, -0.806496, 0.489638,
		0.941438, 0.248410, -0.228007,
		37.379894, 39.633160, 46.123077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986984, 39.359283, 46.919029>,  <36.720886, 39.459270, 46.282681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986984, 39.359283, 46.919029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252991, 39.570259, 46.707535>,  <37.412594, 39.696842, 46.580639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252991, 39.570259, 46.707535>,  <36.986984, 39.359283, 46.919029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252991, 39.570259, 46.707535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195110, 0.560693, 0.804708,
		0.720894, -0.638304, 0.269960,
		0.665014, 0.527438, -0.528740,
		37.452496, 39.728489, 46.548912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625221, 39.424450, 47.374172>,  <36.986984, 39.359283, 46.919029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625221, 39.424450, 47.374172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.646984, 39.714233, 47.099304>,  <37.660042, 39.888103, 46.934383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.646984, 39.714233, 47.099304>,  <37.625221, 39.424450, 47.374172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646984, 39.714233, 47.099304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249718, 0.656445, 0.711843,
		0.966789, -0.210325, -0.145197,
		0.054405, 0.724460, -0.687166,
		37.663307, 39.931572, 46.893154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271603, 39.672569, 47.456448>,  <37.625221, 39.424450, 47.374172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271603, 39.672569, 47.456448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047836, 39.951462, 47.277153>,  <37.913578, 40.118797, 47.169575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047836, 39.951462, 47.277153>,  <38.271603, 39.672569, 47.456448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047836, 39.951462, 47.277153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151379, 0.617616, 0.771774,
		0.814947, 0.363888, -0.451051,
		-0.559415, 0.697235, -0.448239,
		37.880013, 40.160633, 47.142681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.674404, 42.398556, 44.841415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924046, 42.130997, 45.002945>,  <32.073830, 41.970463, 45.099861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924046, 42.130997, 45.002945>,  <31.674404, 42.398556, 44.841415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924046, 42.130997, 45.002945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233891, -0.333197, -0.913386,
		0.745514, 0.664497, -0.051500,
		0.624102, -0.668897, 0.403823,
		32.111275, 41.930328, 45.124092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275131, 42.453247, 44.462654>,  <31.674404, 42.398556, 44.841415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275131, 42.453247, 44.462654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324028, 42.096420, 44.636677>,  <32.353367, 41.882324, 44.741093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324028, 42.096420, 44.636677>,  <32.275131, 42.453247, 44.462654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324028, 42.096420, 44.636677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478468, -0.331079, -0.813299,
		0.869554, 0.307584, 0.386352,
		0.122245, -0.892064, 0.435060,
		32.360703, 41.828800, 44.767197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976429, 42.260223, 44.351913>,  <32.275131, 42.453247, 44.462654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976429, 42.260223, 44.351913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782269, 41.921822, 44.440147>,  <32.665771, 41.718781, 44.493088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782269, 41.921822, 44.440147>,  <32.976429, 42.260223, 44.351913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782269, 41.921822, 44.440147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555204, -0.493177, -0.669720,
		0.675377, -0.202611, 0.709094,
		-0.485402, -0.846005, 0.220590,
		32.636646, 41.668018, 44.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485779, 41.714573, 44.295849>,  <32.976429, 42.260223, 44.351913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485779, 41.714573, 44.295849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123005, 41.555248, 44.240967>,  <32.905342, 41.459652, 44.208038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123005, 41.555248, 44.240967>,  <33.485779, 41.714573, 44.295849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123005, 41.555248, 44.240967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314468, -0.423355, -0.849635,
		0.280332, -0.813707, 0.509210,
		-0.906931, -0.398310, -0.137205,
		32.850925, 41.435757, 44.199806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600689, 41.079952, 43.942646>,  <33.485779, 41.714573, 44.295849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600689, 41.079952, 43.942646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207684, 41.130474, 43.887920>,  <32.971882, 41.160786, 43.855083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207684, 41.130474, 43.887920>,  <33.600689, 41.079952, 43.942646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207684, 41.130474, 43.887920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063759, -0.462137, -0.884514,
		-0.174946, -0.877768, 0.446002,
		-0.982511, 0.126305, -0.136814,
		32.912930, 41.168365, 43.846874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205765, 40.404034, 43.975945>,  <33.600689, 41.079952, 43.942646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205765, 40.404034, 43.975945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994568, 40.675533, 43.771778>,  <32.867847, 40.838432, 43.649281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994568, 40.675533, 43.771778>,  <33.205765, 40.404034, 43.975945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994568, 40.675533, 43.771778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112338, -0.539914, -0.834190,
		-0.841785, -0.497786, 0.208822,
		-0.527994, 0.678750, -0.510411,
		32.836170, 40.879158, 43.618656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662094, 39.979778, 43.630184>,  <33.205765, 40.404034, 43.975945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662094, 39.979778, 43.630184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723740, 40.313160, 43.417919>,  <32.760727, 40.513187, 43.290562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723740, 40.313160, 43.417919>,  <32.662094, 39.979778, 43.630184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723740, 40.313160, 43.417919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195008, -0.552171, -0.810604,
		-0.968617, 0.021443, -0.247629,
		0.154116, 0.833455, -0.530661,
		32.769974, 40.563198, 43.258720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446747, 39.828953, 42.975952>,  <32.662094, 39.979778, 43.630184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446747, 39.828953, 42.975952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.646847, 40.167706, 42.903805>,  <32.766907, 40.370956, 42.860516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.646847, 40.167706, 42.903805>,  <32.446747, 39.828953, 42.975952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646847, 40.167706, 42.903805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220094, -0.325830, -0.919453,
		-0.837441, 0.420260, -0.349392,
		0.500252, 0.846886, -0.180367,
		32.796921, 40.421772, 42.849693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193455, 39.999123, 42.325790>,  <32.446747, 39.828953, 42.975952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193455, 39.999123, 42.325790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535027, 40.203556, 42.364975>,  <32.739971, 40.326214, 42.388485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535027, 40.203556, 42.364975>,  <32.193455, 39.999123, 42.325790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535027, 40.203556, 42.364975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286402, -0.304408, -0.908465,
		-0.434478, 0.803825, -0.406318,
		0.853933, 0.511079, 0.097959,
		32.791206, 40.356880, 42.394363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350750, 40.208115, 41.561813>,  <32.193455, 39.999123, 42.325790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350750, 40.208115, 41.561813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675594, 40.243481, 41.792519>,  <32.870502, 40.264702, 41.930943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675594, 40.243481, 41.792519>,  <32.350750, 40.208115, 41.561813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675594, 40.243481, 41.792519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575719, -0.282328, -0.767358,
		0.094991, 0.955235, -0.280184,
		0.812111, 0.088415, 0.576766,
		32.919228, 40.270004, 41.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936939, 40.360336, 41.050556>,  <32.350750, 40.208115, 41.561813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936939, 40.360336, 41.050556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121277, 40.211285, 41.372742>,  <33.231880, 40.121853, 41.566055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121277, 40.211285, 41.372742>,  <32.936939, 40.360336, 41.050556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121277, 40.211285, 41.372742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594445, -0.544309, -0.591915,
		0.658984, 0.751584, -0.029335,
		0.460842, -0.372625, 0.805466,
		33.259529, 40.099499, 41.614380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683395, 40.389599, 40.892925>,  <32.936939, 40.360336, 41.050556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683395, 40.389599, 40.892925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630314, 40.128162, 41.190975>,  <33.598465, 39.971302, 41.369804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630314, 40.128162, 41.190975>,  <33.683395, 40.389599, 40.892925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630314, 40.128162, 41.190975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521005, -0.685531, -0.508528,
		0.843175, 0.320733, 0.431493,
		-0.132700, -0.653588, 0.745126,
		33.590504, 39.932087, 41.414513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246899, 40.089664, 40.729397>,  <33.683395, 40.389599, 40.892925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246899, 40.089664, 40.729397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.049202, 39.843113, 40.974606>,  <33.930584, 39.695183, 41.121731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.049202, 39.843113, 40.974606>,  <34.246899, 40.089664, 40.729397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049202, 39.843113, 40.974606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294160, -0.782157, -0.549272,
		0.818041, -0.091149, 0.567891,
		-0.494246, -0.616378, 0.613024,
		33.900928, 39.658199, 41.158512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698715, 39.651913, 40.863880>,  <34.246899, 40.089664, 40.729397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698715, 39.651913, 40.863880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341553, 39.478359, 40.911980>,  <34.127254, 39.374226, 40.940838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341553, 39.478359, 40.911980>,  <34.698715, 39.651913, 40.863880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341553, 39.478359, 40.911980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281721, -0.746744, -0.602501,
		0.351206, -0.504103, 0.789008,
		-0.892909, -0.433882, 0.120245,
		34.073681, 39.348194, 40.948051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334423, 39.315346, 41.008671>,  <34.698715, 39.651913, 40.863880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334423, 39.315346, 41.008671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622120, 39.514660, 40.815010>,  <35.794739, 39.634247, 40.698814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622120, 39.514660, 40.815010>,  <35.334423, 39.315346, 41.008671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622120, 39.514660, 40.815010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152851, 0.793280, 0.589359,
		0.677736, -0.349889, 0.646723,
		0.719243, 0.498282, -0.484154,
		35.837891, 39.664146, 40.669762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470421, 39.761230, 41.483654>,  <35.334423, 39.315346, 41.008671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470421, 39.761230, 41.483654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.676659, 39.913036, 41.176376>,  <35.800404, 40.004120, 40.992008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.676659, 39.913036, 41.176376>,  <35.470421, 39.761230, 41.483654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676659, 39.913036, 41.176376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042637, 0.906810, 0.419377,
		0.855769, -0.183477, 0.483732,
		0.515598, 0.379515, -0.768197,
		35.831337, 40.026890, 40.945915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149189, 39.981167, 41.723953>,  <35.470421, 39.761230, 41.483654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149189, 39.981167, 41.723953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012112, 40.206161, 41.422974>,  <35.929863, 40.341156, 41.242386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012112, 40.206161, 41.422974>,  <36.149189, 39.981167, 41.723953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012112, 40.206161, 41.422974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073776, 0.782358, 0.618444,
		0.936545, 0.267451, -0.226613,
		-0.342696, 0.562482, -0.752445,
		35.909302, 40.374905, 41.197239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490685, 40.744141, 41.725533>,  <36.149189, 39.981167, 41.723953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490685, 40.744141, 41.725533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.150383, 40.783459, 41.519012>,  <35.946201, 40.807049, 41.395100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.150383, 40.783459, 41.519012>,  <36.490685, 40.744141, 41.725533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150383, 40.783459, 41.519012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146158, 0.899361, 0.412053,
		0.504840, 0.426015, -0.750765,
		-0.850749, 0.098291, -0.516299,
		35.895157, 40.812946, 41.364124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486454, 41.550640, 41.493828>,  <36.490685, 40.744141, 41.725533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486454, 41.550640, 41.493828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112949, 41.410957, 41.462456>,  <35.888847, 41.327148, 41.443634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112949, 41.410957, 41.462456>,  <36.486454, 41.550640, 41.493828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112949, 41.410957, 41.462456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347284, 0.831046, 0.434461,
		-0.086536, 0.432920, -0.897269,
		-0.933759, -0.349203, -0.078431,
		35.832821, 41.306198, 41.438927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079376, 42.123039, 41.477718>,  <36.486454, 41.550640, 41.493828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079376, 42.123039, 41.477718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773914, 41.880024, 41.565105>,  <35.590637, 41.734215, 41.617538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773914, 41.880024, 41.565105>,  <36.079376, 42.123039, 41.477718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773914, 41.880024, 41.565105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432229, 0.732451, 0.526016,
		-0.479589, 0.307268, -0.821937,
		-0.763657, -0.607537, 0.218465,
		35.544819, 41.697762, 41.630646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512054, 42.585350, 41.452866>,  <36.079376, 42.123039, 41.477718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512054, 42.585350, 41.452866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405529, 42.281891, 41.690697>,  <35.341614, 42.099815, 41.833397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405529, 42.281891, 41.690697>,  <35.512054, 42.585350, 41.452866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405529, 42.281891, 41.690697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395676, 0.648533, 0.650265,
		-0.878929, -0.062085, -0.472895,
		-0.266316, -0.758650, 0.594580,
		35.325634, 42.054295, 41.869072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738911, 42.773754, 41.715450>,  <35.512054, 42.585350, 41.452866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738911, 42.773754, 41.715450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911621, 42.501171, 41.951820>,  <35.015247, 42.337620, 42.093643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911621, 42.501171, 41.951820>,  <34.738911, 42.773754, 41.715450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911621, 42.501171, 41.951820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354326, 0.474325, 0.805896,
		-0.829472, -0.557343, -0.036656,
		0.431774, -0.681457, 0.590921,
		35.041153, 42.296734, 42.129097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227455, 42.595440, 42.100060>,  <34.738911, 42.773754, 41.715450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227455, 42.595440, 42.100060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549629, 42.473785, 42.303535>,  <34.742935, 42.400791, 42.425621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549629, 42.473785, 42.303535>,  <34.227455, 42.595440, 42.100060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549629, 42.473785, 42.303535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419541, 0.313674, 0.851818,
		-0.418633, -0.899505, 0.125048,
		0.805439, -0.304136, 0.508694,
		34.791260, 42.382545, 42.456142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996468, 42.275639, 42.631123>,  <34.227455, 42.595440, 42.100060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996468, 42.275639, 42.631123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367382, 42.373070, 42.744827>,  <34.589931, 42.431530, 42.813049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367382, 42.373070, 42.744827>,  <33.996468, 42.275639, 42.631123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367382, 42.373070, 42.744827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354257, 0.325576, 0.876643,
		0.120984, -0.913602, 0.388193,
		0.927289, 0.243580, 0.284261,
		34.645569, 42.446144, 42.830105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962086, 42.121666, 43.380714>,  <33.996468, 42.275639, 42.631123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962086, 42.121666, 43.380714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304207, 42.323418, 43.333286>,  <34.509480, 42.444469, 43.304829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304207, 42.323418, 43.333286>,  <33.962086, 42.121666, 43.380714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304207, 42.323418, 43.333286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114906, 0.407798, 0.905813,
		0.505228, -0.761119, 0.406747,
		0.855302, 0.504380, -0.118575,
		34.560799, 42.474731, 43.297714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332954, 42.095722, 44.070187>,  <33.962086, 42.121666, 43.380714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332954, 42.095722, 44.070187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481758, 42.417469, 43.884888>,  <34.571041, 42.610516, 43.773708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481758, 42.417469, 43.884888>,  <34.332954, 42.095722, 44.070187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481758, 42.417469, 43.884888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054759, 0.517220, 0.854099,
		0.926611, -0.292369, 0.236459,
		0.372013, 0.804365, -0.463252,
		34.593361, 42.658779, 43.745911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915371, 42.404202, 44.573597>,  <34.332954, 42.095722, 44.070187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915371, 42.404202, 44.573597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795284, 42.694237, 44.325691>,  <34.723232, 42.868259, 44.176949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795284, 42.694237, 44.325691>,  <34.915371, 42.404202, 44.573597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795284, 42.694237, 44.325691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030960, 0.641989, 0.766088,
		0.953369, 0.249180, -0.170287,
		-0.300216, 0.725093, -0.619767,
		34.705219, 42.911766, 44.139763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350605, 43.027489, 44.723167>,  <34.915371, 42.404202, 44.573597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350605, 43.027489, 44.723167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001316, 43.125477, 44.554657>,  <34.791744, 43.184269, 44.453548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001316, 43.125477, 44.554657>,  <35.350605, 43.027489, 44.723167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001316, 43.125477, 44.554657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185848, 0.631738, 0.752574,
		0.450495, 0.735457, -0.506119,
		-0.873221, 0.244970, -0.421278,
		34.739349, 43.198967, 44.428272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007305, 43.497330, 44.830746>,  <35.350605, 43.027489, 44.723167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007305, 43.497330, 44.830746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304695, 43.321999, 45.032780>,  <36.483128, 43.216801, 45.153999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304695, 43.321999, 45.032780>,  <36.007305, 43.497330, 44.830746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304695, 43.321999, 45.032780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372114, -0.356403, -0.857035,
		0.555678, 0.825134, -0.101868,
		0.743474, -0.438328, 0.505089,
		36.527737, 43.190498, 45.184307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670029, 43.642757, 44.470421>,  <36.007305, 43.497330, 44.830746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670029, 43.642757, 44.470421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742817, 43.313931, 44.686234>,  <36.786488, 43.116634, 44.815723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742817, 43.313931, 44.686234>,  <36.670029, 43.642757, 44.470421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742817, 43.313931, 44.686234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403298, -0.438027, -0.803420,
		0.896793, 0.363790, 0.251829,
		0.181968, -0.822064, 0.539535,
		36.797409, 43.067310, 44.848095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407261, 43.544369, 44.273674>,  <36.670029, 43.642757, 44.470421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407261, 43.544369, 44.273674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228344, 43.224144, 44.433193>,  <37.120995, 43.032009, 44.528904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228344, 43.224144, 44.433193>,  <37.407261, 43.544369, 44.273674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228344, 43.224144, 44.433193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442781, -0.585617, -0.678968,
		0.777096, -0.127115, 0.616412,
		-0.447289, -0.800559, 0.398796,
		37.094158, 42.983974, 44.552834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918987, 43.026333, 44.212158>,  <37.407261, 43.544369, 44.273674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918987, 43.026333, 44.212158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.584549, 42.820065, 44.287018>,  <37.383884, 42.696304, 44.331932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.584549, 42.820065, 44.287018>,  <37.918987, 43.026333, 44.212158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584549, 42.820065, 44.287018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380936, -0.791243, -0.478353,
		0.394750, -0.328659, 0.857995,
		-0.836098, -0.515671, 0.187145,
		37.333721, 42.665363, 44.343163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102772, 42.338657, 44.439365>,  <37.918987, 43.026333, 44.212158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102772, 42.338657, 44.439365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.736374, 42.326752, 44.279335>,  <37.516533, 42.319611, 44.183315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.736374, 42.326752, 44.279335>,  <38.102772, 42.338657, 44.439365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736374, 42.326752, 44.279335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297126, -0.720399, -0.626691,
		-0.269565, -0.692921, 0.668727,
		-0.915997, -0.029762, -0.400079,
		37.461575, 42.317822, 44.159309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074963, 41.655422, 44.364979>,  <38.102772, 42.338657, 44.439365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074963, 41.655422, 44.364979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806065, 41.830772, 44.126347>,  <37.644726, 41.935982, 43.983166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806065, 41.830772, 44.126347>,  <38.074963, 41.655422, 44.364979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806065, 41.830772, 44.126347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223274, -0.648266, -0.727943,
		-0.705859, -0.622556, 0.337915,
		-0.672244, 0.438378, -0.596585,
		37.604389, 41.962284, 43.947372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755398, 41.143623, 43.931416>,  <38.074963, 41.655422, 44.364979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755398, 41.143623, 43.931416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.640148, 41.449741, 43.701180>,  <37.570999, 41.633411, 43.563038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.640148, 41.449741, 43.701180>,  <37.755398, 41.143623, 43.931416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640148, 41.449741, 43.701180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216155, -0.533591, -0.817654,
		-0.932878, -0.360002, -0.011683,
		-0.288123, 0.765297, -0.575592,
		37.553711, 41.679329, 43.528503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387951, 40.799896, 43.485958>,  <37.755398, 41.143623, 43.931416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387951, 40.799896, 43.485958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498501, 41.156639, 43.342731>,  <37.564831, 41.370686, 43.256794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498501, 41.156639, 43.342731>,  <37.387951, 40.799896, 43.485958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498501, 41.156639, 43.342731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364852, -0.442055, -0.819433,
		-0.889102, 0.095826, -0.447566,
		0.276372, 0.891855, -0.358069,
		37.581413, 41.424194, 43.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151669, 40.771503, 42.820114>,  <37.387951, 40.799896, 43.485958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151669, 40.771503, 42.820114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460407, 41.022137, 42.863281>,  <37.645653, 41.172516, 42.889183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460407, 41.022137, 42.863281>,  <37.151669, 40.771503, 42.820114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460407, 41.022137, 42.863281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447629, -0.414986, -0.792096,
		-0.451527, 0.659685, -0.600782,
		0.771849, 0.626580, 0.107917,
		37.691963, 41.210110, 42.895657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309917, 40.906467, 42.123096>,  <37.151669, 40.771503, 42.820114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309917, 40.906467, 42.123096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641094, 41.007309, 42.323479>,  <37.839798, 41.067814, 42.443710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641094, 41.007309, 42.323479>,  <37.309917, 40.906467, 42.123096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641094, 41.007309, 42.323479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555710, -0.489071, -0.672307,
		0.075512, 0.835017, -0.545018,
		0.827940, 0.252105, 0.500958,
		37.889477, 41.082939, 42.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747112, 41.007015, 41.664791>,  <37.309917, 40.906467, 42.123096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747112, 41.007015, 41.664791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001724, 40.989407, 41.972790>,  <38.154491, 40.978840, 42.157589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001724, 40.989407, 41.972790>,  <37.747112, 41.007015, 41.664791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001724, 40.989407, 41.972790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592467, -0.611267, -0.524724,
		0.493773, 0.790199, -0.363006,
		0.636530, -0.044025, 0.769994,
		38.192684, 40.976200, 42.203789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380974, 41.318443, 41.468590>,  <37.747112, 41.007015, 41.664791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380974, 41.318443, 41.468590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476681, 41.084053, 41.778271>,  <38.534103, 40.943420, 41.964081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476681, 41.084053, 41.778271>,  <38.380974, 41.318443, 41.468590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476681, 41.084053, 41.778271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577596, -0.555035, -0.598597,
		0.780471, 0.590400, 0.205654,
		0.239266, -0.585973, 0.774201,
		38.548462, 40.908260, 42.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136978, 41.223545, 41.565033>,  <38.380974, 41.318443, 41.468590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136978, 41.223545, 41.565033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.947407, 40.894409, 41.690456>,  <38.833664, 40.696926, 41.765709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.947407, 40.894409, 41.690456>,  <39.136978, 41.223545, 41.565033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947407, 40.894409, 41.690456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473600, -0.538387, -0.697024,
		0.742356, -0.181842, 0.644857,
		-0.473931, -0.822845, 0.313554,
		38.805229, 40.647556, 41.784523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696686, 40.751392, 41.680237>,  <39.136978, 41.223545, 41.565033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696686, 40.751392, 41.680237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371487, 40.518833, 41.667507>,  <39.176369, 40.379295, 41.659870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371487, 40.518833, 41.667507>,  <39.696686, 40.751392, 41.680237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371487, 40.518833, 41.667507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498673, -0.667017, -0.553547,
		0.300605, -0.465900, 0.832210,
		-0.812995, -0.581400, -0.031823,
		39.127586, 40.344414, 41.657959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.868523, 31.867399, 28.839207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.624006, 31.560354, 28.762167>,  <31.477297, 31.376127, 28.715944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.624006, 31.560354, 28.762167>,  <31.868523, 31.867399, 28.839207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624006, 31.560354, 28.762167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618682, 0.311754, 0.721140,
		-0.493511, 0.559985, -0.665480,
		-0.611293, -0.767611, -0.192598,
		31.440619, 31.330070, 28.704388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088959, 32.046955, 28.671286>,  <31.868523, 31.867399, 28.839207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088959, 32.046955, 28.671286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.119570, 31.688026, 28.845163>,  <31.137936, 31.472670, 28.949490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.119570, 31.688026, 28.845163>,  <31.088959, 32.046955, 28.671286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119570, 31.688026, 28.845163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433780, 0.362588, 0.824842,
		-0.897763, -0.251684, -0.361493,
		0.076526, -0.897321, 0.434693,
		31.142529, 31.418831, 28.975571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488771, 31.730581, 28.718628>,  <31.088959, 32.046955, 28.671286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488771, 31.730581, 28.718628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708870, 31.576109, 29.014761>,  <30.840929, 31.483425, 29.192440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708870, 31.576109, 29.014761>,  <30.488771, 31.730581, 28.718628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708870, 31.576109, 29.014761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722239, 0.224834, 0.654080,
		-0.419044, -0.894603, -0.155200,
		0.550248, -0.386180, 0.740332,
		30.873945, 31.460255, 29.236860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951767, 31.327745, 29.202515>,  <30.488771, 31.730581, 28.718628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951767, 31.327745, 29.202515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.276392, 31.370863, 29.432209>,  <30.471167, 31.396732, 29.570026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.276392, 31.370863, 29.432209>,  <29.951767, 31.327745, 29.202515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276392, 31.370863, 29.432209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583248, 0.091517, 0.807122,
		0.034448, -0.989953, 0.137140,
		0.811563, 0.107790, 0.574236,
		30.519861, 31.403200, 29.604479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768147, 31.086555, 29.896847>,  <29.951767, 31.327745, 29.202515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768147, 31.086555, 29.896847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119270, 31.249020, 29.998423>,  <30.329945, 31.346498, 30.059368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119270, 31.249020, 29.998423>,  <29.768147, 31.086555, 29.896847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119270, 31.249020, 29.998423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329588, 0.127426, 0.935486,
		0.347601, -0.904872, 0.245722,
		0.877807, 0.406163, 0.253941,
		30.382612, 31.370869, 30.074606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928108, 30.753519, 30.590185>,  <29.768147, 31.086555, 29.896847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928108, 30.753519, 30.590185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.101395, 31.110748, 30.541609>,  <30.205366, 31.325085, 30.512463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.101395, 31.110748, 30.541609>,  <29.928108, 30.753519, 30.590185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101395, 31.110748, 30.541609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437562, 0.326198, 0.837935,
		0.787949, -0.309868, 0.532088,
		0.433215, 0.893072, -0.121441,
		30.231359, 31.378670, 30.505177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352596, 30.832129, 31.125723>,  <29.928108, 30.753519, 30.590185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352596, 30.832129, 31.125723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295988, 31.206421, 30.996492>,  <30.262024, 31.430996, 30.918955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295988, 31.206421, 30.996492>,  <30.352596, 30.832129, 31.125723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295988, 31.206421, 30.996492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276128, 0.276095, 0.920611,
		0.950645, 0.219496, 0.219308,
		-0.141521, 0.935731, -0.323077,
		30.253532, 31.487141, 30.899569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551634, 31.310478, 31.664083>,  <30.352596, 30.832129, 31.125723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551634, 31.310478, 31.664083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337059, 31.556320, 31.432741>,  <30.208313, 31.703825, 31.293936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337059, 31.556320, 31.432741>,  <30.551634, 31.310478, 31.664083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337059, 31.556320, 31.432741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417357, 0.402439, 0.814773,
		0.733517, 0.678456, 0.040626,
		-0.536438, 0.614606, -0.578354,
		30.176128, 31.740702, 31.259235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640421, 31.898623, 31.937943>,  <30.551634, 31.310478, 31.664083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640421, 31.898623, 31.937943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294289, 31.964159, 31.748476>,  <30.086609, 32.003479, 31.634796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294289, 31.964159, 31.748476>,  <30.640421, 31.898623, 31.937943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294289, 31.964159, 31.748476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405492, 0.326609, 0.853758,
		0.294583, 0.930851, -0.216189,
		-0.865331, 0.163840, -0.473666,
		30.034689, 32.013309, 31.606377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422655, 32.519901, 32.178593>,  <30.640421, 31.898623, 31.937943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422655, 32.519901, 32.178593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.076981, 32.418255, 32.004879>,  <29.869576, 32.357269, 31.900650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.076981, 32.418255, 32.004879>,  <30.422655, 32.519901, 32.178593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076981, 32.418255, 32.004879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496017, 0.575238, 0.650438,
		0.084532, 0.777514, -0.623159,
		-0.864188, -0.254114, -0.434286,
		29.817724, 32.342022, 31.874594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041477, 33.103573, 32.138462>,  <30.422655, 32.519901, 32.178593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041477, 33.103573, 32.138462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774975, 32.805355, 32.131977>,  <29.615072, 32.626423, 32.128086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774975, 32.805355, 32.131977>,  <30.041477, 33.103573, 32.138462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774975, 32.805355, 32.131977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539664, 0.467043, 0.700452,
		-0.514650, 0.475428, -0.713515,
		-0.666257, -0.745546, -0.016208,
		29.575098, 32.581692, 32.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366831, 33.403332, 32.008919>,  <30.041477, 33.103573, 32.138462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366831, 33.403332, 32.008919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.267403, 33.058727, 32.186008>,  <29.207745, 32.851963, 32.292263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.267403, 33.058727, 32.186008>,  <29.366831, 33.403332, 32.008919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267403, 33.058727, 32.186008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565618, 0.500150, 0.655688,
		-0.786313, -0.087427, -0.611612,
		-0.248572, -0.861514, 0.442725,
		29.192831, 32.800274, 32.318825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647734, 33.337532, 32.036602>,  <29.366831, 33.403332, 32.008919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647734, 33.337532, 32.036602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762627, 33.074650, 32.315338>,  <28.831562, 32.916920, 32.482578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762627, 33.074650, 32.315338>,  <28.647734, 33.337532, 32.036602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762627, 33.074650, 32.315338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521238, 0.503106, 0.689344,
		-0.803622, -0.561221, -0.198050,
		0.287234, -0.657203, 0.696836,
		28.848797, 32.877487, 32.524387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957094, 33.212410, 32.534389>,  <28.647734, 33.337532, 32.036602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957094, 33.212410, 32.534389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293673, 33.102127, 32.720276>,  <28.495619, 33.035957, 32.831806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293673, 33.102127, 32.720276>,  <27.957094, 33.212410, 32.534389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293673, 33.102127, 32.720276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187769, 0.657242, 0.729914,
		-0.506671, -0.701441, 0.501264,
		0.841444, -0.275705, 0.464715,
		28.546106, 33.019417, 32.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749390, 33.156441, 33.227604>,  <27.957094, 33.212410, 32.534389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749390, 33.156441, 33.227604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148733, 33.168934, 33.246807>,  <28.388340, 33.176430, 33.258327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148733, 33.168934, 33.246807>,  <27.749390, 33.156441, 33.227604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148733, 33.168934, 33.246807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056267, 0.691465, 0.720215,
		-0.010698, -0.721734, 0.692088,
		0.998358, 0.031237, 0.048008,
		28.448240, 33.178307, 33.261208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986370, 33.165306, 34.026585>,  <27.749390, 33.156441, 33.227604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986370, 33.165306, 34.026585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283421, 33.314285, 33.803951>,  <28.461651, 33.403675, 33.670372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283421, 33.314285, 33.803951>,  <27.986370, 33.165306, 34.026585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283421, 33.314285, 33.803951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132456, 0.732984, 0.667225,
		0.656474, -0.569223, 0.495002,
		0.742628, 0.372450, -0.556582,
		28.506208, 33.426022, 33.636974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653326, 33.124302, 34.296318>,  <27.986370, 33.165306, 34.026585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653326, 33.124302, 34.296318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712517, 33.425621, 34.039993>,  <28.748032, 33.606415, 33.886200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712517, 33.425621, 34.039993>,  <28.653326, 33.124302, 34.296318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712517, 33.425621, 34.039993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360530, 0.562270, 0.744224,
		0.920935, -0.341160, -0.188385,
		0.147976, 0.753301, -0.640813,
		28.756910, 33.651611, 33.847748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253664, 33.511703, 34.540573>,  <28.653326, 33.124302, 34.296318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253664, 33.511703, 34.540573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113985, 33.780857, 34.279716>,  <29.030178, 33.942348, 34.123203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113985, 33.780857, 34.279716>,  <29.253664, 33.511703, 34.540573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113985, 33.780857, 34.279716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362362, 0.738775, 0.568248,
		0.864150, -0.037881, -0.501806,
		-0.349196, 0.672887, -0.652139,
		29.009226, 33.982723, 34.084076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721966, 33.975533, 34.558380>,  <29.253664, 33.511703, 34.540573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721966, 33.975533, 34.558380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415483, 34.180397, 34.403141>,  <29.231594, 34.303314, 34.309998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415483, 34.180397, 34.403141>,  <29.721966, 33.975533, 34.558380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415483, 34.180397, 34.403141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283393, 0.811369, 0.511242,
		0.576726, 0.281733, -0.766820,
		-0.766208, 0.512158, -0.388097,
		29.185621, 34.334045, 34.286713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009275, 34.613197, 34.243164>,  <29.721966, 33.975533, 34.558380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009275, 34.613197, 34.243164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631485, 34.652336, 34.368633>,  <29.404812, 34.675819, 34.443916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631485, 34.652336, 34.368633>,  <30.009275, 34.613197, 34.243164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631485, 34.652336, 34.368633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236425, 0.865326, 0.441943,
		-0.228188, 0.491565, -0.840413,
		-0.944475, 0.097849, 0.313675,
		29.348143, 34.681690, 34.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633940, 34.842052, 34.800934>,  <30.009275, 34.613197, 34.243164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633940, 34.842052, 34.800934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980190, 34.739803, 34.973145>,  <31.187941, 34.678455, 35.076469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980190, 34.739803, 34.973145>,  <30.633940, 34.842052, 34.800934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980190, 34.739803, 34.973145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074721, -0.784275, -0.615897,
		0.495084, 0.565306, -0.659789,
		0.865626, -0.255621, 0.430523,
		31.239878, 34.663116, 35.102303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192505, 34.677620, 34.306244>,  <30.633940, 34.842052, 34.800934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192505, 34.677620, 34.306244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360046, 34.473782, 34.606876>,  <31.460571, 34.351479, 34.787254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360046, 34.473782, 34.606876>,  <31.192505, 34.677620, 34.306244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360046, 34.473782, 34.606876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258502, -0.726521, -0.636666,
		0.870481, 0.460956, -0.172575,
		0.418854, -0.509595, 0.751581,
		31.485703, 34.320904, 34.832352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804047, 34.340462, 34.042805>,  <31.192505, 34.677620, 34.306244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804047, 34.340462, 34.042805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704720, 34.141075, 34.375038>,  <31.645124, 34.021442, 34.574379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704720, 34.141075, 34.375038>,  <31.804047, 34.340462, 34.042805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704720, 34.141075, 34.375038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216609, -0.864303, -0.453939,
		0.944150, 0.067192, 0.322592,
		-0.248316, -0.498463, 0.830586,
		31.630224, 33.991535, 34.624214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343822, 33.843651, 34.172131>,  <31.804047, 34.340462, 34.042805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343822, 33.843651, 34.172131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.024235, 33.691872, 34.358753>,  <31.832483, 33.600803, 34.470726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.024235, 33.691872, 34.358753>,  <32.343822, 33.843651, 34.172131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024235, 33.691872, 34.358753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241424, -0.912930, -0.329049,
		0.550787, -0.150262, 0.821009,
		-0.798967, -0.379447, 0.466553,
		31.784544, 33.578037, 34.498718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599926, 33.226738, 34.454536>,  <32.343822, 33.843651, 34.172131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599926, 33.226738, 34.454536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200993, 33.211246, 34.429790>,  <31.961632, 33.201950, 34.414944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200993, 33.211246, 34.429790>,  <32.599926, 33.226738, 34.454536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200993, 33.211246, 34.429790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053522, -0.964361, -0.259121,
		-0.049627, -0.261741, 0.963861,
		-0.997333, -0.038728, -0.061867,
		31.901793, 33.199627, 34.411232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341854, 32.614536, 34.780506>,  <32.599926, 33.226738, 34.454536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341854, 32.614536, 34.780506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.029366, 32.696720, 34.544716>,  <31.841871, 32.746029, 34.403244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.029366, 32.696720, 34.544716>,  <32.341854, 32.614536, 34.780506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029366, 32.696720, 34.544716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036967, -0.927404, -0.372230,
		-0.623157, -0.312586, 0.716914,
		-0.781223, 0.205455, -0.589473,
		31.794998, 32.758358, 34.367874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930391, 32.015831, 34.825233>,  <32.341854, 32.614536, 34.780506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930391, 32.015831, 34.825233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818472, 32.215748, 34.497349>,  <31.751320, 32.335697, 34.300617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.818472, 32.215748, 34.497349>,  <31.930391, 32.015831, 34.825233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818472, 32.215748, 34.497349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148462, -0.866066, -0.477377,
		-0.948511, -0.011872, 0.316521,
		-0.279796, 0.499789, -0.819711,
		31.734533, 32.365685, 34.251434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495657, 31.593937, 34.473221>,  <31.930391, 32.015831, 34.825233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495657, 31.593937, 34.473221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.611185, 31.860338, 34.198116>,  <31.680502, 32.020180, 34.033054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.611185, 31.860338, 34.198116>,  <31.495657, 31.593937, 34.473221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611185, 31.860338, 34.198116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032805, -0.724842, -0.688134,
		-0.956821, 0.176186, -0.231198,
		0.288822, 0.666005, -0.687764,
		31.697832, 32.060139, 33.991787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082611, 31.424011, 33.911293>,  <31.495657, 31.593937, 34.473221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082611, 31.424011, 33.911293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.403799, 31.629078, 33.789696>,  <31.596512, 31.752117, 33.716736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.403799, 31.629078, 33.789696>,  <31.082611, 31.424011, 33.911293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403799, 31.629078, 33.789696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128575, -0.647029, -0.751546,
		-0.581986, 0.564382, -0.585461,
		0.802970, 0.512665, -0.303996,
		31.644690, 31.782877, 33.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930901, 31.357058, 33.217873>,  <31.082611, 31.424011, 33.911293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930901, 31.357058, 33.217873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315172, 31.459190, 33.261517>,  <31.545734, 31.520470, 33.287704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315172, 31.459190, 33.261517>,  <30.930901, 31.357058, 33.217873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315172, 31.459190, 33.261517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239689, -0.564207, -0.790076,
		-0.140171, 0.785160, -0.603221,
		0.960678, 0.255331, 0.109108,
		31.603376, 31.535789, 33.294250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201141, 31.478588, 32.533997>,  <30.930901, 31.357058, 33.217873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201141, 31.478588, 32.533997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.529333, 31.413980, 32.753349>,  <31.726248, 31.375216, 32.884960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.529333, 31.413980, 32.753349>,  <31.201141, 31.478588, 32.533997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529333, 31.413980, 32.753349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412163, -0.497597, -0.763229,
		0.396148, 0.852238, -0.341697,
		0.820480, -0.161517, 0.548383,
		31.775476, 31.365526, 32.917866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901039, 31.740107, 32.163422>,  <31.201141, 31.478588, 32.533997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901039, 31.740107, 32.163422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970057, 31.459444, 32.439945>,  <32.011467, 31.291046, 32.605858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970057, 31.459444, 32.439945>,  <31.901039, 31.740107, 32.163422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970057, 31.459444, 32.439945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582446, -0.493309, -0.646068,
		0.794346, 0.514123, 0.323560,
		0.172543, -0.701658, 0.691307,
		32.021820, 31.248947, 32.647339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511726, 31.623079, 32.031162>,  <31.901039, 31.740107, 32.163422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511726, 31.623079, 32.031162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.438263, 31.303715, 32.260532>,  <32.394184, 31.112097, 32.398155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.438263, 31.303715, 32.260532>,  <32.511726, 31.623079, 32.031162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438263, 31.303715, 32.260532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530812, -0.571534, -0.625770,
		0.827350, 0.189453, 0.528771,
		-0.183657, -0.798409, 0.573422,
		32.383167, 31.064192, 32.432560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151276, 31.399731, 32.212936>,  <32.511726, 31.623079, 32.031162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151276, 31.399731, 32.212936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.904877, 31.087620, 32.256237>,  <32.757038, 30.900354, 32.282219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.904877, 31.087620, 32.256237>,  <33.151276, 31.399731, 32.212936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904877, 31.087620, 32.256237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466576, -0.472108, -0.747944,
		0.634709, -0.410224, 0.654875,
		-0.615996, -0.780276, 0.108250,
		32.720078, 30.853537, 32.288712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558632, 30.776678, 32.175652>,  <33.151276, 31.399731, 32.212936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558632, 30.776678, 32.175652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.185020, 30.661293, 32.091393>,  <32.960854, 30.592062, 32.040836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.185020, 30.661293, 32.091393>,  <33.558632, 30.776678, 32.175652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185020, 30.661293, 32.091393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335294, -0.504777, -0.795474,
		0.123131, -0.813628, 0.568197,
		-0.934033, -0.288461, -0.210651,
		32.904812, 30.574755, 32.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609921, 30.138523, 31.962738>,  <33.558632, 30.776678, 32.175652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609921, 30.138523, 31.962738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.262653, 30.259407, 31.805283>,  <33.054295, 30.331938, 31.710810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.262653, 30.259407, 31.805283>,  <33.609921, 30.138523, 31.962738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262653, 30.259407, 31.805283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206450, -0.501364, -0.840245,
		-0.451285, -0.810742, 0.372879,
		-0.868171, 0.302210, -0.393636,
		33.002201, 30.350071, 31.687191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533417, 29.643658, 31.490419>,  <33.609921, 30.138523, 31.962738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533417, 29.643658, 31.490419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.237225, 29.896328, 31.398619>,  <33.059509, 30.047930, 31.343538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.237225, 29.896328, 31.398619>,  <33.533417, 29.643658, 31.490419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237225, 29.896328, 31.398619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045645, -0.387962, -0.920544,
		-0.670525, -0.671171, 0.316112,
		-0.740482, 0.631676, -0.229503,
		33.015079, 30.085831, 31.329767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018211, 29.260664, 31.197155>,  <33.533417, 29.643658, 31.490419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018211, 29.260664, 31.197155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952072, 29.628605, 31.054871>,  <32.912388, 29.849369, 30.969500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952072, 29.628605, 31.054871>,  <33.018211, 29.260664, 31.197155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952072, 29.628605, 31.054871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034666, -0.365875, -0.930018,
		-0.985626, -0.141442, 0.092383,
		-0.165344, 0.919853, -0.355713,
		32.902470, 29.904560, 30.948156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466549, 29.173458, 30.689203>,  <33.018211, 29.260664, 31.197155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466549, 29.173458, 30.689203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.650471, 29.520134, 30.611814>,  <32.760822, 29.728140, 30.565382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.650471, 29.520134, 30.611814>,  <32.466549, 29.173458, 30.689203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650471, 29.520134, 30.611814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025970, -0.230899, -0.972631,
		-0.887643, 0.442192, -0.128676,
		0.459800, 0.866690, -0.193472,
		32.788410, 29.780142, 30.553772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265755, 29.104942, 30.119583>,  <32.466549, 29.173458, 30.689203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265755, 29.104942, 30.119583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.506790, 29.423876, 30.133108>,  <32.651413, 29.615236, 30.141222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.506790, 29.423876, 30.133108>,  <32.265755, 29.104942, 30.119583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506790, 29.423876, 30.133108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179725, -0.094306, -0.979186,
		-0.777549, 0.596126, -0.200128,
		0.602591, 0.797333, 0.033811,
		32.687569, 29.663076, 30.143251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020145, 29.589188, 29.697163>,  <32.265755, 29.104942, 30.119583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020145, 29.589188, 29.697163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418102, 29.623018, 29.719194>,  <32.656876, 29.643316, 29.732412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418102, 29.623018, 29.719194>,  <32.020145, 29.589188, 29.697163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418102, 29.623018, 29.719194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069758, -0.181819, -0.980855,
		-0.072944, 0.979688, -0.186791,
		0.994894, 0.084578, 0.055078,
		32.716572, 29.648392, 29.735718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173981, 29.933899, 29.059948>,  <32.020145, 29.589188, 29.697163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173981, 29.933899, 29.059948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.505890, 29.769302, 29.210764>,  <32.705036, 29.670544, 29.301252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.505890, 29.769302, 29.210764>,  <32.173981, 29.933899, 29.059948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505890, 29.769302, 29.210764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360164, -0.121260, -0.924975,
		0.426340, 0.903310, 0.047587,
		0.829769, -0.411493, 0.377038,
		32.754822, 29.645855, 29.323875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.732410, 40.526173, 47.465355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345715, 40.583794, 47.380817>,  <38.113697, 40.618366, 47.330097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345715, 40.583794, 47.380817>,  <38.732410, 40.526173, 47.465355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345715, 40.583794, 47.380817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098760, 0.551980, 0.827988,
		0.235928, 0.821321, -0.519394,
		-0.966739, 0.144050, -0.211342,
		38.055695, 40.627010, 47.317413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510880, 41.181351, 47.676609>,  <38.732410, 40.526173, 47.465355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510880, 41.181351, 47.676609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151798, 41.005112, 47.675430>,  <37.936352, 40.899368, 47.674721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151798, 41.005112, 47.675430>,  <38.510880, 41.181351, 47.676609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151798, 41.005112, 47.675430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275108, 0.555263, 0.784856,
		-0.344168, 0.705377, -0.619671,
		-0.897699, -0.440599, -0.002951,
		37.882488, 40.872932, 47.674545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105362, 41.802250, 47.719212>,  <38.510880, 41.181351, 47.676609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105362, 41.802250, 47.719212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901508, 41.469818, 47.808285>,  <37.779198, 41.270359, 47.861729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901508, 41.469818, 47.808285>,  <38.105362, 41.802250, 47.719212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901508, 41.469818, 47.808285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456302, 0.480489, 0.748945,
		-0.729425, 0.280079, -0.624095,
		-0.509635, -0.831075, 0.222681,
		37.748619, 41.220497, 47.875088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404282, 42.046013, 47.714035>,  <38.105362, 41.802250, 47.719212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404282, 42.046013, 47.714035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431049, 41.699490, 47.912041>,  <37.447109, 41.491577, 48.030846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431049, 41.699490, 47.912041>,  <37.404282, 42.046013, 47.714035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431049, 41.699490, 47.912041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467040, 0.411221, 0.782797,
		-0.881701, -0.283572, -0.377082,
		0.066915, -0.866305, 0.495014,
		37.451122, 41.439598, 48.060543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739517, 41.803276, 47.845024>,  <37.404282, 42.046013, 47.714035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739517, 41.803276, 47.845024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987072, 41.638775, 48.112713>,  <37.135605, 41.540073, 48.273327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987072, 41.638775, 48.112713>,  <36.739517, 41.803276, 47.845024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987072, 41.638775, 48.112713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613565, 0.278844, 0.738772,
		-0.490427, -0.867825, -0.079755,
		0.618886, -0.411249, 0.669220,
		37.172737, 41.515400, 48.313480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311451, 41.652359, 48.340485>,  <36.739517, 41.803276, 47.845024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311451, 41.652359, 48.340485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667042, 41.649212, 48.523636>,  <36.880398, 41.647324, 48.633526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667042, 41.649212, 48.523636>,  <36.311451, 41.652359, 48.340485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667042, 41.649212, 48.523636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428874, 0.336260, 0.838449,
		-0.160559, -0.941736, 0.295557,
		0.888981, -0.007864, 0.457876,
		36.933735, 41.646854, 48.660999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137337, 41.369678, 49.005333>,  <36.311451, 41.652359, 48.340485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137337, 41.369678, 49.005333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487713, 41.558769, 49.043827>,  <36.697937, 41.672222, 49.066925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487713, 41.558769, 49.043827>,  <36.137337, 41.369678, 49.005333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487713, 41.558769, 49.043827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247881, 0.269896, 0.930436,
		0.413868, -0.838860, 0.353592,
		0.875938, 0.472726, 0.096236,
		36.750496, 41.700588, 49.072697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324406, 41.184834, 49.726025>,  <36.137337, 41.369678, 49.005333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324406, 41.184834, 49.726025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540237, 41.502453, 49.614071>,  <36.669739, 41.693024, 49.546898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540237, 41.502453, 49.614071>,  <36.324406, 41.184834, 49.726025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540237, 41.502453, 49.614071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121524, 0.402409, 0.907358,
		0.833115, -0.455583, 0.313629,
		0.539584, 0.794047, -0.279889,
		36.702114, 41.740665, 49.530106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953835, 41.286549, 50.264690>,  <36.324406, 41.184834, 49.726025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953835, 41.286549, 50.264690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918964, 41.649513, 50.100250>,  <36.898045, 41.867290, 50.001587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918964, 41.649513, 50.100250>,  <36.953835, 41.286549, 50.264690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918964, 41.649513, 50.100250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149754, 0.396047, 0.905936,
		0.984873, 0.140538, 0.101364,
		-0.087173, 0.907412, -0.411102,
		36.892811, 41.921738, 49.976921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326939, 41.850510, 50.726948>,  <36.953835, 41.286549, 50.264690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326939, 41.850510, 50.726948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068233, 42.060467, 50.505611>,  <36.913010, 42.186440, 50.372810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068233, 42.060467, 50.505611>,  <37.326939, 41.850510, 50.726948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068233, 42.060467, 50.505611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130213, 0.638867, 0.758217,
		0.751490, 0.562442, -0.344851,
		-0.646767, 0.524888, -0.553339,
		36.874203, 42.217934, 50.339611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472630, 42.543926, 50.944683>,  <37.326939, 41.850510, 50.726948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472630, 42.543926, 50.944683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122898, 42.596630, 50.757843>,  <36.913059, 42.628250, 50.645737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122898, 42.596630, 50.757843>,  <37.472630, 42.543926, 50.944683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122898, 42.596630, 50.757843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179798, 0.806028, 0.563907,
		0.450798, 0.577026, -0.681045,
		-0.874330, 0.131758, -0.467104,
		36.860600, 42.636158, 50.617710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455189, 43.289978, 50.811260>,  <37.472630, 42.543926, 50.944683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455189, 43.289978, 50.811260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084648, 43.139950, 50.825115>,  <36.862324, 43.049934, 50.833427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084648, 43.139950, 50.825115>,  <37.455189, 43.289978, 50.811260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084648, 43.139950, 50.825115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288718, 0.766104, 0.574219,
		-0.241904, 0.521929, -0.817969,
		-0.926350, -0.375068, 0.034633,
		36.806744, 43.027428, 50.835506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975815, 43.748920, 50.679203>,  <37.455189, 43.289978, 50.811260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975815, 43.748920, 50.679203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775692, 43.490276, 50.909534>,  <36.655617, 43.335091, 51.047733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775692, 43.490276, 50.909534>,  <36.975815, 43.748920, 50.679203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775692, 43.490276, 50.909534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382391, 0.761688, 0.523076,
		-0.776833, 0.041507, -0.628338,
		-0.500308, -0.646613, 0.575832,
		36.625599, 43.296291, 51.082283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225479, 43.811573, 50.627846>,  <36.975815, 43.748920, 50.679203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225479, 43.811573, 50.627846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365505, 43.703648, 50.986656>,  <36.449520, 43.638893, 51.201942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365505, 43.703648, 50.986656>,  <36.225479, 43.811573, 50.627846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365505, 43.703648, 50.986656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315991, 0.867475, 0.384236,
		-0.881819, -0.417960, 0.218415,
		0.350065, -0.269810, 0.897027,
		36.470524, 43.622704, 51.255764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763767, 44.402786, 50.445511>,  <36.225479, 43.811573, 50.627846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763767, 44.402786, 50.445511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685928, 44.782967, 50.348534>,  <35.639225, 45.011074, 50.290348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685928, 44.782967, 50.348534>,  <35.763767, 44.402786, 50.445511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685928, 44.782967, 50.348534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469225, -0.126853, -0.873920,
		-0.861370, -0.283825, -0.421289,
		-0.194598, 0.950448, -0.242445,
		35.627548, 45.068100, 50.275799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292820, 44.376106, 49.791580>,  <35.763767, 44.402786, 50.445511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292820, 44.376106, 49.791580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487038, 44.721634, 49.845337>,  <35.603569, 44.928951, 49.877590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487038, 44.721634, 49.845337>,  <35.292820, 44.376106, 49.791580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487038, 44.721634, 49.845337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403899, -0.085323, -0.910816,
		-0.775313, 0.496525, -0.390324,
		0.485547, 0.863819, 0.134394,
		35.632702, 44.980778, 49.885654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099598, 44.885223, 49.327976>,  <35.292820, 44.376106, 49.791580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099598, 44.885223, 49.327976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463211, 45.020111, 49.425911>,  <35.681377, 45.101044, 49.484673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463211, 45.020111, 49.425911>,  <35.099598, 44.885223, 49.327976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463211, 45.020111, 49.425911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293001, -0.099407, -0.950930,
		-0.296336, 0.936162, -0.189170,
		0.909030, 0.337222, 0.244839,
		35.735920, 45.121277, 49.499363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284557, 45.221046, 48.722752>,  <35.099598, 44.885223, 49.327976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284557, 45.221046, 48.722752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628185, 45.195854, 48.925941>,  <35.834362, 45.180740, 49.047855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628185, 45.195854, 48.925941>,  <35.284557, 45.221046, 48.722752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628185, 45.195854, 48.925941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488322, -0.196647, -0.850218,
		0.153437, 0.978450, -0.138180,
		0.859068, -0.062979, 0.507972,
		35.885906, 45.176960, 49.078335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710697, 45.632526, 48.361610>,  <35.284557, 45.221046, 48.722752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710697, 45.632526, 48.361610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970051, 45.403854, 48.562721>,  <36.125664, 45.266651, 48.683388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970051, 45.403854, 48.562721>,  <35.710697, 45.632526, 48.361610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970051, 45.403854, 48.562721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514732, -0.157414, -0.842777,
		0.560941, 0.805236, 0.192197,
		0.648380, -0.571678, 0.502780,
		36.164566, 45.232349, 48.713554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399353, 45.815132, 48.226593>,  <35.710697, 45.632526, 48.361610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399353, 45.815132, 48.226593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397041, 45.425919, 48.318825>,  <36.395653, 45.192390, 48.374165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397041, 45.425919, 48.318825>,  <36.399353, 45.815132, 48.226593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397041, 45.425919, 48.318825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422431, -0.211376, -0.881404,
		0.906377, 0.092312, 0.412262,
		-0.005778, -0.973036, 0.230582,
		36.395309, 45.134007, 48.388000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947704, 45.568668, 47.885708>,  <36.399353, 45.815132, 48.226593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947704, 45.568668, 47.885708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775829, 45.220589, 47.982136>,  <36.672703, 45.011742, 48.039993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775829, 45.220589, 47.982136>,  <36.947704, 45.568668, 47.885708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775829, 45.220589, 47.982136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217415, -0.358818, -0.907733,
		0.876411, -0.337634, 0.343377,
		-0.429692, -0.870203, 0.241066,
		36.646923, 44.959526, 48.054455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438663, 45.050072, 47.795700>,  <36.947704, 45.568668, 47.885708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438663, 45.050072, 47.795700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072426, 44.897453, 47.744915>,  <36.852684, 44.805882, 47.714443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072426, 44.897453, 47.744915>,  <37.438663, 45.050072, 47.795700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072426, 44.897453, 47.744915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290523, -0.409360, -0.864882,
		0.278015, -0.828764, 0.485653,
		-0.915590, -0.381543, -0.126967,
		36.797749, 44.782990, 47.706825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504124, 44.301369, 47.552502>,  <37.438663, 45.050072, 47.795700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504124, 44.301369, 47.552502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122879, 44.371414, 47.453777>,  <36.894131, 44.413441, 47.394543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122879, 44.371414, 47.453777>,  <37.504124, 44.301369, 47.552502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122879, 44.371414, 47.453777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133638, -0.488182, -0.862449,
		-0.271516, -0.854993, 0.441890,
		-0.953111, 0.175116, -0.246809,
		36.836945, 44.423950, 47.379734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180798, 43.628433, 47.412613>,  <37.504124, 44.301369, 47.552502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180798, 43.628433, 47.412613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935162, 43.897961, 47.248241>,  <36.787781, 44.059677, 47.149620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935162, 43.897961, 47.248241>,  <37.180798, 43.628433, 47.412613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935162, 43.897961, 47.248241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025688, -0.537458, -0.842899,
		-0.788815, -0.507062, 0.347358,
		-0.614093, 0.673815, -0.410930,
		36.750935, 44.100105, 47.124962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623688, 43.213669, 47.178608>,  <37.180798, 43.628433, 47.412613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623688, 43.213669, 47.178608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603577, 43.552246, 46.966568>,  <36.591511, 43.755394, 46.839344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603577, 43.552246, 46.966568>,  <36.623688, 43.213669, 47.178608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603577, 43.552246, 46.966568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059608, -0.532367, -0.844412,
		-0.996955, -0.010855, 0.077220,
		-0.050275, 0.846444, -0.530099,
		36.588493, 43.806179, 46.807537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101574, 43.073486, 46.761806>,  <36.623688, 43.213669, 47.178608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101574, 43.073486, 46.761806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283810, 43.381882, 46.583809>,  <36.393150, 43.566917, 46.477009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283810, 43.381882, 46.583809>,  <36.101574, 43.073486, 46.761806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283810, 43.381882, 46.583809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022247, -0.489868, -0.871513,
		-0.889911, 0.406954, -0.206028,
		0.455592, 0.770985, -0.444993,
		36.420486, 43.613178, 46.450310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708931, 43.130825, 46.209698>,  <36.101574, 43.073486, 46.761806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708931, 43.130825, 46.209698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062256, 43.304482, 46.138950>,  <36.274250, 43.408676, 46.096500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062256, 43.304482, 46.138950>,  <35.708931, 43.130825, 46.209698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062256, 43.304482, 46.138950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064315, -0.485954, -0.871615,
		-0.464353, 0.758532, -0.457171,
		0.883312, 0.434140, -0.176869,
		36.327248, 43.434723, 46.085888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705238, 43.363567, 45.514507>,  <35.708931, 43.130825, 46.209698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705238, 43.363567, 45.514507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097164, 43.317810, 45.580074>,  <36.332321, 43.290356, 45.619415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097164, 43.317810, 45.580074>,  <35.705238, 43.363567, 45.514507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097164, 43.317810, 45.580074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091271, -0.473526, -0.876038,
		0.177833, 0.873320, -0.453529,
		0.979819, -0.114394, 0.163918,
		36.391109, 43.283493, 45.629250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345860, 43.719646, 44.914616>,  <35.705238, 43.363567, 45.514507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345860, 43.719646, 44.914616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975784, 43.645794, 44.781990>,  <34.753738, 43.601482, 44.702415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975784, 43.645794, 44.781990>,  <35.345860, 43.719646, 44.914616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975784, 43.645794, 44.781990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376268, 0.560115, 0.738034,
		0.049450, 0.807579, -0.587683,
		-0.925190, -0.184631, -0.331564,
		34.698227, 43.590405, 44.682522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924072, 44.352737, 44.862724>,  <35.345860, 43.719646, 44.914616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924072, 44.352737, 44.862724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683769, 44.038315, 44.920975>,  <34.539589, 43.849659, 44.955925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683769, 44.038315, 44.920975>,  <34.924072, 44.352737, 44.862724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683769, 44.038315, 44.920975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381514, 0.441978, 0.811852,
		-0.702526, 0.432165, -0.565412,
		-0.600753, -0.786059, 0.145623,
		34.503544, 43.802498, 44.964661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275272, 44.643646, 44.967602>,  <34.924072, 44.352737, 44.862724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275272, 44.643646, 44.967602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231297, 44.275856, 45.118591>,  <34.204910, 44.055183, 45.209183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231297, 44.275856, 45.118591>,  <34.275272, 44.643646, 44.967602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231297, 44.275856, 45.118591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343554, 0.391519, 0.853630,
		-0.932676, -0.035833, -0.358932,
		-0.109941, -0.919472, 0.377470,
		34.198315, 44.000015, 45.231831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513908, 44.494064, 45.107967>,  <34.275272, 44.643646, 44.967602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513908, 44.494064, 45.107967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737301, 44.258896, 45.342045>,  <33.871338, 44.117794, 45.482491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737301, 44.258896, 45.342045>,  <33.513908, 44.494064, 45.107967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737301, 44.258896, 45.342045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439844, 0.388240, 0.809819,
		-0.703305, -0.709660, -0.041770,
		0.558480, -0.587922, 0.585191,
		33.904846, 44.082520, 45.517601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025951, 44.325863, 45.555115>,  <33.513908, 44.494064, 45.107967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025951, 44.325863, 45.555115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388802, 44.256382, 45.708454>,  <33.606510, 44.214695, 45.800457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388802, 44.256382, 45.708454>,  <33.025951, 44.325863, 45.555115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388802, 44.256382, 45.708454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333786, 0.257871, 0.906692,
		-0.256348, -0.950437, 0.175942,
		0.907123, -0.173702, 0.383347,
		33.660938, 44.204273, 45.823460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839790, 44.115593, 46.269039>,  <33.025951, 44.325863, 45.555115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839790, 44.115593, 46.269039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231636, 44.195892, 46.271824>,  <33.466743, 44.244072, 46.273495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231636, 44.195892, 46.271824>,  <32.839790, 44.115593, 46.269039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231636, 44.195892, 46.271824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095024, 0.432580, 0.896574,
		0.176977, -0.878961, 0.442839,
		0.979617, 0.200753, 0.006965,
		33.525520, 44.256119, 46.273914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124020, 43.752369, 46.927086>,  <32.839790, 44.115593, 46.269039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124020, 43.752369, 46.927086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333229, 44.059708, 46.779526>,  <33.458755, 44.244110, 46.690990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333229, 44.059708, 46.779526>,  <33.124020, 43.752369, 46.927086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333229, 44.059708, 46.779526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241015, 0.548489, 0.800670,
		0.817530, -0.329860, 0.472057,
		0.523027, 0.768344, -0.368905,
		33.490139, 44.290211, 46.668854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077557, 43.282028, 47.494911>,  <33.124020, 43.752369, 46.927086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077557, 43.282028, 47.494911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718193, 43.130859, 47.584389>,  <32.502575, 43.040157, 47.638073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718193, 43.130859, 47.584389>,  <33.077557, 43.282028, 47.494911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718193, 43.130859, 47.584389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114457, -0.693259, -0.711542,
		0.423981, -0.613653, 0.666086,
		-0.898410, -0.377918, 0.223692,
		32.448669, 43.017483, 47.651497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184349, 42.609947, 47.388210>,  <33.077557, 43.282028, 47.494911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184349, 42.609947, 47.388210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793728, 42.687290, 47.350365>,  <32.559353, 42.733696, 47.327656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793728, 42.687290, 47.350365>,  <33.184349, 42.609947, 47.388210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793728, 42.687290, 47.350365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019324, -0.516497, -0.856071,
		-0.214395, -0.834173, 0.508125,
		-0.976556, 0.193357, -0.094615,
		32.500763, 42.745296, 47.321980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855145, 41.978657, 47.144642>,  <33.184349, 42.609947, 47.388210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855145, 41.978657, 47.144642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601963, 42.276955, 47.061470>,  <32.450054, 42.455933, 47.011566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601963, 42.276955, 47.061470>,  <32.855145, 41.978657, 47.144642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601963, 42.276955, 47.061470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225202, -0.434321, -0.872152,
		-0.740714, -0.505203, 0.442847,
		-0.632951, 0.745745, -0.207934,
		32.412079, 42.500679, 46.999088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270832, 41.669849, 46.989914>,  <32.855145, 41.978657, 47.144642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270832, 41.669849, 46.989914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239059, 42.024715, 46.808086>,  <32.219997, 42.237633, 46.698990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.239059, 42.024715, 46.808086>,  <32.270832, 41.669849, 46.989914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239059, 42.024715, 46.808086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277234, -0.457684, -0.844788,
		-0.957514, 0.058920, 0.282305,
		-0.079431, 0.887161, -0.454573,
		32.215229, 42.290863, 46.671715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638988, 41.517090, 46.551987>,  <32.270832, 41.669849, 46.989914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638988, 41.517090, 46.551987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839842, 41.841064, 46.430748>,  <31.960354, 42.035450, 46.358006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839842, 41.841064, 46.430748>,  <31.638988, 41.517090, 46.551987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839842, 41.841064, 46.430748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097228, -0.295394, -0.950415,
		-0.859306, 0.506707, -0.069580,
		0.502136, 0.809932, -0.303100,
		31.990482, 42.084045, 46.339817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312460, 41.623970, 45.989677>,  <31.638988, 41.517090, 46.551987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312460, 41.623970, 45.989677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.647722, 41.836788, 45.941643>,  <31.848879, 41.964481, 45.912823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.647722, 41.836788, 45.941643>,  <31.312460, 41.623970, 45.989677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647722, 41.836788, 45.941643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145248, -0.429942, -0.891096,
		-0.525739, 0.729433, -0.437637,
		0.838154, 0.532050, -0.120089,
		31.899168, 41.996403, 45.905617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289833, 41.857651, 45.283810>,  <31.312460, 41.623970, 45.989677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289833, 41.857651, 45.283810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670675, 41.859299, 45.406105>,  <31.899181, 41.860287, 45.479481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670675, 41.859299, 45.406105>,  <31.289833, 41.857651, 45.283810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670675, 41.859299, 45.406105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269968, -0.480812, -0.834228,
		0.143565, 0.876814, -0.458896,
		0.952106, 0.004121, 0.305740,
		31.956306, 41.860535, 45.497826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.205513, 40.654377, 52.407684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.354778, 40.933525, 52.163151>,  <35.444340, 41.101013, 52.016430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.354778, 40.933525, 52.163151>,  <35.205513, 40.654377, 52.407684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354778, 40.933525, 52.163151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039486, -0.670282, -0.741055,
		-0.926924, 0.252398, -0.277683,
		0.373167, 0.697866, -0.611334,
		35.466728, 41.142883, 51.979752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881939, 40.527916, 51.746250>,  <35.205513, 40.654377, 52.407684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881939, 40.527916, 51.746250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.176506, 40.779488, 51.646542>,  <35.353245, 40.930431, 51.586716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.176506, 40.779488, 51.646542>,  <34.881939, 40.527916, 51.746250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176506, 40.779488, 51.646542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031849, -0.400277, -0.915841,
		-0.675776, 0.666504, -0.314802,
		0.736419, 0.628929, -0.249270,
		35.397430, 40.968166, 51.571762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674038, 40.950005, 51.156120>,  <34.881939, 40.527916, 51.746250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674038, 40.950005, 51.156120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073040, 40.921772, 51.156296>,  <35.312443, 40.904831, 51.156403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073040, 40.921772, 51.156296>,  <34.674038, 40.950005, 51.156120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073040, 40.921772, 51.156296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022286, -0.320885, -0.946856,
		0.066972, 0.944485, -0.321657,
		0.997506, -0.070582, 0.000442,
		35.372292, 40.900597, 51.156429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838364, 41.292873, 50.504631>,  <34.674038, 40.950005, 51.156120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838364, 41.292873, 50.504631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.166508, 41.084339, 50.598625>,  <35.363396, 40.959217, 50.655022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.166508, 41.084339, 50.598625>,  <34.838364, 41.292873, 50.504631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166508, 41.084339, 50.598625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089692, -0.523144, -0.847511,
		0.564772, 0.674187, -0.475925,
		0.820359, -0.521337, 0.234988,
		35.412617, 40.927937, 50.669121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291252, 41.258606, 49.950714>,  <34.838364, 41.292873, 50.504631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291252, 41.258606, 49.950714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.369663, 40.926327, 50.159145>,  <35.416710, 40.726959, 50.284203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.369663, 40.926327, 50.159145>,  <35.291252, 41.258606, 49.950714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369663, 40.926327, 50.159145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002557, -0.531817, -0.846855,
		0.980595, 0.164677, -0.106376,
		0.196030, -0.830694, 0.521076,
		35.428471, 40.677120, 50.315468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692722, 40.833061, 49.451153>,  <35.291252, 41.258606, 49.950714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692722, 40.833061, 49.451153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615124, 40.558350, 49.731354>,  <35.568565, 40.393524, 49.899475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615124, 40.558350, 49.731354>,  <35.692722, 40.833061, 49.451153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615124, 40.558350, 49.731354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082819, -0.722983, -0.685884,
		0.977500, -0.075046, 0.197136,
		-0.193999, -0.686778, 0.700500,
		35.556923, 40.352318, 49.941505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317268, 40.382626, 49.480362>,  <35.692722, 40.833061, 49.451153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317268, 40.382626, 49.480362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.007378, 40.192326, 49.646957>,  <35.821442, 40.078148, 49.746914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.007378, 40.192326, 49.646957>,  <36.317268, 40.382626, 49.480362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007378, 40.192326, 49.646957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132940, -0.766527, -0.628302,
		0.618160, -0.431396, 0.657096,
		-0.774729, -0.475745, 0.416487,
		35.774960, 40.049603, 49.771904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494682, 39.695580, 49.414101>,  <36.317268, 40.382626, 49.480362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494682, 39.695580, 49.414101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099602, 39.693645, 49.476608>,  <35.862553, 39.692486, 49.514114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099602, 39.693645, 49.476608>,  <36.494682, 39.695580, 49.414101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099602, 39.693645, 49.476608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113362, -0.666205, -0.737103,
		0.107674, -0.745753, 0.657464,
		-0.987702, -0.004836, 0.156273,
		35.803291, 39.692196, 49.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303913, 38.931408, 49.481636>,  <36.494682, 39.695580, 49.414101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303913, 38.931408, 49.481636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967247, 39.132984, 49.404022>,  <35.765247, 39.253929, 49.357452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967247, 39.132984, 49.404022>,  <36.303913, 38.931408, 49.481636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967247, 39.132984, 49.404022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269650, -0.703524, -0.657528,
		-0.467863, -0.501095, 0.728016,
		-0.841661, 0.503943, -0.194033,
		35.714748, 39.284168, 49.345814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821861, 38.418404, 49.518246>,  <36.303913, 38.931408, 49.481636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821861, 38.418404, 49.518246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.683155, 38.718174, 49.292641>,  <35.599930, 38.898037, 49.157276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.683155, 38.718174, 49.292641>,  <35.821861, 38.418404, 49.518246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683155, 38.718174, 49.292641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330773, -0.660399, -0.674138,
		-0.877692, -0.047207, 0.476895,
		-0.346765, 0.749430, -0.564012,
		35.579124, 38.943005, 49.123436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258404, 38.204102, 49.227097>,  <35.821861, 38.418404, 49.518246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258404, 38.204102, 49.227097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340740, 38.516140, 48.990765>,  <35.390141, 38.703362, 48.848965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340740, 38.516140, 48.990765>,  <35.258404, 38.204102, 49.227097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340740, 38.516140, 48.990765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246872, -0.542836, -0.802735,
		-0.946934, 0.311094, 0.080847,
		0.205839, 0.780096, -0.590830,
		35.402493, 38.750168, 48.813515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662590, 38.365696, 48.747116>,  <35.258404, 38.204102, 49.227097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662590, 38.365696, 48.747116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.005154, 38.487366, 48.580238>,  <35.210690, 38.560368, 48.480114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.005154, 38.487366, 48.580238>,  <34.662590, 38.365696, 48.747116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005154, 38.487366, 48.580238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223106, -0.510677, -0.830321,
		-0.465612, 0.804169, -0.369484,
		0.856405, 0.304173, -0.417192,
		35.262074, 38.578617, 48.455082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203140, 38.798244, 48.403656>,  <34.662590, 38.365696, 48.747116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203140, 38.798244, 48.403656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.814285, 38.747475, 48.324821>,  <33.580975, 38.717014, 48.277519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.814285, 38.747475, 48.324821>,  <34.203140, 38.798244, 48.403656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814285, 38.747475, 48.324821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231108, 0.659722, 0.715091,
		0.039261, 0.740714, -0.670672,
		-0.972135, -0.126923, -0.197086,
		33.522644, 38.709396, 48.265697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888706, 39.397377, 48.611118>,  <34.203140, 38.798244, 48.403656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888706, 39.397377, 48.611118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.570652, 39.157887, 48.572548>,  <33.379822, 39.014194, 48.549408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.570652, 39.157887, 48.572548>,  <33.888706, 39.397377, 48.611118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570652, 39.157887, 48.572548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413458, 0.418894, 0.808443,
		-0.443642, 0.682685, -0.580622,
		-0.795131, -0.598723, -0.096422,
		33.332111, 38.978271, 48.543621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160625, 39.849552, 48.625683>,  <33.888706, 39.397377, 48.611118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160625, 39.849552, 48.625683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122726, 39.476147, 48.764008>,  <33.099987, 39.252106, 48.847000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122726, 39.476147, 48.764008>,  <33.160625, 39.849552, 48.625683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122726, 39.476147, 48.764008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457401, 0.349354, 0.817763,
		-0.884199, -0.080692, -0.460088,
		-0.094747, -0.933510, 0.345807,
		33.094303, 39.196095, 48.867748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535599, 39.871330, 48.901497>,  <33.160625, 39.849552, 48.625683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535599, 39.871330, 48.901497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.724823, 39.559708, 49.066071>,  <32.838360, 39.372734, 49.164814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.724823, 39.559708, 49.066071>,  <32.535599, 39.871330, 48.901497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724823, 39.559708, 49.066071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116918, 0.407348, 0.905758,
		-0.873236, -0.476586, 0.101616,
		0.473065, -0.779060, 0.411432,
		32.866741, 39.325989, 49.189499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052925, 39.671467, 49.334015>,  <32.535599, 39.871330, 48.901497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052925, 39.671467, 49.334015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400772, 39.503548, 49.437969>,  <32.609478, 39.402794, 49.500340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400772, 39.503548, 49.437969>,  <32.052925, 39.671467, 49.334015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400772, 39.503548, 49.437969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089759, 0.383171, 0.919306,
		-0.485506, -0.822767, 0.295530,
		0.869613, -0.419802, 0.259882,
		32.661655, 39.377605, 49.515934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893641, 39.288998, 49.852123>,  <32.052925, 39.671467, 49.334015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893641, 39.288998, 49.852123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283024, 39.371006, 49.892815>,  <32.516655, 39.420212, 49.917229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283024, 39.371006, 49.892815>,  <31.893641, 39.288998, 49.852123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283024, 39.371006, 49.892815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203479, 0.571807, 0.794753,
		0.104770, -0.794358, 0.598347,
		0.973458, 0.205017, 0.101727,
		32.575062, 39.432510, 49.923332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990515, 39.205986, 50.628590>,  <31.893641, 39.288998, 49.852123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990515, 39.205986, 50.628590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.297295, 39.405060, 50.466553>,  <32.481361, 39.524506, 50.369331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.297295, 39.405060, 50.466553>,  <31.990515, 39.205986, 50.628590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297295, 39.405060, 50.466553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092612, 0.710507, 0.697569,
		0.634988, -0.497485, 0.591015,
		0.766951, 0.497683, -0.405091,
		32.527378, 39.554363, 50.345024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164700, 39.517685, 51.240627>,  <31.990515, 39.205986, 50.628590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164700, 39.517685, 51.240627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.376236, 39.673733, 50.939129>,  <32.503159, 39.767361, 50.758232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.376236, 39.673733, 50.939129>,  <32.164700, 39.517685, 51.240627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376236, 39.673733, 50.939129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126071, 0.842136, 0.524322,
		0.839294, -0.372317, 0.396188,
		0.528858, 0.390112, -0.753738,
		32.534889, 39.790768, 50.713005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849152, 39.771915, 51.487617>,  <32.164700, 39.517685, 51.240627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849152, 39.771915, 51.487617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.726807, 39.976768, 51.166580>,  <32.653400, 40.099682, 50.973957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.726807, 39.976768, 51.166580>,  <32.849152, 39.771915, 51.487617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726807, 39.976768, 51.166580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118488, 0.856921, 0.501645,
		0.944672, 0.058338, -0.322786,
		-0.305867, 0.512136, -0.802597,
		32.635048, 40.130409, 50.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386250, 40.271873, 51.459019>,  <32.849152, 39.771915, 51.487617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386250, 40.271873, 51.459019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.079590, 40.434418, 51.260174>,  <32.895596, 40.531944, 51.140865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.079590, 40.434418, 51.260174>,  <33.386250, 40.271873, 51.459019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079590, 40.434418, 51.260174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101679, 0.841306, 0.530910,
		0.633965, 0.356476, -0.686305,
		-0.766649, 0.406361, -0.497112,
		32.849594, 40.556328, 51.111038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620041, 40.934196, 51.245480>,  <33.386250, 40.271873, 51.459019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620041, 40.934196, 51.245480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222046, 40.962681, 51.217381>,  <32.983250, 40.979771, 51.200520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222046, 40.962681, 51.217381>,  <33.620041, 40.934196, 51.245480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222046, 40.962681, 51.217381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027812, 0.871521, 0.489568,
		0.096085, 0.485159, -0.869131,
		-0.994984, 0.071213, -0.070247,
		32.923550, 40.984043, 51.196308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513294, 41.669163, 51.002438>,  <33.620041, 40.934196, 51.245480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513294, 41.669163, 51.002438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165657, 41.557964, 51.166096>,  <32.957073, 41.491245, 51.264290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165657, 41.557964, 51.166096>,  <33.513294, 41.669163, 51.002438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165657, 41.557964, 51.166096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022907, 0.848865, 0.528113,
		-0.494119, 0.449607, -0.744110,
		-0.869092, -0.277996, 0.409142,
		32.904930, 41.474564, 51.288837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991962, 42.157578, 50.917065>,  <33.513294, 41.669163, 51.002438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991962, 42.157578, 50.917065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850849, 41.954853, 51.231689>,  <32.766182, 41.833218, 51.420464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850849, 41.954853, 51.231689>,  <32.991962, 42.157578, 50.917065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850849, 41.954853, 51.231689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348238, 0.851341, 0.392364,
		-0.868489, -0.135490, -0.476833,
		-0.352785, -0.506815, 0.786563,
		32.745014, 41.802807, 51.467659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232609, 42.334110, 51.006733>,  <32.991962, 42.157578, 50.917065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232609, 42.334110, 51.006733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353752, 42.196426, 51.362217>,  <32.426437, 42.113815, 51.575508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353752, 42.196426, 51.362217>,  <32.232609, 42.334110, 51.006733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353752, 42.196426, 51.362217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229179, 0.878834, 0.418484,
		-0.925069, -0.330415, 0.187280,
		0.302861, -0.344206, 0.888706,
		32.444611, 42.093166, 51.628830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754232, 42.576595, 50.582443>,  <32.232609, 42.334110, 51.006733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754232, 42.576595, 50.582443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.682480, 42.965134, 50.520081>,  <31.639427, 43.198257, 50.482662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.682480, 42.965134, 50.520081>,  <31.754232, 42.576595, 50.582443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682480, 42.965134, 50.520081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351387, -0.084764, -0.932385,
		-0.918885, -0.222039, -0.326113,
		-0.179383, 0.971346, -0.155910,
		31.628666, 43.256538, 50.473309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316540, 42.628357, 49.997829>,  <31.754232, 42.576595, 50.582443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316540, 42.628357, 49.997829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.422478, 43.013828, 49.984108>,  <31.486040, 43.245113, 49.975876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.422478, 43.013828, 49.984108>,  <31.316540, 42.628357, 49.997829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422478, 43.013828, 49.984108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133802, -0.071954, -0.988392,
		-0.954963, 0.257181, -0.147999,
		0.264845, 0.963681, -0.034302,
		31.501932, 43.302933, 49.973816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925644, 43.020958, 49.542984>,  <31.316540, 42.628357, 49.997829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925644, 43.020958, 49.542984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.276051, 43.213860, 49.540752>,  <31.486294, 43.329601, 49.539413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.276051, 43.213860, 49.540752>,  <30.925644, 43.020958, 49.542984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276051, 43.213860, 49.540752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133863, -0.254254, -0.957829,
		-0.463333, 0.838325, -0.287286,
		0.876015, 0.482251, -0.005583,
		31.538855, 43.358536, 49.539078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957569, 43.585491, 49.027279>,  <30.925644, 43.020958, 49.542984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957569, 43.585491, 49.027279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.347315, 43.518162, 49.086987>,  <31.581161, 43.477764, 49.122810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.347315, 43.518162, 49.086987>,  <30.957569, 43.585491, 49.027279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347315, 43.518162, 49.086987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122595, -0.159075, -0.979625,
		0.188636, 0.972812, -0.134361,
		0.974365, -0.168321, 0.149269,
		31.639624, 43.467667, 49.131767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219610, 43.981136, 48.462082>,  <30.957569, 43.585491, 49.027279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219610, 43.981136, 48.462082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.510204, 43.732643, 48.579578>,  <31.684561, 43.583546, 48.650078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.510204, 43.732643, 48.579578>,  <31.219610, 43.981136, 48.462082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510204, 43.732643, 48.579578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248568, -0.160945, -0.955150,
		0.640648, 0.766919, 0.037495,
		0.726487, -0.621235, 0.293741,
		31.728151, 43.546272, 48.667702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819616, 44.229019, 48.106716>,  <31.219610, 43.981136, 48.462082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819616, 44.229019, 48.106716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.904737, 43.858322, 48.230568>,  <31.955811, 43.635906, 48.304878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.904737, 43.858322, 48.230568>,  <31.819616, 44.229019, 48.106716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904737, 43.858322, 48.230568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250724, -0.254484, -0.934010,
		0.944380, 0.276390, 0.178202,
		0.212801, -0.926740, 0.309627,
		31.968578, 43.580299, 48.323456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477837, 44.112659, 47.821316>,  <31.819616, 44.229019, 48.106716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477837, 44.112659, 47.821316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.317368, 43.756287, 47.906456>,  <32.221088, 43.542465, 47.957539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.317368, 43.756287, 47.906456>,  <32.477837, 44.112659, 47.821316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317368, 43.756287, 47.906456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339433, -0.360415, -0.868842,
		0.850792, -0.276304, 0.446999,
		-0.401170, -0.890930, 0.212852,
		32.197018, 43.489006, 47.970310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261555, 44.156738, 47.550812>,  <32.477837, 44.112659, 47.821316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261555, 44.156738, 47.550812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.394974, 44.390259, 47.254723>,  <33.475025, 44.530373, 47.077068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.394974, 44.390259, 47.254723>,  <33.261555, 44.156738, 47.550812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394974, 44.390259, 47.254723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134215, 0.806592, 0.575670,
		0.933132, -0.092662, 0.347387,
		0.333542, 0.583801, -0.740220,
		33.495037, 44.565399, 47.032658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880943, 44.531582, 47.788898>,  <33.261555, 44.156738, 47.550812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880943, 44.531582, 47.788898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751984, 44.766800, 47.492180>,  <33.674606, 44.907932, 47.314148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751984, 44.766800, 47.492180>,  <33.880943, 44.531582, 47.788898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751984, 44.766800, 47.492180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042887, 0.773760, 0.632025,
		0.945631, 0.235579, -0.224241,
		-0.322401, 0.588045, -0.741795,
		33.655262, 44.943214, 47.269642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346977, 45.046623, 47.719696>,  <33.880943, 44.531582, 47.788898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346977, 45.046623, 47.719696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.987091, 45.156582, 47.584080>,  <33.771160, 45.222557, 47.502708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.987091, 45.156582, 47.584080>,  <34.346977, 45.046623, 47.719696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987091, 45.156582, 47.584080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023096, 0.745685, 0.665898,
		0.435870, 0.606948, -0.664553,
		-0.899713, 0.274896, -0.339040,
		33.717178, 45.239052, 47.482368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400269, 45.792950, 47.812325>,  <34.346977, 45.046623, 47.719696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400269, 45.792950, 47.812325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.024513, 45.657913, 47.788387>,  <33.799061, 45.576893, 47.774025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.024513, 45.657913, 47.788387>,  <34.400269, 45.792950, 47.812325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024513, 45.657913, 47.788387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246809, 0.544691, 0.801497,
		-0.237980, 0.767688, -0.594997,
		-0.939388, -0.337591, -0.059847,
		33.742695, 45.556637, 47.770432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038456, 46.429634, 47.924557>,  <34.400269, 45.792950, 47.812325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038456, 46.429634, 47.924557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.795063, 46.120125, 47.995003>,  <33.649025, 45.934418, 48.037270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.795063, 46.120125, 47.995003>,  <34.038456, 46.429634, 47.924557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795063, 46.120125, 47.995003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522811, 0.557837, 0.644583,
		-0.597005, 0.300145, -0.743974,
		-0.608485, -0.773777, 0.176113,
		33.612518, 45.887993, 48.047836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324589, 46.697224, 47.844234>,  <34.038456, 46.429634, 47.924557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324589, 46.697224, 47.844234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313648, 46.365452, 48.067413>,  <33.307083, 46.166389, 48.201321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313648, 46.365452, 48.067413>,  <33.324589, 46.697224, 47.844234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313648, 46.365452, 48.067413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334040, 0.533650, 0.776939,
		-0.942162, -0.165127, -0.291657,
		-0.027349, -0.829428, 0.557944,
		33.305443, 46.116623, 48.234798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725273, 46.819904, 48.276638>,  <33.324589, 46.697224, 47.844234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725273, 46.819904, 48.276638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848652, 46.494984, 48.474640>,  <32.922680, 46.300030, 48.593441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848652, 46.494984, 48.474640>,  <32.725273, 46.819904, 48.276638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848652, 46.494984, 48.474640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522746, 0.290012, 0.801642,
		-0.794732, -0.506022, -0.335175,
		0.308443, -0.812302, 0.495003,
		32.941185, 46.251293, 48.623142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191933, 46.667927, 48.667118>,  <32.725273, 46.819904, 48.276638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191933, 46.667927, 48.667118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506073, 46.491508, 48.840881>,  <32.694557, 46.385658, 48.945137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506073, 46.491508, 48.840881>,  <32.191933, 46.667927, 48.667118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506073, 46.491508, 48.840881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343030, 0.274102, 0.898442,
		-0.515325, -0.854604, 0.063974,
		0.785347, -0.441044, 0.434406,
		32.741676, 46.359196, 48.971203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921814, 46.147198, 49.158146>,  <32.191933, 46.667927, 48.667118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921814, 46.147198, 49.158146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.296444, 46.230995, 49.270527>,  <32.521221, 46.281273, 49.337955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.296444, 46.230995, 49.270527>,  <31.921814, 46.147198, 49.158146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296444, 46.230995, 49.270527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329101, 0.250144, 0.910561,
		0.120479, -0.945272, 0.303224,
		0.936577, 0.209495, 0.280953,
		32.577415, 46.293846, 49.354813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.381039, 36.117916, 37.357418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714828, 36.283035, 37.503429>,  <37.915104, 36.382107, 37.591038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714828, 36.283035, 37.503429>,  <37.381039, 36.117916, 37.357418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714828, 36.283035, 37.503429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546240, 0.532430, 0.646638,
		0.072575, -0.738999, 0.669786,
		0.834478, 0.412794, 0.365029,
		37.965172, 36.406872, 37.612938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218349, 36.123119, 37.945621>,  <37.381039, 36.117916, 37.357418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218349, 36.123119, 37.945621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513439, 36.390053, 37.904766>,  <37.690495, 36.550213, 37.880253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513439, 36.390053, 37.904766>,  <37.218349, 36.123119, 37.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513439, 36.390053, 37.904766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471474, 0.617563, 0.629546,
		0.483193, -0.416274, 0.770221,
		0.737724, 0.667331, -0.102140,
		37.734756, 36.590252, 37.874123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315216, 36.260498, 38.624264>,  <37.218349, 36.123119, 37.945621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315216, 36.260498, 38.624264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467873, 36.568291, 38.419418>,  <37.559467, 36.752964, 38.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467873, 36.568291, 38.419418>,  <37.315216, 36.260498, 38.624264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467873, 36.568291, 38.419418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439048, 0.638462, 0.632141,
		0.813382, -0.016407, 0.581499,
		0.381637, 0.769478, -0.512110,
		37.582363, 36.799133, 38.265785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596725, 36.768070, 39.121918>,  <37.315216, 36.260498, 38.624264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596725, 36.768070, 39.121918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560719, 36.994438, 38.794106>,  <37.539116, 37.130257, 38.597416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560719, 36.994438, 38.794106>,  <37.596725, 36.768070, 39.121918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560719, 36.994438, 38.794106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095524, 0.814175, 0.572707,
		0.991348, 0.129840, -0.019232,
		-0.090019, 0.565915, -0.819534,
		37.533714, 37.164211, 38.548244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005085, 37.404377, 39.141357>,  <37.596725, 36.768070, 39.121918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005085, 37.404377, 39.141357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723984, 37.507729, 38.876213>,  <37.555325, 37.569740, 38.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723984, 37.507729, 38.876213>,  <38.005085, 37.404377, 39.141357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723984, 37.507729, 38.876213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148958, 0.857626, 0.492228,
		0.695667, 0.444651, -0.564209,
		-0.702751, 0.258383, -0.662857,
		37.513157, 37.585243, 38.677357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122005, 38.073940, 38.999783>,  <38.005085, 37.404377, 39.141357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122005, 38.073940, 38.999783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745739, 38.037006, 38.869171>,  <37.519978, 38.014847, 38.790806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745739, 38.037006, 38.869171>,  <38.122005, 38.073940, 38.999783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745739, 38.037006, 38.869171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253783, 0.830197, 0.496355,
		0.225252, 0.549771, -0.804371,
		-0.940668, -0.092331, -0.326526,
		37.463539, 38.009308, 38.771214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868450, 38.703106, 38.981216>,  <38.122005, 38.073940, 38.999783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868450, 38.703106, 38.981216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528469, 38.492443, 38.975361>,  <37.324482, 38.366043, 38.971848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528469, 38.492443, 38.975361>,  <37.868450, 38.703106, 38.981216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528469, 38.492443, 38.975361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454157, 0.718284, 0.527077,
		-0.267073, 0.454638, -0.849692,
		-0.849949, -0.526661, -0.014643,
		37.273483, 38.334446, 38.970966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371368, 39.276051, 38.776199>,  <37.868450, 38.703106, 38.981216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371368, 39.276051, 38.776199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181526, 38.968239, 38.947117>,  <37.067619, 38.783554, 39.049667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181526, 38.968239, 38.947117>,  <37.371368, 39.276051, 38.776199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181526, 38.968239, 38.947117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431437, 0.626518, 0.649105,
		-0.767209, 0.123720, -0.629352,
		-0.474607, -0.769525, 0.427293,
		37.039143, 38.737381, 39.075306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592888, 39.370243, 38.729195>,  <37.371368, 39.276051, 38.776199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592888, 39.370243, 38.729195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671646, 39.130131, 39.039265>,  <36.718903, 38.986061, 39.225307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671646, 39.130131, 39.039265>,  <36.592888, 39.370243, 38.729195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671646, 39.130131, 39.039265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560654, 0.579680, 0.591302,
		-0.804301, -0.551028, -0.222415,
		0.196894, -0.600282, 0.775173,
		36.730713, 38.950047, 39.271816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956348, 39.156281, 39.044205>,  <36.592888, 39.370243, 38.729195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956348, 39.156281, 39.044205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213158, 39.078041, 39.340729>,  <36.367245, 39.031097, 39.518642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213158, 39.078041, 39.340729>,  <35.956348, 39.156281, 39.044205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213158, 39.078041, 39.340729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619931, 0.436463, 0.652062,
		-0.451102, -0.878202, 0.158959,
		0.642023, -0.195603, 0.741314,
		36.405766, 39.019360, 39.563122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493618, 39.152550, 39.573601>,  <35.956348, 39.156281, 39.044205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493618, 39.152550, 39.573601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836121, 39.144981, 39.780083>,  <36.041622, 39.140438, 39.903973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836121, 39.144981, 39.780083>,  <35.493618, 39.152550, 39.573601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836121, 39.144981, 39.780083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457062, 0.437852, 0.774196,
		-0.240673, -0.898848, 0.366264,
		0.856254, -0.018923, 0.516209,
		36.092999, 39.139305, 39.934944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332245, 39.031021, 40.303627>,  <35.493618, 39.152550, 39.573601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332245, 39.031021, 40.303627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686142, 39.217224, 40.294434>,  <35.898479, 39.328945, 40.288918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686142, 39.217224, 40.294434>,  <35.332245, 39.031021, 40.303627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686142, 39.217224, 40.294434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309953, 0.624480, 0.716906,
		0.348077, -0.627156, 0.696791,
		0.884743, 0.465511, -0.022979,
		35.951565, 39.356876, 40.287540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887375, 38.790802, 40.871254>,  <35.332245, 39.031021, 40.303627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887375, 38.790802, 40.871254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494324, 38.852829, 40.830486>,  <34.258492, 38.890045, 40.806026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494324, 38.852829, 40.830486>,  <34.887375, 38.790802, 40.871254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494324, 38.852829, 40.830486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016000, -0.618022, -0.785998,
		-0.184872, -0.770716, 0.609770,
		-0.982632, 0.155065, -0.101923,
		34.199535, 38.899349, 40.799908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561031, 38.122807, 40.939415>,  <34.887375, 38.790802, 40.871254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561031, 38.122807, 40.939415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319206, 38.366455, 40.734097>,  <34.174110, 38.512646, 40.610905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319206, 38.366455, 40.734097>,  <34.561031, 38.122807, 40.939415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319206, 38.366455, 40.734097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022674, -0.630969, -0.775476,
		-0.796235, -0.480462, 0.367649,
		-0.604562, 0.609125, -0.513294,
		34.137836, 38.549194, 40.580109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015415, 37.619068, 40.709461>,  <34.561031, 38.122807, 40.939415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015415, 37.619068, 40.709461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004539, 37.929169, 40.457031>,  <33.998013, 38.115227, 40.305573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004539, 37.929169, 40.457031>,  <34.015415, 37.619068, 40.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004539, 37.929169, 40.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289813, -0.598078, -0.747202,
		-0.956697, -0.203208, -0.208416,
		-0.027188, 0.775248, -0.631072,
		33.996384, 38.161743, 40.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589333, 37.421581, 40.046791>,  <34.015415, 37.619068, 40.709461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589333, 37.421581, 40.046791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727600, 37.774853, 39.919975>,  <33.810562, 37.986816, 39.843887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727600, 37.774853, 39.919975>,  <33.589333, 37.421581, 40.046791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727600, 37.774853, 39.919975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088878, -0.367160, -0.925902,
		-0.934137, 0.291881, -0.205412,
		0.345672, 0.883175, -0.317036,
		33.831303, 38.039806, 39.824863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169575, 37.644119, 39.589375>,  <33.589333, 37.421581, 40.046791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169575, 37.644119, 39.589375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513229, 37.823811, 39.491325>,  <33.719421, 37.931625, 39.432495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513229, 37.823811, 39.491325>,  <33.169575, 37.644119, 39.589375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513229, 37.823811, 39.491325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043857, -0.541849, -0.839331,
		-0.509871, 0.710345, -0.485222,
		0.859132, 0.449231, -0.245120,
		33.770969, 37.958580, 39.417789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133930, 37.661839, 38.932415>,  <33.169575, 37.644119, 39.589375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133930, 37.661839, 38.932415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524128, 37.740807, 38.971256>,  <33.758247, 37.788189, 38.994560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524128, 37.740807, 38.971256>,  <33.133930, 37.661839, 38.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524128, 37.740807, 38.971256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184050, -0.490492, -0.851788,
		-0.120534, 0.848789, -0.514809,
		0.975498, 0.197420, 0.097099,
		33.816776, 37.800034, 39.000385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440777, 37.927040, 38.200390>,  <33.133930, 37.661839, 38.932415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440777, 37.927040, 38.200390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743099, 37.783138, 38.419235>,  <33.924492, 37.696796, 38.550545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743099, 37.783138, 38.419235>,  <33.440777, 37.927040, 38.200390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743099, 37.783138, 38.419235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330661, -0.511493, -0.793119,
		0.565174, 0.780353, -0.267632,
		0.755805, -0.359755, 0.547115,
		33.969841, 37.675213, 38.583370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056519, 38.060520, 37.772503>,  <33.440777, 37.927040, 38.200390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056519, 38.060520, 37.772503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124828, 37.772415, 38.041443>,  <34.165813, 37.599552, 38.202808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124828, 37.772415, 38.041443>,  <34.056519, 38.060520, 37.772503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124828, 37.772415, 38.041443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296759, -0.613094, -0.732154,
		0.939558, 0.324564, 0.109040,
		0.170779, -0.720260, 0.672355,
		34.176064, 37.556335, 38.243149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701153, 37.885666, 37.715103>,  <34.056519, 38.060520, 37.772503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701153, 37.885666, 37.715103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510662, 37.569649, 37.869526>,  <34.396366, 37.380039, 37.962181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510662, 37.569649, 37.869526>,  <34.701153, 37.885666, 37.715103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510662, 37.569649, 37.869526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435658, -0.593356, -0.676854,
		0.763813, -0.154147, 0.626760,
		-0.476227, -0.790043, 0.386058,
		34.367794, 37.332634, 37.985344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191849, 37.323803, 37.758675>,  <34.701153, 37.885666, 37.715103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191849, 37.323803, 37.758675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828621, 37.156677, 37.770309>,  <34.610683, 37.056400, 37.777290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828621, 37.156677, 37.770309>,  <35.191849, 37.323803, 37.758675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828621, 37.156677, 37.770309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340581, -0.777049, -0.529339,
		0.243766, -0.470769, 0.847912,
		-0.908065, -0.417817, 0.029083,
		34.556202, 37.031334, 37.779034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292767, 36.586197, 37.641571>,  <35.191849, 37.323803, 37.758675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292767, 36.586197, 37.641571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896999, 36.596550, 37.584465>,  <34.659538, 36.602760, 37.550201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896999, 36.596550, 37.584465>,  <35.292767, 36.586197, 37.641571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896999, 36.596550, 37.584465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074101, -0.755797, -0.650600,
		-0.124738, -0.654294, 0.745881,
		-0.989419, 0.025884, -0.142761,
		34.600174, 36.604317, 37.541637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082424, 35.921463, 37.710110>,  <35.292767, 36.586197, 37.641571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082424, 35.921463, 37.710110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763535, 36.073906, 37.522839>,  <34.572201, 36.165371, 37.410477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763535, 36.073906, 37.522839>,  <35.082424, 35.921463, 37.710110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763535, 36.073906, 37.522839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016425, -0.761559, -0.647888,
		-0.603460, -0.524201, 0.600873,
		-0.797224, 0.381105, -0.468180,
		34.524368, 36.188236, 37.382385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396095, 35.538326, 37.651505>,  <35.082424, 35.921463, 37.710110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396095, 35.538326, 37.651505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429420, 35.788136, 37.340885>,  <34.449417, 35.938023, 37.154514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429420, 35.788136, 37.340885>,  <34.396095, 35.538326, 37.651505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429420, 35.788136, 37.340885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117318, -0.779984, -0.614705,
		-0.989593, -0.039887, -0.138254,
		0.083317, 0.624528, -0.776546,
		34.454414, 35.975494, 37.107922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782139, 34.959587, 37.906971>,  <34.396095, 35.538326, 37.651505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782139, 34.959587, 37.906971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514797, 34.667778, 37.848873>,  <34.354393, 34.492691, 37.814014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514797, 34.667778, 37.848873>,  <34.782139, 34.959587, 37.906971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514797, 34.667778, 37.848873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250674, 0.037057, 0.967362,
		-0.700329, 0.682953, -0.207639,
		-0.668358, -0.729521, -0.145246,
		34.314289, 34.448921, 37.805298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161823, 35.112331, 38.310463>,  <34.782139, 34.959587, 37.906971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161823, 35.112331, 38.310463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144642, 34.717129, 38.251144>,  <34.134335, 34.480007, 38.215553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144642, 34.717129, 38.251144>,  <34.161823, 35.112331, 38.310463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144642, 34.717129, 38.251144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360689, -0.123088, 0.924528,
		-0.931697, 0.093196, -0.351078,
		-0.042949, -0.988010, -0.148296,
		34.131756, 34.420727, 38.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465511, 34.937462, 38.342812>,  <34.161823, 35.112331, 38.310463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465511, 34.937462, 38.342812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717258, 34.660290, 38.483524>,  <33.868305, 34.493988, 38.567951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717258, 34.660290, 38.483524>,  <33.465511, 34.937462, 38.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717258, 34.660290, 38.483524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540777, -0.065422, 0.838618,
		-0.558086, -0.718034, -0.415894,
		0.629365, -0.692927, 0.351785,
		33.906067, 34.452412, 38.589062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994678, 34.586018, 38.791542>,  <33.465511, 34.937462, 38.342812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994678, 34.586018, 38.791542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373291, 34.541683, 38.912735>,  <33.600460, 34.515083, 38.985451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373291, 34.541683, 38.912735>,  <32.994678, 34.586018, 38.791542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373291, 34.541683, 38.912735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302921, 0.017772, 0.952850,
		-0.110998, -0.993679, -0.016754,
		0.946529, -0.110840, 0.302979,
		33.657249, 34.508434, 39.003628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024891, 33.997566, 39.267189>,  <32.994678, 34.586018, 38.791542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024891, 33.997566, 39.267189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357941, 34.204975, 39.345039>,  <33.557770, 34.329418, 39.391750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357941, 34.204975, 39.345039>,  <33.024891, 33.997566, 39.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357941, 34.204975, 39.345039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275976, 0.083749, 0.957509,
		0.480188, -0.850954, 0.212831,
		0.832621, 0.518520, 0.194628,
		33.607727, 34.360531, 39.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269157, 33.703667, 39.869125>,  <33.024891, 33.997566, 39.267189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269157, 33.703667, 39.869125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456966, 34.055279, 39.836010>,  <33.569653, 34.266247, 39.816139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456966, 34.055279, 39.836010>,  <33.269157, 33.703667, 39.869125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456966, 34.055279, 39.836010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139201, 0.166291, 0.976202,
		0.871881, -0.446820, 0.200438,
		0.469518, 0.879033, -0.082788,
		33.597820, 34.318989, 39.811172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859776, 33.820168, 40.401024>,  <33.269157, 33.703667, 39.869125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859776, 33.820168, 40.401024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740494, 34.181423, 40.277466>,  <33.668922, 34.398178, 40.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740494, 34.181423, 40.277466>,  <33.859776, 33.820168, 40.401024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740494, 34.181423, 40.277466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083494, 0.297693, 0.951004,
		0.950843, 0.309386, -0.013367,
		-0.298207, 0.903138, -0.308891,
		33.651031, 34.452366, 40.184799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280396, 34.257809, 40.730171>,  <33.859776, 33.820168, 40.401024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280396, 34.257809, 40.730171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991856, 34.514534, 40.626076>,  <33.818729, 34.668568, 40.563618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991856, 34.514534, 40.626076>,  <34.280396, 34.257809, 40.730171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991856, 34.514534, 40.626076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049731, 0.422794, 0.904860,
		0.690781, 0.639781, -0.336901,
		-0.721352, 0.641815, -0.260241,
		33.775452, 34.707077, 40.548004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502228, 34.906048, 40.899006>,  <34.280396, 34.257809, 40.730171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502228, 34.906048, 40.899006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104588, 34.943775, 40.877575>,  <33.866005, 34.966412, 40.864716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104588, 34.943775, 40.877575>,  <34.502228, 34.906048, 40.899006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104588, 34.943775, 40.877575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014858, 0.607663, 0.794056,
		0.107454, 0.788574, -0.605479,
		-0.994099, 0.094321, -0.053580,
		33.806358, 34.972073, 40.861500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411793, 35.560871, 41.020187>,  <34.502228, 34.906048, 40.899006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411793, 35.560871, 41.020187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058899, 35.394699, 41.108807>,  <33.847164, 35.294994, 41.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058899, 35.394699, 41.108807>,  <34.411793, 35.560871, 41.020187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058899, 35.394699, 41.108807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013878, 0.493297, 0.869750,
		-0.470611, 0.764247, -0.440967,
		-0.882232, -0.415433, 0.221545,
		33.794228, 35.270069, 41.175270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074146, 36.125000, 41.394409>,  <34.411793, 35.560871, 41.020187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074146, 36.125000, 41.394409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851494, 35.805630, 41.486210>,  <33.717903, 35.614006, 41.541290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851494, 35.805630, 41.486210>,  <34.074146, 36.125000, 41.394409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851494, 35.805630, 41.486210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046128, 0.305528, 0.951065,
		-0.829477, 0.518808, -0.206897,
		-0.556633, -0.798430, 0.229497,
		33.684505, 35.566101, 41.555058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602070, 36.474773, 41.861279>,  <34.074146, 36.125000, 41.394409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602070, 36.474773, 41.861279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551891, 36.081600, 41.915104>,  <33.521782, 35.845695, 41.947399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551891, 36.081600, 41.915104>,  <33.602070, 36.474773, 41.861279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551891, 36.081600, 41.915104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206842, 0.158563, 0.965440,
		-0.970298, 0.093282, -0.223203,
		-0.125450, -0.982933, 0.134559,
		33.514256, 35.786720, 41.955471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995445, 36.436153, 42.252937>,  <33.602070, 36.474773, 41.861279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995445, 36.436153, 42.252937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180546, 36.091061, 42.334473>,  <33.291607, 35.884003, 42.383392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180546, 36.091061, 42.334473>,  <32.995445, 36.436153, 42.252937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180546, 36.091061, 42.334473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208026, 0.117837, 0.970999,
		-0.861736, -0.491732, -0.124943,
		0.462748, -0.862737, 0.203837,
		33.319370, 35.832241, 42.395622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611134, 35.993233, 42.783829>,  <32.995445, 36.436153, 42.252937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611134, 35.993233, 42.783829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982750, 35.845242, 42.782757>,  <33.205719, 35.756447, 42.782112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982750, 35.845242, 42.782757>,  <32.611134, 35.993233, 42.783829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982750, 35.845242, 42.782757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035670, 0.082358, 0.995964,
		-0.368262, -0.925384, 0.089711,
		0.929038, -0.369976, -0.002679,
		33.261463, 35.734249, 42.781952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575443, 35.524841, 43.280766>,  <32.611134, 35.993233, 42.783829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575443, 35.524841, 43.280766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963596, 35.615963, 43.248608>,  <33.196487, 35.670635, 43.229313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963596, 35.615963, 43.248608>,  <32.575443, 35.524841, 43.280766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963596, 35.615963, 43.248608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021950, 0.248254, 0.968446,
		0.240545, -0.941535, 0.235904,
		0.970390, 0.227777, -0.080384,
		33.254711, 35.684303, 43.224491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001938, 35.196762, 43.721867>,  <32.575443, 35.524841, 43.280766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001938, 35.196762, 43.721867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245621, 35.501724, 43.634594>,  <33.391830, 35.684704, 43.582230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245621, 35.501724, 43.634594>,  <33.001938, 35.196762, 43.721867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245621, 35.501724, 43.634594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061211, 0.229097, 0.971477,
		0.790647, -0.605183, 0.092900,
		0.609205, 0.762409, -0.218178,
		33.428383, 35.730446, 43.569141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476532, 35.137810, 44.248547>,  <33.001938, 35.196762, 43.721867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476532, 35.137810, 44.248547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523464, 35.510433, 44.110893>,  <33.551624, 35.734009, 44.028301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523464, 35.510433, 44.110893>,  <33.476532, 35.137810, 44.248547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523464, 35.510433, 44.110893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011711, 0.347800, 0.937495,
		0.993024, -0.105967, 0.051717,
		0.117331, 0.931561, -0.344133,
		33.558662, 35.789902, 44.007652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967403, 35.452892, 44.661362>,  <33.476532, 35.137810, 44.248547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967403, 35.452892, 44.661362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778545, 35.770504, 44.508209>,  <33.665230, 35.961071, 44.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778545, 35.770504, 44.508209>,  <33.967403, 35.452892, 44.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778545, 35.770504, 44.508209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039769, 0.414718, 0.909081,
		0.880622, 0.444446, -0.164230,
		-0.472147, 0.794025, -0.382885,
		33.636902, 36.008713, 44.393345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241302, 35.998379, 45.060474>,  <33.967403, 35.452892, 44.661362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241302, 35.998379, 45.060474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913097, 36.154308, 44.893242>,  <33.716175, 36.247868, 44.792900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913097, 36.154308, 44.893242>,  <34.241302, 35.998379, 45.060474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913097, 36.154308, 44.893242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107091, 0.613612, 0.782311,
		0.561508, 0.686669, -0.461729,
		-0.820512, 0.389827, -0.418085,
		33.666943, 36.271255, 44.767815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289364, 36.781956, 45.042511>,  <34.241302, 35.998379, 45.060474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289364, 36.781956, 45.042511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903759, 36.680706, 45.010014>,  <33.672394, 36.619957, 44.990517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903759, 36.680706, 45.010014>,  <34.289364, 36.781956, 45.042511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903759, 36.680706, 45.010014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220292, 0.589542, 0.777117,
		-0.148815, 0.767050, -0.624090,
		-0.964015, -0.253128, -0.081242,
		33.614555, 36.604767, 44.985641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961487, 37.367447, 44.952641>,  <34.289364, 36.781956, 45.042511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961487, 37.367447, 44.952641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677616, 37.117657, 45.083111>,  <33.507294, 36.967785, 45.161392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677616, 37.117657, 45.083111>,  <33.961487, 37.367447, 44.952641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677616, 37.117657, 45.083111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263452, 0.664611, 0.699204,
		-0.653412, 0.410279, -0.636179,
		-0.709680, -0.624471, 0.326176,
		33.464714, 36.930317, 45.180965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323799, 37.744816, 44.950958>,  <33.961487, 37.367447, 44.952641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323799, 37.744816, 44.950958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269344, 37.432110, 45.194370>,  <33.236671, 37.244484, 45.340416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269344, 37.432110, 45.194370>,  <33.323799, 37.744816, 44.950958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269344, 37.432110, 45.194370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299052, 0.618019, 0.727062,
		-0.944476, -0.083003, -0.317924,
		-0.136135, -0.781769, 0.608527,
		33.228504, 37.197578, 45.376926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561745, 37.841877, 45.391495>,  <33.323799, 37.744816, 44.950958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561745, 37.841877, 45.391495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805531, 37.586578, 45.579620>,  <32.951801, 37.433399, 45.692493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805531, 37.586578, 45.579620>,  <32.561745, 37.841877, 45.391495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805531, 37.586578, 45.579620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230301, 0.425115, 0.875351,
		-0.758625, -0.641810, 0.112105,
		0.609466, -0.638245, 0.470312,
		32.988369, 37.395103, 45.720715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234566, 37.741035, 46.020237>,  <32.561745, 37.841877, 45.391495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234566, 37.741035, 46.020237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606194, 37.606548, 46.081936>,  <32.829170, 37.525856, 46.118954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606194, 37.606548, 46.081936>,  <32.234566, 37.741035, 46.020237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606194, 37.606548, 46.081936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058100, 0.279183, 0.958479,
		-0.365319, -0.899453, 0.239846,
		0.929068, -0.336215, 0.154249,
		32.884914, 37.505684, 46.128212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120502, 37.429760, 46.724625>,  <32.234566, 37.741035, 46.020237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120502, 37.429760, 46.724625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513111, 37.483479, 46.670094>,  <32.748676, 37.515709, 46.637375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513111, 37.483479, 46.670094>,  <32.120502, 37.429760, 46.724625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513111, 37.483479, 46.670094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100696, 0.243366, 0.964693,
		0.162728, -0.960593, 0.225346,
		0.981519, 0.134292, -0.136331,
		32.807568, 37.523766, 46.629192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543339, 37.159119, 47.271065>,  <32.120502, 37.429760, 46.724625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543339, 37.159119, 47.271065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786144, 37.433281, 47.110188>,  <32.931828, 37.597778, 47.013660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786144, 37.433281, 47.110188>,  <32.543339, 37.159119, 47.271065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786144, 37.433281, 47.110188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237303, 0.326674, 0.914861,
		0.758433, -0.650775, 0.035648,
		0.607014, 0.685402, -0.402192,
		32.968250, 37.638901, 46.989529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040817, 37.267975, 47.717129>,  <32.543339, 37.159119, 47.271065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040817, 37.267975, 47.717129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136993, 37.591602, 47.502617>,  <33.194698, 37.785778, 47.373909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136993, 37.591602, 47.502617>,  <33.040817, 37.267975, 47.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136993, 37.591602, 47.502617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309149, 0.459892, 0.832422,
		0.920117, -0.365939, -0.139546,
		0.240439, 0.809066, -0.536284,
		33.209126, 37.834324, 47.341732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756592, 37.523266, 47.860420>,  <33.040817, 37.267975, 47.717129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756592, 37.523266, 47.860420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575260, 37.838745, 47.694309>,  <33.466461, 38.028030, 47.594643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575260, 37.838745, 47.694309>,  <33.756592, 37.523266, 47.860420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575260, 37.838745, 47.694309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105157, 0.509971, 0.853740,
		0.885119, 0.343354, -0.314120,
		-0.453327, 0.788694, -0.415279,
		33.439262, 38.075352, 47.569725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138069, 38.164425, 48.065498>,  <33.756592, 37.523266, 47.860420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138069, 38.164425, 48.065498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766014, 38.277550, 47.971813>,  <33.542782, 38.345425, 47.915600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766014, 38.277550, 47.971813>,  <34.138069, 38.164425, 48.065498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766014, 38.277550, 47.971813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063473, 0.504403, 0.861132,
		0.361682, 0.815839, -0.451213,
		-0.930138, 0.282816, -0.234217,
		33.486973, 38.362396, 47.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398026, 38.671986, 47.601879>,  <34.138069, 38.164425, 48.065498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398026, 38.671986, 47.601879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795799, 38.653980, 47.639992>,  <35.034462, 38.643177, 47.662861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795799, 38.653980, 47.639992>,  <34.398026, 38.671986, 47.601879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795799, 38.653980, 47.639992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073917, -0.346525, -0.935124,
		0.075112, 0.936960, -0.341269,
		0.994432, -0.045014, 0.095285,
		35.094128, 38.640476, 47.668579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713200, 38.824612, 46.936558>,  <34.398026, 38.671986, 47.601879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713200, 38.824612, 46.936558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004936, 38.639465, 47.138077>,  <35.179977, 38.528378, 47.258987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004936, 38.639465, 47.138077>,  <34.713200, 38.824612, 46.936558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004936, 38.639465, 47.138077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318158, -0.422445, -0.848715,
		0.605668, 0.779292, -0.160843,
		0.729343, -0.462866, 0.503799,
		35.223740, 38.500607, 47.289215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339336, 38.822067, 46.603077>,  <34.713200, 38.824612, 46.936558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339336, 38.822067, 46.603077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415936, 38.514912, 46.847591>,  <35.461895, 38.330616, 46.994301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415936, 38.514912, 46.847591>,  <35.339336, 38.822067, 46.603077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415936, 38.514912, 46.847591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420733, -0.498464, -0.757969,
		0.886743, 0.402336, 0.227624,
		0.191496, -0.767893, 0.611285,
		35.473385, 38.284542, 47.030975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032261, 38.644230, 46.577316>,  <35.339336, 38.822067, 46.603077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032261, 38.644230, 46.577316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843220, 38.313503, 46.699318>,  <35.729794, 38.115067, 46.772518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843220, 38.313503, 46.699318>,  <36.032261, 38.644230, 46.577316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843220, 38.313503, 46.699318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430464, -0.518575, -0.738770,
		0.768992, -0.217851, 0.600993,
		-0.472601, -0.826814, 0.305003,
		35.701439, 38.065460, 46.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516132, 38.114536, 46.571529>,  <36.032261, 38.644230, 46.577316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516132, 38.114536, 46.571529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169346, 37.917934, 46.538563>,  <35.961273, 37.799973, 46.518784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169346, 37.917934, 46.538563>,  <36.516132, 38.114536, 46.571529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169346, 37.917934, 46.538563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380635, -0.546288, -0.746114,
		0.321695, -0.678227, 0.660697,
		-0.866966, -0.491506, -0.082418,
		35.909256, 37.770481, 46.513836>
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
