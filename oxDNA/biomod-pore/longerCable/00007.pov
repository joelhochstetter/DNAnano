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
	<24.293150, 35.236477, 35.191605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436047, 34.898663, 35.032036>,  <24.521784, 34.695972, 34.936295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436047, 34.898663, 35.032036>,  <24.293150, 35.236477, 35.191605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436047, 34.898663, 35.032036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520648, -0.174533, 0.835742,
		-0.775439, -0.506257, 0.377356,
		0.357239, -0.844536, -0.398922,
		24.543219, 34.645302, 34.912361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051165, 34.838699, 35.684788>,  <24.293150, 35.236477, 35.191605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051165, 34.838699, 35.684788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397434, 34.771053, 35.496315>,  <24.605196, 34.730465, 35.383232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397434, 34.771053, 35.496315>,  <24.051165, 34.838699, 35.684788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397434, 34.771053, 35.496315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472894, -0.032597, 0.880516,
		-0.164266, -0.985057, 0.051755,
		0.865672, -0.169113, -0.471182,
		24.657135, 34.720318, 35.354961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496330, 34.192734, 35.869324>,  <24.051165, 34.838699, 35.684788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496330, 34.192734, 35.869324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728653, 34.498447, 35.757225>,  <24.868046, 34.681873, 35.689964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728653, 34.498447, 35.757225>,  <24.496330, 34.192734, 35.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.728653, 34.498447, 35.757225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565252, -0.130904, 0.814466,
		0.585794, -0.631459, -0.508041,
		0.580806, 0.764280, -0.280250,
		24.902895, 34.727730, 35.673149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212711, 33.933205, 35.673824>,  <24.496330, 34.192734, 35.869324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212711, 33.933205, 35.673824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180891, 34.292854, 35.845982>,  <25.161798, 34.508644, 35.949276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180891, 34.292854, 35.845982>,  <25.212711, 33.933205, 35.673824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180891, 34.292854, 35.845982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560868, -0.316565, 0.764993,
		0.824075, 0.302252, -0.479108,
		-0.079551, 0.899127, 0.430397,
		25.157026, 34.562592, 35.975101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831944, 34.273758, 35.757107>,  <25.212711, 33.933205, 35.673824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831944, 34.273758, 35.757107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590910, 34.371868, 36.060879>,  <25.446289, 34.430733, 36.243141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590910, 34.371868, 36.060879>,  <25.831944, 34.273758, 35.757107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590910, 34.371868, 36.060879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691917, -0.313616, 0.650304,
		0.397674, 0.917325, 0.019269,
		-0.602583, 0.245276, 0.759429,
		25.410135, 34.445450, 36.288708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441387, 34.210125, 36.229019>,  <25.831944, 34.273758, 35.757107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441387, 34.210125, 36.229019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110405, 34.371052, 36.385715>,  <25.911816, 34.467606, 36.479733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110405, 34.371052, 36.385715>,  <26.441387, 34.210125, 36.229019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110405, 34.371052, 36.385715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471457, 0.118787, 0.873852,
		0.305030, 0.907763, -0.287965,
		-0.827457, 0.402314, 0.391738,
		25.862167, 34.491745, 36.503235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712929, 34.530762, 36.849613>,  <26.441387, 34.210125, 36.229019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712929, 34.530762, 36.849613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337587, 34.648689, 36.921810>,  <26.112383, 34.719444, 36.965126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337587, 34.648689, 36.921810>,  <26.712929, 34.530762, 36.849613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337587, 34.648689, 36.921810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295937, 0.415291, 0.860207,
		0.178651, 0.860590, -0.476937,
		-0.938353, 0.294819, 0.180488,
		26.056082, 34.737137, 36.975956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062746, 33.867908, 36.958443>,  <26.712929, 34.530762, 36.849613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062746, 33.867908, 36.958443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379681, 33.628918, 37.007797>,  <27.569841, 33.485523, 37.037411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379681, 33.628918, 37.007797>,  <27.062746, 33.867908, 36.958443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379681, 33.628918, 37.007797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133893, -0.027014, -0.990628,
		0.595212, 0.801429, 0.058594,
		0.792335, -0.597479, 0.123385,
		27.617382, 33.449673, 37.044811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537722, 34.084381, 36.497189>,  <27.062746, 33.867908, 36.958443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537722, 34.084381, 36.497189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654499, 33.708492, 36.568398>,  <27.724566, 33.482960, 36.611122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654499, 33.708492, 36.568398>,  <27.537722, 34.084381, 36.497189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654499, 33.708492, 36.568398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043418, -0.172915, -0.983979,
		0.955450, 0.294995, -0.009680,
		0.291943, -0.939722, 0.178020,
		27.742083, 33.426575, 36.621803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996628, 33.932671, 35.959404>,  <27.537722, 34.084381, 36.497189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996628, 33.932671, 35.959404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891453, 33.574112, 36.102142>,  <27.828348, 33.358978, 36.187786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891453, 33.574112, 36.102142>,  <27.996628, 33.932671, 35.959404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891453, 33.574112, 36.102142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082818, -0.347527, -0.934005,
		0.961252, -0.275139, 0.017140,
		-0.262938, -0.896394, 0.356848,
		27.812571, 33.305195, 36.209198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484705, 33.321705, 35.704975>,  <27.996628, 33.932671, 35.959404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484705, 33.321705, 35.704975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150396, 33.124321, 35.801296>,  <27.949812, 33.005890, 35.859089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150396, 33.124321, 35.801296>,  <28.484705, 33.321705, 35.704975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150396, 33.124321, 35.801296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056883, -0.514015, -0.855893,
		0.546125, -0.701632, 0.457668,
		-0.835770, -0.493458, 0.240805,
		27.899666, 32.976284, 35.873539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502787, 32.729660, 35.323177>,  <28.484705, 33.321705, 35.704975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502787, 32.729660, 35.323177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118530, 32.742390, 35.433563>,  <27.887978, 32.750027, 35.499794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118530, 32.742390, 35.433563>,  <28.502787, 32.729660, 35.323177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118530, 32.742390, 35.433563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220200, -0.692862, -0.686625,
		0.169360, -0.720368, 0.672597,
		-0.960640, 0.031819, 0.275968,
		27.830338, 32.751934, 35.516354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175762, 32.774712, 34.568226>,  <28.502787, 32.729660, 35.323177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175762, 32.774712, 34.568226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861311, 32.553921, 34.457001>,  <27.672640, 32.421448, 34.390266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861311, 32.553921, 34.457001>,  <28.175762, 32.774712, 34.568226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861311, 32.553921, 34.457001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300143, -0.052349, 0.952457,
		-0.540291, 0.832214, -0.124520,
		-0.786129, -0.551978, -0.278067,
		27.625473, 32.388329, 34.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557100, 33.121220, 34.716980>,  <28.175762, 32.774712, 34.568226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557100, 33.121220, 34.716980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484255, 32.730125, 34.758690>,  <27.440548, 32.495468, 34.783718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484255, 32.730125, 34.758690>,  <27.557100, 33.121220, 34.716980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484255, 32.730125, 34.758690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302529, 0.156623, 0.940184,
		-0.935581, 0.139671, -0.324316,
		-0.182112, -0.977733, 0.104279,
		27.429621, 32.436806, 34.789974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898588, 32.955158, 34.960201>,  <27.557100, 33.121220, 34.716980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898588, 32.955158, 34.960201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139269, 32.668617, 35.101509>,  <27.283676, 32.496693, 35.186295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139269, 32.668617, 35.101509>,  <26.898588, 32.955158, 34.960201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139269, 32.668617, 35.101509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411226, 0.101327, 0.905884,
		-0.684727, -0.690343, -0.233614,
		0.601699, -0.716351, 0.353268,
		27.319778, 32.453712, 35.207489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634220, 32.642555, 35.604927>,  <26.898588, 32.955158, 34.960201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634220, 32.642555, 35.604927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030886, 32.593918, 35.621983>,  <27.268885, 32.564735, 35.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030886, 32.593918, 35.621983>,  <26.634220, 32.642555, 35.604927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030886, 32.593918, 35.621983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008951, 0.265076, 0.964186,
		-0.128539, -0.956530, 0.261778,
		0.991664, -0.121592, 0.042634,
		27.328384, 32.557442, 35.634773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776865, 32.401367, 36.258858>,  <26.634220, 32.642555, 35.604927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776865, 32.401367, 36.258858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122942, 32.565193, 36.143135>,  <27.330587, 32.663490, 36.073700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122942, 32.565193, 36.143135>,  <26.776865, 32.401367, 36.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122942, 32.565193, 36.143135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225375, 0.197785, 0.953985,
		0.447941, -0.890583, 0.078816,
		0.865191, 0.409566, -0.289311,
		27.382500, 32.688061, 36.056343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362989, 32.233109, 36.731647>,  <26.776865, 32.401367, 36.258858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362989, 32.233109, 36.731647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510424, 32.557968, 36.550735>,  <27.598885, 32.752884, 36.442188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510424, 32.557968, 36.550735>,  <27.362989, 32.233109, 36.731647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510424, 32.557968, 36.550735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331116, 0.339922, 0.880236,
		0.868623, -0.474201, -0.143624,
		0.368588, 0.812149, -0.452279,
		27.621000, 32.801613, 36.415051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100414, 32.200531, 36.912064>,  <27.362989, 32.233109, 36.731647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100414, 32.200531, 36.912064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988605, 32.573219, 36.819317>,  <27.921520, 32.796833, 36.763668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988605, 32.573219, 36.819317>,  <28.100414, 32.200531, 36.912064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988605, 32.573219, 36.819317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369197, 0.327233, 0.869835,
		0.886318, 0.157533, -0.435458,
		-0.279524, 0.931720, -0.231871,
		27.904749, 32.852734, 36.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621832, 32.596920, 37.230774>,  <28.100414, 32.200531, 36.912064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621832, 32.596920, 37.230774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304077, 32.834850, 37.181576>,  <28.113424, 32.977608, 37.152058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304077, 32.834850, 37.181576>,  <28.621832, 32.596920, 37.230774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304077, 32.834850, 37.181576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131729, 0.366374, 0.921096,
		0.592957, 0.715505, -0.369399,
		-0.794387, 0.594830, -0.122991,
		28.065762, 33.013298, 37.144680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720327, 33.377426, 37.130535>,  <28.621832, 32.596920, 37.230774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720327, 33.377426, 37.130535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393471, 33.292801, 37.345020>,  <28.197357, 33.242027, 37.473709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393471, 33.292801, 37.345020>,  <28.720327, 33.377426, 37.130535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393471, 33.292801, 37.345020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357625, 0.543484, 0.759427,
		-0.452088, 0.812321, -0.368444,
		-0.817142, -0.211563, 0.536209,
		28.148329, 33.229332, 37.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564148, 33.990612, 37.480305>,  <28.720327, 33.377426, 37.130535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564148, 33.990612, 37.480305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349922, 33.710030, 37.668404>,  <28.221388, 33.541679, 37.781261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349922, 33.710030, 37.668404>,  <28.564148, 33.990612, 37.480305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349922, 33.710030, 37.668404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200987, 0.434966, 0.877730,
		-0.820229, 0.564593, -0.091968,
		-0.535563, -0.701455, 0.470247,
		28.189253, 33.499592, 37.809479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116423, 34.281624, 38.006546>,  <28.564148, 33.990612, 37.480305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116423, 34.281624, 38.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260986, 33.918755, 38.092720>,  <28.347725, 33.701031, 38.144424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260986, 33.918755, 38.092720>,  <28.116423, 34.281624, 38.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260986, 33.918755, 38.092720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390562, 0.357094, 0.848496,
		-0.846666, -0.222515, 0.483367,
		0.361410, -0.907178, 0.215434,
		28.369410, 33.646603, 38.157349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512211, 34.389702, 38.630768>,  <28.116423, 34.281624, 38.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512211, 34.389702, 38.630768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592381, 33.998039, 38.617638>,  <28.640482, 33.763042, 38.609760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592381, 33.998039, 38.617638>,  <28.512211, 34.389702, 38.630768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592381, 33.998039, 38.617638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429744, 0.057757, 0.901102,
		-0.880426, -0.194709, 0.432364,
		0.200424, -0.979159, -0.032824,
		28.652508, 33.704292, 38.607792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126488, 33.866047, 39.081085>,  <28.512211, 34.389702, 38.630768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126488, 33.866047, 39.081085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506941, 33.762432, 39.013859>,  <28.735212, 33.700264, 38.973522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506941, 33.762432, 39.013859>,  <28.126488, 33.866047, 39.081085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506941, 33.762432, 39.013859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128025, -0.164494, 0.978034,
		-0.280995, -0.951757, -0.123292,
		0.951132, -0.259038, -0.168070,
		28.792280, 33.684723, 38.963436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247784, 33.338409, 39.468884>,  <28.126488, 33.866047, 39.081085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247784, 33.338409, 39.468884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605173, 33.504303, 39.399948>,  <28.819607, 33.603840, 39.358585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605173, 33.504303, 39.399948>,  <28.247784, 33.338409, 39.468884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605173, 33.504303, 39.399948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188801, 0.001325, 0.982014,
		0.407506, -0.909940, -0.077119,
		0.893472, 0.414737, -0.172338,
		28.873215, 33.628723, 39.348248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901102, 32.924290, 39.734211>,  <28.247784, 33.338409, 39.468884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901102, 32.924290, 39.734211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986494, 33.314465, 39.712498>,  <29.037729, 33.548569, 39.699471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986494, 33.314465, 39.712498>,  <28.901102, 32.924290, 39.734211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986494, 33.314465, 39.712498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367194, -0.028626, 0.929704,
		0.905315, -0.218404, -0.364286,
		0.213479, 0.975438, -0.054281,
		29.050537, 33.607098, 39.696213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219110, 33.049141, 39.101894>,  <28.901102, 32.924290, 39.734211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219110, 33.049141, 39.101894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376390, 33.395164, 38.977268>,  <29.470758, 33.602779, 38.902493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376390, 33.395164, 38.977268>,  <29.219110, 33.049141, 39.101894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376390, 33.395164, 38.977268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859429, -0.225357, 0.458907,
		0.326766, -0.448212, -0.832064,
		0.393199, 0.865055, -0.311568,
		29.494350, 33.654682, 38.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838158, 32.835678, 38.776802>,  <29.219110, 33.049141, 39.101894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838158, 32.835678, 38.776802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890564, 33.218430, 38.880508>,  <29.922007, 33.448082, 38.942734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890564, 33.218430, 38.880508>,  <29.838158, 32.835678, 38.776802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890564, 33.218430, 38.880508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923595, -0.212852, 0.318851,
		0.360287, 0.197686, -0.911654,
		0.131015, 0.956877, 0.259270,
		29.929869, 33.505493, 38.958290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329329, 33.201019, 38.469250>,  <29.838158, 32.835678, 38.776802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329329, 33.201019, 38.469250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315796, 33.393105, 38.819851>,  <30.307676, 33.508354, 39.030212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315796, 33.393105, 38.819851>,  <30.329329, 33.201019, 38.469250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315796, 33.393105, 38.819851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980187, -0.155316, 0.122926,
		0.195165, 0.863292, -0.465444,
		-0.033830, 0.480213, 0.876499,
		30.305647, 33.537167, 39.082802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897448, 33.629768, 38.477589>,  <30.329329, 33.201019, 38.469250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897448, 33.629768, 38.477589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795742, 33.592739, 38.862667>,  <30.734718, 33.570522, 39.093712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795742, 33.592739, 38.862667>,  <30.897448, 33.629768, 38.477589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795742, 33.592739, 38.862667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964404, -0.099015, 0.245194,
		0.072622, 0.990770, 0.114458,
		-0.254264, -0.092578, 0.962694,
		30.719463, 33.564964, 39.151474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409460, 33.992878, 38.814072>,  <30.897448, 33.629768, 38.477589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409460, 33.992878, 38.814072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242311, 33.723648, 39.058155>,  <31.142023, 33.562111, 39.204605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242311, 33.723648, 39.058155>,  <31.409460, 33.992878, 38.814072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242311, 33.723648, 39.058155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907853, -0.283901, 0.308549,
		-0.034437, 0.682914, 0.729686,
		-0.417871, -0.673073, 0.610210,
		31.116949, 33.521725, 39.241219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602236, 34.078102, 39.610470>,  <31.409460, 33.992878, 38.814072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602236, 34.078102, 39.610470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532415, 33.698338, 39.506046>,  <31.490524, 33.470478, 39.443390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532415, 33.698338, 39.506046>,  <31.602236, 34.078102, 39.610470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532415, 33.698338, 39.506046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912522, -0.255580, 0.319348,
		-0.369914, -0.182482, 0.910968,
		-0.174550, -0.949410, -0.261062,
		31.480051, 33.413513, 39.427727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724688, 33.685711, 40.174553>,  <31.602236, 34.078102, 39.610470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724688, 33.685711, 40.174553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804897, 33.498207, 39.830448>,  <31.853024, 33.385704, 39.623985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804897, 33.498207, 39.830448>,  <31.724688, 33.685711, 40.174553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804897, 33.498207, 39.830448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906122, -0.245106, 0.344769,
		-0.372470, -0.848639, 0.375603,
		0.200522, -0.468758, -0.860266,
		31.865053, 33.357578, 39.572369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839474, 32.963024, 40.264175>,  <31.724688, 33.685711, 40.174553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839474, 32.963024, 40.264175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052155, 33.148548, 39.980721>,  <32.179764, 33.259861, 39.810646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052155, 33.148548, 39.980721>,  <31.839474, 32.963024, 40.264175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052155, 33.148548, 39.980721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845581, -0.243477, 0.475091,
		0.047815, -0.851821, -0.521647,
		0.531701, 0.463811, -0.708642,
		32.211666, 33.287693, 39.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344299, 32.676220, 39.785713>,  <31.839474, 32.963024, 40.264175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344299, 32.676220, 39.785713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316263, 33.058006, 39.901695>,  <31.299440, 33.287079, 39.971287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316263, 33.058006, 39.901695>,  <31.344299, 32.676220, 39.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316263, 33.058006, 39.901695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880323, 0.077525, -0.467996,
		-0.469167, -0.288060, 0.834808,
		-0.070092, 0.954469, 0.289958,
		31.295235, 33.344349, 39.988682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624285, 32.880161, 40.200638>,  <31.344299, 32.676220, 39.785713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624285, 32.880161, 40.200638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799814, 33.154385, 39.968281>,  <30.905132, 33.318920, 39.828865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799814, 33.154385, 39.968281>,  <30.624285, 32.880161, 40.200638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799814, 33.154385, 39.968281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857422, 0.126076, -0.498931,
		-0.268812, 0.717014, 0.643142,
		0.438825, 0.685563, -0.580893,
		30.931461, 33.360054, 39.794014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422155, 33.666039, 40.360638>,  <30.624285, 32.880161, 40.200638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422155, 33.666039, 40.360638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534130, 33.637283, 39.977707>,  <30.601315, 33.620029, 39.747948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534130, 33.637283, 39.977707>,  <30.422155, 33.666039, 40.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534130, 33.637283, 39.977707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878420, 0.383130, -0.285638,
		0.387314, 0.920892, 0.044101,
		0.279938, -0.071892, -0.957322,
		30.618111, 33.615715, 39.690510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222891, 34.270805, 40.102108>,  <30.422155, 33.666039, 40.360638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222891, 34.270805, 40.102108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253315, 34.013081, 39.797722>,  <30.271570, 33.858444, 39.615089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253315, 34.013081, 39.797722>,  <30.222891, 34.270805, 40.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253315, 34.013081, 39.797722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904379, 0.276810, -0.324770,
		0.419898, 0.712905, -0.561651,
		0.076060, -0.644315, -0.760968,
		30.276133, 33.819786, 39.569431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172827, 34.633114, 39.440216>,  <30.222891, 34.270805, 40.102108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172827, 34.633114, 39.440216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045862, 34.259136, 39.376808>,  <29.969683, 34.034748, 39.338764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045862, 34.259136, 39.376808>,  <30.172827, 34.633114, 39.440216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045862, 34.259136, 39.376808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848888, 0.354649, -0.391936,
		0.422658, 0.010160, -0.906233,
		-0.317412, -0.934944, -0.158520,
		29.950638, 33.978653, 39.329254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925095, 34.718792, 38.718475>,  <30.172827, 34.633114, 39.440216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925095, 34.718792, 38.718475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755075, 34.415039, 38.915520>,  <29.653063, 34.232788, 39.033749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755075, 34.415039, 38.915520>,  <29.925095, 34.718792, 38.718475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755075, 34.415039, 38.915520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890355, 0.252695, -0.378699,
		0.163096, -0.599570, -0.783528,
		-0.425050, -0.759382, 0.492617,
		29.627560, 34.187225, 39.063305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849997, 35.412674, 39.188950>,  <29.925095, 34.718792, 38.718475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849997, 35.412674, 39.188950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216799, 35.365910, 39.036407>,  <30.436880, 35.337852, 38.944881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216799, 35.365910, 39.036407>,  <29.849997, 35.412674, 39.188950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216799, 35.365910, 39.036407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385548, 0.504843, 0.772325,
		0.102232, -0.855258, 0.508018,
		0.917007, -0.116909, -0.381354,
		30.491901, 35.330837, 38.922001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810375, 35.937057, 39.758831>,  <29.849997, 35.412674, 39.188950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810375, 35.937057, 39.758831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465797, 35.738972, 39.713806>,  <29.259050, 35.620121, 39.686790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465797, 35.738972, 39.713806>,  <29.810375, 35.937057, 39.758831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465797, 35.738972, 39.713806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060862, 0.320711, -0.945220,
		0.504190, -0.807405, -0.306415,
		-0.861445, -0.495219, -0.112559,
		29.207363, 35.590405, 39.680038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497847, 35.818150, 39.456406>,  <29.810375, 35.937057, 39.758831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497847, 35.818150, 39.456406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509869, 36.214787, 39.506744>,  <30.517082, 36.452770, 39.536949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509869, 36.214787, 39.506744>,  <30.497847, 35.818150, 39.456406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509869, 36.214787, 39.506744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951217, -0.067053, 0.301148,
		0.307055, 0.110659, -0.945236,
		0.030056, 0.991594, 0.125850,
		30.518885, 36.512264, 39.544498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150555, 35.965458, 39.280037>,  <30.497847, 35.818150, 39.456406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150555, 35.965458, 39.280037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006119, 36.260239, 39.508606>,  <30.919458, 36.437107, 39.645748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006119, 36.260239, 39.508606>,  <31.150555, 35.965458, 39.280037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006119, 36.260239, 39.508606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847517, 0.003725, 0.530755,
		0.389011, 0.675937, -0.625923,
		-0.361088, 0.736950, 0.571419,
		30.897793, 36.481323, 39.680031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595953, 36.595749, 39.364323>,  <31.150555, 35.965458, 39.280037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595953, 36.595749, 39.364323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372444, 36.524723, 39.688358>,  <31.238338, 36.482109, 39.882778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372444, 36.524723, 39.688358>,  <31.595953, 36.595749, 39.364323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372444, 36.524723, 39.688358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791967, -0.404113, 0.457691,
		0.246098, 0.897309, 0.366432,
		-0.558771, -0.177565, 0.810090,
		31.204813, 36.471455, 39.931385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988241, 36.710522, 40.038704>,  <31.595953, 36.595749, 39.364323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988241, 36.710522, 40.038704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679728, 36.475082, 40.135590>,  <31.494619, 36.333817, 40.193722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679728, 36.475082, 40.135590>,  <31.988241, 36.710522, 40.038704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679728, 36.475082, 40.135590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578727, -0.490118, 0.651812,
		-0.264943, 0.642910, 0.718660,
		-0.771285, -0.588601, 0.242216,
		31.448341, 36.298504, 40.208256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743956, 36.654148, 40.847698>,  <31.988241, 36.710522, 40.038704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743956, 36.654148, 40.847698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765772, 36.332134, 40.611416>,  <31.778862, 36.138924, 40.469646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765772, 36.332134, 40.611416>,  <31.743956, 36.654148, 40.847698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765772, 36.332134, 40.611416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529551, -0.478220, 0.700629,
		-0.846523, -0.351024, 0.400226,
		0.054541, -0.805039, -0.590709,
		31.782135, 36.090622, 40.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400402, 36.129795, 41.078041>,  <31.743956, 36.654148, 40.847698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400402, 36.129795, 41.078041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692001, 35.971031, 40.854965>,  <31.866961, 35.875774, 40.721119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692001, 35.971031, 40.854965>,  <31.400402, 36.129795, 41.078041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692001, 35.971031, 40.854965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262538, -0.590298, 0.763297,
		-0.632166, -0.702859, -0.326122,
		0.728999, -0.396911, -0.557694,
		31.910702, 35.851959, 40.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288746, 35.412350, 40.933273>,  <31.400402, 36.129795, 41.078041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288746, 35.412350, 40.933273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659861, 35.550499, 40.989746>,  <31.882528, 35.633389, 41.023628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659861, 35.550499, 40.989746>,  <31.288746, 35.412350, 40.933273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659861, 35.550499, 40.989746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056672, -0.504439, 0.861586,
		0.368784, -0.791366, -0.487584,
		0.927786, 0.345372, 0.141181,
		31.938196, 35.654110, 41.032101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810894, 34.872322, 41.167671>,  <31.288746, 35.412350, 40.933273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810894, 34.872322, 41.167671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887165, 35.244427, 41.293049>,  <31.932928, 35.467690, 41.368275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887165, 35.244427, 41.293049>,  <31.810894, 34.872322, 41.167671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887165, 35.244427, 41.293049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097802, -0.335720, 0.936871,
		0.976768, -0.147984, -0.154996,
		0.190678, 0.930265, 0.313447,
		31.944368, 35.523506, 41.387081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606098, 35.089825, 41.392910>,  <31.810894, 34.872322, 41.167671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606098, 35.089825, 41.392910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318832, 35.302368, 41.572643>,  <32.146473, 35.429893, 41.680485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318832, 35.302368, 41.572643>,  <32.606098, 35.089825, 41.392910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318832, 35.302368, 41.572643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222367, -0.436620, 0.871732,
		0.659388, 0.725964, 0.195409,
		-0.718165, 0.531357, 0.449332,
		32.103382, 35.461777, 41.707443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042412, 35.247353, 41.993378>,  <32.606098, 35.089825, 41.392910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042412, 35.247353, 41.993378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232887, 34.896301, 41.971428>,  <33.347172, 34.685669, 41.958256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232887, 34.896301, 41.971428>,  <33.042412, 35.247353, 41.993378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232887, 34.896301, 41.971428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877464, 0.478322, -0.035582,
		0.057477, -0.031209, 0.997859,
		0.476187, -0.877630, -0.054877,
		33.375744, 34.633011, 41.954964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611031, 35.321648, 42.346920>,  <33.042412, 35.247353, 41.993378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611031, 35.321648, 42.346920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662453, 35.043373, 42.064220>,  <33.693306, 34.876408, 41.894600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662453, 35.043373, 42.064220>,  <33.611031, 35.321648, 42.346920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662453, 35.043373, 42.064220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785700, 0.506289, -0.355452,
		0.605102, -0.509594, 0.611691,
		0.128556, -0.695691, -0.706744,
		33.701019, 34.834667, 41.852196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307079, 35.356319, 42.268543>,  <33.611031, 35.321648, 42.346920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307079, 35.356319, 42.268543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122692, 35.208225, 41.945946>,  <34.012058, 35.119370, 41.752388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122692, 35.208225, 41.945946>,  <34.307079, 35.356319, 42.268543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122692, 35.208225, 41.945946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701550, 0.404508, -0.586686,
		0.543446, -0.836240, 0.073274,
		-0.460970, -0.370238, -0.806493,
		33.984402, 35.097153, 41.703999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806915, 35.101486, 41.969738>,  <34.307079, 35.356319, 42.268543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806915, 35.101486, 41.969738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520901, 35.195755, 41.706470>,  <34.349293, 35.252316, 41.548512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520901, 35.195755, 41.706470>,  <34.806915, 35.101486, 41.969738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520901, 35.195755, 41.706470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699062, 0.232369, -0.676252,
		-0.006437, -0.943643, -0.330902,
		-0.715032, 0.235674, -0.658169,
		34.306393, 35.266457, 41.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782982, 34.839962, 41.361141>,  <34.806915, 35.101486, 41.969738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782982, 34.839962, 41.361141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594784, 35.183167, 41.278721>,  <34.481865, 35.389088, 41.229271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594784, 35.183167, 41.278721>,  <34.782982, 34.839962, 41.361141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594784, 35.183167, 41.278721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756938, 0.272429, -0.593992,
		-0.453517, -0.435436, -0.777636,
		-0.470496, 0.858008, -0.206047,
		34.453636, 35.440571, 41.216908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585140, 34.981335, 40.683079>,  <34.782982, 34.839962, 41.361141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585140, 34.981335, 40.683079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671463, 35.339954, 40.837803>,  <34.723255, 35.555126, 40.930637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671463, 35.339954, 40.837803>,  <34.585140, 34.981335, 40.683079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671463, 35.339954, 40.837803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793159, 0.070086, -0.604968,
		-0.569496, 0.437355, -0.695985,
		0.215807, 0.896554, 0.386806,
		34.736206, 35.608921, 40.953846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735989, 35.410725, 40.192577>,  <34.585140, 34.981335, 40.683079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735989, 35.410725, 40.192577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911785, 35.590782, 40.503502>,  <35.017262, 35.698818, 40.690056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911785, 35.590782, 40.503502>,  <34.735989, 35.410725, 40.192577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911785, 35.590782, 40.503502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763856, 0.268032, -0.587097,
		-0.472624, 0.851779, -0.226051,
		0.439488, 0.450146, 0.777315,
		35.043633, 35.725826, 40.736698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903549, 36.098053, 39.992203>,  <34.735989, 35.410725, 40.192577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903549, 36.098053, 39.992203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153759, 36.000240, 40.288559>,  <35.303886, 35.941551, 40.466373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153759, 36.000240, 40.288559>,  <34.903549, 36.098053, 39.992203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153759, 36.000240, 40.288559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777292, 0.277316, -0.564725,
		-0.067366, 0.929139, 0.363543,
		0.625524, -0.244535, 0.740893,
		35.341415, 35.926880, 40.510826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365738, 36.680508, 40.258091>,  <34.903549, 36.098053, 39.992203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365738, 36.680508, 40.258091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534370, 36.318150, 40.241989>,  <35.635548, 36.100735, 40.232327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534370, 36.318150, 40.241989>,  <35.365738, 36.680508, 40.258091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534370, 36.318150, 40.241989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753325, 0.374598, -0.540534,
		0.504749, 0.197551, 0.840358,
		0.421579, -0.905898, -0.040258,
		35.660843, 36.046379, 40.229912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065750, 36.748878, 40.652145>,  <35.365738, 36.680508, 40.258091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065750, 36.748878, 40.652145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426731, 36.918514, 40.621861>,  <36.643318, 37.020294, 40.603691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426731, 36.918514, 40.621861>,  <36.065750, 36.748878, 40.652145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426731, 36.918514, 40.621861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355822, -0.832868, -0.423936,
		-0.242844, 0.355642, -0.902522,
		0.902451, 0.424088, -0.075712,
		36.697468, 37.045742, 40.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387009, 36.784058, 39.907459>,  <36.065750, 36.748878, 40.652145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387009, 36.784058, 39.907459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634495, 36.752163, 40.220085>,  <36.782986, 36.733028, 40.407661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634495, 36.752163, 40.220085>,  <36.387009, 36.784058, 39.907459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634495, 36.752163, 40.220085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410341, -0.815552, -0.408039,
		0.669938, 0.573165, -0.471873,
		0.618711, -0.079733, 0.781562,
		36.820107, 36.728245, 40.454556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166153, 36.715176, 39.757545>,  <36.387009, 36.784058, 39.907459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166153, 36.715176, 39.757545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024479, 36.529018, 40.082005>,  <36.939476, 36.417324, 40.276680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024479, 36.529018, 40.082005>,  <37.166153, 36.715176, 39.757545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024479, 36.529018, 40.082005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240705, -0.883522, -0.401809,
		0.903668, 0.052934, 0.424950,
		-0.354183, -0.465389, 0.811152,
		36.918224, 36.389400, 40.325352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590084, 36.307705, 40.039482>,  <37.166153, 36.715176, 39.757545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590084, 36.307705, 40.039482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248993, 36.134163, 40.155846>,  <37.044338, 36.030037, 40.225662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248993, 36.134163, 40.155846>,  <37.590084, 36.307705, 40.039482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248993, 36.134163, 40.155846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295469, -0.859879, -0.416300,
		0.430758, -0.269037, 0.861433,
		-0.852728, -0.433851, 0.290908,
		36.993176, 36.004009, 40.243118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539913, 35.599785, 40.446056>,  <37.590084, 36.307705, 40.039482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539913, 35.599785, 40.446056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185970, 35.581879, 40.260571>,  <36.973606, 35.571133, 40.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185970, 35.581879, 40.260571>,  <37.539913, 35.599785, 40.446056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185970, 35.581879, 40.260571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257370, -0.876664, -0.406474,
		-0.388322, -0.479016, 0.787242,
		-0.884854, -0.044769, -0.463713,
		36.920513, 35.568447, 40.121456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529316, 34.901470, 40.350677>,  <37.539913, 35.599785, 40.446056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529316, 34.901470, 40.350677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232246, 35.027496, 40.114315>,  <37.054005, 35.103111, 39.972500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232246, 35.027496, 40.114315>,  <37.529316, 34.901470, 40.350677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232246, 35.027496, 40.114315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091527, -0.826367, -0.555645,
		-0.663363, -0.466749, 0.584889,
		-0.742679, 0.315061, -0.590901,
		37.009441, 35.122013, 39.937046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052418, 34.337933, 40.220669>,  <37.529316, 34.901470, 40.350677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052418, 34.337933, 40.220669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973061, 34.596287, 39.925785>,  <36.925446, 34.751297, 39.748856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973061, 34.596287, 39.925785>,  <37.052418, 34.337933, 40.220669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973061, 34.596287, 39.925785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024317, -0.748683, -0.662483,
		-0.979820, -0.149360, 0.132830,
		-0.198396, 0.645884, -0.737206,
		36.913544, 34.790051, 39.704624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488419, 34.109524, 39.802025>,  <37.052418, 34.337933, 40.220669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488419, 34.109524, 39.802025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664600, 34.368031, 39.552757>,  <36.770309, 34.523136, 39.403198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664600, 34.368031, 39.552757>,  <36.488419, 34.109524, 39.802025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664600, 34.368031, 39.552757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110249, -0.649935, -0.751951,
		-0.890980, 0.399904, -0.215016,
		0.440454, 0.646268, -0.623168,
		36.796738, 34.561913, 39.365807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972355, 34.064518, 39.198265>,  <36.488419, 34.109524, 39.802025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972355, 34.064518, 39.198265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324543, 34.210285, 39.076962>,  <36.535854, 34.297745, 39.004177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324543, 34.210285, 39.076962>,  <35.972355, 34.064518, 39.198265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324543, 34.210285, 39.076962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087543, -0.503695, -0.859435,
		-0.465946, 0.783256, -0.411587,
		0.880472, 0.364419, -0.303263,
		36.588684, 34.319611, 38.985981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034729, 33.914783, 38.546329>,  <35.972355, 34.064518, 39.198265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034729, 33.914783, 38.546329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419052, 34.012009, 38.599659>,  <36.649647, 34.070343, 38.631657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419052, 34.012009, 38.599659>,  <36.034729, 33.914783, 38.546329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419052, 34.012009, 38.599659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226844, -0.412857, -0.882095,
		-0.159357, 0.877765, -0.451812,
		0.960805, 0.243059, 0.133324,
		36.707294, 34.084927, 38.639656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303871, 34.332195, 37.986408>,  <36.034729, 33.914783, 38.546329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303871, 34.332195, 37.986408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631332, 34.183983, 38.161915>,  <36.827808, 34.095055, 38.267220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631332, 34.183983, 38.161915>,  <36.303871, 34.332195, 37.986408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631332, 34.183983, 38.161915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308627, -0.360462, -0.880237,
		0.484318, 0.856020, -0.180735,
		0.818649, -0.370535, 0.438769,
		36.876926, 34.072823, 38.293545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960449, 34.485104, 37.528393>,  <36.303871, 34.332195, 37.986408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960449, 34.485104, 37.528393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053207, 34.187481, 37.779022>,  <37.108864, 34.008907, 37.929401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053207, 34.187481, 37.779022>,  <36.960449, 34.485104, 37.528393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053207, 34.187481, 37.779022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399315, -0.514543, -0.758811,
		0.887001, 0.426168, 0.177793,
		0.231899, -0.744061, 0.626575,
		37.122776, 33.964264, 37.966995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617569, 34.318771, 37.339470>,  <36.960449, 34.485104, 37.528393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617569, 34.318771, 37.339470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447670, 33.998405, 37.508286>,  <37.345730, 33.806187, 37.609577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447670, 33.998405, 37.508286>,  <37.617569, 34.318771, 37.339470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447670, 33.998405, 37.508286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172187, -0.529144, -0.830878,
		0.888787, -0.280242, 0.362660,
		-0.424746, -0.800919, 0.422043,
		37.320248, 33.758129, 37.634899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899479, 33.774349, 36.934006>,  <37.617569, 34.318771, 37.339470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899479, 33.774349, 36.934006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598759, 33.596466, 37.128746>,  <37.418327, 33.489735, 37.245590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598759, 33.596466, 37.128746>,  <37.899479, 33.774349, 36.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598759, 33.596466, 37.128746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241251, -0.501640, -0.830756,
		0.613672, -0.742017, 0.269846,
		-0.751801, -0.444711, 0.486855,
		37.373219, 33.463055, 37.274803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894638, 33.055218, 36.806637>,  <37.899479, 33.774349, 36.934006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894638, 33.055218, 36.806637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512939, 33.135754, 36.895073>,  <37.283920, 33.184074, 36.948135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512939, 33.135754, 36.895073>,  <37.894638, 33.055218, 36.806637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512939, 33.135754, 36.895073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290635, -0.450493, -0.844149,
		-0.070355, -0.869782, 0.488395,
		-0.954244, 0.201335, 0.221095,
		37.226665, 33.196156, 36.961403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537525, 32.488918, 36.549744>,  <37.894638, 33.055218, 36.806637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537525, 32.488918, 36.549744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241009, 32.754337, 36.590118>,  <37.063099, 32.913589, 36.614342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241009, 32.754337, 36.590118>,  <37.537525, 32.488918, 36.549744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241009, 32.754337, 36.590118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517437, -0.469208, -0.715614,
		-0.427488, -0.582704, 0.691166,
		-0.741291, 0.663551, 0.100933,
		37.018620, 32.953403, 36.620399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924911, 32.093174, 36.532547>,  <37.537525, 32.488918, 36.549744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924911, 32.093174, 36.532547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802658, 32.459911, 36.429802>,  <36.729305, 32.679955, 36.368156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802658, 32.459911, 36.429802>,  <36.924911, 32.093174, 36.532547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802658, 32.459911, 36.429802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501981, -0.384391, -0.774764,
		-0.809074, -0.107858, 0.577724,
		-0.305636, 0.916848, -0.256859,
		36.710968, 32.734966, 36.352745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280277, 32.043964, 36.313244>,  <36.924911, 32.093174, 36.532547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280277, 32.043964, 36.313244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368927, 32.399021, 36.151760>,  <36.422115, 32.612053, 36.054871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368927, 32.399021, 36.151760>,  <36.280277, 32.043964, 36.313244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368927, 32.399021, 36.151760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503143, -0.250551, -0.827086,
		-0.835303, 0.386425, 0.391081,
		0.221621, 0.887637, -0.403713,
		36.435413, 32.665314, 36.030647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588112, 32.432552, 36.200943>,  <36.280277, 32.043964, 36.313244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588112, 32.432552, 36.200943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849270, 32.600315, 35.948650>,  <36.005966, 32.700974, 35.797276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849270, 32.600315, 35.948650>,  <35.588112, 32.432552, 36.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849270, 32.600315, 35.948650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528611, -0.344095, -0.775995,
		-0.542491, 0.840057, -0.002954,
		0.652896, 0.419409, -0.630732,
		36.045139, 32.726139, 35.759430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224262, 32.699505, 35.704662>,  <35.588112, 32.432552, 36.200943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224262, 32.699505, 35.704662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585960, 32.683102, 35.534649>,  <35.802979, 32.673260, 35.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585960, 32.683102, 35.534649>,  <35.224262, 32.699505, 35.704662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585960, 32.683102, 35.534649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420690, -0.256171, -0.870285,
		-0.073192, 0.965761, -0.248895,
		0.904247, -0.041010, -0.425036,
		35.857235, 32.670799, 35.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211548, 33.120369, 35.180962>,  <35.224262, 32.699505, 35.704662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211548, 33.120369, 35.180962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502220, 32.867634, 35.073097>,  <35.676624, 32.715992, 35.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502220, 32.867634, 35.073097>,  <35.211548, 33.120369, 35.180962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502220, 32.867634, 35.073097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588454, -0.369952, -0.718929,
		0.354485, 0.681114, -0.640644,
		0.726679, -0.631839, -0.269661,
		35.720222, 32.678082, 34.992199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099583, 32.945480, 34.492790>,  <35.211548, 33.120369, 35.180962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099583, 32.945480, 34.492790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360683, 32.658787, 34.590935>,  <35.517345, 32.486771, 34.649822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360683, 32.658787, 34.590935>,  <35.099583, 32.945480, 34.492790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360683, 32.658787, 34.590935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409044, -0.606066, -0.682178,
		0.637648, 0.344929, -0.688788,
		0.652754, -0.716734, 0.245366,
		35.556511, 32.443768, 34.664543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289215, 32.731316, 33.896599>,  <35.099583, 32.945480, 34.492790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289215, 32.731316, 33.896599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388519, 32.426552, 34.135883>,  <35.448101, 32.243694, 34.279453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388519, 32.426552, 34.135883>,  <35.289215, 32.731316, 33.896599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388519, 32.426552, 34.135883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439467, -0.638924, -0.631384,
		0.863269, -0.106144, -0.493457,
		0.248264, -0.761912, 0.598210,
		35.462997, 32.197979, 34.315346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618866, 32.191292, 33.414486>,  <35.289215, 32.731316, 33.896599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618866, 32.191292, 33.414486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498474, 31.981697, 33.733196>,  <35.426239, 31.855940, 33.924423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498474, 31.981697, 33.733196>,  <35.618866, 32.191292, 33.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498474, 31.981697, 33.733196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410329, -0.683058, -0.604204,
		0.860836, -0.508795, -0.009417,
		-0.300983, -0.523985, 0.796774,
		35.408180, 31.824501, 33.972229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941879, 31.441319, 33.376915>,  <35.618866, 32.191292, 33.414486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941879, 31.441319, 33.376915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607811, 31.435270, 33.596825>,  <35.407368, 31.431641, 33.728771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607811, 31.435270, 33.596825>,  <35.941879, 31.441319, 33.376915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607811, 31.435270, 33.596825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373098, -0.718857, -0.586551,
		0.404080, -0.694994, 0.594729,
		-0.835175, -0.015121, 0.549776,
		35.357258, 31.430735, 33.761757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911625, 30.783068, 33.527985>,  <35.941879, 31.441319, 33.376915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911625, 30.783068, 33.527985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552536, 30.926865, 33.629852>,  <35.337082, 31.013144, 33.690971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552536, 30.926865, 33.629852>,  <35.911625, 30.783068, 33.527985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552536, 30.926865, 33.629852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440558, -0.732023, -0.519665,
		-0.000393, -0.578712, 0.815532,
		-0.897724, 0.359493, 0.254669,
		35.283218, 31.034712, 33.706253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555077, 30.195732, 33.772724>,  <35.911625, 30.783068, 33.527985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555077, 30.195732, 33.772724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283226, 30.468035, 33.663410>,  <35.120117, 30.631416, 33.597820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283226, 30.468035, 33.663410>,  <35.555077, 30.195732, 33.772724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283226, 30.468035, 33.663410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442235, -0.677456, -0.587777,
		-0.585269, -0.278612, 0.761469,
		-0.679624, 0.680756, -0.273282,
		35.079338, 30.672262, 33.581425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879421, 29.932400, 33.885044>,  <35.555077, 30.195732, 33.772724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879421, 29.932400, 33.885044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865295, 30.222616, 33.610134>,  <34.856819, 30.396746, 33.445190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865295, 30.222616, 33.610134>,  <34.879421, 29.932400, 33.885044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865295, 30.222616, 33.610134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491034, -0.611562, -0.620384,
		-0.870424, 0.315564, 0.377863,
		-0.035316, 0.725541, -0.687272,
		34.854702, 30.440279, 33.403954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380398, 29.557737, 33.580547>,  <34.879421, 29.932400, 33.885044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380398, 29.557737, 33.580547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470551, 29.864483, 33.340172>,  <34.524643, 30.048531, 33.195946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470551, 29.864483, 33.340172>,  <34.380398, 29.557737, 33.580547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470551, 29.864483, 33.340172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429293, -0.475532, -0.767839,
		-0.874592, 0.431034, 0.222033,
		0.225381, 0.766863, -0.600936,
		34.538166, 30.094542, 33.159889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772644, 29.737230, 33.108948>,  <34.380398, 29.557737, 33.580547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772644, 29.737230, 33.108948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079853, 29.880869, 32.896835>,  <34.264179, 29.967052, 32.769569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079853, 29.880869, 32.896835>,  <33.772644, 29.737230, 33.108948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079853, 29.880869, 32.896835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400419, -0.376954, -0.835206,
		-0.499812, 0.853788, -0.145719,
		0.768019, 0.359097, -0.530280,
		34.310257, 29.988598, 32.737751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516094, 30.052746, 32.508720>,  <33.772644, 29.737230, 33.108948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516094, 30.052746, 32.508720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890327, 30.030346, 32.369267>,  <34.114868, 30.016907, 32.285595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890327, 30.030346, 32.369267>,  <33.516094, 30.052746, 32.508720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890327, 30.030346, 32.369267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349555, -0.286500, -0.892037,
		-0.049930, 0.956442, -0.287620,
		0.935585, -0.055999, -0.348634,
		34.171001, 30.013546, 32.264675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448757, 30.317715, 31.852020>,  <33.516094, 30.052746, 32.508720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448757, 30.317715, 31.852020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781055, 30.095072, 31.854979>,  <33.980434, 29.961487, 31.856754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781055, 30.095072, 31.854979>,  <33.448757, 30.317715, 31.852020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781055, 30.095072, 31.854979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208659, -0.323688, -0.922869,
		0.516070, 0.765124, -0.385043,
		0.830743, -0.556607, 0.007396,
		34.030277, 29.928089, 31.857197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728672, 30.407532, 31.193636>,  <33.448757, 30.317715, 31.852020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728672, 30.407532, 31.193636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909279, 30.076893, 31.328016>,  <34.017643, 29.878510, 31.408644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909279, 30.076893, 31.328016>,  <33.728672, 30.407532, 31.193636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909279, 30.076893, 31.328016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075489, -0.410555, -0.908705,
		0.889062, 0.384939, -0.247774,
		0.451521, -0.826599, 0.335950,
		34.044735, 29.828913, 31.428801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220818, 30.310871, 30.610683>,  <33.728672, 30.407532, 31.193636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220818, 30.310871, 30.610683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127998, 29.984194, 30.822027>,  <34.072308, 29.788187, 30.948833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127998, 29.984194, 30.822027>,  <34.220818, 30.310871, 30.610683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127998, 29.984194, 30.822027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306548, -0.454108, -0.836549,
		0.923137, -0.356089, -0.144980,
		-0.232049, -0.816693, 0.528362,
		34.058384, 29.739185, 30.980536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469986, 29.885262, 30.186428>,  <34.220818, 30.310871, 30.610683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469986, 29.885262, 30.186428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216537, 29.665150, 30.403948>,  <34.064468, 29.533083, 30.534460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216537, 29.665150, 30.403948>,  <34.469986, 29.885262, 30.186428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216537, 29.665150, 30.403948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326455, -0.447090, -0.832789,
		0.701394, -0.705198, 0.103644,
		-0.633619, -0.550279, 0.543802,
		34.026451, 29.500067, 30.567089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621078, 29.231602, 30.099680>,  <34.469986, 29.885262, 30.186428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621078, 29.231602, 30.099680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254829, 29.184746, 30.253517>,  <34.035080, 29.156633, 30.345819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254829, 29.184746, 30.253517>,  <34.621078, 29.231602, 30.099680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254829, 29.184746, 30.253517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298403, -0.443061, -0.845371,
		0.269424, -0.888806, 0.370723,
		-0.915624, -0.117138, 0.384593,
		33.980141, 29.149605, 30.368895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441780, 28.512829, 30.217472>,  <34.621078, 29.231602, 30.099680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441780, 28.512829, 30.217472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111629, 28.727549, 30.147497>,  <33.913540, 28.856380, 30.105513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111629, 28.727549, 30.147497>,  <34.441780, 28.512829, 30.217472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111629, 28.727549, 30.147497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260048, -0.636485, -0.726129,
		-0.501130, -0.553836, 0.664932,
		-0.825374, 0.536799, -0.174938,
		33.864017, 28.888588, 30.095015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075462, 28.008129, 29.877026>,  <34.441780, 28.512829, 30.217472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075462, 28.008129, 29.877026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840355, 28.329620, 29.840055>,  <33.699291, 28.522516, 29.817873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840355, 28.329620, 29.840055>,  <34.075462, 28.008129, 29.877026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840355, 28.329620, 29.840055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385641, -0.378770, -0.841317,
		-0.711200, -0.458859, 0.532582,
		-0.587772, 0.803730, -0.092426,
		33.664024, 28.570740, 29.812328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394955, 27.762663, 29.758221>,  <34.075462, 28.008129, 29.877026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394955, 27.762663, 29.758221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395004, 28.140039, 29.625605>,  <33.395035, 28.366465, 29.546034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395004, 28.140039, 29.625605>,  <33.394955, 27.762663, 29.758221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395004, 28.140039, 29.625605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363991, -0.308756, -0.878738,
		-0.931403, 0.120786, 0.343366,
		0.000123, 0.943441, -0.331541,
		33.395042, 28.423071, 29.526142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750191, 27.805965, 29.401432>,  <33.394955, 27.762663, 29.758221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750191, 27.805965, 29.401432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983963, 28.103001, 29.270586>,  <33.124226, 28.281221, 29.192080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983963, 28.103001, 29.270586>,  <32.750191, 27.805965, 29.401432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983963, 28.103001, 29.270586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486404, -0.002073, -0.873732,
		-0.649501, 0.669745, 0.359986,
		0.584431, 0.742588, -0.327113,
		33.159294, 28.325777, 29.172453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281696, 28.311392, 29.115316>,  <32.750191, 27.805965, 29.401432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281696, 28.311392, 29.115316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641785, 28.360668, 28.948263>,  <32.857838, 28.390234, 28.848032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641785, 28.360668, 28.948263>,  <32.281696, 28.311392, 29.115316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641785, 28.360668, 28.948263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413509, -0.058580, -0.908614,
		-0.136399, 0.990652, -0.001795,
		0.900226, 0.123192, -0.417633,
		32.911854, 28.397625, 28.822973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331173, 28.983309, 28.640739>,  <32.281696, 28.311392, 29.115316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331173, 28.983309, 28.640739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609016, 28.721651, 28.520994>,  <32.775723, 28.564657, 28.449146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609016, 28.721651, 28.520994>,  <32.331173, 28.983309, 28.640739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609016, 28.721651, 28.520994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154661, 0.270615, -0.950183,
		0.702569, 0.706302, 0.086800,
		0.694606, -0.654144, -0.299363,
		32.817398, 28.525408, 28.431185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428745, 29.230349, 28.054193>,  <32.331173, 28.983309, 28.640739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428745, 29.230349, 28.054193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593521, 28.866293, 28.036522>,  <32.692387, 28.647860, 28.025919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593521, 28.866293, 28.036522>,  <32.428745, 29.230349, 28.054193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593521, 28.866293, 28.036522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216319, -0.050582, -0.975011,
		0.885161, 0.411205, -0.217717,
		0.411942, -0.910138, -0.044179,
		32.717102, 28.593252, 28.023268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591255, 29.263691, 27.350668>,  <32.428745, 29.230349, 28.054193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591255, 29.263691, 27.350668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624073, 28.880604, 27.460976>,  <32.643764, 28.650751, 27.527161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624073, 28.880604, 27.460976>,  <32.591255, 29.263691, 27.350668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624073, 28.880604, 27.460976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147561, -0.285323, -0.947004,
		0.985644, 0.037003, -0.164731,
		0.082043, -0.957717, 0.275767,
		32.648685, 28.593288, 27.543705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142269, 28.956118, 26.988552>,  <32.591255, 29.263691, 27.350668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142269, 28.956118, 26.988552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901192, 28.657063, 27.100126>,  <32.756546, 28.477631, 27.167070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901192, 28.657063, 27.100126>,  <33.142269, 28.956118, 26.988552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901192, 28.657063, 27.100126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066143, -0.301549, -0.951154,
		0.795230, -0.591699, 0.132290,
		-0.602689, -0.747636, 0.278938,
		32.720387, 28.432772, 27.183807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312969, 28.375614, 26.554090>,  <33.142269, 28.956118, 26.988552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312969, 28.375614, 26.554090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969719, 28.259647, 26.723593>,  <32.763767, 28.190067, 26.825294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969719, 28.259647, 26.723593>,  <33.312969, 28.375614, 26.554090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969719, 28.259647, 26.723593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237743, -0.507150, -0.828419,
		0.455081, -0.811632, 0.366272,
		-0.858126, -0.289919, 0.423753,
		32.712280, 28.172672, 26.850719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195179, 27.743799, 26.256594>,  <33.312969, 28.375614, 26.554090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195179, 27.743799, 26.256594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849319, 27.870556, 26.412525>,  <32.641804, 27.946609, 26.506084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849319, 27.870556, 26.412525>,  <33.195179, 27.743799, 26.256594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849319, 27.870556, 26.412525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480617, -0.295843, -0.825521,
		-0.146272, -0.901142, 0.408103,
		-0.864646, 0.316891, 0.389830,
		32.589928, 27.965624, 26.529474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656891, 27.154348, 26.231533>,  <33.195179, 27.743799, 26.256594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656891, 27.154348, 26.231533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489773, 27.517744, 26.235310>,  <32.389500, 27.735783, 26.237576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489773, 27.517744, 26.235310>,  <32.656891, 27.154348, 26.231533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489773, 27.517744, 26.235310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486437, -0.214902, -0.846874,
		-0.767349, -0.358414, 0.531709,
		-0.417797, 0.908491, 0.009441,
		32.364433, 27.790291, 26.238142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048203, 26.979452, 25.949993>,  <32.656891, 27.154348, 26.231533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048203, 26.979452, 25.949993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059109, 27.377508, 25.912138>,  <32.065655, 27.616341, 25.889425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059109, 27.377508, 25.912138>,  <32.048203, 26.979452, 25.949993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059109, 27.377508, 25.912138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331786, -0.080296, -0.939931,
		-0.942960, 0.057030, 0.327984,
		0.027268, 0.995138, -0.094637,
		32.067287, 27.676050, 25.883747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518341, 27.108301, 25.522030>,  <32.048203, 26.979452, 25.949993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518341, 27.108301, 25.522030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757591, 27.428209, 25.501575>,  <31.901142, 27.620153, 25.489302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757591, 27.428209, 25.501575>,  <31.518341, 27.108301, 25.522030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757591, 27.428209, 25.501575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000396, -0.063515, -0.997981,
		-0.801403, 0.596938, -0.037674,
		0.598125, 0.799769, -0.051138,
		31.937029, 27.668140, 25.486235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751965, 27.105928, 24.831167>,  <31.518341, 27.108301, 25.522030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751965, 27.105928, 24.831167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661383, 27.342064, 24.521273>,  <31.607033, 27.483746, 24.335335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661383, 27.342064, 24.521273>,  <31.751965, 27.105928, 24.831167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661383, 27.342064, 24.521273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704747, 0.648355, 0.288039,
		0.672346, -0.480766, -0.562863,
		-0.226456, 0.590338, -0.774738,
		31.593447, 27.519165, 24.288851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344227, 27.212183, 24.256592>,  <31.751965, 27.105928, 24.831167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344227, 27.212183, 24.256592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085911, 27.496853, 24.367208>,  <31.930922, 27.667654, 24.433578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085911, 27.496853, 24.367208>,  <32.344227, 27.212183, 24.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085911, 27.496853, 24.367208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757530, 0.551972, 0.348533,
		0.095399, 0.434567, -0.895573,
		-0.645792, 0.711674, 0.276540,
		31.892174, 27.710356, 24.450171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456619, 27.949650, 23.878937>,  <32.344227, 27.212183, 24.256592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456619, 27.949650, 23.878937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319241, 27.977425, 24.253578>,  <32.236813, 27.994089, 24.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319241, 27.977425, 24.253578>,  <32.456619, 27.949650, 23.878937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319241, 27.977425, 24.253578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837115, 0.474743, 0.271768,
		-0.425775, 0.877381, -0.221177,
		-0.343446, 0.069439, 0.936602,
		32.216206, 27.998257, 24.534559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426094, 28.588953, 24.174801>,  <32.456619, 27.949650, 23.878937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426094, 28.588953, 24.174801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527355, 28.319281, 24.452332>,  <32.588112, 28.157478, 24.618851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527355, 28.319281, 24.452332>,  <32.426094, 28.588953, 24.174801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527355, 28.319281, 24.452332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850396, 0.497008, 0.172659,
		-0.461241, 0.546321, 0.699135,
		0.253148, -0.674179, 0.693829,
		32.603298, 28.117027, 24.660480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406715, 28.764345, 24.879318>,  <32.426094, 28.588953, 24.174801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406715, 28.764345, 24.879318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707638, 28.519358, 24.782227>,  <32.888191, 28.372364, 24.723972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707638, 28.519358, 24.782227>,  <32.406715, 28.764345, 24.879318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707638, 28.519358, 24.782227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658500, 0.710447, 0.248278,
		0.020384, -0.346618, 0.937785,
		0.752304, -0.612471, -0.242730,
		32.933331, 28.335617, 24.709408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111523, 29.216549, 24.306978>,  <32.406715, 28.764345, 24.879318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111523, 29.216549, 24.306978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965399, 28.854544, 24.394156>,  <31.877726, 28.637341, 24.446461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965399, 28.854544, 24.394156>,  <32.111523, 29.216549, 24.306978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965399, 28.854544, 24.394156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223381, -0.312506, -0.923277,
		0.903688, -0.288595, 0.316324,
		-0.365307, -0.905015, 0.217941,
		31.855806, 28.583038, 24.459538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028782, 29.658474, 23.694376>,  <32.111523, 29.216549, 24.306978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028782, 29.658474, 23.694376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408890, 29.769348, 23.637594>,  <32.636955, 29.835873, 23.603525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408890, 29.769348, 23.637594>,  <32.028782, 29.658474, 23.694376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408890, 29.769348, 23.637594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267377, -0.492489, 0.828230,
		0.159664, -0.824999, -0.542112,
		0.950272, 0.277187, -0.141953,
		32.693970, 29.852505, 23.595009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759752, 30.279015, 23.494530>,  <32.028782, 29.658474, 23.694376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759752, 30.279015, 23.494530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672005, 30.050039, 23.810553>,  <31.619356, 29.912655, 24.000166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672005, 30.050039, 23.810553>,  <31.759752, 30.279015, 23.494530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672005, 30.050039, 23.810553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842174, -0.519931, -0.142878,
		0.492565, 0.634024, 0.596149,
		-0.219369, -0.572438, 0.790058,
		31.606194, 29.878307, 24.047569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383554, 30.756245, 23.973263>,  <31.759752, 30.279015, 23.494530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383554, 30.756245, 23.973263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261633, 30.511198, 24.264959>,  <31.188480, 30.364170, 24.439978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261633, 30.511198, 24.264959>,  <31.383554, 30.756245, 23.973263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261633, 30.511198, 24.264959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415962, 0.603165, 0.680565,
		-0.856779, 0.510777, 0.070977,
		-0.304805, -0.612617, 0.729242,
		31.170191, 30.327414, 24.483732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031536, 31.168880, 24.381859>,  <31.383554, 30.756245, 23.973263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031536, 31.168880, 24.381859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145830, 30.849886, 24.594414>,  <31.214407, 30.658489, 24.721947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145830, 30.849886, 24.594414>,  <31.031536, 31.168880, 24.381859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145830, 30.849886, 24.594414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173241, 0.588353, 0.789828,
		-0.942520, -0.133623, 0.306269,
		0.285734, -0.797487, 0.531386,
		31.231550, 30.610640, 24.753830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689205, 31.264278, 24.993666>,  <31.031536, 31.168880, 24.381859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689205, 31.264278, 24.993666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960800, 30.988605, 25.094858>,  <31.123758, 30.823202, 25.155573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960800, 30.988605, 25.094858>,  <30.689205, 31.264278, 24.993666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960800, 30.988605, 25.094858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235335, 0.530729, 0.814214,
		-0.695407, -0.493307, 0.522548,
		0.678989, -0.689184, 0.252981,
		31.164497, 30.781851, 25.170752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590387, 31.147888, 25.762505>,  <30.689205, 31.264278, 24.993666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590387, 31.147888, 25.762505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961056, 31.019428, 25.684380>,  <31.183456, 30.942352, 25.637505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961056, 31.019428, 25.684380>,  <30.590387, 31.147888, 25.762505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961056, 31.019428, 25.684380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329976, 0.446224, 0.831865,
		-0.180000, -0.835312, 0.519474,
		0.926669, -0.321150, -0.195313,
		31.239056, 30.923082, 25.625786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647793, 30.646143, 26.246372>,  <30.590387, 31.147888, 25.762505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647793, 30.646143, 26.246372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987823, 30.811399, 26.115725>,  <31.191843, 30.910553, 26.037336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987823, 30.811399, 26.115725>,  <30.647793, 30.646143, 26.246372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987823, 30.811399, 26.115725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168116, 0.374862, 0.911710,
		0.499103, -0.829935, 0.249207,
		0.850078, 0.413142, -0.326620,
		31.242847, 30.935341, 26.017738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975920, 30.648907, 26.837259>,  <30.647793, 30.646143, 26.246372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975920, 30.648907, 26.837259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228245, 30.886343, 26.637369>,  <31.379639, 31.028805, 26.517435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228245, 30.886343, 26.637369>,  <30.975920, 30.648907, 26.837259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228245, 30.886343, 26.637369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268993, 0.436799, 0.858399,
		0.727819, -0.675910, 0.115865,
		0.630811, 0.593592, -0.499726,
		31.417488, 31.064421, 26.487452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624779, 30.653965, 27.249758>,  <30.975920, 30.648907, 26.837259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624779, 30.653965, 27.249758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603373, 30.986307, 27.028196>,  <31.590528, 31.185713, 26.895260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603373, 30.986307, 27.028196>,  <31.624779, 30.653965, 27.249758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603373, 30.986307, 27.028196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308838, 0.541275, 0.782074,
		0.949608, -0.129214, -0.285567,
		-0.053515, 0.830858, -0.553906,
		31.587318, 31.235565, 26.862024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240303, 30.984360, 27.408813>,  <31.624779, 30.653965, 27.249758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240303, 30.984360, 27.408813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025978, 31.268551, 27.226330>,  <31.897383, 31.439066, 27.116840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025978, 31.268551, 27.226330>,  <32.240303, 30.984360, 27.408813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025978, 31.268551, 27.226330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414678, 0.692095, 0.590802,
		0.735492, 0.127379, -0.665452,
		-0.535812, 0.710478, -0.456209,
		31.865234, 31.481695, 27.089468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816780, 31.475561, 27.225470>,  <32.240303, 30.984360, 27.408813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816780, 31.475561, 27.225470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454685, 31.645088, 27.213348>,  <32.237427, 31.746805, 27.206076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454685, 31.645088, 27.213348>,  <32.816780, 31.475561, 27.225470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454685, 31.645088, 27.213348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305616, 0.698995, 0.646533,
		0.295195, 0.576006, -0.762284,
		-0.905239, 0.423820, -0.030304,
		32.183113, 31.772234, 27.204258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931976, 32.217976, 27.061495>,  <32.816780, 31.475561, 27.225470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931976, 32.217976, 27.061495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575066, 32.179142, 27.237864>,  <32.360920, 32.155842, 27.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575066, 32.179142, 27.237864>,  <32.931976, 32.217976, 27.061495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575066, 32.179142, 27.237864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329901, 0.526528, 0.783539,
		-0.308225, 0.844596, -0.437783,
		-0.892279, -0.097081, 0.440923,
		32.307381, 32.150017, 27.370140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777016, 32.971157, 27.195129>,  <32.931976, 32.217976, 27.061495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777016, 32.971157, 27.195129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603657, 32.700348, 27.433056>,  <32.499641, 32.537865, 27.575811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603657, 32.700348, 27.433056>,  <32.777016, 32.971157, 27.195129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603657, 32.700348, 27.433056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185558, 0.578846, 0.794044,
		-0.881891, 0.454513, -0.125246,
		-0.433401, -0.677020, 0.594817,
		32.473637, 32.497242, 27.611502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352730, 33.359882, 27.722935>,  <32.777016, 32.971157, 27.195129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352730, 33.359882, 27.722935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378319, 33.005470, 27.906614>,  <32.393673, 32.792824, 28.016821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378319, 33.005470, 27.906614>,  <32.352730, 33.359882, 27.722935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378319, 33.005470, 27.906614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059643, 0.462711, 0.884500,
		-0.996168, -0.029192, 0.082444,
		0.063968, -0.886028, 0.459197,
		32.397511, 32.739662, 28.044373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984318, 33.359875, 28.432909>,  <32.352730, 33.359882, 27.722935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984318, 33.359875, 28.432909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225922, 33.042717, 28.465139>,  <32.370884, 32.852421, 28.484478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225922, 33.042717, 28.465139>,  <31.984318, 33.359875, 28.432909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225922, 33.042717, 28.465139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183374, 0.236651, 0.954133,
		-0.775596, -0.561528, 0.288335,
		0.604007, -0.792895, 0.080576,
		32.407124, 32.804848, 28.489311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885944, 33.029984, 29.161703>,  <31.984318, 33.359875, 28.432909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885944, 33.029984, 29.161703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244045, 32.906731, 29.032965>,  <32.458904, 32.832779, 28.955723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244045, 32.906731, 29.032965>,  <31.885944, 33.029984, 29.161703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244045, 32.906731, 29.032965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393492, 0.207893, 0.895513,
		-0.209025, -0.928351, 0.307363,
		0.895250, -0.308130, -0.321844,
		32.512619, 32.814293, 28.936411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108299, 32.659733, 29.681702>,  <31.885944, 33.029984, 29.161703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108299, 32.659733, 29.681702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434116, 32.749561, 29.467752>,  <32.629608, 32.803459, 29.339382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434116, 32.749561, 29.467752>,  <32.108299, 32.659733, 29.681702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434116, 32.749561, 29.467752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524949, 0.107048, 0.844375,
		0.246882, -0.968559, -0.030695,
		0.814542, 0.224574, -0.534873,
		32.678478, 32.816933, 29.307291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617069, 32.357655, 30.054474>,  <32.108299, 32.659733, 29.681702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617069, 32.357655, 30.054474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820389, 32.637978, 29.854273>,  <32.942379, 32.806171, 29.734152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820389, 32.637978, 29.854273>,  <32.617069, 32.357655, 30.054474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820389, 32.637978, 29.854273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627275, 0.096916, 0.772744,
		0.590051, -0.706737, -0.390336,
		0.508297, 0.700806, -0.500504,
		32.972878, 32.848221, 29.704123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356548, 32.260727, 30.302620>,  <32.617069, 32.357655, 30.054474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356548, 32.260727, 30.302620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323410, 32.622925, 30.136147>,  <33.303528, 32.840244, 30.036263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323410, 32.622925, 30.136147>,  <33.356548, 32.260727, 30.302620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323410, 32.622925, 30.136147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571416, 0.385311, 0.724582,
		0.816468, -0.177782, -0.549340,
		-0.082849, 0.905499, -0.416181,
		33.298557, 32.894573, 30.011292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964771, 32.548080, 30.466839>,  <33.356548, 32.260727, 30.302620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964771, 32.548080, 30.466839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731468, 32.855389, 30.361330>,  <33.591488, 33.039772, 30.298025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731468, 32.855389, 30.361330>,  <33.964771, 32.548080, 30.466839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731468, 32.855389, 30.361330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362979, 0.537010, 0.761490,
		0.726676, 0.348400, -0.592080,
		-0.583256, 0.768269, -0.263770,
		33.556492, 33.085869, 30.282200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394466, 33.169983, 30.557623>,  <33.964771, 32.548080, 30.466839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394466, 33.169983, 30.557623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022419, 33.316563, 30.547911>,  <33.799191, 33.404510, 30.542084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022419, 33.316563, 30.547911>,  <34.394466, 33.169983, 30.557623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022419, 33.316563, 30.547911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201756, 0.565107, 0.799968,
		0.306866, 0.739169, -0.599552,
		-0.930123, 0.366446, -0.024280,
		33.743382, 33.426495, 30.540627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404922, 33.865089, 30.615719>,  <34.394466, 33.169983, 30.557623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404922, 33.865089, 30.615719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038906, 33.775867, 30.750149>,  <33.819298, 33.722336, 30.830807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038906, 33.775867, 30.750149>,  <34.404922, 33.865089, 30.615719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038906, 33.775867, 30.750149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216150, 0.432297, 0.875442,
		-0.340557, 0.873708, -0.347356,
		-0.915041, -0.223056, 0.336074,
		33.764393, 33.708950, 30.850971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151497, 34.489391, 30.879099>,  <34.404922, 33.865089, 30.615719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151497, 34.489391, 30.879099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928246, 34.208359, 31.055676>,  <33.794296, 34.039738, 31.161621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928246, 34.208359, 31.055676>,  <34.151497, 34.489391, 30.879099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928246, 34.208359, 31.055676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064986, 0.493367, 0.867390,
		-0.827208, 0.512800, -0.229703,
		-0.558126, -0.702584, 0.441442,
		33.760807, 33.997585, 31.188108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888065, 34.891247, 31.325817>,  <34.151497, 34.489391, 30.879099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888065, 34.891247, 31.325817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816757, 34.512547, 31.433064>,  <33.773972, 34.285328, 31.497412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816757, 34.512547, 31.433064>,  <33.888065, 34.891247, 31.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816757, 34.512547, 31.433064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005781, 0.271468, 0.962430,
		-0.983964, 0.173124, -0.042922,
		-0.178272, -0.946749, 0.268116,
		33.763275, 34.228523, 31.513498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400761, 35.004219, 31.846453>,  <33.888065, 34.891247, 31.325817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400761, 35.004219, 31.846453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559635, 34.640301, 31.894625>,  <33.654961, 34.421947, 31.923529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559635, 34.640301, 31.894625>,  <33.400761, 35.004219, 31.846453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559635, 34.640301, 31.894625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110252, 0.177579, 0.977911,
		-0.911090, -0.375139, 0.170840,
		0.397190, -0.909800, 0.120431,
		33.678791, 34.367359, 31.930754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990456, 34.722378, 32.453342>,  <33.400761, 35.004219, 31.846453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990456, 34.722378, 32.453342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325562, 34.504986, 32.432251>,  <33.526627, 34.374550, 32.419598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325562, 34.504986, 32.432251>,  <32.990456, 34.722378, 32.453342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325562, 34.504986, 32.432251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198686, 0.213470, 0.956533,
		-0.508603, -0.811824, 0.286819,
		0.837763, -0.543482, -0.052727,
		33.576889, 34.341942, 32.416431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921242, 34.346741, 32.983269>,  <32.990456, 34.722378, 32.453342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921242, 34.346741, 32.983269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309723, 34.307293, 32.896515>,  <33.542812, 34.283623, 32.844463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309723, 34.307293, 32.896515>,  <32.921242, 34.346741, 32.983269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309723, 34.307293, 32.896515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225032, 0.080714, 0.971002,
		-0.078256, -0.991846, 0.100583,
		0.971204, -0.098622, -0.216881,
		33.601086, 34.277706, 32.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235451, 33.813778, 33.387066>,  <32.921242, 34.346741, 32.983269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235451, 33.813778, 33.387066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535034, 34.060875, 33.291180>,  <33.714783, 34.209133, 33.233646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535034, 34.060875, 33.291180>,  <33.235451, 33.813778, 33.387066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535034, 34.060875, 33.291180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204534, 0.128581, 0.970378,
		0.630264, -0.775799, -0.030048,
		0.748954, 0.617740, -0.239718,
		33.759720, 34.246197, 33.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843060, 33.617714, 33.842106>,  <33.235451, 33.813778, 33.387066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843060, 33.617714, 33.842106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915661, 33.993870, 33.727058>,  <33.959221, 34.219563, 33.658028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915661, 33.993870, 33.727058>,  <33.843060, 33.617714, 33.842106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915661, 33.993870, 33.727058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354722, 0.210182, 0.911041,
		0.917186, -0.267380, -0.295429,
		0.181501, 0.940389, -0.287622,
		33.970112, 34.275986, 33.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464718, 33.760490, 34.143032>,  <33.843060, 33.617714, 33.842106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464718, 33.760490, 34.143032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295799, 34.116253, 34.073025>,  <34.194450, 34.329708, 34.031021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295799, 34.116253, 34.073025>,  <34.464718, 33.760490, 34.143032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295799, 34.116253, 34.073025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345191, 0.336317, 0.876204,
		0.838160, 0.309600, -0.449038,
		-0.422292, 0.889403, -0.175016,
		34.169113, 34.383076, 34.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923908, 34.265671, 34.141243>,  <34.464718, 33.760490, 34.143032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923908, 34.265671, 34.141243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606503, 34.507267, 34.171009>,  <34.416061, 34.652225, 34.188869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606503, 34.507267, 34.171009>,  <34.923908, 34.265671, 34.141243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606503, 34.507267, 34.171009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457412, 0.511306, 0.727557,
		0.401388, 0.611363, -0.681999,
		-0.793512, 0.603987, 0.074413,
		34.368450, 34.688465, 34.193333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169163, 35.082932, 34.224297>,  <34.923908, 34.265671, 34.141243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169163, 35.082932, 34.224297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804680, 35.030693, 34.380573>,  <34.585991, 34.999348, 34.474339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804680, 35.030693, 34.380573>,  <35.169163, 35.082932, 34.224297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804680, 35.030693, 34.380573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277249, 0.507026, 0.816124,
		-0.304674, 0.851979, -0.425799,
		-0.911211, -0.130599, 0.390688,
		34.531315, 34.991512, 34.497780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906948, 35.732395, 34.456867>,  <35.169163, 35.082932, 34.224297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906948, 35.732395, 34.456867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649952, 35.489700, 34.644085>,  <34.495754, 35.344082, 34.756416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649952, 35.489700, 34.644085>,  <34.906948, 35.732395, 34.456867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649952, 35.489700, 34.644085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281890, 0.380830, 0.880629,
		-0.712560, 0.697735, -0.073647,
		-0.642492, -0.606741, 0.468049,
		34.457203, 35.307678, 34.784500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591564, 36.128929, 34.921837>,  <34.906948, 35.732395, 34.456867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591564, 36.128929, 34.921837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501389, 35.766685, 35.065529>,  <34.447285, 35.549339, 35.151745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501389, 35.766685, 35.065529>,  <34.591564, 36.128929, 34.921837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501389, 35.766685, 35.065529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220710, 0.311666, 0.924203,
		-0.948928, 0.287638, 0.129616,
		-0.225439, -0.905610, 0.359233,
		34.433758, 35.495003, 35.173298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996742, 36.199043, 35.500992>,  <34.591564, 36.128929, 34.921837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996742, 36.199043, 35.500992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217323, 35.867329, 35.537178>,  <34.349674, 35.668301, 35.558887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217323, 35.867329, 35.537178>,  <33.996742, 36.199043, 35.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217323, 35.867329, 35.537178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250398, 0.267992, 0.930312,
		-0.795738, -0.490373, 0.355437,
		0.551454, -0.829286, 0.090463,
		34.382759, 35.618542, 35.564316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753864, 35.883793, 36.101891>,  <33.996742, 36.199043, 35.500992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753864, 35.883793, 36.101891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112728, 35.721279, 36.032570>,  <34.328049, 35.623772, 35.990978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112728, 35.721279, 36.032570>,  <33.753864, 35.883793, 36.101891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112728, 35.721279, 36.032570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294129, 0.256804, 0.920619,
		-0.329527, -0.876918, 0.349895,
		0.897162, -0.406283, -0.173304,
		34.381878, 35.599396, 35.980579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915333, 35.572994, 36.688122>,  <33.753864, 35.883793, 36.101891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915333, 35.572994, 36.688122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272415, 35.597416, 36.509529>,  <34.486664, 35.612068, 36.402374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272415, 35.597416, 36.509529>,  <33.915333, 35.572994, 36.688122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272415, 35.597416, 36.509529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447359, -0.000743, 0.894354,
		0.054267, -0.998135, -0.027974,
		0.892706, 0.061048, -0.446484,
		34.540226, 35.615730, 36.375584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378223, 35.109116, 37.054005>,  <33.915333, 35.572994, 36.688122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378223, 35.109116, 37.054005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602158, 35.373650, 36.854317>,  <34.736519, 35.532372, 36.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602158, 35.373650, 36.854317>,  <34.378223, 35.109116, 37.054005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602158, 35.373650, 36.854317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547078, 0.157485, 0.822134,
		0.622328, -0.733369, -0.273639,
		0.559834, 0.661338, -0.499218,
		34.770107, 35.572052, 36.704552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024895, 34.885723, 37.046146>,  <34.378223, 35.109116, 37.054005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024895, 34.885723, 37.046146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055279, 35.280823, 36.991627>,  <35.073509, 35.517883, 36.958916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055279, 35.280823, 36.991627>,  <35.024895, 34.885723, 37.046146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055279, 35.280823, 36.991627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572987, 0.068629, 0.816686,
		0.816037, -0.140130, -0.560756,
		0.075958, 0.987752, -0.136297,
		35.078068, 35.577148, 36.950737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762012, 35.075939, 37.261639>,  <35.024895, 34.885723, 37.046146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762012, 35.075939, 37.261639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552124, 35.416111, 37.246513>,  <35.426189, 35.620216, 37.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552124, 35.416111, 37.246513>,  <35.762012, 35.075939, 37.261639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552124, 35.416111, 37.246513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644759, 0.426042, 0.634645,
		0.555833, 0.308633, -0.771878,
		-0.524725, 0.850432, -0.037814,
		35.394707, 35.671242, 37.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318424, 35.522312, 37.116928>,  <35.762012, 35.075939, 37.261639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318424, 35.522312, 37.116928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009808, 35.713402, 37.284977>,  <35.824638, 35.828056, 37.385807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009808, 35.713402, 37.284977>,  <36.318424, 35.522312, 37.116928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009808, 35.713402, 37.284977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620110, 0.417270, 0.664341,
		0.142066, 0.773090, -0.618182,
		-0.771545, 0.477721, 0.420121,
		35.778343, 35.856720, 37.411015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562248, 36.241768, 37.147270>,  <36.318424, 35.522312, 37.116928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562248, 36.241768, 37.147270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256783, 36.182106, 37.398529>,  <36.073502, 36.146309, 37.549286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256783, 36.182106, 37.398529>,  <36.562248, 36.241768, 37.147270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256783, 36.182106, 37.398529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508379, 0.460795, 0.727474,
		-0.397952, 0.874883, -0.276067,
		-0.763666, -0.149153, 0.628146,
		36.027683, 36.137360, 37.586971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737740, 36.459274, 36.429943>,  <36.562248, 36.241768, 37.147270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737740, 36.459274, 36.429943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980919, 36.723949, 36.254414>,  <37.126827, 36.882755, 36.149097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980919, 36.723949, 36.254414>,  <36.737740, 36.459274, 36.429943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980919, 36.723949, 36.254414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029611, -0.533412, -0.845337,
		-0.793423, 0.526917, -0.304695,
		0.607951, 0.661687, -0.438823,
		37.163303, 36.922455, 36.122768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479576, 36.534275, 35.781105>,  <36.737740, 36.459274, 36.429943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479576, 36.534275, 35.781105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863384, 36.644272, 35.756763>,  <37.093670, 36.710270, 35.742161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863384, 36.644272, 35.756763>,  <36.479576, 36.534275, 35.781105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863384, 36.644272, 35.756763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054953, -0.394693, -0.917168,
		-0.276236, 0.876695, -0.393826,
		0.959518, 0.274997, -0.060851,
		37.151241, 36.726772, 35.738506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513012, 36.863556, 35.145535>,  <36.479576, 36.534275, 35.781105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513012, 36.863556, 35.145535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883446, 36.746765, 35.241131>,  <37.105705, 36.676693, 35.298489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883446, 36.746765, 35.241131>,  <36.513012, 36.863556, 35.145535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883446, 36.746765, 35.241131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150796, -0.294200, -0.943773,
		0.345867, 0.910054, -0.228426,
		0.926087, -0.291974, 0.238987,
		37.161270, 36.659172, 35.312828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039879, 37.286633, 34.713417>,  <36.513012, 36.863556, 35.145535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039879, 37.286633, 34.713417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239212, 36.956249, 34.818836>,  <37.358810, 36.758018, 34.882088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239212, 36.956249, 34.818836>,  <37.039879, 37.286633, 34.713417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239212, 36.956249, 34.818836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216366, -0.175888, -0.960338,
		0.839553, 0.535593, 0.091059,
		0.498334, -0.825956, 0.263551,
		37.388714, 36.708462, 34.897903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646278, 37.342575, 34.363781>,  <37.039879, 37.286633, 34.713417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646278, 37.342575, 34.363781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602142, 36.953949, 34.447575>,  <37.575661, 36.720772, 34.497852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602142, 36.953949, 34.447575>,  <37.646278, 37.342575, 34.363781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602142, 36.953949, 34.447575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127169, -0.222838, -0.966525,
		0.985725, -0.080003, 0.148140,
		-0.110336, -0.971567, 0.209483,
		37.569042, 36.662479, 34.510418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264313, 37.067566, 33.951771>,  <37.646278, 37.342575, 34.363781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264313, 37.067566, 33.951771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015038, 36.764256, 34.028355>,  <37.865471, 36.582272, 34.074306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015038, 36.764256, 34.028355>,  <38.264313, 37.067566, 33.951771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015038, 36.764256, 34.028355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208174, -0.396813, -0.893981,
		0.753856, -0.517263, 0.405143,
		-0.623190, -0.758273, 0.191459,
		37.828079, 36.536774, 34.085793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586418, 36.509014, 33.719803>,  <38.264313, 37.067566, 33.951771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586418, 36.509014, 33.719803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202740, 36.396206, 33.727890>,  <37.972534, 36.328522, 33.732742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202740, 36.396206, 33.727890>,  <38.586418, 36.509014, 33.719803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202740, 36.396206, 33.727890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092749, -0.381384, -0.919752,
		0.267102, -0.880346, 0.391979,
		-0.959195, -0.282023, 0.020217,
		37.914982, 36.311600, 33.733955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582695, 35.814785, 33.464249>,  <38.586418, 36.509014, 33.719803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582695, 35.814785, 33.464249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223484, 35.979004, 33.401009>,  <38.007957, 36.077538, 33.363064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223484, 35.979004, 33.401009>,  <38.582695, 35.814785, 33.464249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223484, 35.979004, 33.401009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009297, -0.376995, -0.926169,
		-0.439842, -0.830255, 0.342368,
		-0.898027, 0.410551, -0.158099,
		37.954075, 36.102169, 33.353580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155117, 35.321583, 33.304310>,  <38.582695, 35.814785, 33.464249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155117, 35.321583, 33.304310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951118, 35.625645, 33.143276>,  <37.828720, 35.808083, 33.046654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951118, 35.625645, 33.143276>,  <38.155117, 35.321583, 33.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951118, 35.625645, 33.143276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098890, -0.516737, -0.850414,
		-0.854473, -0.393896, 0.338705,
		-0.509996, 0.760150, -0.402586,
		37.798119, 35.853691, 33.022499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721970, 35.084377, 32.765079>,  <38.155117, 35.321583, 33.304310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721970, 35.084377, 32.765079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633377, 35.458324, 32.654110>,  <37.580223, 35.682693, 32.587528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633377, 35.458324, 32.654110>,  <37.721970, 35.084377, 32.765079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633377, 35.458324, 32.654110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379182, -0.344661, -0.858737,
		-0.898426, -0.084997, 0.430821,
		-0.221477, 0.934871, -0.277423,
		37.566933, 35.738785, 32.570885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016956, 35.238667, 32.590519>,  <37.721970, 35.084377, 32.765079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016956, 35.238667, 32.590519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229218, 35.505302, 32.381111>,  <37.356575, 35.665283, 32.255466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229218, 35.505302, 32.381111>,  <37.016956, 35.238667, 32.590519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229218, 35.505302, 32.381111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529870, -0.221186, -0.818728,
		-0.661549, 0.711853, 0.235833,
		0.530651, 0.666589, -0.523515,
		37.388412, 35.705280, 32.224056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507874, 35.572800, 32.198376>,  <37.016956, 35.238667, 32.590519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507874, 35.572800, 32.198376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856419, 35.686100, 32.038124>,  <37.065544, 35.754082, 31.941973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856419, 35.686100, 32.038124>,  <36.507874, 35.572800, 32.198376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856419, 35.686100, 32.038124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335000, -0.253123, -0.907581,
		-0.358483, 0.925039, -0.125671,
		0.871358, 0.283252, -0.400629,
		37.117825, 35.771076, 31.917936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414177, 36.287731, 31.812380>,  <36.507874, 35.572800, 32.198376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414177, 36.287731, 31.812380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731960, 36.079594, 31.687107>,  <36.922630, 35.954712, 31.611944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731960, 36.079594, 31.687107>,  <36.414177, 36.287731, 31.812380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731960, 36.079594, 31.687107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509107, -0.289434, -0.810579,
		0.331134, 0.803412, -0.494853,
		0.794456, -0.520344, -0.313181,
		36.970299, 35.923492, 31.593153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348598, 36.414989, 31.129816>,  <36.414177, 36.287731, 31.812380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348598, 36.414989, 31.129816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624699, 36.125626, 31.135986>,  <36.790359, 35.952007, 31.139688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624699, 36.125626, 31.135986>,  <36.348598, 36.414989, 31.129816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624699, 36.125626, 31.135986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373364, -0.374346, -0.848802,
		0.619806, 0.580123, -0.528486,
		0.690246, -0.723410, 0.015425,
		36.831772, 35.908604, 31.140614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616676, 36.372574, 30.440157>,  <36.348598, 36.414989, 31.129816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616676, 36.372574, 30.440157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706543, 36.022747, 30.612041>,  <36.760464, 35.812851, 30.715172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706543, 36.022747, 30.612041>,  <36.616676, 36.372574, 30.440157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706543, 36.022747, 30.612041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323240, -0.482905, -0.813830,
		0.919260, 0.043943, -0.391190,
		0.224670, -0.874569, 0.429711,
		36.773945, 35.760376, 30.740955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975548, 36.071880, 30.004955>,  <36.616676, 36.372574, 30.440157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975548, 36.071880, 30.004955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858742, 35.771576, 30.241966>,  <36.788658, 35.591393, 30.384172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858742, 35.771576, 30.241966>,  <36.975548, 36.071880, 30.004955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858742, 35.771576, 30.241966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425181, -0.453040, -0.783566,
		0.856708, -0.480745, -0.186914,
		-0.292016, -0.750759, 0.592526,
		36.771137, 35.546349, 30.419724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061604, 35.507133, 29.601847>,  <36.975548, 36.071880, 30.004955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061604, 35.507133, 29.601847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831505, 35.380291, 29.903452>,  <36.693447, 35.304184, 30.084415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831505, 35.380291, 29.903452>,  <37.061604, 35.507133, 29.601847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831505, 35.380291, 29.903452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550486, -0.531738, -0.643599,
		0.605027, -0.785301, 0.131317,
		-0.575245, -0.317107, 0.754013,
		36.658932, 35.285160, 30.129656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023407, 34.736038, 29.688066>,  <37.061604, 35.507133, 29.601847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023407, 34.736038, 29.688066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685276, 34.850529, 29.868511>,  <36.482399, 34.919224, 29.976778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685276, 34.850529, 29.868511>,  <37.023407, 34.736038, 29.688066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685276, 34.850529, 29.868511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533013, -0.509280, -0.675671,
		0.036349, -0.811610, 0.583068,
		-0.845326, 0.286222, 0.451110,
		36.431679, 34.936394, 30.003843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541035, 34.202023, 29.923185>,  <37.023407, 34.736038, 29.688066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541035, 34.202023, 29.923185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278782, 34.501755, 29.885979>,  <36.121429, 34.681595, 29.863655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278782, 34.501755, 29.885979>,  <36.541035, 34.202023, 29.923185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278782, 34.501755, 29.885979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587611, -0.583694, -0.560370,
		-0.474196, -0.312737, 0.823003,
		-0.655630, 0.749331, -0.093017,
		36.082092, 34.726555, 29.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957493, 33.864723, 29.866312>,  <36.541035, 34.202023, 29.923185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957493, 33.864723, 29.866312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838470, 34.229980, 29.754864>,  <35.767059, 34.449135, 29.687996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838470, 34.229980, 29.754864>,  <35.957493, 33.864723, 29.866312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838470, 34.229980, 29.754864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723377, -0.406096, -0.558402,
		-0.623048, 0.035392, 0.781383,
		-0.297553, 0.913145, -0.278619,
		35.749203, 34.503925, 29.671278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250542, 33.885616, 30.042076>,  <35.957493, 33.864723, 29.866312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250542, 33.885616, 30.042076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316578, 34.146713, 29.746326>,  <35.356201, 34.303371, 29.568876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316578, 34.146713, 29.746326>,  <35.250542, 33.885616, 30.042076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316578, 34.146713, 29.746326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602881, -0.526513, -0.599433,
		-0.780564, 0.544716, 0.306601,
		0.165091, 0.652739, -0.739375,
		35.366104, 34.342537, 29.524513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611736, 33.992527, 29.676033>,  <35.250542, 33.885616, 30.042076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611736, 33.992527, 29.676033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891602, 34.133045, 29.427176>,  <35.059521, 34.217354, 29.277861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891602, 34.133045, 29.427176>,  <34.611736, 33.992527, 29.676033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891602, 34.133045, 29.427176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572940, -0.244376, -0.782317,
		-0.426858, 0.903811, 0.030288,
		0.699665, 0.351292, -0.622144,
		35.101501, 34.238434, 29.240532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228848, 34.338295, 29.133703>,  <34.611736, 33.992527, 29.676033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228848, 34.338295, 29.133703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584873, 34.292679, 28.957170>,  <34.798489, 34.265308, 28.851252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584873, 34.292679, 28.957170>,  <34.228848, 34.338295, 29.133703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584873, 34.292679, 28.957170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454701, -0.154055, -0.877220,
		0.032053, 0.981459, -0.188976,
		0.890067, -0.114045, -0.441332,
		34.851894, 34.258465, 28.824770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160366, 34.776054, 28.483379>,  <34.228848, 34.338295, 29.133703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160366, 34.776054, 28.483379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447590, 34.501961, 28.434643>,  <34.619923, 34.337505, 28.405401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447590, 34.501961, 28.434643>,  <34.160366, 34.776054, 28.483379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447590, 34.501961, 28.434643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398703, -0.261505, -0.879006,
		0.570464, 0.679756, -0.460981,
		0.718058, -0.685235, -0.121842,
		34.663006, 34.296391, 28.398090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330700, 34.877296, 27.842360>,  <34.160366, 34.776054, 28.483379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330700, 34.877296, 27.842360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464897, 34.505020, 27.900682>,  <34.545414, 34.281654, 27.935677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464897, 34.505020, 27.900682>,  <34.330700, 34.877296, 27.842360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464897, 34.505020, 27.900682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226564, -0.229948, -0.946463,
		0.914393, 0.284495, -0.288006,
		0.335491, -0.930691, 0.145807,
		34.565544, 34.225811, 27.944424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688602, 34.667557, 27.252529>,  <34.330700, 34.877296, 27.842360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688602, 34.667557, 27.252529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609673, 34.314125, 27.422401>,  <34.562317, 34.102066, 27.524324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609673, 34.314125, 27.422401>,  <34.688602, 34.667557, 27.252529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609673, 34.314125, 27.422401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165670, -0.396911, -0.902782,
		0.966239, -0.248495, -0.068064,
		-0.197321, -0.883579, 0.424679,
		34.550476, 34.049053, 27.549805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151989, 34.244148, 26.985222>,  <34.688602, 34.667557, 27.252529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151989, 34.244148, 26.985222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845795, 34.015118, 27.102654>,  <34.662079, 33.877701, 27.173113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845795, 34.015118, 27.102654>,  <35.151989, 34.244148, 26.985222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845795, 34.015118, 27.102654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065430, -0.384627, -0.920750,
		0.640118, -0.724029, 0.256963,
		-0.765485, -0.572576, 0.293580,
		34.616150, 33.843346, 27.190727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347725, 33.567909, 26.891361>,  <35.151989, 34.244148, 26.985222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347725, 33.567909, 26.891361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968426, 33.449097, 26.936274>,  <34.740849, 33.377811, 26.963221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968426, 33.449097, 26.936274>,  <35.347725, 33.567909, 26.891361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968426, 33.449097, 26.936274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065231, -0.528260, -0.846573,
		0.310770, -0.795434, 0.520295,
		-0.948244, -0.297029, 0.112280,
		34.683952, 33.359989, 26.969957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420013, 32.758305, 26.822912>,  <35.347725, 33.567909, 26.891361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420013, 32.758305, 26.822912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030815, 32.836205, 26.773335>,  <34.797298, 32.882942, 26.743587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030815, 32.836205, 26.773335>,  <35.420013, 32.758305, 26.822912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030815, 32.836205, 26.773335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064911, -0.746069, -0.662698,
		-0.221528, -0.636754, 0.738559,
		-0.972991, 0.194747, -0.123943,
		34.738918, 32.894630, 26.736151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135151, 32.093010, 26.888149>,  <35.420013, 32.758305, 26.822912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135151, 32.093010, 26.888149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888760, 32.317715, 26.667244>,  <34.740925, 32.452538, 26.534700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888760, 32.317715, 26.667244>,  <35.135151, 32.093010, 26.888149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888760, 32.317715, 26.667244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176885, -0.781780, -0.597939,
		-0.767640, -0.270638, 0.580934,
		-0.615987, 0.561761, -0.552254,
		34.703968, 32.486244, 26.501564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625340, 31.685175, 26.732845>,  <35.135151, 32.093010, 26.888149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625340, 31.685175, 26.732845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585384, 31.985510, 26.471689>,  <34.561413, 32.165710, 26.314997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585384, 31.985510, 26.471689>,  <34.625340, 31.685175, 26.732845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585384, 31.985510, 26.471689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111110, -0.660484, -0.742574,
		-0.988776, -0.001630, 0.149399,
		-0.099886, 0.750839, -0.652889,
		34.555420, 32.210762, 26.275822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216133, 31.429935, 26.383242>,  <34.625340, 31.685175, 26.732845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216133, 31.429935, 26.383242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339077, 31.725410, 26.143284>,  <34.412842, 31.902695, 25.999310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339077, 31.725410, 26.143284>,  <34.216133, 31.429935, 26.383242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339077, 31.725410, 26.143284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084398, -0.606763, -0.790389,
		-0.947843, 0.293564, -0.124150,
		0.307360, 0.738687, -0.599893,
		34.431286, 31.947016, 25.963316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729164, 31.513866, 25.745935>,  <34.216133, 31.429935, 26.383242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729164, 31.513866, 25.745935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092476, 31.657093, 25.659388>,  <34.310463, 31.743029, 25.607458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092476, 31.657093, 25.659388>,  <33.729164, 31.513866, 25.745935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092476, 31.657093, 25.659388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017621, -0.549466, -0.835330,
		-0.417992, 0.754901, -0.505378,
		0.908280, 0.358066, -0.216370,
		34.364960, 31.764513, 25.594477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612240, 31.699507, 25.125481>,  <33.729164, 31.513866, 25.745935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612240, 31.699507, 25.125481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002750, 31.625723, 25.170849>,  <34.237057, 31.581451, 25.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002750, 31.625723, 25.170849>,  <33.612240, 31.699507, 25.125481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002750, 31.625723, 25.170849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058346, -0.728496, -0.682561,
		0.208533, 0.659748, -0.721974,
		0.976273, -0.184461, 0.113422,
		34.295631, 31.570385, 25.204876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937893, 31.518496, 24.538643>,  <33.612240, 31.699507, 25.125481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937893, 31.518496, 24.538643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224419, 31.362640, 24.770184>,  <34.396336, 31.269127, 24.909107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224419, 31.362640, 24.770184>,  <33.937893, 31.518496, 24.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224419, 31.362640, 24.770184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006579, -0.833303, -0.552777,
		0.697743, 0.392156, -0.599474,
		0.716319, -0.389640, 0.578851,
		34.439316, 31.245749, 24.943838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370937, 31.254150, 24.094103>,  <33.937893, 31.518496, 24.538643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370937, 31.254150, 24.094103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466850, 31.049046, 24.423849>,  <34.524399, 30.925983, 24.621696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466850, 31.049046, 24.423849>,  <34.370937, 31.254150, 24.094103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466850, 31.049046, 24.423849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113173, -0.828585, -0.548306,
		0.964207, 0.224771, -0.140651,
		0.239785, -0.512763, 0.824365,
		34.538784, 30.895216, 24.671158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878036, 30.720678, 23.823257>,  <34.370937, 31.254150, 24.094103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878036, 30.720678, 23.823257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776211, 30.589201, 24.187050>,  <34.715115, 30.510315, 24.405325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776211, 30.589201, 24.187050>,  <34.878036, 30.720678, 23.823257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776211, 30.589201, 24.187050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191876, -0.938934, -0.285633,
		0.947829, 0.101796, 0.302088,
		-0.254565, -0.328695, 0.909481,
		34.699841, 30.490593, 24.459894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380619, 30.255447, 24.010551>,  <34.878036, 30.720678, 23.823257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380619, 30.255447, 24.010551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065205, 30.171108, 24.241638>,  <34.875957, 30.120504, 24.380289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065205, 30.171108, 24.241638>,  <35.380619, 30.255447, 24.010551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065205, 30.171108, 24.241638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138340, -0.976129, -0.167436,
		0.599229, -0.052108, 0.798880,
		-0.788535, -0.210849, 0.577716,
		34.828644, 30.107853, 24.414953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041618, 29.862228, 23.744061>,  <35.380619, 30.255447, 24.010551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041618, 29.862228, 23.744061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330215, 29.598839, 23.829720>,  <36.503372, 29.440805, 23.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330215, 29.598839, 23.829720>,  <36.041618, 29.862228, 23.744061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330215, 29.598839, 23.829720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427907, 0.667160, 0.609748,
		-0.544375, -0.348292, 0.763117,
		0.721492, -0.658475, 0.214149,
		36.546661, 29.401297, 23.893965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155308, 30.054871, 24.390877>,  <36.041618, 29.862228, 23.744061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155308, 30.054871, 24.390877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472866, 29.837433, 24.281893>,  <36.663403, 29.706970, 24.216503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472866, 29.837433, 24.281893>,  <36.155308, 30.054871, 24.390877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472866, 29.837433, 24.281893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591428, 0.586259, 0.553637,
		-0.141222, -0.600671, 0.786925,
		0.793895, -0.543595, -0.272460,
		36.711033, 29.674355, 24.200155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536140, 29.642778, 25.022213>,  <36.155308, 30.054871, 24.390877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536140, 29.642778, 25.022213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795288, 29.749496, 24.736813>,  <36.950779, 29.813526, 24.565573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795288, 29.749496, 24.736813>,  <36.536140, 29.642778, 25.022213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795288, 29.749496, 24.736813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514287, 0.537768, 0.668068,
		0.561938, -0.799765, 0.211192,
		0.647869, 0.266800, -0.713501,
		36.989651, 29.829535, 24.522762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189377, 29.646008, 25.419376>,  <36.536140, 29.642778, 25.022213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189377, 29.646008, 25.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288219, 29.805878, 25.066288>,  <37.347523, 29.901800, 24.854435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288219, 29.805878, 25.066288>,  <37.189377, 29.646008, 25.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288219, 29.805878, 25.066288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416679, 0.778618, 0.469183,
		0.874825, -0.483749, 0.025864,
		0.247105, 0.399675, -0.882722,
		37.362350, 29.925781, 24.801472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896130, 29.753128, 25.466551>,  <37.189377, 29.646008, 25.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896130, 29.753128, 25.466551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769196, 30.004221, 25.182226>,  <37.693035, 30.154877, 25.011631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769196, 30.004221, 25.182226>,  <37.896130, 29.753128, 25.466551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769196, 30.004221, 25.182226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535403, 0.737257, 0.412063,
		0.782715, -0.249809, -0.570047,
		-0.317334, 0.627733, -0.710810,
		37.673996, 30.192541, 24.968983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470512, 30.129774, 25.256144>,  <37.896130, 29.753128, 25.466551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470512, 30.129774, 25.256144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155285, 30.355124, 25.156900>,  <37.966148, 30.490334, 25.097355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155285, 30.355124, 25.156900>,  <38.470512, 30.129774, 25.256144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155285, 30.355124, 25.156900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478082, 0.814026, 0.329848,
		0.387795, 0.141327, -0.910847,
		-0.788069, 0.563373, -0.248109,
		37.918865, 30.524136, 25.082468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787106, 30.796335, 24.912682>,  <38.470512, 30.129774, 25.256144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787106, 30.796335, 24.912682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418098, 30.899122, 25.027868>,  <38.196693, 30.960794, 25.096981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418098, 30.899122, 25.027868>,  <38.787106, 30.796335, 24.912682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418098, 30.899122, 25.027868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379298, 0.741569, 0.553361,
		-0.071351, 0.619712, -0.781580,
		-0.922520, 0.256968, 0.287967,
		38.141342, 30.976213, 25.114258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749588, 31.503880, 25.010090>,  <38.787106, 30.796335, 24.912682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749588, 31.503880, 25.010090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421394, 31.408897, 25.218098>,  <38.224480, 31.351908, 25.342903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421394, 31.408897, 25.218098>,  <38.749588, 31.503880, 25.010090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421394, 31.408897, 25.218098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085064, 0.848815, 0.521801,
		-0.565305, 0.472365, -0.676241,
		-0.820484, -0.237453, 0.520021,
		38.175247, 31.337662, 25.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190651, 32.068798, 25.001171>,  <38.749588, 31.503880, 25.010090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190651, 32.068798, 25.001171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144539, 31.856031, 25.336737>,  <38.116871, 31.728371, 25.538076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144539, 31.856031, 25.336737>,  <38.190651, 32.068798, 25.001171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144539, 31.856031, 25.336737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080345, 0.846769, 0.525859,
		-0.990078, -0.006782, -0.140353,
		-0.115280, -0.531918, 0.838912,
		38.109955, 31.696457, 25.588411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588791, 32.404629, 25.477663>,  <38.190651, 32.068798, 25.001171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588791, 32.404629, 25.477663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786213, 32.172634, 25.736898>,  <37.904667, 32.033436, 25.892439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786213, 32.172634, 25.736898>,  <37.588791, 32.404629, 25.477663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786213, 32.172634, 25.736898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036929, 0.758476, 0.650654,
		-0.868930, -0.297201, 0.395768,
		0.493555, -0.579988, 0.648087,
		37.934280, 31.998638, 25.931324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310513, 32.572151, 26.158030>,  <37.588791, 32.404629, 25.477663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310513, 32.572151, 26.158030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661156, 32.388542, 26.215811>,  <37.871540, 32.278378, 26.250479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661156, 32.388542, 26.215811>,  <37.310513, 32.572151, 26.158030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661156, 32.388542, 26.215811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143096, 0.535254, 0.832482,
		-0.459445, -0.709087, 0.534890,
		0.876604, -0.459020, 0.144452,
		37.924137, 32.250835, 26.259146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406551, 32.445232, 26.857719>,  <37.310513, 32.572151, 26.158030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406551, 32.445232, 26.857719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789772, 32.437225, 26.743359>,  <38.019703, 32.432423, 26.674742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789772, 32.437225, 26.743359>,  <37.406551, 32.445232, 26.857719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789772, 32.437225, 26.743359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248025, 0.557757, 0.792080,
		0.143609, -0.829763, 0.539323,
		0.958050, -0.020016, -0.285901,
		38.077187, 32.431221, 26.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770924, 32.054050, 27.399548>,  <37.406551, 32.445232, 26.857719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770924, 32.054050, 27.399548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998867, 32.317581, 27.203096>,  <38.135635, 32.475700, 27.085226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998867, 32.317581, 27.203096>,  <37.770924, 32.054050, 27.399548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998867, 32.317581, 27.203096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319116, 0.373331, 0.871085,
		0.757246, -0.653125, 0.002505,
		0.569862, 0.658826, -0.491126,
		38.169827, 32.515228, 27.055759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346001, 32.205997, 27.736753>,  <37.770924, 32.054050, 27.399548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346001, 32.205997, 27.736753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403080, 32.492306, 27.463314>,  <38.437328, 32.664089, 27.299250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403080, 32.492306, 27.463314>,  <38.346001, 32.205997, 27.736753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403080, 32.492306, 27.463314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466086, 0.560700, 0.684383,
		0.873155, -0.416278, -0.253599,
		0.142700, 0.715771, -0.683600,
		38.445889, 32.707039, 27.258234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016201, 32.314091, 27.814482>,  <38.346001, 32.205997, 27.736753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016201, 32.314091, 27.814482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845863, 32.644703, 27.667236>,  <38.743660, 32.843071, 27.578890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845863, 32.644703, 27.667236>,  <39.016201, 32.314091, 27.814482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845863, 32.644703, 27.667236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444311, 0.545437, 0.710694,
		0.788193, 0.139086, -0.599506,
		-0.425840, 0.826531, -0.368112,
		38.718113, 32.892662, 27.556803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520760, 32.746815, 27.818922>,  <39.016201, 32.314091, 27.814482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520760, 32.746815, 27.818922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186394, 32.966022, 27.831116>,  <38.985775, 33.097546, 27.838432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186394, 32.966022, 27.831116>,  <39.520760, 32.746815, 27.818922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186394, 32.966022, 27.831116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415825, 0.596063, 0.686876,
		0.358249, 0.586844, -0.726135,
		-0.835911, 0.548018, 0.030485,
		38.935619, 33.130428, 27.840261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732807, 33.469074, 27.610483>,  <39.520760, 32.746815, 27.818922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732807, 33.469074, 27.610483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381054, 33.474815, 27.800842>,  <39.170002, 33.478260, 27.915058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381054, 33.474815, 27.800842>,  <39.732807, 33.469074, 27.610483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381054, 33.474815, 27.800842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309105, 0.777459, 0.547733,
		-0.362132, 0.628770, -0.688119,
		-0.879383, 0.014350, 0.475899,
		39.117241, 33.479118, 27.943611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630806, 34.143322, 27.657932>,  <39.732807, 33.469074, 27.610483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630806, 34.143322, 27.657932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366852, 34.017044, 27.930666>,  <39.208481, 33.941277, 28.094305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366852, 34.017044, 27.930666>,  <39.630806, 34.143322, 27.657932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366852, 34.017044, 27.930666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287122, 0.732638, 0.617092,
		-0.694347, 0.602977, -0.392813,
		-0.659882, -0.315691, 0.681832,
		39.168888, 33.922337, 28.135216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155502, 34.766842, 27.870070>,  <39.630806, 34.143322, 27.657932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155502, 34.766842, 27.870070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165836, 34.485901, 28.154613>,  <39.172039, 34.317337, 28.325340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165836, 34.485901, 28.154613>,  <39.155502, 34.766842, 27.870070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165836, 34.485901, 28.154613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318371, 0.680326, 0.660149,
		-0.947614, 0.209420, 0.241186,
		0.025837, -0.702353, 0.711359,
		39.173588, 34.275196, 28.368021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789814, 35.094543, 28.440504>,  <39.155502, 34.766842, 27.870070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789814, 35.094543, 28.440504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972004, 34.771023, 28.589306>,  <39.081318, 34.576912, 28.678587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972004, 34.771023, 28.589306>,  <38.789814, 35.094543, 28.440504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972004, 34.771023, 28.589306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088440, 0.456905, 0.885108,
		-0.885845, -0.370244, 0.279639,
		0.455474, -0.808800, 0.372002,
		39.108646, 34.528381, 28.700907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476124, 34.988186, 29.106356>,  <38.789814, 35.094543, 28.440504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476124, 34.988186, 29.106356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840668, 34.823540, 29.105417>,  <39.059395, 34.724751, 29.104855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840668, 34.823540, 29.105417>,  <38.476124, 34.988186, 29.106356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840668, 34.823540, 29.105417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212208, 0.464954, 0.859526,
		-0.352703, -0.783831, 0.511086,
		0.911355, -0.411614, -0.002344,
		39.114075, 34.700054, 29.104713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524593, 34.755814, 29.694086>,  <38.476124, 34.988186, 29.106356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524593, 34.755814, 29.694086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909897, 34.754837, 29.586657>,  <39.141079, 34.754250, 29.522200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909897, 34.754837, 29.586657>,  <38.524593, 34.755814, 29.694086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909897, 34.754837, 29.586657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251850, 0.355671, 0.900039,
		0.093326, -0.934608, 0.343217,
		0.963256, -0.002442, -0.268574,
		39.198875, 34.754105, 29.506084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846748, 34.297356, 30.168180>,  <38.524593, 34.755814, 29.694086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846748, 34.297356, 30.168180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114929, 34.546974, 30.007650>,  <39.275837, 34.696743, 29.911333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114929, 34.546974, 30.007650>,  <38.846748, 34.297356, 30.168180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114929, 34.546974, 30.007650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204315, 0.364707, 0.908430,
		0.713266, -0.691057, 0.117017,
		0.670453, 0.624044, -0.401326,
		39.316067, 34.734188, 29.887253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486832, 34.282776, 30.550680>,  <38.846748, 34.297356, 30.168180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486832, 34.282776, 30.550680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481079, 34.637138, 30.365227>,  <39.477627, 34.849758, 30.253954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481079, 34.637138, 30.365227>,  <39.486832, 34.282776, 30.550680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481079, 34.637138, 30.365227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182408, 0.458224, 0.869918,
		0.983118, -0.072062, -0.168186,
		-0.014379, 0.885911, -0.463633,
		39.476765, 34.902912, 30.226137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006310, 34.531849, 30.830336>,  <39.486832, 34.282776, 30.550680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006310, 34.531849, 30.830336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827705, 34.849777, 30.665951>,  <39.720543, 35.040535, 30.567320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827705, 34.849777, 30.665951>,  <40.006310, 34.531849, 30.830336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827705, 34.849777, 30.665951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280543, 0.560489, 0.779197,
		0.849660, 0.232628, -0.473246,
		-0.446512, 0.794819, -0.410962,
		39.693752, 35.088223, 30.542662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510353, 35.008343, 30.748703>,  <40.006310, 34.531849, 30.830336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510353, 35.008343, 30.748703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162670, 35.204098, 30.776905>,  <39.954060, 35.321552, 30.793825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162670, 35.204098, 30.776905>,  <40.510353, 35.008343, 30.748703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162670, 35.204098, 30.776905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347526, 0.503265, 0.791170,
		0.351709, 0.712195, -0.607519,
		-0.869210, 0.489390, 0.070503,
		39.901909, 35.350914, 30.798056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708672, 35.707409, 30.891302>,  <40.510353, 35.008343, 30.748703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708672, 35.707409, 30.891302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328335, 35.735355, 31.011980>,  <40.100132, 35.752125, 31.084387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328335, 35.735355, 31.011980>,  <40.708672, 35.707409, 30.891302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328335, 35.735355, 31.011980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281072, 0.603672, 0.746042,
		-0.129999, 0.794165, -0.593635,
		-0.950841, 0.069870, 0.301695,
		40.043083, 35.756317, 31.102488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740696, 36.319618, 31.103666>,  <40.708672, 35.707409, 30.891302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740696, 36.319618, 31.103666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397221, 36.191288, 31.263531>,  <40.191135, 36.114288, 31.359449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397221, 36.191288, 31.263531>,  <40.740696, 36.319618, 31.103666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397221, 36.191288, 31.263531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177605, 0.545217, 0.819265,
		-0.480745, 0.774473, -0.411189,
		-0.858686, -0.320828, 0.399660,
		40.139614, 36.095039, 31.383429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434017, 36.898754, 31.405138>,  <40.740696, 36.319618, 31.103666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434017, 36.898754, 31.405138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287247, 36.583755, 31.603216>,  <40.199184, 36.394756, 31.722063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287247, 36.583755, 31.603216>,  <40.434017, 36.898754, 31.405138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287247, 36.583755, 31.603216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120848, 0.487459, 0.864742,
		-0.922369, 0.377136, -0.083692,
		-0.366922, -0.787497, 0.495193,
		40.177170, 36.347507, 31.751774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922371, 37.293362, 31.900286>,  <40.434017, 36.898754, 31.405138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922371, 37.293362, 31.900286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002525, 36.922405, 32.026646>,  <40.050617, 36.699833, 32.102463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002525, 36.922405, 32.026646>,  <39.922371, 37.293362, 31.900286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002525, 36.922405, 32.026646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027679, 0.316951, 0.948038,
		-0.979326, -0.198717, 0.037843,
		0.200386, -0.927391, 0.315898,
		40.062641, 36.644188, 32.121414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404526, 37.248314, 32.450024>,  <39.922371, 37.293362, 31.900286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404526, 37.248314, 32.450024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705143, 36.986702, 32.484486>,  <39.885513, 36.829735, 32.505165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705143, 36.986702, 32.484486>,  <39.404526, 37.248314, 32.450024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705143, 36.986702, 32.484486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044727, 0.180827, 0.982497,
		-0.658161, -0.734539, 0.165153,
		0.751547, -0.654029, 0.086159,
		39.930607, 36.790493, 32.510334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219200, 36.891983, 33.027672>,  <39.404526, 37.248314, 32.450024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219200, 36.891983, 33.027672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608089, 36.800220, 33.009125>,  <39.841423, 36.745163, 32.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608089, 36.800220, 33.009125>,  <39.219200, 36.891983, 33.027672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608089, 36.800220, 33.009125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058966, 0.048348, 0.997088,
		-0.226495, -0.972130, 0.060532,
		0.972226, -0.229405, -0.046372,
		39.899757, 36.731400, 32.995213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317005, 36.444733, 33.518925>,  <39.219200, 36.891983, 33.027672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317005, 36.444733, 33.518925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671837, 36.618919, 33.457664>,  <39.884735, 36.723431, 33.420906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671837, 36.618919, 33.457664>,  <39.317005, 36.444733, 33.518925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671837, 36.618919, 33.457664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139448, 0.063479, 0.988193,
		0.440048, -0.897963, -0.004414,
		0.887080, 0.435468, -0.153152,
		39.937962, 36.749561, 33.411720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614353, 36.245419, 34.026966>,  <39.317005, 36.444733, 33.518925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614353, 36.245419, 34.026966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838699, 36.557053, 33.914925>,  <39.973305, 36.744034, 33.847698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838699, 36.557053, 33.914925>,  <39.614353, 36.245419, 34.026966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838699, 36.557053, 33.914925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215137, 0.189556, 0.958011,
		0.799468, -0.597573, -0.061295,
		0.560863, 0.779086, -0.280104,
		40.006958, 36.790779, 33.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316345, 36.170670, 34.419479>,  <39.614353, 36.245419, 34.026966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316345, 36.170670, 34.419479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288746, 36.550484, 34.297092>,  <40.272186, 36.778374, 34.223660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288746, 36.550484, 34.297092>,  <40.316345, 36.170670, 34.419479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288746, 36.550484, 34.297092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386597, 0.308178, 0.869235,
		0.919664, -0.058311, -0.388353,
		-0.068996, 0.949540, -0.305963,
		40.268047, 36.835346, 34.205303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946716, 36.485527, 34.617855>,  <40.316345, 36.170670, 34.419479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946716, 36.485527, 34.617855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700069, 36.798767, 34.585506>,  <40.552082, 36.986710, 34.566097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700069, 36.798767, 34.585506>,  <40.946716, 36.485527, 34.617855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700069, 36.798767, 34.585506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386483, 0.390607, 0.835498,
		0.685868, 0.483925, -0.543509,
		-0.616617, 0.783098, -0.080876,
		40.515083, 37.033695, 34.561245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292461, 37.068329, 34.771015>,  <40.946716, 36.485527, 34.617855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292461, 37.068329, 34.771015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912628, 37.168121, 34.846958>,  <40.684727, 37.227997, 34.892525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912628, 37.168121, 34.846958>,  <41.292461, 37.068329, 34.771015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912628, 37.168121, 34.846958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293690, 0.496033, 0.817128,
		0.109682, 0.831692, -0.544295,
		-0.949587, 0.249478, 0.189854,
		40.627750, 37.242966, 34.903915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365589, 37.706894, 35.029091>,  <41.292461, 37.068329, 34.771015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365589, 37.706894, 35.029091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992847, 37.610897, 35.137947>,  <40.769203, 37.553299, 35.203262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992847, 37.610897, 35.137947>,  <41.365589, 37.706894, 35.029091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992847, 37.610897, 35.137947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089906, 0.573920, 0.813961,
		-0.351530, 0.782956, -0.513231,
		-0.931850, -0.239989, 0.272142,
		40.713291, 37.538898, 35.219589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047619, 38.307495, 35.326328>,  <41.365589, 37.706894, 35.029091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047619, 38.307495, 35.326328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839268, 38.003052, 35.480938>,  <40.714256, 37.820385, 35.573704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839268, 38.003052, 35.480938>,  <41.047619, 38.307495, 35.326328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839268, 38.003052, 35.480938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022955, 0.465123, 0.884948,
		-0.853322, 0.452078, -0.259744,
		-0.520879, -0.761108, 0.386522,
		40.683002, 37.774719, 35.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631443, 38.678234, 35.708302>,  <41.047619, 38.307495, 35.326328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631443, 38.678234, 35.708302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565830, 38.298389, 35.815136>,  <40.526463, 38.070484, 35.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565830, 38.298389, 35.815136>,  <40.631443, 38.678234, 35.708302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565830, 38.298389, 35.815136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017772, 0.267863, 0.963293,
		-0.986294, 0.162761, -0.027062,
		-0.164035, -0.949610, 0.267084,
		40.516621, 38.013508, 35.895260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086540, 38.741783, 36.115314>,  <40.631443, 38.678234, 35.708302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086540, 38.741783, 36.115314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277901, 38.418373, 36.252384>,  <40.392715, 38.224327, 36.334625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277901, 38.418373, 36.252384>,  <40.086540, 38.741783, 36.115314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277901, 38.418373, 36.252384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034941, 0.407443, 0.912562,
		-0.877446, -0.424598, 0.223171,
		0.478402, -0.808522, 0.342673,
		40.421421, 38.175816, 36.355186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736099, 38.484283, 36.782722>,  <40.086540, 38.741783, 36.115314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736099, 38.484283, 36.782722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107166, 38.335224, 36.792244>,  <40.329807, 38.245789, 36.797958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107166, 38.335224, 36.792244>,  <39.736099, 38.484283, 36.782722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107166, 38.335224, 36.792244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111720, 0.337821, 0.934557,
		-0.356304, -0.864298, 0.355017,
		0.927667, -0.372648, 0.023808,
		40.385468, 38.223431, 36.799385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730511, 37.929405, 37.311844>,  <39.736099, 38.484283, 36.782722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730511, 37.929405, 37.311844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106163, 38.049202, 37.244514>,  <40.331554, 38.121082, 37.204117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106163, 38.049202, 37.244514>,  <39.730511, 37.929405, 37.311844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106163, 38.049202, 37.244514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029027, 0.419031, 0.907508,
		0.342327, -0.857156, 0.384832,
		0.939132, 0.299493, -0.168326,
		40.387901, 38.139050, 37.194016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176060, 37.621410, 37.878284>,  <39.730511, 37.929405, 37.311844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176060, 37.621410, 37.878284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383266, 37.925930, 37.722290>,  <40.507591, 38.108643, 37.628693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383266, 37.925930, 37.722290>,  <40.176060, 37.621410, 37.878284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383266, 37.925930, 37.722290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110662, 0.392450, 0.913092,
		0.848184, -0.516152, 0.119048,
		0.518014, 0.761296, -0.389987,
		40.538670, 38.154320, 37.605293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723717, 37.611061, 38.317467>,  <40.176060, 37.621410, 37.878284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723717, 37.611061, 38.317467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721119, 37.975555, 38.152729>,  <40.719559, 38.194252, 38.053886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721119, 37.975555, 38.152729>,  <40.723717, 37.611061, 38.317467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721119, 37.975555, 38.152729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095572, 0.410532, 0.906824,
		0.995401, -0.033468, -0.089756,
		-0.006498, 0.911232, -0.411842,
		40.719170, 38.248924, 38.029175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366508, 38.001007, 38.539806>,  <40.723717, 37.611061, 38.317467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366508, 38.001007, 38.539806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082684, 38.263939, 38.438274>,  <40.912388, 38.421700, 38.377354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082684, 38.263939, 38.438274>,  <41.366508, 38.001007, 38.539806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082684, 38.263939, 38.438274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266581, 0.583879, 0.766824,
		0.652265, 0.476445, -0.589533,
		-0.709566, 0.657332, -0.253833,
		40.869812, 38.461140, 38.362125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693474, 38.613892, 38.810768>,  <41.366508, 38.001007, 38.539806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693474, 38.613892, 38.810768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321838, 38.746391, 38.744953>,  <41.098858, 38.825890, 38.705463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321838, 38.746391, 38.744953>,  <41.693474, 38.613892, 38.810768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321838, 38.746391, 38.744953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038552, 0.529166, 0.847642,
		0.367846, 0.781190, -0.504412,
		-0.929087, 0.331248, -0.164535,
		41.043114, 38.845764, 38.695591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641262, 39.344131, 38.967770>,  <41.693474, 38.613892, 38.810768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641262, 39.344131, 38.967770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261280, 39.219234, 38.964123>,  <41.033291, 39.144295, 38.961933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261280, 39.219234, 38.964123>,  <41.641262, 39.344131, 38.967770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261280, 39.219234, 38.964123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145025, 0.414990, 0.898193,
		-0.276671, 0.854569, -0.439506,
		-0.949959, -0.312243, -0.009119,
		40.976292, 39.125561, 38.961388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141182, 39.927376, 39.053040>,  <41.641262, 39.344131, 38.967770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141182, 39.927376, 39.053040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985783, 39.591679, 39.205215>,  <40.892544, 39.390259, 39.296520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985783, 39.591679, 39.205215>,  <41.141182, 39.927376, 39.053040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985783, 39.591679, 39.205215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175112, 0.472594, 0.863708,
		-0.904655, 0.268933, -0.330566,
		-0.388503, -0.839244, 0.380441,
		40.869232, 39.339905, 39.319347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543743, 40.075638, 39.471313>,  <41.141182, 39.927376, 39.053040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543743, 40.075638, 39.471313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738625, 39.769318, 39.639210>,  <40.855553, 39.585526, 39.739948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738625, 39.769318, 39.639210>,  <40.543743, 40.075638, 39.471313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738625, 39.769318, 39.639210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070331, 0.444679, 0.892924,
		-0.870454, -0.464554, 0.162788,
		0.487200, -0.765800, 0.419745,
		40.884785, 39.539577, 39.765133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167450, 39.840973, 40.033375>,  <40.543743, 40.075638, 39.471313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167450, 39.840973, 40.033375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550766, 39.755928, 40.109776>,  <40.780754, 39.704903, 40.155617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550766, 39.755928, 40.109776>,  <40.167450, 39.840973, 40.033375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550766, 39.755928, 40.109776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102984, 0.366549, 0.924682,
		-0.266610, -0.905781, 0.329364,
		0.958287, -0.212610, 0.191006,
		40.838253, 39.692146, 40.167076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208549, 39.803596, 40.752983>,  <40.167450, 39.840973, 40.033375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208549, 39.803596, 40.752983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593590, 39.862568, 40.662056>,  <40.824612, 39.897949, 40.607502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593590, 39.862568, 40.662056>,  <40.208549, 39.803596, 40.752983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593590, 39.862568, 40.662056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176260, 0.296427, 0.938650,
		0.205766, -0.943608, 0.259354,
		0.962597, 0.147428, -0.227315,
		40.882370, 39.906796, 40.593861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554588, 39.655819, 41.393917>,  <40.208549, 39.803596, 40.752983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554588, 39.655819, 41.393917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824440, 39.864571, 41.185104>,  <40.986351, 39.989822, 41.059818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824440, 39.864571, 41.185104>,  <40.554588, 39.655819, 41.393917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824440, 39.864571, 41.185104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387146, 0.351972, 0.852194,
		0.628484, -0.777016, 0.035407,
		0.674631, 0.521883, -0.522027,
		41.026829, 40.021133, 41.028496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311241, 39.469700, 41.617661>,  <40.554588, 39.655819, 41.393917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311241, 39.469700, 41.617661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258450, 39.841675, 41.480377>,  <41.226776, 40.064861, 41.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258450, 39.841675, 41.480377>,  <41.311241, 39.469700, 41.617661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258450, 39.841675, 41.480377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488357, 0.362298, 0.793882,
		0.862607, -0.062835, -0.501958,
		-0.131975, 0.929942, -0.343206,
		41.218857, 40.120659, 41.377415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960522, 39.789066, 41.739632>,  <41.311241, 39.469700, 41.617661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960522, 39.789066, 41.739632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714104, 40.096840, 41.672146>,  <41.566254, 40.281506, 41.631657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714104, 40.096840, 41.672146>,  <41.960522, 39.789066, 41.739632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714104, 40.096840, 41.672146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356994, 0.463636, 0.810924,
		0.702172, 0.439335, -0.560302,
		-0.616044, 0.769432, -0.168712,
		41.529289, 40.327671, 41.621532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378983, 40.338936, 41.760685>,  <41.960522, 39.789066, 41.739632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378983, 40.338936, 41.760685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006893, 40.475708, 41.813992>,  <41.783638, 40.557774, 41.845974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006893, 40.475708, 41.813992>,  <42.378983, 40.338936, 41.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006893, 40.475708, 41.813992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308985, 0.533811, 0.787130,
		0.198006, 0.773387, -0.602217,
		-0.930227, 0.341933, 0.133267,
		41.727825, 40.578289, 41.853973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498978, 41.049225, 41.897869>,  <42.378983, 40.338936, 41.760685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498978, 41.049225, 41.897869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149105, 40.940826, 42.058613>,  <41.939182, 40.875786, 42.155060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149105, 40.940826, 42.058613>,  <42.498978, 41.049225, 41.897869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149105, 40.940826, 42.058613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191363, 0.568662, 0.800002,
		-0.445324, 0.776648, -0.445538,
		-0.874681, -0.271001, 0.401861,
		41.886700, 40.859528, 42.179173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212711, 41.670784, 42.260098>,  <42.498978, 41.049225, 41.897869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212711, 41.670784, 42.260098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992466, 41.391438, 42.443012>,  <41.860321, 41.223831, 42.552761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992466, 41.391438, 42.443012>,  <42.212711, 41.670784, 42.260098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992466, 41.391438, 42.443012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109330, 0.482758, 0.868903,
		-0.827572, 0.528422, -0.189459,
		-0.550610, -0.698366, 0.457289,
		41.827282, 41.181927, 42.580200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696518, 41.979282, 42.750275>,  <42.212711, 41.670784, 42.260098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696518, 41.979282, 42.750275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775665, 41.610115, 42.882374>,  <41.823154, 41.388615, 42.961632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775665, 41.610115, 42.882374>,  <41.696518, 41.979282, 42.750275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775665, 41.610115, 42.882374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358756, 0.381718, 0.851813,
		-0.912218, -0.050071, 0.406635,
		0.197871, -0.922921, 0.330247,
		41.835026, 41.333241, 42.981449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672874, 41.990170, 43.509960>,  <41.696518, 41.979282, 42.750275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672874, 41.990170, 43.509960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900257, 41.674728, 43.416187>,  <42.036686, 41.485462, 43.359924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900257, 41.674728, 43.416187>,  <41.672874, 41.990170, 43.509960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900257, 41.674728, 43.416187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628325, 0.232202, 0.742489,
		-0.531092, -0.569376, 0.627496,
		0.568461, -0.788602, -0.234433,
		42.070797, 41.438148, 43.345856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912449, 41.695713, 44.171448>,  <41.672874, 41.990170, 43.509960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912449, 41.695713, 44.171448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166359, 41.586605, 43.882267>,  <42.318703, 41.521141, 43.708759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166359, 41.586605, 43.882267>,  <41.912449, 41.695713, 44.171448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166359, 41.586605, 43.882267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772573, 0.240932, 0.587438,
		0.013949, -0.931424, 0.363669,
		0.634773, -0.272766, -0.722953,
		42.356792, 41.504776, 43.665382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427979, 41.140804, 44.385056>,  <41.912449, 41.695713, 44.171448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427979, 41.140804, 44.385056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586372, 41.361389, 44.091366>,  <42.681408, 41.493740, 43.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586372, 41.361389, 44.091366>,  <42.427979, 41.140804, 44.385056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586372, 41.361389, 44.091366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837379, 0.111256, 0.535181,
		0.376820, -0.826746, -0.417729,
		0.395984, 0.551465, -0.734223,
		42.705166, 41.526829, 43.871098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057732, 40.886616, 44.258804>,  <42.427979, 41.140804, 44.385056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057732, 40.886616, 44.258804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076412, 41.258278, 44.112118>,  <43.087620, 41.481277, 44.024105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076412, 41.258278, 44.112118>,  <43.057732, 40.886616, 44.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076412, 41.258278, 44.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936990, 0.086493, 0.338481,
		0.346221, -0.359418, -0.866574,
		0.046704, 0.929160, -0.366716,
		43.090424, 41.537025, 44.002102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662331, 40.935680, 43.815994>,  <43.057732, 40.886616, 44.258804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662331, 40.935680, 43.815994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560570, 41.288815, 43.973919>,  <43.499512, 41.500694, 44.068672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560570, 41.288815, 43.973919>,  <43.662331, 40.935680, 43.815994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560570, 41.288815, 43.973919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780556, -0.053581, 0.622786,
		0.570973, 0.466611, -0.675473,
		-0.254406, 0.882838, 0.394809,
		43.484249, 41.553665, 44.092361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274494, 40.417362, 43.420403>,  <43.662331, 40.935680, 43.815994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274494, 40.417362, 43.420403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180641, 40.230904, 43.761612>,  <43.124329, 40.119030, 43.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180641, 40.230904, 43.761612>,  <43.274494, 40.417362, 43.420403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180641, 40.230904, 43.761612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960943, 0.243701, -0.131143,
		-0.146751, -0.850480, -0.505121,
		-0.234633, -0.466147, 0.853027,
		43.110252, 40.091061, 44.017521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590092, 40.265015, 43.312481>,  <43.274494, 40.417362, 43.420403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590092, 40.265015, 43.312481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382435, 40.603783, 43.358486>,  <42.257843, 40.807041, 43.386089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382435, 40.603783, 43.358486>,  <42.590092, 40.265015, 43.312481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382435, 40.603783, 43.358486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611499, -0.274028, -0.742279,
		-0.597129, -0.455679, 0.660147,
		-0.519139, 0.846916, 0.115017,
		42.226692, 40.857857, 43.392990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906189, 40.129372, 43.371521>,  <42.590092, 40.265015, 43.312481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906189, 40.129372, 43.371521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921944, 40.503391, 43.230591>,  <41.931396, 40.727802, 43.146034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921944, 40.503391, 43.230591>,  <41.906189, 40.129372, 43.371521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921944, 40.503391, 43.230591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659843, -0.240446, -0.711894,
		-0.750371, 0.260518, 0.607515,
		0.039387, 0.935049, -0.352324,
		41.933758, 40.783905, 43.124893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174908, 40.243950, 43.130650>,  <41.906189, 40.129372, 43.371521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174908, 40.243950, 43.130650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392902, 40.532265, 42.959324>,  <41.523701, 40.705254, 42.856529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392902, 40.532265, 42.959324>,  <41.174908, 40.243950, 43.130650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392902, 40.532265, 42.959324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491769, -0.138955, -0.859567,
		-0.679083, 0.679084, 0.278733,
		0.544986, 0.720789, -0.428314,
		41.556396, 40.748501, 42.830830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721813, 40.687706, 42.693676>,  <41.174908, 40.243950, 43.130650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721813, 40.687706, 42.693676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088890, 40.680149, 42.534943>,  <41.309135, 40.675613, 42.439701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088890, 40.680149, 42.534943>,  <40.721813, 40.687706, 42.693676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088890, 40.680149, 42.534943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388724, -0.248906, -0.887096,
		-0.082013, 0.968343, -0.235765,
		0.917697, -0.018894, -0.396832,
		41.364201, 40.674480, 42.415894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514057, 40.979599, 41.965683>,  <40.721813, 40.687706, 42.693676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514057, 40.979599, 41.965683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907787, 40.914181, 41.939289>,  <41.144024, 40.874931, 41.923454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907787, 40.914181, 41.939289>,  <40.514057, 40.979599, 41.965683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907787, 40.914181, 41.939289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102286, -0.224661, -0.969054,
		0.143662, 0.960614, -0.237868,
		0.984326, -0.163547, -0.065982,
		41.203087, 40.865116, 41.919495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817741, 41.385956, 41.386272>,  <40.514057, 40.979599, 41.965683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817741, 41.385956, 41.386272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043133, 41.064190, 41.461540>,  <41.178368, 40.871132, 41.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043133, 41.064190, 41.461540>,  <40.817741, 41.385956, 41.386272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043133, 41.064190, 41.461540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128818, -0.310538, -0.941792,
		0.816023, 0.506444, -0.278606,
		0.563483, -0.804413, 0.188167,
		41.212177, 40.822865, 41.517990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290539, 41.314884, 40.796158>,  <40.817741, 41.385956, 41.386272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290539, 41.314884, 40.796158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265251, 40.952068, 40.962666>,  <41.250076, 40.734379, 41.062569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265251, 40.952068, 40.962666>,  <41.290539, 41.314884, 40.796158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265251, 40.952068, 40.962666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356091, -0.369144, -0.858447,
		0.932310, -0.202501, -0.299652,
		-0.063222, -0.907042, 0.416266,
		41.246284, 40.679955, 41.087543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806370, 40.857090, 40.550541>,  <41.290539, 41.314884, 40.796158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806370, 40.857090, 40.550541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449200, 40.704044, 40.645447>,  <41.234898, 40.612217, 40.702389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449200, 40.704044, 40.645447>,  <41.806370, 40.857090, 40.550541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449200, 40.704044, 40.645447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122543, -0.300556, -0.945859,
		0.433208, -0.873655, 0.221488,
		-0.892925, -0.382612, 0.237264,
		41.181324, 40.589260, 40.716625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817291, 40.337257, 40.086948>,  <41.806370, 40.857090, 40.550541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817291, 40.337257, 40.086948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437237, 40.391258, 40.199383>,  <41.209202, 40.423660, 40.266842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437237, 40.391258, 40.199383>,  <41.817291, 40.337257, 40.086948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437237, 40.391258, 40.199383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311511, -0.451538, -0.836106,
		0.014043, -0.881979, 0.471080,
		-0.950139, 0.135005, 0.281087,
		41.152195, 40.431759, 40.283710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452591, 39.668453, 40.041279>,  <41.817291, 40.337257, 40.086948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452591, 39.668453, 40.041279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245445, 40.001701, 39.963581>,  <41.121159, 40.201649, 39.916962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245445, 40.001701, 39.963581>,  <41.452591, 39.668453, 40.041279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245445, 40.001701, 39.963581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337671, -0.407700, -0.848386,
		-0.785999, -0.373758, 0.492453,
		-0.517864, 0.833118, -0.194245,
		41.090084, 40.251637, 39.905308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111958, 39.154335, 40.379261>,  <41.452591, 39.668453, 40.041279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111958, 39.154335, 40.379261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727901, 39.177948, 40.269974>,  <40.497467, 39.192116, 40.204403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727901, 39.177948, 40.269974>,  <41.111958, 39.154335, 40.379261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727901, 39.177948, 40.269974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242323, -0.311408, -0.918860,
		-0.139322, -0.948441, 0.284691,
		-0.960140, 0.059031, -0.273215,
		40.439861, 39.195656, 40.188007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826900, 38.582962, 39.985909>,  <41.111958, 39.154335, 40.379261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826900, 38.582962, 39.985909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638351, 38.916981, 39.872410>,  <40.525223, 39.117390, 39.804310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638351, 38.916981, 39.872410>,  <40.826900, 38.582962, 39.985909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638351, 38.916981, 39.872410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017521, -0.312800, -0.949658,
		-0.881761, -0.452613, 0.132814,
		-0.471372, 0.835044, -0.283745,
		40.496941, 39.167492, 39.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192375, 38.432617, 39.584370>,  <40.826900, 38.582962, 39.985909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192375, 38.432617, 39.584370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338295, 38.784397, 39.462059>,  <40.425846, 38.995464, 39.388672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338295, 38.784397, 39.462059>,  <40.192375, 38.432617, 39.584370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338295, 38.784397, 39.462059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082498, -0.296587, -0.951436,
		-0.927426, 0.372305, -0.035641,
		0.364795, 0.879446, -0.305777,
		40.447735, 39.048229, 39.370327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740841, 38.657581, 38.990425>,  <40.192375, 38.432617, 39.584370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740841, 38.657581, 38.990425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103874, 38.825329, 38.982159>,  <40.321693, 38.925976, 38.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103874, 38.825329, 38.982159>,  <39.740841, 38.657581, 38.990425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103874, 38.825329, 38.982159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101264, -0.266381, -0.958534,
		-0.407479, 0.867857, -0.284229,
		0.907583, 0.419364, -0.020662,
		40.376148, 38.951138, 38.975960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810974, 39.211044, 38.458557>,  <39.740841, 38.657581, 38.990425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810974, 39.211044, 38.458557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176159, 39.064373, 38.530167>,  <40.395271, 38.976372, 38.573132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176159, 39.064373, 38.530167>,  <39.810974, 39.211044, 38.458557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176159, 39.064373, 38.530167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162820, -0.074938, -0.983806,
		0.374157, 0.927325, -0.008713,
		0.912960, -0.366679, 0.179025,
		40.450047, 38.954369, 38.583874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152939, 39.402660, 37.860268>,  <39.810974, 39.211044, 38.458557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152939, 39.402660, 37.860268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368244, 39.115589, 38.036999>,  <40.497429, 38.943348, 38.143036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368244, 39.115589, 38.036999>,  <40.152939, 39.402660, 37.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368244, 39.115589, 38.036999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292036, -0.332937, -0.896587,
		0.790561, 0.611629, 0.030380,
		0.538264, -0.717679, 0.441824,
		40.529724, 38.900284, 38.169544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768101, 39.424046, 37.523041>,  <40.152939, 39.402660, 37.860268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768101, 39.424046, 37.523041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738415, 39.059998, 37.686100>,  <40.720604, 38.841568, 37.783936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738415, 39.059998, 37.686100>,  <40.768101, 39.424046, 37.523041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738415, 39.059998, 37.686100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085856, -0.413091, -0.906634,
		0.993539, -0.032288, 0.108798,
		-0.074217, -0.910117, 0.407650,
		40.716148, 38.786961, 37.808395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233898, 39.078449, 37.123280>,  <40.768101, 39.424046, 37.523041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233898, 39.078449, 37.123280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038773, 38.770893, 37.288612>,  <40.921700, 38.586357, 37.387814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038773, 38.770893, 37.288612>,  <41.233898, 39.078449, 37.123280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038773, 38.770893, 37.288612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022761, -0.484532, -0.874477,
		0.872653, -0.417170, 0.253860,
		-0.487809, -0.768894, 0.413333,
		40.892429, 38.540226, 37.412613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672508, 38.433407, 37.012085>,  <41.233898, 39.078449, 37.123280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672508, 38.433407, 37.012085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299866, 38.312950, 37.093498>,  <41.076283, 38.240677, 37.142345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299866, 38.312950, 37.093498>,  <41.672508, 38.433407, 37.012085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299866, 38.312950, 37.093498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030648, -0.492898, -0.869547,
		0.362184, -0.816311, 0.449955,
		-0.931603, -0.301146, 0.203538,
		41.020386, 38.222607, 37.154560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597118, 37.679539, 36.699780>,  <41.672508, 38.433407, 37.012085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597118, 37.679539, 36.699780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240864, 37.857456, 36.737564>,  <41.027111, 37.964207, 36.760235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240864, 37.857456, 36.737564>,  <41.597118, 37.679539, 36.699780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240864, 37.857456, 36.737564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337556, -0.507549, -0.792748,
		-0.304665, -0.737938, 0.602185,
		-0.890637, 0.444794, 0.094463,
		40.973671, 37.990894, 36.765903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104580, 37.093472, 36.574261>,  <41.597118, 37.679539, 36.699780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104580, 37.093472, 36.574261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889313, 37.426308, 36.520599>,  <40.760151, 37.626011, 36.488403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889313, 37.426308, 36.520599>,  <41.104580, 37.093472, 36.574261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889313, 37.426308, 36.520599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466249, -0.426510, -0.775049,
		-0.702129, -0.354560, 0.617497,
		-0.538170, 0.832092, -0.134152,
		40.727863, 37.675934, 36.480354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161572, 36.566963, 37.028133>,  <41.104580, 37.093472, 36.574261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161572, 36.566963, 37.028133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165760, 36.356632, 37.368343>,  <41.168274, 36.230434, 37.572472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165760, 36.356632, 37.368343>,  <41.161572, 36.566963, 37.028133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165760, 36.356632, 37.368343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987828, -0.126574, -0.090417,
		0.155198, 0.841123, 0.518098,
		0.010474, -0.525824, 0.850529,
		41.168903, 36.198883, 37.623501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579182, 36.789341, 37.625580>,  <41.161572, 36.566963, 37.028133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579182, 36.789341, 37.625580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562531, 36.389690, 37.623737>,  <41.552540, 36.149902, 37.622631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562531, 36.389690, 37.623737>,  <41.579182, 36.789341, 37.625580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562531, 36.389690, 37.623737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976834, -0.039728, -0.210279,
		0.209912, -0.013253, 0.977630,
		-0.041626, -0.999123, -0.004607,
		41.550041, 36.089954, 37.622356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069622, 36.499729, 38.137924>,  <41.579182, 36.789341, 37.625580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069622, 36.499729, 38.137924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022350, 36.236404, 37.840561>,  <41.993988, 36.078407, 37.662144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022350, 36.236404, 37.840561>,  <42.069622, 36.499729, 38.137924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022350, 36.236404, 37.840561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991289, -0.122046, -0.049513,
		-0.058134, -0.742783, 0.667003,
		-0.118182, -0.658314, -0.743408,
		41.986897, 36.038910, 37.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126789, 35.679596, 38.292309>,  <42.069622, 36.499729, 38.137924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126789, 35.679596, 38.292309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267384, 35.830559, 37.949608>,  <42.351738, 35.921139, 37.743988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267384, 35.830559, 37.949608>,  <42.126789, 35.679596, 38.292309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267384, 35.830559, 37.949608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928754, -0.255716, 0.268376,
		-0.117797, -0.890040, -0.440400,
		0.351483, 0.377409, -0.856751,
		42.372829, 35.943783, 37.692581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468735, 35.102249, 37.795036>,  <42.126789, 35.679596, 38.292309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468735, 35.102249, 37.795036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629650, 35.465931, 37.752121>,  <42.726200, 35.684139, 37.726372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629650, 35.465931, 37.752121>,  <42.468735, 35.102249, 37.795036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629650, 35.465931, 37.752121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910201, -0.384591, 0.153701,
		0.098483, -0.159487, -0.982275,
		0.402288, 0.909205, -0.107290,
		42.750336, 35.738693, 37.719933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028042, 35.197468, 37.254745>,  <42.468735, 35.102249, 37.795036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028042, 35.197468, 37.254745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073982, 35.458488, 37.554340>,  <43.101547, 35.615101, 37.734097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073982, 35.458488, 37.554340>,  <43.028042, 35.197468, 37.254745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073982, 35.458488, 37.554340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976928, -0.210859, 0.033902,
		0.180053, 0.727813, -0.661717,
		0.114855, 0.652555, 0.748986,
		43.108440, 35.654255, 37.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496773, 35.880314, 37.082401>,  <43.028042, 35.197468, 37.254745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496773, 35.880314, 37.082401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501930, 35.720310, 37.448971>,  <43.505024, 35.624310, 37.668911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501930, 35.720310, 37.448971>,  <43.496773, 35.880314, 37.082401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501930, 35.720310, 37.448971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981703, -0.169068, -0.087608,
		0.189981, 0.900782, 0.390511,
		0.012893, -0.400010, 0.916420,
		43.505798, 35.600307, 37.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180191, 35.938118, 37.238560>,  <43.496773, 35.880314, 37.082401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180191, 35.938118, 37.238560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064159, 35.639492, 37.478058>,  <43.994541, 35.460316, 37.621758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064159, 35.639492, 37.478058>,  <44.180191, 35.938118, 37.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064159, 35.639492, 37.478058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857399, -0.480662, -0.183933,
		0.425111, 0.460007, 0.779535,
		-0.290082, -0.746564, 0.598744,
		43.977135, 35.415524, 37.657681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737953, 35.902424, 37.644951>,  <44.180191, 35.938118, 37.238560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737953, 35.902424, 37.644951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525387, 35.564365, 37.621864>,  <44.397846, 35.361530, 37.608013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525387, 35.564365, 37.621864>,  <44.737953, 35.902424, 37.644951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525387, 35.564365, 37.621864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844330, -0.522914, -0.116910,
		0.068623, -0.110862, 0.991464,
		-0.531411, -0.845145, -0.057720,
		44.365963, 35.310822, 37.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907726, 35.370739, 38.063667>,  <44.737953, 35.902424, 37.644951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907726, 35.370739, 38.063667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749832, 35.187721, 37.744961>,  <44.655094, 35.077911, 37.553738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749832, 35.187721, 37.744961>,  <44.907726, 35.370739, 38.063667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749832, 35.187721, 37.744961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848868, -0.513443, -0.125699,
		-0.351580, -0.725966, 0.591072,
		-0.394735, -0.457548, -0.796765,
		44.631413, 35.050457, 37.505932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903488, 34.551102, 38.087841>,  <44.907726, 35.370739, 38.063667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903488, 34.551102, 38.087841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880661, 34.581303, 37.689636>,  <44.866962, 34.599422, 37.450714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880661, 34.581303, 37.689636>,  <44.903488, 34.551102, 38.087841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880661, 34.581303, 37.689636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752516, -0.652033, -0.092590,
		-0.656096, -0.754423, -0.019602,
		-0.057071, 0.075498, -0.995511,
		44.863541, 34.603954, 37.390984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652889, 33.946217, 37.716351>,  <44.903488, 34.551102, 38.087841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652889, 33.946217, 37.716351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897747, 34.124676, 37.455204>,  <45.044662, 34.231750, 37.298515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897747, 34.124676, 37.455204>,  <44.652889, 33.946217, 37.716351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897747, 34.124676, 37.455204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559187, -0.828001, -0.041525,
		-0.559099, -0.339655, -0.756334,
		0.612141, 0.446149, -0.652866,
		45.081390, 34.258522, 37.259346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775497, 33.518188, 37.222584>,  <44.652889, 33.946217, 37.716351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775497, 33.518188, 37.222584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102875, 33.748001, 37.219143>,  <45.299301, 33.885887, 37.217079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102875, 33.748001, 37.219143>,  <44.775497, 33.518188, 37.222584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102875, 33.748001, 37.219143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567814, -0.806399, 0.165254,
		0.088004, -0.140136, -0.986214,
		0.818440, 0.574528, -0.008605,
		45.348408, 33.920361, 37.216560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219288, 33.182667, 36.786961>,  <44.775497, 33.518188, 37.222584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219288, 33.182667, 36.786961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427139, 33.412952, 37.039478>,  <45.551849, 33.551125, 37.190990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427139, 33.412952, 37.039478>,  <45.219288, 33.182667, 36.786961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427139, 33.412952, 37.039478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699900, -0.710608, 0.071945,
		0.490022, 0.404457, -0.772200,
		0.519633, 0.575717, 0.631293,
		45.583031, 33.585667, 37.228867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929028, 32.887428, 36.843307>,  <45.219288, 33.182667, 36.786961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929028, 32.887428, 36.843307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943119, 32.646477, 36.524334>,  <45.951576, 32.501907, 36.332951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943119, 32.646477, 36.524334>,  <45.929028, 32.887428, 36.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943119, 32.646477, 36.524334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069483, 0.794522, -0.603247,
		0.996961, 0.076662, -0.013862,
		0.035232, -0.602377, -0.797434,
		45.953690, 32.465763, 36.285103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413727, 33.316067, 36.423481>,  <45.929028, 32.887428, 36.843307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413727, 33.316067, 36.423481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167774, 33.043343, 36.264965>,  <46.020203, 32.879707, 36.169853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.167774, 33.043343, 36.264965>,  <46.413727, 33.316067, 36.423481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167774, 33.043343, 36.264965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176500, 0.608746, -0.773483,
		0.768613, -0.405656, -0.494647,
		-0.614883, -0.681815, -0.396292,
		45.983311, 32.838799, 36.146076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642414, 33.086777, 35.746803>,  <46.413727, 33.316067, 36.423481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642414, 33.086777, 35.746803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244274, 33.097561, 35.783794>,  <46.005390, 33.104031, 35.805988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244274, 33.097561, 35.783794>,  <46.642414, 33.086777, 35.746803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244274, 33.097561, 35.783794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067218, 0.493277, -0.867271,
		-0.068997, -0.869454, -0.489172,
		-0.995350, 0.026958, 0.092478,
		45.945671, 33.105648, 35.811539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840500, 33.649399, 35.306477>,  <46.642414, 33.086777, 35.746803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840500, 33.649399, 35.306477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440784, 33.653091, 35.321110>,  <46.200954, 33.655308, 35.329887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440784, 33.653091, 35.321110>,  <46.840500, 33.649399, 35.306477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440784, 33.653091, 35.321110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013133, 0.823846, -0.566662,
		-0.035368, -0.566739, -0.823138,
		-0.999288, 0.009231, 0.036581,
		46.140999, 33.655861, 35.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780251, 33.895153, 34.651024>,  <46.840500, 33.649399, 35.306477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780251, 33.895153, 34.651024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460400, 33.968086, 34.879883>,  <46.268490, 34.011845, 35.017197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460400, 33.968086, 34.879883>,  <46.780251, 33.895153, 34.651024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460400, 33.968086, 34.879883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062208, 0.972814, -0.223074,
		-0.597265, -0.142784, -0.789232,
		-0.799628, 0.182331, 0.572146,
		46.220512, 34.022785, 35.051525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.250000, 34.479774, 35.071838>,  <46.780251, 33.895153, 34.651024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.250000, 34.479774, 35.071838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473816, 34.741333, 34.868137>,  <47.608105, 34.898266, 34.745914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473816, 34.741333, 34.868137>,  <47.250000, 34.479774, 35.071838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.473816, 34.741333, 34.868137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640719, 0.731031, 0.234676,
		0.525735, 0.194981, 0.828001,
		0.559537, 0.653894, -0.509257,
		47.641678, 34.937500, 34.715359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511074, 34.915596, 35.550106>,  <47.250000, 34.479774, 35.071838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511074, 34.915596, 35.550106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413345, 35.024582, 35.177853>,  <47.354710, 35.089973, 34.954502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413345, 35.024582, 35.177853>,  <47.511074, 34.915596, 35.550106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.413345, 35.024582, 35.177853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739244, 0.568764, 0.360593,
		0.627557, 0.776061, 0.062458,
		-0.244318, 0.272464, -0.930630,
		47.340050, 35.106319, 34.898663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.810513, 28.615385, 31.911480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440639, 28.702988, 32.036053>,  <37.218716, 28.755548, 32.110798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.440639, 28.702988, 32.036053>,  <37.810513, 28.615385, 31.911480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440639, 28.702988, 32.036053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375638, 0.658103, 0.652531,
		-0.062047, 0.720373, -0.690806,
		-0.924687, 0.219006, 0.311433,
		37.163235, 28.768690, 32.129482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796406, 29.316362, 31.918829>,  <37.810513, 28.615385, 31.911480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796406, 29.316362, 31.918829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467991, 29.261610, 32.140518>,  <37.270943, 29.228758, 32.273533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467991, 29.261610, 32.140518>,  <37.796406, 29.316362, 31.918829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467991, 29.261610, 32.140518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356681, 0.635012, 0.685229,
		-0.445734, 0.760279, -0.472544,
		-0.821036, -0.136883, 0.554223,
		37.221680, 29.220545, 32.306786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503616, 30.053295, 32.084549>,  <37.796406, 29.316362, 31.918829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503616, 30.053295, 32.084549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397320, 29.788006, 32.364410>,  <37.333542, 29.628832, 32.532330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397320, 29.788006, 32.364410>,  <37.503616, 30.053295, 32.084549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397320, 29.788006, 32.364410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165495, 0.683593, 0.710854,
		-0.949734, 0.304689, -0.071896,
		-0.265737, -0.663224, 0.699656,
		37.317600, 29.589039, 32.574306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021053, 30.396479, 32.560249>,  <37.503616, 30.053295, 32.084549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021053, 30.396479, 32.560249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172714, 30.087751, 32.764423>,  <37.263710, 29.902515, 32.886929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172714, 30.087751, 32.764423>,  <37.021053, 30.396479, 32.560249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172714, 30.087751, 32.764423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088841, 0.579432, 0.810164,
		-0.921061, -0.261826, 0.288260,
		0.379149, -0.771820, 0.510431,
		37.286457, 29.856205, 32.917553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961285, 30.624119, 33.240273>,  <37.021053, 30.396479, 32.560249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961285, 30.624119, 33.240273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164665, 30.288254, 33.316631>,  <37.286694, 30.086735, 33.362446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164665, 30.288254, 33.316631>,  <36.961285, 30.624119, 33.240273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164665, 30.288254, 33.316631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088874, 0.271678, 0.958276,
		-0.856491, -0.470274, 0.212760,
		0.508454, -0.839663, 0.190894,
		37.317200, 30.036354, 33.373901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689014, 30.328669, 33.850342>,  <36.961285, 30.624119, 33.240273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689014, 30.328669, 33.850342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072407, 30.219639, 33.816856>,  <37.302444, 30.154221, 33.796764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072407, 30.219639, 33.816856>,  <36.689014, 30.328669, 33.850342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072407, 30.219639, 33.816856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185481, 0.373010, 0.909099,
		-0.216572, -0.886885, 0.408083,
		0.958485, -0.272577, -0.083716,
		37.359951, 30.137865, 33.791740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789970, 30.017776, 34.502510>,  <36.689014, 30.328669, 33.850342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789970, 30.017776, 34.502510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148129, 30.127117, 34.361908>,  <37.363022, 30.192720, 34.277546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148129, 30.127117, 34.361908>,  <36.789970, 30.017776, 34.502510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148129, 30.127117, 34.361908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169892, 0.519962, 0.837124,
		0.411595, -0.809271, 0.419129,
		0.895391, 0.273349, -0.351503,
		37.416744, 30.209122, 34.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277718, 30.067289, 35.063065>,  <36.789970, 30.017776, 34.502510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277718, 30.067289, 35.063065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475998, 30.261021, 34.774700>,  <37.594967, 30.377260, 34.601681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475998, 30.261021, 34.774700>,  <37.277718, 30.067289, 35.063065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475998, 30.261021, 34.774700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194602, 0.747020, 0.635682,
		0.846413, -0.455396, 0.276044,
		0.495697, 0.484331, -0.720908,
		37.624706, 30.406321, 34.558430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922630, 30.299599, 35.395824>,  <37.277718, 30.067289, 35.063065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922630, 30.299599, 35.395824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903389, 30.533123, 35.071640>,  <37.891846, 30.673237, 34.877129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903389, 30.533123, 35.071640>,  <37.922630, 30.299599, 35.395824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903389, 30.533123, 35.071640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396580, 0.755869, 0.520947,
		0.916739, -0.296356, -0.267886,
		-0.048101, 0.583811, -0.810464,
		37.888958, 30.708267, 34.828503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635159, 30.622313, 35.255451>,  <37.922630, 30.299599, 35.395824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635159, 30.622313, 35.255451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346691, 30.852711, 35.101494>,  <38.173611, 30.990950, 35.009117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346691, 30.852711, 35.101494>,  <38.635159, 30.622313, 35.255451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346691, 30.852711, 35.101494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491992, 0.816987, 0.300792,
		0.487712, 0.027555, -0.872569,
		-0.721166, 0.575997, -0.384898,
		38.130341, 31.025509, 34.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020844, 31.012327, 34.789360>,  <38.635159, 30.622313, 35.255451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020844, 31.012327, 34.789360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665958, 31.178226, 34.870197>,  <38.453030, 31.277767, 34.918701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665958, 31.178226, 34.870197>,  <39.020844, 31.012327, 34.789360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665958, 31.178226, 34.870197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452707, 0.867064, 0.207984,
		-0.088966, 0.276014, -0.957027,
		-0.887210, 0.414749, 0.202093,
		38.399796, 31.302650, 34.930824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193329, 31.714384, 34.545269>,  <39.020844, 31.012327, 34.789360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193329, 31.714384, 34.545269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869858, 31.739977, 34.779175>,  <38.675774, 31.755333, 34.919518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869858, 31.739977, 34.779175>,  <39.193329, 31.714384, 34.545269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869858, 31.739977, 34.779175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294103, 0.904884, 0.307714,
		-0.509456, 0.420822, -0.750576,
		-0.808677, 0.063980, 0.584763,
		38.627254, 31.759171, 34.954605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040352, 32.407219, 34.484093>,  <39.193329, 31.714384, 34.545269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040352, 32.407219, 34.484093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843750, 32.292500, 34.813011>,  <38.725788, 32.223667, 35.010361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843750, 32.292500, 34.813011>,  <39.040352, 32.407219, 34.484093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843750, 32.292500, 34.813011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291548, 0.835548, 0.465681,
		-0.820624, 0.468623, -0.327060,
		-0.491503, -0.286795, 0.822297,
		38.696301, 32.206459, 35.059700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660038, 32.933022, 34.566582>,  <39.040352, 32.407219, 34.484093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660038, 32.933022, 34.566582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705784, 32.733643, 34.910320>,  <38.733231, 32.614017, 35.116562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.705784, 32.733643, 34.910320>,  <38.660038, 32.933022, 34.566582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705784, 32.733643, 34.910320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468987, 0.789650, 0.395607,
		-0.875770, 0.357779, 0.324071,
		0.114363, -0.498445, 0.859345,
		38.740093, 32.584110, 35.168125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358406, 33.350967, 35.099693>,  <38.660038, 32.933022, 34.566582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358406, 33.350967, 35.099693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577045, 33.104553, 35.326584>,  <38.708229, 32.956707, 35.462719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577045, 33.104553, 35.326584>,  <38.358406, 33.350967, 35.099693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577045, 33.104553, 35.326584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404474, 0.787328, 0.465313,
		-0.733237, -0.024911, 0.679517,
		0.546594, -0.616031, 0.567222,
		38.741024, 32.919743, 35.496750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494610, 33.761940, 35.611362>,  <38.358406, 33.350967, 35.099693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494610, 33.761940, 35.611362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764870, 33.469868, 35.652042>,  <38.927025, 33.294624, 35.676453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764870, 33.469868, 35.652042>,  <38.494610, 33.761940, 35.611362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764870, 33.469868, 35.652042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637377, 0.647878, 0.417139,
		-0.370477, -0.217016, 0.903134,
		0.675647, -0.730177, 0.101703,
		38.967564, 33.250816, 35.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671982, 33.705399, 36.339497>,  <38.494610, 33.761940, 35.611362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671982, 33.705399, 36.339497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970917, 33.553707, 36.121258>,  <39.150280, 33.462692, 35.990314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970917, 33.553707, 36.121258>,  <38.671982, 33.705399, 36.339497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970917, 33.553707, 36.121258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663806, 0.462071, 0.588092,
		0.029084, -0.801672, 0.597056,
		0.747339, -0.379225, -0.545594,
		39.195118, 33.439941, 35.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172455, 33.442554, 36.845871>,  <38.671982, 33.705399, 36.339497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172455, 33.442554, 36.845871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369431, 33.493801, 36.501522>,  <39.487614, 33.524548, 36.294914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369431, 33.493801, 36.501522>,  <39.172455, 33.442554, 36.845871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369431, 33.493801, 36.501522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813459, 0.283984, 0.507580,
		0.309503, -0.950231, 0.035625,
		0.492435, 0.128118, -0.860868,
		39.517162, 33.532234, 36.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929211, 33.405552, 37.134182>,  <39.172455, 33.442554, 36.845871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929211, 33.405552, 37.134182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908741, 33.558403, 36.765106>,  <39.896461, 33.650112, 36.543659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908741, 33.558403, 36.765106>,  <39.929211, 33.405552, 37.134182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908741, 33.558403, 36.765106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843324, 0.511437, 0.165039,
		0.534964, -0.769683, -0.348426,
		-0.051171, 0.382126, -0.922692,
		39.893391, 33.673042, 36.488300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617493, 33.349201, 36.814037>,  <39.929211, 33.405552, 37.134182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617493, 33.349201, 36.814037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410023, 33.648487, 36.648556>,  <40.285542, 33.828056, 36.549267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410023, 33.648487, 36.648556>,  <40.617493, 33.349201, 36.814037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410023, 33.648487, 36.648556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696589, 0.650385, 0.302925,
		0.495721, -0.131063, -0.858536,
		-0.518676, 0.748213, -0.413706,
		40.254421, 33.872952, 36.524445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108047, 33.757042, 36.445778>,  <40.617493, 33.349201, 36.814037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108047, 33.757042, 36.445778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.798290, 34.009445, 36.464272>,  <40.612434, 34.160889, 36.475368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.798290, 34.009445, 36.464272>,  <41.108047, 33.757042, 36.445778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798290, 34.009445, 36.464272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621258, 0.744518, 0.244399,
		0.119799, 0.217983, -0.968572,
		-0.774394, 0.631012, 0.046231,
		40.565971, 34.198750, 36.478142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359268, 34.389420, 36.168579>,  <41.108047, 33.757042, 36.445778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359268, 34.389420, 36.168579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047058, 34.462437, 36.407734>,  <40.859734, 34.506248, 36.551228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047058, 34.462437, 36.407734>,  <41.359268, 34.389420, 36.168579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047058, 34.462437, 36.407734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560061, 0.629065, 0.539081,
		-0.277701, 0.755615, -0.593235,
		-0.780521, 0.182545, 0.597883,
		40.812901, 34.517200, 36.587097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751881, 34.926987, 36.163605>,  <41.359268, 34.389420, 36.168579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751881, 34.926987, 36.163605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050346, 35.159046, 36.032967>,  <41.229427, 35.298283, 35.954586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050346, 35.159046, 36.032967>,  <40.751881, 34.926987, 36.163605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050346, 35.159046, 36.032967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111822, -0.592798, -0.797550,
		-0.656303, 0.558584, -0.507198,
		0.746165, 0.580151, -0.326593,
		41.274197, 35.333092, 35.934990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520287, 35.284203, 35.440659>,  <40.751881, 34.926987, 36.163605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520287, 35.284203, 35.440659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.914902, 35.246174, 35.493870>,  <41.151672, 35.223358, 35.525795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.914902, 35.246174, 35.493870>,  <40.520287, 35.284203, 35.440659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914902, 35.246174, 35.493870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046317, -0.617768, -0.784995,
		0.156811, 0.780592, -0.605050,
		0.986542, -0.095072, 0.133028,
		41.210865, 35.217651, 35.533779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711575, 35.238205, 34.769012>,  <40.520287, 35.284203, 35.440659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711575, 35.238205, 34.769012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044281, 35.116592, 34.954796>,  <41.243904, 35.043625, 35.066265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044281, 35.116592, 34.954796>,  <40.711575, 35.238205, 34.769012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044281, 35.116592, 34.954796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214822, -0.595198, -0.774333,
		0.511868, 0.743843, -0.429754,
		0.831771, -0.304036, 0.464457,
		41.293812, 35.025383, 35.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151108, 35.245464, 34.261951>,  <40.711575, 35.238205, 34.769012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151108, 35.245464, 34.261951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.317348, 35.011097, 34.540226>,  <41.417091, 34.870476, 34.707191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.317348, 35.011097, 34.540226>,  <41.151108, 35.245464, 34.261951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317348, 35.011097, 34.540226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304118, -0.631331, -0.713396,
		0.857198, 0.508058, -0.084194,
		0.415601, -0.585916, 0.695685,
		41.442028, 34.835323, 34.748932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640293, 34.878994, 33.875923>,  <41.151108, 35.245464, 34.261951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640293, 34.878994, 33.875923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.587055, 34.652634, 34.201389>,  <41.555115, 34.516819, 34.396667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.587055, 34.652634, 34.201389>,  <41.640293, 34.878994, 33.875923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587055, 34.652634, 34.201389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204572, -0.818972, -0.536131,
		0.969761, 0.095098, 0.224764,
		-0.133091, -0.565899, 0.813662,
		41.547127, 34.482864, 34.445488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243553, 34.497936, 33.946465>,  <41.640293, 34.878994, 33.875923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243553, 34.497936, 33.946465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.973721, 34.288712, 34.154827>,  <41.811821, 34.163177, 34.279846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.973721, 34.288712, 34.154827>,  <42.243553, 34.497936, 33.946465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973721, 34.288712, 34.154827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225666, -0.817986, -0.529126,
		0.702861, -0.239389, 0.669836,
		-0.674583, -0.523061, 0.520908,
		41.771347, 34.131794, 34.311100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533096, 33.880348, 33.918350>,  <42.243553, 34.497936, 33.946465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533096, 33.880348, 33.918350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.166859, 33.772385, 34.037571>,  <41.947117, 33.707607, 34.109104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.166859, 33.772385, 34.037571>,  <42.533096, 33.880348, 33.918350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166859, 33.772385, 34.037571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053397, -0.816283, -0.575178,
		0.398544, -0.510715, 0.761796,
		-0.915594, -0.269911, 0.298054,
		41.892181, 33.691410, 34.126987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628239, 33.091949, 33.972439>,  <42.533096, 33.880348, 33.918350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628239, 33.091949, 33.972439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239681, 33.177914, 34.012840>,  <42.006546, 33.229492, 34.037083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239681, 33.177914, 34.012840>,  <42.628239, 33.091949, 33.972439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239681, 33.177914, 34.012840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236476, -0.836861, -0.493702,
		-0.021574, -0.503466, 0.863746,
		-0.971398, 0.214907, 0.101003,
		41.948261, 33.242386, 34.043140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305370, 32.344875, 34.158695>,  <42.628239, 33.091949, 33.972439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305370, 32.344875, 34.158695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.027050, 32.589516, 34.008068>,  <41.860058, 32.736301, 33.917690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.027050, 32.589516, 34.008068>,  <42.305370, 32.344875, 34.158695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027050, 32.589516, 34.008068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232871, -0.688078, -0.687256,
		-0.679424, -0.390512, 0.621195,
		-0.695812, 0.611596, -0.376558,
		41.818310, 32.772995, 33.895096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676403, 32.034225, 34.216892>,  <42.305370, 32.344875, 34.158695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676403, 32.034225, 34.216892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.652836, 32.284920, 33.906090>,  <41.638695, 32.435337, 33.719608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.652836, 32.284920, 33.906090>,  <41.676403, 32.034225, 34.216892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652836, 32.284920, 33.906090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352920, -0.741168, -0.571067,
		-0.933797, 0.240571, 0.264858,
		-0.058922, 0.626734, -0.777003,
		41.635159, 32.472939, 33.672989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077396, 31.864729, 33.931179>,  <41.676403, 32.034225, 34.216892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077396, 31.864729, 33.931179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.216160, 32.076088, 33.621227>,  <41.299419, 32.202904, 33.435257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.216160, 32.076088, 33.621227>,  <41.077396, 31.864729, 33.931179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216160, 32.076088, 33.621227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422631, -0.649487, -0.632100,
		-0.837278, 0.546774, -0.001997,
		0.346913, 0.528399, -0.774884,
		41.320232, 32.234608, 33.388763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466801, 31.912437, 33.513676>,  <41.077396, 31.864729, 33.931179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466801, 31.912437, 33.513676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782063, 31.967653, 33.273758>,  <40.971218, 32.000782, 33.129807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782063, 31.967653, 33.273758>,  <40.466801, 31.912437, 33.513676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782063, 31.967653, 33.273758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446201, -0.543087, -0.711310,
		-0.423932, 0.828253, -0.366442,
		0.788154, 0.138040, -0.599799,
		41.018509, 32.009064, 33.093819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197247, 32.197697, 32.789764>,  <40.466801, 31.912437, 33.513676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197247, 32.197697, 32.789764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538643, 31.997482, 32.731781>,  <40.743481, 31.877354, 32.696991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538643, 31.997482, 32.731781>,  <40.197247, 32.197697, 32.789764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538643, 31.997482, 32.731781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431965, -0.523976, -0.734068,
		0.291470, 0.689140, -0.663423,
		0.853493, -0.500535, -0.144962,
		40.794689, 31.847322, 32.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310501, 32.150040, 32.086281>,  <40.197247, 32.197697, 32.789764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310501, 32.150040, 32.086281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532108, 31.861738, 32.252934>,  <40.665073, 31.688759, 32.352924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532108, 31.861738, 32.252934>,  <40.310501, 32.150040, 32.086281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532108, 31.861738, 32.252934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416413, -0.673268, -0.610992,
		0.720877, 0.165011, -0.673133,
		0.554020, -0.720751, 0.416631,
		40.698315, 31.645514, 32.377922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378029, 31.817997, 31.562548>,  <40.310501, 32.150040, 32.086281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378029, 31.817997, 31.562548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475620, 31.545702, 31.838829>,  <40.534176, 31.382326, 32.004597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475620, 31.545702, 31.838829>,  <40.378029, 31.817997, 31.562548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475620, 31.545702, 31.838829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469458, -0.706118, -0.530100,
		0.848578, -0.194926, -0.491853,
		0.243976, -0.680736, 0.690706,
		40.548813, 31.341480, 32.046040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764065, 31.400331, 31.217762>,  <40.378029, 31.817997, 31.562548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764065, 31.400331, 31.217762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642998, 31.180248, 31.529060>,  <40.570358, 31.048199, 31.715839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642998, 31.180248, 31.529060>,  <40.764065, 31.400331, 31.217762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642998, 31.180248, 31.529060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235285, -0.748139, -0.620426,
		0.923599, -0.370890, 0.096979,
		-0.302664, -0.550207, 0.778246,
		40.552200, 31.015186, 31.762535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197426, 30.878664, 31.382675>,  <40.764065, 31.400331, 31.217762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197426, 30.878664, 31.382675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853069, 30.732096, 31.523874>,  <40.646458, 30.644154, 31.608593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853069, 30.732096, 31.523874>,  <41.197426, 30.878664, 31.382675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853069, 30.732096, 31.523874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014490, -0.675853, -0.736894,
		0.508589, -0.639498, 0.576523,
		-0.860887, -0.366423, 0.352998,
		40.594803, 30.622169, 31.629774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227386, 30.189703, 31.394608>,  <41.197426, 30.878664, 31.382675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227386, 30.189703, 31.394608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.831322, 30.241777, 31.415094>,  <40.593681, 30.273022, 31.427387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.831322, 30.241777, 31.415094>,  <41.227386, 30.189703, 31.394608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831322, 30.241777, 31.415094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127888, -0.693865, -0.708658,
		-0.056720, -0.708239, 0.703690,
		-0.990166, 0.130188, 0.051219,
		40.534271, 30.280834, 31.430460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.020367, 28.918224, 31.899611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891678, 29.272980, 31.766993>,  <39.814465, 29.485834, 31.687422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891678, 29.272980, 31.766993>,  <40.020367, 28.918224, 31.899611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891678, 29.272980, 31.766993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564620, -0.460794, -0.684743,
		-0.760067, -0.033096, 0.649002,
		-0.321719, 0.886890, -0.331547,
		39.795162, 29.539047, 31.667528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302608, 28.921507, 31.787947>,  <40.020367, 28.918224, 31.899611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302608, 28.921507, 31.787947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.403336, 29.216967, 31.537832>,  <39.463772, 29.394243, 31.387764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.403336, 29.216967, 31.537832>,  <39.302608, 28.921507, 31.787947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403336, 29.216967, 31.537832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726743, -0.282342, -0.626201,
		-0.639089, 0.612110, 0.465711,
		0.251815, 0.738650, -0.625288,
		39.478882, 29.438562, 31.350246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700069, 29.194174, 31.587744>,  <39.302608, 28.921507, 31.787947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700069, 29.194174, 31.587744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983707, 29.263905, 31.314457>,  <39.153893, 29.305742, 31.150484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983707, 29.263905, 31.314457>,  <38.700069, 29.194174, 31.587744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983707, 29.263905, 31.314457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602962, -0.352398, -0.715718,
		-0.365534, 0.919470, -0.144773,
		0.709099, 0.174327, -0.683219,
		39.196438, 29.316202, 31.109491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243397, 29.251253, 31.032106>,  <38.700069, 29.194174, 31.587744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243397, 29.251253, 31.032106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612698, 29.224413, 30.880789>,  <38.834278, 29.208309, 30.789999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612698, 29.224413, 30.880789>,  <38.243397, 29.251253, 31.032106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612698, 29.224413, 30.880789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373518, -0.387317, -0.842894,
		-0.089961, 0.919501, -0.382654,
		0.923251, -0.067101, -0.378293,
		38.889671, 29.204283, 30.767302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277603, 29.622393, 30.356625>,  <38.243397, 29.251253, 31.032106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277603, 29.622393, 30.356625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547100, 29.330973, 30.406086>,  <38.708797, 29.156120, 30.435762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547100, 29.330973, 30.406086>,  <38.277603, 29.622393, 30.356625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547100, 29.330973, 30.406086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386428, -0.489981, -0.781403,
		0.629877, 0.478681, -0.611652,
		0.673742, -0.728548, 0.123652,
		38.749222, 29.112408, 30.443182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517735, 29.556732, 29.655209>,  <38.277603, 29.622393, 30.356625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517735, 29.556732, 29.655209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647537, 29.233297, 29.851528>,  <38.725418, 29.039236, 29.969320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647537, 29.233297, 29.851528>,  <38.517735, 29.556732, 29.655209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647537, 29.233297, 29.851528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185483, -0.563201, -0.805233,
		0.927519, 0.170270, -0.332742,
		0.324508, -0.808587, 0.490797,
		38.744888, 28.990721, 29.998768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872601, 29.162159, 29.145613>,  <38.517735, 29.556732, 29.655209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872601, 29.162159, 29.145613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778587, 28.888395, 29.421682>,  <38.722179, 28.724136, 29.587324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778587, 28.888395, 29.421682>,  <38.872601, 29.162159, 29.145613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778587, 28.888395, 29.421682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142290, -0.678188, -0.720982,
		0.961515, -0.267661, 0.062014,
		-0.235036, -0.684412, 0.690173,
		38.708076, 28.683071, 29.628735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203598, 28.602114, 29.004364>,  <38.872601, 29.162159, 29.145613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203598, 28.602114, 29.004364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923107, 28.443415, 29.241301>,  <38.754810, 28.348196, 29.383463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923107, 28.443415, 29.241301>,  <39.203598, 28.602114, 29.004364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923107, 28.443415, 29.241301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193553, -0.693703, -0.693768,
		0.686159, -0.601140, 0.409653,
		-0.701229, -0.396746, 0.592343,
		38.712738, 28.324390, 29.419004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213154, 27.874729, 28.830311>,  <39.203598, 28.602114, 29.004364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213154, 27.874729, 28.830311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865749, 27.911579, 29.025127>,  <38.657307, 27.933689, 29.142017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865749, 27.911579, 29.025127>,  <39.213154, 27.874729, 28.830311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865749, 27.911579, 29.025127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454001, -0.542212, -0.707029,
		0.198942, -0.835176, 0.512740,
		-0.868508, 0.092126, 0.487039,
		38.605198, 27.939217, 29.171240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905499, 27.212070, 28.820139>,  <39.213154, 27.874729, 28.830311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905499, 27.212070, 28.820139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.603661, 27.470720, 28.864803>,  <38.422558, 27.625910, 28.891602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.603661, 27.470720, 28.864803>,  <38.905499, 27.212070, 28.820139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603661, 27.470720, 28.864803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535382, -0.508295, -0.674539,
		-0.379416, -0.568784, 0.729746,
		-0.754593, 0.646623, 0.111661,
		38.377281, 27.664707, 28.898302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404999, 26.772774, 28.709211>,  <38.905499, 27.212070, 28.820139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404999, 26.772774, 28.709211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234352, 27.132738, 28.673067>,  <38.131966, 27.348717, 28.651381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234352, 27.132738, 28.673067>,  <38.404999, 26.772774, 28.709211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234352, 27.132738, 28.673067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558994, -0.340893, -0.755855,
		-0.711005, -0.271946, 0.648474,
		-0.426612, 0.899910, -0.090360,
		38.106369, 27.402712, 28.645960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617619, 26.665707, 28.687035>,  <38.404999, 26.772774, 28.709211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617619, 26.665707, 28.687035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702965, 27.018709, 28.519390>,  <37.754173, 27.230511, 28.418802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702965, 27.018709, 28.519390>,  <37.617619, 26.665707, 28.687035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702965, 27.018709, 28.519390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585804, -0.227753, -0.777793,
		-0.781863, 0.411472, 0.468382,
		0.213365, 0.882507, -0.419113,
		37.766975, 27.283461, 28.393656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000889, 26.908249, 28.529528>,  <37.617619, 26.665707, 28.687035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000889, 26.908249, 28.529528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266056, 27.076044, 28.281473>,  <37.425156, 27.176722, 28.132641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266056, 27.076044, 28.281473>,  <37.000889, 26.908249, 28.529528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266056, 27.076044, 28.281473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625314, -0.145287, -0.766729,
		-0.411732, 0.896058, 0.165999,
		0.662917, 0.419489, -0.620137,
		37.464931, 27.201891, 28.095432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551430, 27.118414, 27.967293>,  <37.000889, 26.908249, 28.529528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551430, 27.118414, 27.967293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898674, 27.196663, 27.784811>,  <37.107021, 27.243612, 27.675322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898674, 27.196663, 27.784811>,  <36.551430, 27.118414, 27.967293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898674, 27.196663, 27.784811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465253, 0.000346, -0.885178,
		-0.173001, 0.980680, 0.091313,
		0.868107, 0.195620, -0.456205,
		37.159107, 27.255348, 27.647949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421833, 27.658445, 27.459698>,  <36.551430, 27.118414, 27.967293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421833, 27.658445, 27.459698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751228, 27.461435, 27.347069>,  <36.948868, 27.343229, 27.279491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751228, 27.461435, 27.347069>,  <36.421833, 27.658445, 27.459698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751228, 27.461435, 27.347069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380776, -0.111913, -0.917870,
		0.420564, 0.863072, -0.279702,
		0.823490, -0.492526, -0.281570,
		36.998276, 27.313677, 27.262598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731964, 27.953148, 26.710249>,  <36.421833, 27.658445, 27.459698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731964, 27.953148, 26.710249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855423, 27.576372, 26.763144>,  <36.929497, 27.350307, 26.794880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855423, 27.576372, 26.763144>,  <36.731964, 27.953148, 26.710249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855423, 27.576372, 26.763144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314927, -0.232381, -0.920228,
		0.897529, 0.242379, -0.368366,
		0.308646, -0.941940, 0.132237,
		36.948017, 27.293791, 26.802814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097130, 27.832191, 26.039400>,  <36.731964, 27.953148, 26.710249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097130, 27.832191, 26.039400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.023426, 27.476910, 26.207752>,  <36.979206, 27.263741, 26.308764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.023426, 27.476910, 26.207752>,  <37.097130, 27.832191, 26.039400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023426, 27.476910, 26.207752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390651, -0.326756, -0.860594,
		0.901910, -0.322987, -0.286771,
		-0.184256, -0.888206, 0.420880,
		36.968147, 27.210447, 26.334017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403259, 27.361868, 25.665623>,  <37.097130, 27.832191, 26.039400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403259, 27.361868, 25.665623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130791, 27.133799, 25.849319>,  <36.967308, 26.996956, 25.959538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130791, 27.133799, 25.849319>,  <37.403259, 27.361868, 25.665623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130791, 27.133799, 25.849319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233503, -0.425320, -0.874402,
		0.693886, -0.702855, 0.156580,
		-0.681174, -0.570174, 0.459242,
		36.926437, 26.962746, 25.987093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474403, 26.702652, 25.394983>,  <37.403259, 27.361868, 25.665623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474403, 26.702652, 25.394983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110935, 26.679970, 25.560444>,  <36.892857, 26.666361, 25.659719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110935, 26.679970, 25.560444>,  <37.474403, 26.702652, 25.394983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110935, 26.679970, 25.560444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360107, -0.394932, -0.845193,
		0.211292, -0.916959, 0.338441,
		-0.908668, -0.056707, 0.413650,
		36.838333, 26.662958, 25.684538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234413, 25.937281, 25.257713>,  <37.474403, 26.702652, 25.394983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234413, 25.937281, 25.257713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930569, 26.184900, 25.337486>,  <36.748264, 26.333471, 25.385351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930569, 26.184900, 25.337486>,  <37.234413, 25.937281, 25.257713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930569, 26.184900, 25.337486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425172, -0.240611, -0.872545,
		-0.492162, -0.747586, 0.445972,
		-0.759608, 0.619048, 0.199433,
		36.702686, 26.370615, 25.397316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762703, 25.496496, 25.223593>,  <37.234413, 25.937281, 25.257713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762703, 25.496496, 25.223593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579933, 25.851608, 25.201427>,  <36.470272, 26.064674, 25.188129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579933, 25.851608, 25.201427>,  <36.762703, 25.496496, 25.223593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579933, 25.851608, 25.201427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346045, -0.234799, -0.908363,
		-0.819436, -0.395875, 0.414496,
		-0.456921, 0.887779, -0.055412,
		36.442856, 26.117943, 25.184803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085831, 25.350546, 25.009617>,  <36.762703, 25.496496, 25.223593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085831, 25.350546, 25.009617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191792, 25.725891, 24.920803>,  <36.255367, 25.951099, 24.867516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191792, 25.725891, 24.920803>,  <36.085831, 25.350546, 25.009617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191792, 25.725891, 24.920803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251625, -0.155014, -0.955330,
		-0.930866, 0.308938, 0.195053,
		0.264902, 0.938365, -0.222034,
		36.271263, 26.007401, 24.854193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513706, 25.685970, 24.704988>,  <36.085831, 25.350546, 25.009617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513706, 25.685970, 24.704988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881733, 25.716570, 24.551300>,  <36.102551, 25.734930, 24.459087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881733, 25.716570, 24.551300>,  <35.513706, 25.685970, 24.704988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881733, 25.716570, 24.551300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288077, -0.532545, -0.795869,
		-0.265496, 0.842937, -0.467940,
		0.920067, 0.076497, -0.384219,
		36.157753, 25.739519, 24.436033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767513, 25.345831, 24.779760>,  <35.513706, 25.685970, 24.704988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767513, 25.345831, 24.779760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423431, 25.318254, 24.981865>,  <34.216980, 25.301708, 25.103127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423431, 25.318254, 24.981865>,  <34.767513, 25.345831, 24.779760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423431, 25.318254, 24.981865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455957, 0.339703, 0.822621,
		-0.228350, 0.938003, -0.260782,
		-0.860209, -0.068940, 0.505260,
		34.165367, 25.297573, 25.133444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033646, 25.620714, 25.432665>,  <34.767513, 25.345831, 24.779760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033646, 25.620714, 25.432665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.637409, 25.606283, 25.485474>,  <34.399666, 25.597624, 25.517159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.637409, 25.606283, 25.485474>,  <35.033646, 25.620714, 25.432665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637409, 25.606283, 25.485474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100735, 0.460795, 0.881771,
		-0.092647, 0.886773, -0.452824,
		-0.990590, -0.036078, 0.132021,
		34.340233, 25.595459, 25.525080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779739, 26.282766, 25.604105>,  <35.033646, 25.620714, 25.432665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779739, 26.282766, 25.604105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534725, 26.013172, 25.769295>,  <34.387718, 25.851416, 25.868408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534725, 26.013172, 25.769295>,  <34.779739, 26.282766, 25.604105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534725, 26.013172, 25.769295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020292, 0.508878, 0.860599,
		-0.790183, 0.535527, -0.298029,
		-0.612534, -0.673984, 0.412974,
		34.350964, 25.810978, 25.893187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428226, 26.679161, 26.041214>,  <34.779739, 26.282766, 25.604105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428226, 26.679161, 26.041214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367756, 26.306782, 26.174170>,  <34.331474, 26.083355, 26.253942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367756, 26.306782, 26.174170>,  <34.428226, 26.679161, 26.041214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367756, 26.306782, 26.174170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002783, 0.335849, 0.941912,
		-0.988503, 0.143320, -0.048182,
		-0.151177, -0.930948, 0.332387,
		34.322403, 26.027498, 26.273886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018044, 26.802773, 26.550966>,  <34.428226, 26.679161, 26.041214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018044, 26.802773, 26.550966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148296, 26.429848, 26.613899>,  <34.226448, 26.206093, 26.651659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148296, 26.429848, 26.613899>,  <34.018044, 26.802773, 26.550966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148296, 26.429848, 26.613899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098793, 0.199044, 0.974998,
		-0.940320, -0.301950, 0.156922,
		0.325635, -0.932313, 0.157335,
		34.245987, 26.150154, 26.661100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650887, 26.633497, 26.988436>,  <34.018044, 26.802773, 26.550966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650887, 26.633497, 26.988436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966942, 26.393776, 27.039846>,  <34.156574, 26.249943, 27.070694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966942, 26.393776, 27.039846>,  <33.650887, 26.633497, 26.988436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966942, 26.393776, 27.039846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037637, 0.256739, 0.965748,
		-0.611776, -0.758234, 0.225414,
		0.790135, -0.599305, 0.128529,
		34.203983, 26.213984, 27.078405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626362, 26.338903, 27.663239>,  <33.650887, 26.633497, 26.988436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626362, 26.338903, 27.663239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011360, 26.261766, 27.586906>,  <34.242359, 26.215485, 27.541107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011360, 26.261766, 27.586906>,  <33.626362, 26.338903, 27.663239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011360, 26.261766, 27.586906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232475, 0.223632, 0.946543,
		-0.139857, -0.955406, 0.260075,
		0.962494, -0.192842, -0.190831,
		34.300110, 26.203915, 27.529657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838402, 26.076588, 28.304367>,  <33.626362, 26.338903, 27.663239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838402, 26.076588, 28.304367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146446, 26.217455, 28.091610>,  <34.331272, 26.301975, 27.963955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146446, 26.217455, 28.091610>,  <33.838402, 26.076588, 28.304367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146446, 26.217455, 28.091610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418354, 0.350634, 0.837875,
		0.481575, -0.867774, 0.122694,
		0.770107, 0.352170, -0.531894,
		34.377480, 26.323107, 27.932041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431293, 25.914066, 28.754721>,  <33.838402, 26.076588, 28.304367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431293, 25.914066, 28.754721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543663, 26.196051, 28.494225>,  <34.611084, 26.365240, 28.337927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543663, 26.196051, 28.494225>,  <34.431293, 25.914066, 28.754721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543663, 26.196051, 28.494225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633907, 0.373190, 0.677415,
		0.720587, -0.603126, -0.342042,
		0.280920, 0.704960, -0.651241,
		34.627937, 26.407539, 28.298853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135307, 25.910942, 28.826485>,  <34.431293, 25.914066, 28.754721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135307, 25.910942, 28.826485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038162, 26.256395, 28.649778>,  <34.979874, 26.463667, 28.543755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038162, 26.256395, 28.649778>,  <35.135307, 25.910942, 28.826485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038162, 26.256395, 28.649778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621330, 0.488215, 0.612859,
		0.744960, -0.125639, -0.655171,
		-0.242865, 0.863633, -0.441764,
		34.965302, 26.515486, 28.517250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798462, 26.306328, 28.637196>,  <35.135307, 25.910942, 28.826485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798462, 26.306328, 28.637196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516716, 26.585529, 28.688837>,  <35.347668, 26.753050, 28.719822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516716, 26.585529, 28.688837>,  <35.798462, 26.306328, 28.637196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516716, 26.585529, 28.688837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556581, 0.430189, 0.710743,
		0.440562, 0.572476, -0.691503,
		-0.704360, 0.698004, 0.129104,
		35.305408, 26.794930, 28.727568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177460, 26.890913, 28.673023>,  <35.798462, 26.306328, 28.637196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177460, 26.890913, 28.673023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822479, 27.011753, 28.812256>,  <35.609489, 27.084257, 28.895796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822479, 27.011753, 28.812256>,  <36.177460, 26.890913, 28.673023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822479, 27.011753, 28.812256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460846, 0.570526, 0.679795,
		0.006775, 0.763700, -0.645536,
		-0.887454, 0.302098, 0.348082,
		35.556244, 27.102383, 28.916681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316265, 27.637688, 28.837648>,  <36.177460, 26.890913, 28.673023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316265, 27.637688, 28.837648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988907, 27.536854, 29.044212>,  <35.792492, 27.476353, 29.168150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988907, 27.536854, 29.044212>,  <36.316265, 27.637688, 28.837648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988907, 27.536854, 29.044212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293214, 0.589679, 0.752532,
		-0.494219, 0.767288, -0.408676,
		-0.818397, -0.252086, 0.516410,
		35.743389, 27.461227, 29.199135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180420, 28.109009, 29.257175>,  <36.316265, 27.637688, 28.837648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180420, 28.109009, 29.257175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927708, 27.858856, 29.440367>,  <35.776081, 27.708765, 29.550282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927708, 27.858856, 29.440367>,  <36.180420, 28.109009, 29.257175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927708, 27.858856, 29.440367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177588, 0.458337, 0.870856,
		-0.754527, 0.631524, -0.178509,
		-0.631784, -0.625383, 0.457979,
		35.738171, 27.671242, 29.577761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780384, 28.575598, 29.664364>,  <36.180420, 28.109009, 29.257175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780384, 28.575598, 29.664364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792187, 28.207315, 29.820019>,  <35.799267, 27.986345, 29.913412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792187, 28.207315, 29.820019>,  <35.780384, 28.575598, 29.664364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792187, 28.207315, 29.820019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179055, 0.387878, 0.904152,
		-0.983397, 0.043003, 0.176300,
		0.029502, -0.920707, 0.389138,
		35.801037, 27.931103, 29.936760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381393, 28.600542, 30.309134>,  <35.780384, 28.575598, 29.664364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381393, 28.600542, 30.309134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651257, 28.305309, 30.312571>,  <35.813175, 28.128170, 30.314632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651257, 28.305309, 30.312571>,  <35.381393, 28.600542, 30.309134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651257, 28.305309, 30.312571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310494, 0.294333, 0.903859,
		-0.669653, -0.607124, 0.427744,
		0.674654, -0.738084, 0.008593,
		35.853653, 28.083883, 30.315149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224972, 28.361313, 30.933680>,  <35.381393, 28.600542, 30.309134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224972, 28.361313, 30.933680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574780, 28.200430, 30.825279>,  <35.784664, 28.103901, 30.760239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574780, 28.200430, 30.825279>,  <35.224972, 28.361313, 30.933680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574780, 28.200430, 30.825279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375061, 0.206612, 0.903682,
		-0.307473, -0.891932, 0.331538,
		0.874522, -0.402205, -0.271001,
		35.837135, 28.079769, 30.743979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515667, 27.934654, 31.543617>,  <35.224972, 28.361313, 30.933680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515667, 27.934654, 31.543617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833569, 28.004896, 31.311226>,  <36.024307, 28.047043, 31.171791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833569, 28.004896, 31.311226>,  <35.515667, 27.934654, 31.543617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833569, 28.004896, 31.311226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585392, 0.030992, 0.810158,
		0.160275, -0.983972, -0.078168,
		0.794751, 0.175607, -0.580976,
		36.071995, 28.057579, 31.136932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113705, 27.535980, 31.899935>,  <35.515667, 27.934654, 31.543617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113705, 27.535980, 31.899935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289307, 27.795025, 31.650816>,  <36.394669, 27.950451, 31.501345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289307, 27.795025, 31.650816>,  <36.113705, 27.535980, 31.899935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289307, 27.795025, 31.650816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392191, 0.485520, 0.781317,
		0.808369, -0.587257, -0.040842,
		0.439004, 0.647611, -0.622797,
		36.421009, 27.989307, 31.463978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823444, 27.613232, 32.131199>,  <36.113705, 27.535980, 31.899935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823444, 27.613232, 32.131199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768723, 27.941523, 31.909321>,  <36.735889, 28.138496, 31.776194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768723, 27.941523, 31.909321>,  <36.823444, 27.613232, 32.131199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768723, 27.941523, 31.909321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401601, 0.557835, 0.726318,
		0.905539, -0.123402, -0.405920,
		-0.136807, 0.820727, -0.554700,
		36.727680, 28.187740, 31.742910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567078, 27.961567, 32.112522>,  <36.823444, 27.613232, 32.131199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567078, 27.961567, 32.112522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234425, 28.176704, 32.057220>,  <37.034832, 28.305788, 32.024040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234425, 28.176704, 32.057220>,  <37.567078, 27.961567, 32.112522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234425, 28.176704, 32.057220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303959, 0.649216, 0.697228,
		0.464759, 0.537811, -0.703390,
		-0.831629, 0.537845, -0.138256,
		36.984936, 28.338058, 32.015743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.035362, 32.141941, 32.322151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717892, 32.119381, 32.564438>,  <41.527409, 32.105843, 32.709812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717892, 32.119381, 32.564438>,  <42.035362, 32.141941, 32.322151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717892, 32.119381, 32.564438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461388, 0.593130, 0.659786,
		-0.396485, 0.803129, -0.444729,
		-0.793675, -0.056403, 0.605721,
		41.479790, 32.102459, 32.746155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876183, 32.822712, 32.429588>,  <42.035362, 32.141941, 32.322151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876183, 32.822712, 32.429588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696377, 32.633854, 32.732910>,  <41.588493, 32.520538, 32.914902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696377, 32.633854, 32.732910>,  <41.876183, 32.822712, 32.429588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696377, 32.633854, 32.732910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292961, 0.724028, 0.624466,
		-0.843868, 0.502857, -0.187139,
		-0.449511, -0.472143, 0.758301,
		41.561523, 32.492210, 32.960400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496304, 33.369869, 32.775444>,  <41.876183, 32.822712, 32.429588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496304, 33.369869, 32.775444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505951, 33.073711, 33.044140>,  <41.511738, 32.896019, 33.205357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505951, 33.073711, 33.044140>,  <41.496304, 33.369869, 32.775444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505951, 33.073711, 33.044140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065680, 0.671660, 0.737943,
		-0.997549, 0.026323, 0.064827,
		0.024117, -0.740392, 0.671742,
		41.513187, 32.851593, 33.245663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945076, 33.593887, 33.325123>,  <41.496304, 33.369869, 32.775444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945076, 33.593887, 33.325123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211903, 33.340057, 33.481247>,  <41.371998, 33.187759, 33.574921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211903, 33.340057, 33.481247>,  <40.945076, 33.593887, 33.325123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211903, 33.340057, 33.481247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027203, 0.544300, 0.838450,
		-0.744501, -0.548684, 0.380346,
		0.667067, -0.634574, 0.390306,
		41.412022, 33.149685, 33.598339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666248, 33.244781, 33.978722>,  <40.945076, 33.593887, 33.325123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666248, 33.244781, 33.978722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.064964, 33.276787, 33.978485>,  <41.304195, 33.295990, 33.978344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.064964, 33.276787, 33.978485>,  <40.666248, 33.244781, 33.978722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064964, 33.276787, 33.978485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051297, 0.644663, 0.762744,
		0.061408, -0.760268, 0.646701,
		0.996794, 0.080012, -0.000588,
		41.364002, 33.300789, 33.978310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660194, 33.508869, 34.515324>,  <40.666248, 33.244781, 33.978722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660194, 33.508869, 34.515324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042824, 33.524029, 34.399715>,  <41.272400, 33.533123, 34.330353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042824, 33.524029, 34.399715>,  <40.660194, 33.508869, 34.515324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042824, 33.524029, 34.399715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163789, 0.750300, 0.640487,
		0.241122, -0.660010, 0.711510,
		0.956574, 0.037898, -0.289017,
		41.329796, 33.535397, 34.313011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953987, 33.487751, 35.046745>,  <40.660194, 33.508869, 34.515324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953987, 33.487751, 35.046745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.190395, 33.690025, 34.795357>,  <41.332241, 33.811390, 34.644524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.190395, 33.690025, 34.795357>,  <40.953987, 33.487751, 35.046745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190395, 33.690025, 34.795357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079236, 0.738942, 0.669094,
		0.802754, -0.445248, 0.396663,
		0.591023, 0.505688, -0.628468,
		41.367702, 33.841732, 34.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335789, 33.811016, 35.498543>,  <40.953987, 33.487751, 35.046745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335789, 33.811016, 35.498543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414085, 34.012894, 35.162216>,  <41.461063, 34.134022, 34.960423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414085, 34.012894, 35.162216>,  <41.335789, 33.811016, 35.498543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414085, 34.012894, 35.162216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065106, 0.848818, 0.524661,
		0.978492, -0.157440, 0.133290,
		0.195742, 0.504699, -0.840812,
		41.472809, 34.164303, 34.909973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930859, 33.994427, 35.623119>,  <41.335789, 33.811016, 35.498543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930859, 33.994427, 35.623119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765099, 34.245369, 35.359394>,  <41.665642, 34.395935, 35.201160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765099, 34.245369, 35.359394>,  <41.930859, 33.994427, 35.623119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765099, 34.245369, 35.359394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138610, 0.759501, 0.635566,
		0.899475, 0.171994, -0.401699,
		-0.414405, 0.627356, -0.659313,
		41.640778, 34.433575, 35.161602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239033, 34.557606, 35.824593>,  <41.930859, 33.994427, 35.623119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239033, 34.557606, 35.824593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.956978, 34.702393, 35.580704>,  <41.787746, 34.789265, 35.434372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.956978, 34.702393, 35.580704>,  <42.239033, 34.557606, 35.824593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956978, 34.702393, 35.580704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069451, 0.820496, 0.567418,
		0.705663, 0.442453, -0.553421,
		-0.705135, 0.361971, -0.609723,
		41.745438, 34.810986, 35.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512566, 35.249992, 35.655403>,  <42.239033, 34.557606, 35.824593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512566, 35.249992, 35.655403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115734, 35.224545, 35.612087>,  <41.877636, 35.209278, 35.586098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115734, 35.224545, 35.612087>,  <42.512566, 35.249992, 35.655403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115734, 35.224545, 35.612087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112400, 0.834458, 0.539487,
		0.056046, 0.547387, -0.835001,
		-0.992081, -0.063618, -0.108294,
		41.818111, 35.205460, 35.579597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400097, 35.972290, 35.541893>,  <42.512566, 35.249992, 35.655403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400097, 35.972290, 35.541893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063564, 35.788074, 35.655083>,  <41.861645, 35.677547, 35.722996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063564, 35.788074, 35.655083>,  <42.400097, 35.972290, 35.541893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063564, 35.788074, 35.655083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191465, 0.743483, 0.640760,
		-0.505478, 0.484911, -0.713690,
		-0.841328, -0.460537, 0.282971,
		41.811165, 35.649914, 35.739975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042133, 36.508282, 35.768677>,  <42.400097, 35.972290, 35.541893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042133, 36.508282, 35.768677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811478, 36.208927, 35.899769>,  <41.673084, 36.029316, 35.978424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811478, 36.208927, 35.899769>,  <42.042133, 36.508282, 35.768677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811478, 36.208927, 35.899769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220241, 0.528683, 0.819749,
		-0.786750, 0.400524, -0.469686,
		-0.576644, -0.748382, 0.327729,
		41.638485, 35.984413, 35.998089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222305, 36.627094, 35.932056>,  <42.042133, 36.508282, 35.768677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222305, 36.627094, 35.932056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377628, 36.335613, 36.157696>,  <41.470821, 36.160725, 36.293079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377628, 36.335613, 36.157696>,  <41.222305, 36.627094, 35.932056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377628, 36.335613, 36.157696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193624, 0.533949, 0.823048,
		-0.900958, -0.428820, 0.066243,
		0.388310, -0.728706, 0.564095,
		41.494122, 36.117001, 36.326923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496338, 36.780853, 36.303043>,  <41.222305, 36.627094, 35.932056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496338, 36.780853, 36.303043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514935, 37.166531, 36.198612>,  <40.526093, 37.397938, 36.135952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514935, 37.166531, 36.198612>,  <40.496338, 36.780853, 36.303043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514935, 37.166531, 36.198612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460279, -0.211287, -0.862265,
		-0.886556, 0.160256, 0.433977,
		0.046490, 0.964197, -0.261080,
		40.528881, 37.455791, 36.120289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808895, 36.870186, 35.969120>,  <40.496338, 36.780853, 36.303043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808895, 36.870186, 35.969120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079590, 37.140816, 35.853004>,  <40.242008, 37.303192, 35.783337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079590, 37.140816, 35.853004>,  <39.808895, 36.870186, 35.969120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079590, 37.140816, 35.853004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236202, -0.173920, -0.956013,
		-0.697302, 0.715540, 0.042110,
		0.676741, 0.676576, -0.290287,
		40.282612, 37.343788, 35.765919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482231, 37.289852, 35.482170>,  <39.808895, 36.870186, 35.969120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482231, 37.289852, 35.482170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869263, 37.358143, 35.407715>,  <40.101482, 37.399117, 35.363041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869263, 37.358143, 35.407715>,  <39.482231, 37.289852, 35.482170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869263, 37.358143, 35.407715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172199, -0.093242, -0.980639,
		-0.184779, 0.980896, -0.060820,
		0.967576, 0.170729, -0.186139,
		40.159534, 37.409363, 35.351871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374241, 37.641922, 34.886662>,  <39.482231, 37.289852, 35.482170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374241, 37.641922, 34.886662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759907, 37.537060, 34.902962>,  <39.991306, 37.474144, 34.912743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759907, 37.537060, 34.902962>,  <39.374241, 37.641922, 34.886662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759907, 37.537060, 34.902962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022824, -0.234993, -0.971729,
		0.264320, 0.935977, -0.232555,
		0.964165, -0.262155, 0.040750,
		40.049156, 37.458412, 34.915188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736565, 38.080597, 34.493305>,  <39.374241, 37.641922, 34.886662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736565, 38.080597, 34.493305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965771, 37.753208, 34.510059>,  <40.103294, 37.556774, 34.520111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965771, 37.753208, 34.510059>,  <39.736565, 38.080597, 34.493305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965771, 37.753208, 34.510059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134666, -0.144443, -0.980307,
		0.808402, 0.556094, -0.192989,
		0.573019, -0.818471, 0.041881,
		40.137676, 37.507668, 34.522625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233547, 38.116531, 33.976452>,  <39.736565, 38.080597, 34.493305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233547, 38.116531, 33.976452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252209, 37.722229, 34.041092>,  <40.263405, 37.485649, 34.079876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252209, 37.722229, 34.041092>,  <40.233547, 38.116531, 33.976452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252209, 37.722229, 34.041092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001284, -0.161715, -0.986837,
		0.998910, 0.046249, -0.006280,
		0.046656, -0.985753, 0.161598,
		40.266205, 37.426502, 34.089573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756832, 37.813210, 33.571190>,  <40.233547, 38.116531, 33.976452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756832, 37.813210, 33.571190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513313, 37.505554, 33.648960>,  <40.367203, 37.320961, 33.695621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513313, 37.505554, 33.648960>,  <40.756832, 37.813210, 33.571190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513313, 37.505554, 33.648960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035783, -0.218204, -0.975247,
		0.792520, -0.600683, 0.105319,
		-0.608795, -0.769134, 0.194425,
		40.330673, 37.274815, 33.707287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105206, 37.257435, 33.174782>,  <40.756832, 37.813210, 33.571190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105206, 37.257435, 33.174782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752182, 37.084835, 33.249512>,  <40.540367, 36.981274, 33.294350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752182, 37.084835, 33.249512>,  <41.105206, 37.257435, 33.174782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752182, 37.084835, 33.249512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031233, -0.342639, -0.938948,
		0.469171, -0.834508, 0.288921,
		-0.882555, -0.431503, 0.186821,
		40.487415, 36.955383, 33.305557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175949, 36.507832, 32.874729>,  <41.105206, 37.257435, 33.174782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175949, 36.507832, 32.874729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786766, 36.592220, 32.912350>,  <40.553257, 36.642853, 32.934921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786766, 36.592220, 32.912350>,  <41.175949, 36.507832, 32.874729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786766, 36.592220, 32.912350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176589, -0.416874, -0.891646,
		-0.148906, -0.884141, 0.442856,
		-0.972956, 0.210975, 0.094055,
		40.494881, 36.655514, 32.940567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837536, 35.888477, 32.791107>,  <41.175949, 36.507832, 32.874729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837536, 35.888477, 32.791107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.581287, 36.182991, 32.703941>,  <40.427540, 36.359699, 32.651642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.581287, 36.182991, 32.703941>,  <40.837536, 35.888477, 32.791107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581287, 36.182991, 32.703941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185059, -0.423475, -0.886804,
		-0.745225, -0.527777, 0.407543,
		-0.640619, 0.736288, -0.217914,
		40.389103, 36.403877, 32.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245831, 35.506310, 32.640369>,  <40.837536, 35.888477, 32.791107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245831, 35.506310, 32.640369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.184975, 35.864578, 32.473217>,  <40.148460, 36.079540, 32.372925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.184975, 35.864578, 32.473217>,  <40.245831, 35.506310, 32.640369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184975, 35.864578, 32.473217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350280, -0.444225, -0.824602,
		-0.924206, 0.020921, 0.381320,
		-0.152141, 0.895671, -0.417884,
		40.139332, 36.133278, 32.347851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618958, 35.317707, 32.339825>,  <40.245831, 35.506310, 32.640369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618958, 35.317707, 32.339825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766281, 35.656044, 32.185474>,  <39.854675, 35.859047, 32.092865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766281, 35.656044, 32.185474>,  <39.618958, 35.317707, 32.339825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766281, 35.656044, 32.185474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335064, -0.266392, -0.903752,
		-0.867224, 0.462156, 0.185295,
		0.368314, 0.845841, -0.385873,
		39.876774, 35.909798, 32.069714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095486, 35.488380, 32.002491>,  <39.618958, 35.317707, 32.339825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095486, 35.488380, 32.002491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388527, 35.684380, 31.813520>,  <39.564350, 35.801979, 31.700138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388527, 35.684380, 31.813520>,  <39.095486, 35.488380, 32.002491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388527, 35.684380, 31.813520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354899, -0.317272, -0.879423,
		-0.580807, 0.811934, -0.058533,
		0.732604, 0.490002, -0.472428,
		39.608307, 35.831379, 31.671791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818443, 35.914482, 31.460402>,  <39.095486, 35.488380, 32.002491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818443, 35.914482, 31.460402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198933, 35.881180, 31.341578>,  <39.427227, 35.861198, 31.270283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198933, 35.881180, 31.341578>,  <38.818443, 35.914482, 31.460402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198933, 35.881180, 31.341578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306619, -0.361451, -0.880533,
		-0.034061, 0.928666, -0.369349,
		0.951223, -0.083258, -0.297058,
		39.484299, 35.856201, 31.252460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204292, 36.253223, 31.330011>,  <38.818443, 35.914482, 31.460402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204292, 36.253223, 31.330011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877361, 36.097073, 31.499519>,  <37.681202, 36.003384, 31.601223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877361, 36.097073, 31.499519>,  <38.204292, 36.253223, 31.330011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877361, 36.097073, 31.499519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233145, 0.448509, 0.862834,
		-0.526892, 0.804020, -0.275566,
		-0.817330, -0.390374, 0.423769,
		37.632164, 35.979961, 31.626650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849941, 36.743969, 31.658237>,  <38.204292, 36.253223, 31.330011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849941, 36.743969, 31.658237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722149, 36.408886, 31.835407>,  <37.645473, 36.207836, 31.941710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722149, 36.408886, 31.835407>,  <37.849941, 36.743969, 31.658237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722149, 36.408886, 31.835407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041652, 0.454552, 0.889746,
		-0.946676, 0.302708, -0.110330,
		-0.319484, -0.837705, 0.442922,
		37.626305, 36.157574, 31.968285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487667, 36.984024, 32.224419>,  <37.849941, 36.743969, 31.658237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487667, 36.984024, 32.224419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493248, 36.597870, 32.328602>,  <37.496597, 36.366177, 32.391113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493248, 36.597870, 32.328602>,  <37.487667, 36.984024, 32.224419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493248, 36.597870, 32.328602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121102, 0.256937, 0.958811,
		-0.992542, -0.044920, -0.113324,
		0.013953, -0.965384, 0.260460,
		37.497433, 36.308254, 32.406738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962635, 36.788113, 32.688427>,  <37.487667, 36.984024, 32.224419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962635, 36.788113, 32.688427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.217133, 36.497906, 32.793365>,  <37.369831, 36.323784, 32.856327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.217133, 36.497906, 32.793365>,  <36.962635, 36.788113, 32.688427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217133, 36.497906, 32.793365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011065, 0.331436, 0.943413,
		-0.771411, -0.603141, 0.202846,
		0.636241, -0.725515, 0.262347,
		37.408005, 36.280251, 32.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747574, 36.432495, 33.345188>,  <36.962635, 36.788113, 32.688427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747574, 36.432495, 33.345188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133961, 36.329956, 33.331383>,  <37.365791, 36.268433, 33.323097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133961, 36.329956, 33.331383>,  <36.747574, 36.432495, 33.345188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133961, 36.329956, 33.331383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033720, -0.007505, 0.999403,
		-0.256454, -0.966555, 0.001394,
		0.965968, -0.256348, -0.034517,
		37.423752, 36.253052, 33.321026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752995, 35.842232, 33.819324>,  <36.747574, 36.432495, 33.345188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752995, 35.842232, 33.819324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120483, 35.993828, 33.774933>,  <37.340977, 36.084785, 33.748299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120483, 35.993828, 33.774933>,  <36.752995, 35.842232, 33.819324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120483, 35.993828, 33.774933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098751, 0.051623, 0.993772,
		0.382362, -0.923959, 0.010001,
		0.918721, 0.378993, -0.110980,
		37.396099, 36.107525, 33.741638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072449, 35.470963, 34.273060>,  <36.752995, 35.842232, 33.819324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072449, 35.470963, 34.273060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300312, 35.795105, 34.218193>,  <37.437031, 35.989590, 34.185272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300312, 35.795105, 34.218193>,  <37.072449, 35.470963, 34.273060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300312, 35.795105, 34.218193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114449, 0.087058, 0.989607,
		0.813876, -0.579434, -0.043152,
		0.569656, 0.810356, -0.137170,
		37.471210, 36.038212, 34.177040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619289, 35.381020, 34.740017>,  <37.072449, 35.470963, 34.273060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619289, 35.381020, 34.740017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585182, 35.773098, 34.668526>,  <37.564716, 36.008347, 34.625629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585182, 35.773098, 34.668526>,  <37.619289, 35.381020, 34.740017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585182, 35.773098, 34.668526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259428, 0.195038, 0.945863,
		0.961991, 0.034284, -0.270921,
		-0.085268, 0.980196, -0.178731,
		37.559601, 36.067158, 34.614906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966953, 35.673157, 35.355434>,  <37.619289, 35.381020, 34.740017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966953, 35.673157, 35.355434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817371, 36.010338, 35.200729>,  <37.727623, 36.212646, 35.107906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817371, 36.010338, 35.200729>,  <37.966953, 35.673157, 35.355434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817371, 36.010338, 35.200729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020455, 0.409425, 0.912114,
		0.927220, 0.349004, -0.135866,
		-0.373958, 0.842951, -0.386766,
		37.705185, 36.263222, 35.084698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389465, 36.307510, 35.508339>,  <37.966953, 35.673157, 35.355434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389465, 36.307510, 35.508339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005836, 36.410278, 35.460709>,  <37.775661, 36.471939, 35.432133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005836, 36.410278, 35.460709>,  <38.389465, 36.307510, 35.508339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005836, 36.410278, 35.460709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014782, 0.465351, 0.885003,
		0.282782, 0.847020, -0.450102,
		-0.959070, 0.256916, -0.119072,
		37.718117, 36.487354, 35.424988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399712, 37.032494, 35.699989>,  <38.389465, 36.307510, 35.508339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399712, 37.032494, 35.699989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.014046, 36.926750, 35.708977>,  <37.782646, 36.863304, 35.714371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.014046, 36.926750, 35.708977>,  <38.399712, 37.032494, 35.699989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014046, 36.926750, 35.708977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076950, 0.359689, 0.929894,
		-0.253912, 0.894839, -0.367141,
		-0.964161, -0.264363, 0.022472,
		37.724796, 36.847443, 35.715717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927715, 37.559879, 35.832470>,  <38.399712, 37.032494, 35.699989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927715, 37.559879, 35.832470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762615, 37.231949, 35.991230>,  <37.663555, 37.035191, 36.086487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762615, 37.231949, 35.991230>,  <37.927715, 37.559879, 35.832470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762615, 37.231949, 35.991230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165991, 0.496152, 0.852221,
		-0.895590, 0.285875, -0.340871,
		-0.412753, -0.819822, 0.396897,
		37.638790, 36.986004, 36.110298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.452816, 35.348400, 28.671999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445045, 35.046383, 28.934156>,  <35.440384, 34.865173, 29.091450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445045, 35.046383, 28.934156>,  <35.452816, 35.348400, 28.671999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445045, 35.046383, 28.934156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365516, 0.604776, 0.707562,
		-0.930602, 0.253303, 0.264228,
		-0.019429, -0.755038, 0.655393,
		35.439217, 34.819870, 29.130774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317444, 35.669044, 29.240993>,  <35.452816, 35.348400, 28.671999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317444, 35.669044, 29.240993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449322, 35.317089, 29.377872>,  <35.528450, 35.105915, 29.459999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449322, 35.317089, 29.377872>,  <35.317444, 35.669044, 29.240993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449322, 35.317089, 29.377872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378206, 0.455204, 0.806071,
		-0.865021, -0.136336, 0.482857,
		0.329694, -0.879887, 0.342198,
		35.548229, 35.053123, 29.480532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309135, 35.748642, 29.964151>,  <35.317444, 35.669044, 29.240993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309135, 35.748642, 29.964151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516148, 35.406506, 29.954679>,  <35.640354, 35.201225, 29.948996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516148, 35.406506, 29.954679>,  <35.309135, 35.748642, 29.964151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516148, 35.406506, 29.954679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488193, 0.272433, 0.829125,
		-0.702729, -0.440659, 0.558562,
		0.517532, -0.855336, -0.023680,
		35.671406, 35.149906, 29.947575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476265, 35.507408, 30.670691>,  <35.309135, 35.748642, 29.964151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476265, 35.507408, 30.670691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760178, 35.322159, 30.458376>,  <35.930523, 35.211010, 30.330988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760178, 35.322159, 30.458376>,  <35.476265, 35.507408, 30.670691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760178, 35.322159, 30.458376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680665, 0.256854, 0.686091,
		-0.181408, -0.848260, 0.497539,
		0.709779, -0.463121, -0.530786,
		35.973110, 35.183224, 30.299141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761200, 35.106739, 31.160212>,  <35.476265, 35.507408, 30.670691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761200, 35.106739, 31.160212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030827, 35.147644, 30.867590>,  <36.192604, 35.172188, 30.692017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030827, 35.147644, 30.867590>,  <35.761200, 35.106739, 31.160212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030827, 35.147644, 30.867590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709085, 0.187893, 0.679628,
		0.206957, -0.976851, 0.054137,
		0.674067, 0.102266, -0.731556,
		36.233047, 35.178322, 30.648123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346649, 34.611183, 31.212765>,  <35.761200, 35.106739, 31.160212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346649, 34.611183, 31.212765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469166, 34.911739, 30.978979>,  <36.542675, 35.092072, 30.838707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469166, 34.911739, 30.978979>,  <36.346649, 34.611183, 31.212765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469166, 34.911739, 30.978979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717194, 0.221574, 0.660710,
		0.625952, -0.621546, -0.471025,
		0.306295, 0.751389, -0.584464,
		36.561054, 35.137157, 30.803640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058781, 34.559998, 31.126078>,  <36.346649, 34.611183, 31.212765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058781, 34.559998, 31.126078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969372, 34.938351, 31.031975>,  <36.915726, 35.165363, 30.975513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969372, 34.938351, 31.031975>,  <37.058781, 34.559998, 31.126078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969372, 34.938351, 31.031975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728813, 0.322462, 0.604028,
		0.647200, -0.036443, -0.761449,
		-0.223526, 0.945881, -0.235258,
		36.902313, 35.222115, 30.961397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716835, 34.962692, 31.242470>,  <37.058781, 34.559998, 31.126078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716835, 34.962692, 31.242470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436916, 35.246128, 31.206276>,  <37.268967, 35.416191, 31.184559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436916, 35.246128, 31.206276>,  <37.716835, 34.962692, 31.242470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436916, 35.246128, 31.206276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573924, 0.633121, 0.519393,
		0.425326, 0.311536, -0.849731,
		-0.699793, 0.708592, -0.090485,
		37.226978, 35.458706, 31.179131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078217, 35.536594, 31.027298>,  <37.716835, 34.962692, 31.242470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078217, 35.536594, 31.027298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738979, 35.650177, 31.206234>,  <37.535439, 35.718327, 31.313595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738979, 35.650177, 31.206234>,  <38.078217, 35.536594, 31.027298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738979, 35.650177, 31.206234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529773, 0.468916, 0.706724,
		-0.009085, 0.836353, -0.548115,
		-0.848091, 0.283956, 0.447338,
		37.484550, 35.735363, 31.340435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764618, 36.047306, 30.757660>,  <38.078217, 35.536594, 31.027298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764618, 36.047306, 30.757660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091114, 35.820526, 30.802053>,  <39.287010, 35.684460, 30.828690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091114, 35.820526, 30.802053>,  <38.764618, 36.047306, 30.757660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091114, 35.820526, 30.802053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155444, -0.400563, -0.902988,
		0.556405, 0.719804, -0.415085,
		0.816241, -0.566950, 0.110986,
		39.335987, 35.650440, 30.835350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066326, 36.101620, 30.082581>,  <38.764618, 36.047306, 30.757660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066326, 36.101620, 30.082581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274990, 35.784870, 30.209579>,  <39.400188, 35.594818, 30.285778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274990, 35.784870, 30.209579>,  <39.066326, 36.101620, 30.082581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274990, 35.784870, 30.209579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059419, -0.337518, -0.939442,
		0.851083, 0.508933, -0.129017,
		0.521658, -0.791877, 0.317496,
		39.431488, 35.547306, 30.304829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709251, 35.957211, 29.581051>,  <39.066326, 36.101620, 30.082581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709251, 35.957211, 29.581051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632702, 35.619549, 29.781363>,  <39.586773, 35.416950, 29.901550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632702, 35.619549, 29.781363>,  <39.709251, 35.957211, 29.581051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632702, 35.619549, 29.781363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064907, -0.519976, -0.851711,
		0.979370, -0.130487, 0.154299,
		-0.191369, -0.844155, 0.500779,
		39.575291, 35.366302, 29.931597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227596, 35.449062, 29.257698>,  <39.709251, 35.957211, 29.581051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227596, 35.449062, 29.257698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975761, 35.211811, 29.458424>,  <39.824661, 35.069462, 29.578859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975761, 35.211811, 29.458424>,  <40.227596, 35.449062, 29.257698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975761, 35.211811, 29.458424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138061, -0.550208, -0.823536,
		0.764562, -0.587772, 0.264519,
		-0.629591, -0.593124, 0.501816,
		39.786884, 35.033875, 29.608969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456242, 34.758514, 29.175694>,  <40.227596, 35.449062, 29.257698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456242, 34.758514, 29.175694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067539, 34.750813, 29.269781>,  <39.834320, 34.746193, 29.326233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067539, 34.750813, 29.269781>,  <40.456242, 34.758514, 29.175694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067539, 34.750813, 29.269781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182337, -0.571523, -0.800071,
		0.149838, -0.820360, 0.551868,
		-0.971752, -0.019255, 0.235218,
		39.776012, 34.745037, 29.340347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280235, 34.060078, 29.164196>,  <40.456242, 34.758514, 29.175694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280235, 34.060078, 29.164196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939781, 34.269775, 29.153347>,  <39.735508, 34.395592, 29.146837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939781, 34.269775, 29.153347>,  <40.280235, 34.060078, 29.164196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939781, 34.269775, 29.153347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392171, -0.669354, -0.631005,
		-0.348953, -0.526436, 0.775305,
		-0.851137, 0.524243, -0.027120,
		39.684441, 34.427048, 29.145210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830585, 33.553013, 29.228315>,  <40.280235, 34.060078, 29.164196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830585, 33.553013, 29.228315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595642, 33.846703, 29.092127>,  <39.454674, 34.022915, 29.010414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595642, 33.846703, 29.092127>,  <39.830585, 33.553013, 29.228315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595642, 33.846703, 29.092127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416298, -0.634854, -0.650889,
		-0.694049, -0.240569, 0.678545,
		-0.587360, 0.734226, -0.340471,
		39.419434, 34.066971, 28.989986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056301, 33.388382, 29.287956>,  <39.830585, 33.553013, 29.228315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056301, 33.388382, 29.287956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110725, 33.648800, 28.989260>,  <39.143379, 33.805050, 28.810041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110725, 33.648800, 28.989260>,  <39.056301, 33.388382, 29.287956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110725, 33.648800, 28.989260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597032, -0.547622, -0.586228,
		-0.790595, 0.525593, 0.314185,
		0.136063, 0.651047, -0.746743,
		39.151543, 33.844112, 28.765238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412640, 33.437038, 29.059225>,  <39.056301, 33.388382, 29.287956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412640, 33.437038, 29.059225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642391, 33.588200, 28.768770>,  <38.780243, 33.678898, 28.594498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642391, 33.588200, 28.768770>,  <38.412640, 33.437038, 29.059225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642391, 33.588200, 28.768770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484346, -0.558230, -0.673638,
		-0.659923, 0.738626, -0.137599,
		0.574378, 0.377903, -0.726139,
		38.814705, 33.701572, 28.550928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995636, 33.748459, 28.455645>,  <38.412640, 33.437038, 29.059225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995636, 33.748459, 28.455645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349228, 33.622761, 28.317173>,  <38.561382, 33.547344, 28.234089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349228, 33.622761, 28.317173>,  <37.995636, 33.748459, 28.455645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349228, 33.622761, 28.317173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464913, -0.512515, -0.721931,
		0.049438, 0.799112, -0.599145,
		0.883975, -0.314241, -0.346180,
		38.614422, 33.528488, 28.213320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920956, 33.929436, 27.778965>,  <37.995636, 33.748459, 28.455645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920956, 33.929436, 27.778965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238041, 33.685825, 27.789558>,  <38.428291, 33.539661, 27.795914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238041, 33.685825, 27.789558>,  <37.920956, 33.929436, 27.778965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238041, 33.685825, 27.789558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222390, -0.329366, -0.917639,
		0.567585, 0.721532, -0.396533,
		0.792710, -0.609023, 0.026481,
		38.475853, 33.503117, 27.797503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958321, 33.796600, 27.067959>,  <37.920956, 33.929436, 27.778965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958321, 33.796600, 27.067959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224472, 33.540226, 27.221048>,  <38.384163, 33.386402, 27.312902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224472, 33.540226, 27.221048>,  <37.958321, 33.796600, 27.067959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224472, 33.540226, 27.221048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047125, -0.475604, -0.878397,
		0.745019, 0.602500, -0.286252,
		0.665377, -0.640933, 0.382726,
		38.424084, 33.347946, 27.335867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519562, 33.767853, 26.581238>,  <37.958321, 33.796600, 27.067959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519562, 33.767853, 26.581238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472843, 33.431656, 26.792873>,  <38.444813, 33.229939, 26.919855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472843, 33.431656, 26.792873>,  <38.519562, 33.767853, 26.581238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472843, 33.431656, 26.792873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116639, -0.517442, -0.847732,
		0.986283, -0.160728, -0.037596,
		-0.116800, -0.840488, 0.529091,
		38.437801, 33.179508, 26.951601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006241, 33.237003, 26.319166>,  <38.519562, 33.767853, 26.581238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006241, 33.237003, 26.319166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775635, 32.994888, 26.538712>,  <38.637272, 32.849617, 26.670439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775635, 32.994888, 26.538712>,  <39.006241, 33.237003, 26.319166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775635, 32.994888, 26.538712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018078, -0.662120, -0.749179,
		0.816885, -0.441837, 0.370781,
		-0.576517, -0.605290, 0.548864,
		38.602680, 32.813301, 26.703371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.804096, 28.580341, 31.598789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893223, 28.922029, 31.410892>,  <33.946697, 29.127043, 31.298155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893223, 28.922029, 31.410892>,  <33.804096, 28.580341, 31.598789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893223, 28.922029, 31.410892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536751, 0.294743, 0.790585,
		0.813789, -0.428290, -0.392831,
		0.222815, 0.854221, -0.469744,
		33.960068, 29.178295, 31.269970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473587, 28.718969, 31.901218>,  <33.804096, 28.580341, 31.598789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473587, 28.718969, 31.901218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345272, 29.064894, 31.746716>,  <34.268284, 29.272449, 31.654015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345272, 29.064894, 31.746716>,  <34.473587, 28.718969, 31.901218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345272, 29.064894, 31.746716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300772, 0.479714, 0.824264,
		0.898126, 0.148239, -0.413998,
		-0.320789, 0.864812, -0.386258,
		34.249035, 29.324337, 31.630838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070435, 29.160206, 31.886868>,  <34.473587, 28.718969, 31.901218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070435, 29.160206, 31.886868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759792, 29.411261, 31.865095>,  <34.573406, 29.561893, 31.852032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759792, 29.411261, 31.865095>,  <35.070435, 29.160206, 31.886868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759792, 29.411261, 31.865095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390211, 0.547053, 0.740587,
		0.494595, 0.553901, -0.669753,
		-0.776602, 0.627635, -0.054431,
		34.526814, 29.599552, 31.848766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358829, 29.759129, 31.949049>,  <35.070435, 29.160206, 31.886868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358829, 29.759129, 31.949049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975800, 29.843252, 32.027851>,  <34.745979, 29.893726, 32.075134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975800, 29.843252, 32.027851>,  <35.358829, 29.759129, 31.949049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975800, 29.843252, 32.027851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275402, 0.466649, 0.840471,
		0.084825, 0.859074, -0.504773,
		-0.957579, 0.210309, 0.197007,
		34.688526, 29.906345, 32.086952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342979, 30.460793, 32.037907>,  <35.358829, 29.759129, 31.949049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342979, 30.460793, 32.037907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030193, 30.317329, 32.241825>,  <34.842522, 30.231253, 32.364178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030193, 30.317329, 32.241825>,  <35.342979, 30.460793, 32.037907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030193, 30.317329, 32.241825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286540, 0.519495, 0.804997,
		-0.553555, 0.775558, -0.303458,
		-0.781967, -0.358657, 0.509798,
		34.795605, 30.209732, 32.394764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928837, 30.955673, 32.261551>,  <35.342979, 30.460793, 32.037907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928837, 30.955673, 32.261551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859791, 30.690844, 32.553265>,  <34.818363, 30.531946, 32.728294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859791, 30.690844, 32.553265>,  <34.928837, 30.955673, 32.261551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859791, 30.690844, 32.553265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272761, 0.679318, 0.681270,
		-0.946471, 0.316515, 0.063331,
		-0.172611, -0.662076, 0.729288,
		34.808006, 30.492220, 32.772053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561893, 31.387741, 32.677921>,  <34.928837, 30.955673, 32.261551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561893, 31.387741, 32.677921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667755, 31.071447, 32.898720>,  <34.731274, 30.881672, 33.031200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667755, 31.071447, 32.898720>,  <34.561893, 31.387741, 32.677921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667755, 31.071447, 32.898720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198836, 0.604851, 0.771116,
		-0.943622, -0.094323, 0.317303,
		0.264655, -0.790733, 0.551996,
		34.747150, 30.834229, 33.064320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142124, 31.502283, 33.158813>,  <34.561893, 31.387741, 32.677921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142124, 31.502283, 33.158813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427563, 31.261833, 33.302715>,  <34.598827, 31.117563, 33.389057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.427563, 31.261833, 33.302715>,  <34.142124, 31.502283, 33.158813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427563, 31.261833, 33.302715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197152, 0.665094, 0.720265,
		-0.672240, -0.443055, 0.593124,
		0.713599, -0.601126, 0.359754,
		34.641644, 31.081495, 33.410641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074585, 31.499037, 33.889755>,  <34.142124, 31.502283, 33.158813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074585, 31.499037, 33.889755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.439465, 31.343884, 33.836926>,  <34.658390, 31.250792, 33.805229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.439465, 31.343884, 33.836926>,  <34.074585, 31.499037, 33.889755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439465, 31.343884, 33.836926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329358, 0.502330, 0.799492,
		-0.243766, -0.772793, 0.585977,
		0.912196, -0.387885, -0.132075,
		34.713123, 31.227518, 33.797302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327866, 31.394457, 34.549816>,  <34.074585, 31.499037, 33.889755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327866, 31.394457, 34.549816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663986, 31.352915, 34.336983>,  <34.865658, 31.327990, 34.209282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663986, 31.352915, 34.336983>,  <34.327866, 31.394457, 34.549816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663986, 31.352915, 34.336983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514170, 0.463780, 0.721483,
		0.171839, -0.879842, 0.443113,
		0.840298, -0.103857, -0.532083,
		34.916077, 31.321758, 34.177357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944096, 31.065090, 34.859055>,  <34.327866, 31.394457, 34.549816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944096, 31.065090, 34.859055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112850, 31.314157, 34.595448>,  <35.214104, 31.463598, 34.437283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112850, 31.314157, 34.595448>,  <34.944096, 31.065090, 34.859055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112850, 31.314157, 34.595448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567503, 0.385506, 0.727547,
		0.707073, -0.680934, -0.190726,
		0.421886, 0.622667, -0.659013,
		35.239414, 31.500957, 34.397743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622253, 31.179779, 35.088490>,  <34.944096, 31.065090, 34.859055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622253, 31.179779, 35.088490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.578606, 31.494055, 34.844921>,  <35.552418, 31.682621, 34.698780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.578606, 31.494055, 34.844921>,  <35.622253, 31.179779, 35.088490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578606, 31.494055, 34.844921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490087, 0.575472, 0.654711,
		0.864817, -0.226984, -0.447851,
		-0.109117, 0.785691, -0.608919,
		35.545872, 31.729763, 34.662247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237892, 31.447098, 35.049297>,  <35.622253, 31.179779, 35.088490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237892, 31.447098, 35.049297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016464, 31.758596, 34.931236>,  <35.883606, 31.945496, 34.860401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016464, 31.758596, 34.931236>,  <36.237892, 31.447098, 35.049297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016464, 31.758596, 34.931236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527551, 0.602137, 0.599267,
		0.644399, 0.176029, -0.744153,
		-0.553571, 0.778746, -0.295152,
		35.850391, 31.992220, 34.842690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720493, 31.845592, 34.824123>,  <36.237892, 31.447098, 35.049297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720493, 31.845592, 34.824123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410328, 32.056217, 34.963528>,  <36.224228, 32.182590, 35.047173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410328, 32.056217, 34.963528>,  <36.720493, 31.845592, 34.824123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410328, 32.056217, 34.963528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615299, 0.506036, 0.604429,
		0.141908, 0.683124, -0.716382,
		-0.775416, 0.526562, 0.348515,
		36.177704, 32.214188, 35.068081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294209, 31.849640, 34.324017>,  <36.720493, 31.845592, 34.824123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294209, 31.849640, 34.324017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521297, 31.596447, 34.534550>,  <37.657551, 31.444530, 34.660870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521297, 31.596447, 34.534550>,  <37.294209, 31.849640, 34.324017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521297, 31.596447, 34.534550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414494, -0.772193, -0.481574,
		0.711256, 0.055241, -0.700760,
		0.567724, -0.632983, 0.526329,
		37.691616, 31.406551, 34.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636929, 31.490002, 33.826168>,  <37.294209, 31.849640, 34.324017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636929, 31.490002, 33.826168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781258, 31.248884, 34.110828>,  <37.867855, 31.104214, 34.281624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781258, 31.248884, 34.110828>,  <37.636929, 31.490002, 33.826168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781258, 31.248884, 34.110828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075793, -0.779484, -0.621820,
		0.929551, 0.170427, -0.326940,
		0.360819, -0.602793, 0.711653,
		37.889503, 31.068047, 34.324326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171047, 31.072151, 33.594662>,  <37.636929, 31.490002, 33.826168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171047, 31.072151, 33.594662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006439, 30.873981, 33.900658>,  <37.907673, 30.755079, 34.084255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006439, 30.873981, 33.900658>,  <38.171047, 31.072151, 33.594662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006439, 30.873981, 33.900658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069424, -0.819875, -0.568318,
		0.908753, -0.286982, 0.302999,
		-0.411518, -0.495426, 0.764987,
		37.882984, 30.725353, 34.130154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577560, 30.515659, 33.676777>,  <38.171047, 31.072151, 33.594662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577560, 30.515659, 33.676777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.223118, 30.430527, 33.841465>,  <38.010452, 30.379446, 33.940277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.223118, 30.430527, 33.841465>,  <38.577560, 30.515659, 33.676777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223118, 30.430527, 33.841465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126885, -0.742989, -0.657166,
		0.445769, -0.634562, 0.631365,
		-0.886109, -0.212833, 0.411718,
		37.957283, 30.366676, 33.964981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530293, 29.699007, 33.677834>,  <38.577560, 30.515659, 33.676777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530293, 29.699007, 33.677834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172390, 29.877388, 33.687115>,  <37.957649, 29.984417, 33.692684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172390, 29.877388, 33.687115>,  <38.530293, 29.699007, 33.677834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172390, 29.877388, 33.687115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321145, -0.606504, -0.727337,
		-0.310288, -0.658239, 0.685888,
		-0.894756, 0.445954, 0.023200,
		37.903965, 30.011175, 33.694073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188049, 29.164711, 33.422596>,  <38.530293, 29.699007, 33.677834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188049, 29.164711, 33.422596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913563, 29.455250, 33.438240>,  <37.748871, 29.629574, 33.447628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913563, 29.455250, 33.438240>,  <38.188049, 29.164711, 33.422596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913563, 29.455250, 33.438240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549882, -0.482796, -0.681570,
		-0.476140, -0.489245, 0.730705,
		-0.686236, 0.726324, 0.039148,
		37.707699, 29.673153, 33.449974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568764, 28.780790, 33.516125>,  <38.188049, 29.164711, 33.422596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568764, 28.780790, 33.516125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482384, 29.129835, 33.340893>,  <37.430553, 29.339262, 33.235752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482384, 29.129835, 33.340893>,  <37.568764, 28.780790, 33.516125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482384, 29.129835, 33.340893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574219, -0.476380, -0.665833,
		-0.789706, 0.107765, 0.603946,
		-0.215954, 0.872610, -0.438082,
		37.417599, 29.391619, 33.209469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842556, 28.764421, 33.422432>,  <37.568764, 28.780790, 33.516125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842556, 28.764421, 33.422432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.981041, 29.023663, 33.151112>,  <37.064133, 29.179207, 32.988319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.981041, 29.023663, 33.151112>,  <36.842556, 28.764421, 33.422432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981041, 29.023663, 33.151112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471916, -0.504575, -0.722979,
		-0.810822, 0.570407, 0.131161,
		0.346212, 0.648105, -0.678305,
		37.084904, 29.218094, 32.947620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232182, 28.761534, 33.045860>,  <36.842556, 28.764421, 33.422432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232182, 28.761534, 33.045860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531563, 28.925020, 32.836952>,  <36.711193, 29.023111, 32.711605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531563, 28.925020, 32.836952>,  <36.232182, 28.761534, 33.045860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531563, 28.925020, 32.836952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326586, -0.458263, -0.826642,
		-0.577200, 0.789270, -0.209507,
		0.748453, 0.408716, -0.522274,
		36.756100, 29.047634, 32.680271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920521, 28.989471, 32.540985>,  <36.232182, 28.761534, 33.045860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920521, 28.989471, 32.540985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294567, 28.918922, 32.418056>,  <36.518997, 28.876593, 32.344299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294567, 28.918922, 32.418056>,  <35.920521, 28.989471, 32.540985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294567, 28.918922, 32.418056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348475, -0.300717, -0.887770,
		0.064164, 0.937263, -0.342668,
		0.935120, -0.176374, -0.307317,
		36.575104, 28.866011, 32.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949940, 29.215569, 31.808807>,  <35.920521, 28.989471, 32.540985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949940, 29.215569, 31.808807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257908, 28.966379, 31.864117>,  <36.442688, 28.816866, 31.897303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257908, 28.966379, 31.864117>,  <35.949940, 29.215569, 31.808807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257908, 28.966379, 31.864117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170080, -0.409177, -0.896464,
		0.615052, 0.666691, -0.420991,
		0.769924, -0.622974, 0.138274,
		36.488884, 28.779488, 31.905600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380753, 29.304241, 31.209957>,  <35.949940, 29.215569, 31.808807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380753, 29.304241, 31.209957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453224, 28.945395, 31.371132>,  <36.496708, 28.730087, 31.467836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453224, 28.945395, 31.371132>,  <36.380753, 29.304241, 31.209957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453224, 28.945395, 31.371132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121824, -0.427036, -0.895991,
		0.975876, 0.113244, -0.186658,
		0.181175, -0.897116, 0.402938,
		36.507576, 28.676260, 31.492014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940418, 28.976006, 30.843527>,  <36.380753, 29.304241, 31.209957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940418, 28.976006, 30.843527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759789, 28.667011, 31.022118>,  <36.651409, 28.481615, 31.129272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759789, 28.667011, 31.022118>,  <36.940418, 28.976006, 30.843527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759789, 28.667011, 31.022118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207301, -0.395875, -0.894600,
		0.867815, -0.496537, 0.018631,
		-0.451578, -0.772485, 0.446479,
		36.624313, 28.435266, 31.156061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203392, 28.390577, 30.520006>,  <36.940418, 28.976006, 30.843527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203392, 28.390577, 30.520006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847225, 28.313160, 30.684786>,  <36.633526, 28.266710, 30.783653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847225, 28.313160, 30.684786>,  <37.203392, 28.390577, 30.520006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847225, 28.313160, 30.684786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251196, -0.545795, -0.799380,
		0.379555, -0.815260, 0.437367,
		-0.890415, -0.193544, 0.411949,
		36.580101, 28.255096, 30.808371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820103, 27.971687, 30.315994>,  <37.203392, 28.390577, 30.520006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820103, 27.971687, 30.315994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084946, 28.076839, 30.035280>,  <38.243851, 28.139931, 29.866852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084946, 28.076839, 30.035280>,  <37.820103, 27.971687, 30.315994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084946, 28.076839, 30.035280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524923, 0.505660, 0.684663,
		0.534853, -0.821706, 0.196808,
		0.662109, 0.262885, -0.701786,
		38.283581, 28.155704, 29.824745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402859, 27.808176, 30.577360>,  <37.820103, 27.971687, 30.315994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402859, 27.808176, 30.577360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494682, 28.100691, 30.320448>,  <38.549774, 28.276199, 30.166300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494682, 28.100691, 30.320448>,  <38.402859, 27.808176, 30.577360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494682, 28.100691, 30.320448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514591, 0.468939, 0.717839,
		0.826136, -0.495295, -0.268666,
		0.229554, 0.731286, -0.642282,
		38.563549, 28.320076, 30.127764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054096, 27.910379, 30.685350>,  <38.402859, 27.808176, 30.577360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054096, 27.910379, 30.685350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984837, 28.240601, 30.470509>,  <38.943279, 28.438734, 30.341604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984837, 28.240601, 30.470509>,  <39.054096, 27.910379, 30.685350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984837, 28.240601, 30.470509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651267, 0.505065, 0.566357,
		0.738830, -0.251734, -0.625108,
		-0.173149, 0.825554, -0.537103,
		38.932892, 28.488266, 30.309378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780312, 28.227772, 30.500879>,  <39.054096, 27.910379, 30.685350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780312, 28.227772, 30.500879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483345, 28.495560, 30.490847>,  <39.305164, 28.656233, 30.484827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483345, 28.495560, 30.490847>,  <39.780312, 28.227772, 30.500879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483345, 28.495560, 30.490847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577318, 0.658318, 0.483033,
		0.339886, 0.344132, -0.875243,
		-0.742415, 0.669470, -0.025080,
		39.260620, 28.696402, 30.483322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111736, 28.874674, 30.312609>,  <39.780312, 28.227772, 30.500879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111736, 28.874674, 30.312609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.745716, 28.990200, 30.425222>,  <39.526104, 29.059515, 30.492790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.745716, 28.990200, 30.425222>,  <40.111736, 28.874674, 30.312609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745716, 28.990200, 30.425222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400238, 0.736514, 0.545305,
		-0.049863, 0.611664, -0.789544,
		-0.915054, 0.288815, 0.281536,
		39.471199, 29.076845, 30.509684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109192, 29.659336, 30.250494>,  <40.111736, 28.874674, 30.312609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109192, 29.659336, 30.250494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.817120, 29.553217, 30.502350>,  <39.641876, 29.489546, 30.653463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.817120, 29.553217, 30.502350>,  <40.109192, 29.659336, 30.250494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817120, 29.553217, 30.502350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316250, 0.685646, 0.655649,
		-0.605654, 0.677868, -0.416748,
		-0.730185, -0.265300, 0.629640,
		39.598064, 29.473627, 30.691242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829460, 30.335344, 30.462317>,  <40.109192, 29.659336, 30.250494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829460, 30.335344, 30.462317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723789, 30.054447, 30.726761>,  <39.660385, 29.885910, 30.885427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723789, 30.054447, 30.726761>,  <39.829460, 30.335344, 30.462317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723789, 30.054447, 30.726761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335057, 0.575948, 0.745668,
		-0.904405, 0.418498, 0.083139,
		-0.264176, -0.702242, 0.661111,
		39.644535, 29.843775, 30.925095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268093, 30.513229, 30.928080>,  <39.829460, 30.335344, 30.462317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268093, 30.513229, 30.928080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521645, 30.273272, 31.123356>,  <39.673775, 30.129297, 31.240520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521645, 30.273272, 31.123356>,  <39.268093, 30.513229, 30.928080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521645, 30.273272, 31.123356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246811, 0.755086, 0.607395,
		-0.732997, -0.264523, 0.626692,
		0.633876, -0.599894, 0.488189,
		39.711807, 30.093304, 31.269812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229652, 30.408779, 31.668060>,  <39.268093, 30.513229, 30.928080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229652, 30.408779, 31.668060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.620640, 30.380522, 31.588501>,  <39.855232, 30.363567, 31.540766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.620640, 30.380522, 31.588501>,  <39.229652, 30.408779, 31.668060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620640, 30.380522, 31.588501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205460, 0.534300, 0.819945,
		0.048347, -0.842337, 0.536777,
		0.977471, -0.070644, -0.198898,
		39.913879, 30.359329, 31.528831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528187, 30.187073, 32.257442>,  <39.229652, 30.408779, 31.668060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528187, 30.187073, 32.257442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838989, 30.336445, 32.054733>,  <40.025471, 30.426067, 31.933107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838989, 30.336445, 32.054733>,  <39.528187, 30.187073, 32.257442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838989, 30.336445, 32.054733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293429, 0.497377, 0.816404,
		0.556927, -0.783049, 0.276887,
		0.777002, 0.373431, -0.506772,
		40.072090, 30.448473, 31.902702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079151, 30.309261, 32.766720>,  <39.528187, 30.187073, 32.257442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079151, 30.309261, 32.766720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237747, 30.521954, 32.467373>,  <40.332905, 30.649569, 32.287766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237747, 30.521954, 32.467373>,  <40.079151, 30.309261, 32.766720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237747, 30.521954, 32.467373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649584, 0.413540, 0.637985,
		0.648718, -0.739084, -0.181440,
		0.396492, 0.531733, -0.748368,
		40.356693, 30.681473, 32.242863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839725, 30.404411, 32.926262>,  <40.079151, 30.309261, 32.766720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839725, 30.404411, 32.926262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767365, 30.691353, 32.657135>,  <40.723949, 30.863518, 32.495659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767365, 30.691353, 32.657135>,  <40.839725, 30.404411, 32.926262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767365, 30.691353, 32.657135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640767, 0.604947, 0.472712,
		0.746118, -0.345602, -0.569093,
		-0.180901, 0.717355, -0.672813,
		40.713093, 30.906559, 32.455292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529022, 30.756786, 32.815166>,  <40.839725, 30.404411, 32.926262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529022, 30.756786, 32.815166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256107, 31.015106, 32.678097>,  <41.092358, 31.170097, 32.595856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256107, 31.015106, 32.678097>,  <41.529022, 30.756786, 32.815166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256107, 31.015106, 32.678097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591267, 0.763112, 0.260889,
		0.429978, -0.024607, -0.902504,
		-0.682292, 0.645798, -0.342671,
		41.051418, 31.208845, 32.575294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955986, 31.186626, 32.405521>,  <41.529022, 30.756786, 32.815166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955986, 31.186626, 32.405521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624569, 31.375780, 32.525448>,  <41.425716, 31.489271, 32.597404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624569, 31.375780, 32.525448>,  <41.955986, 31.186626, 32.405521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624569, 31.375780, 32.525448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559656, 0.683025, 0.469321,
		0.017151, 0.556650, -0.830570,
		-0.828547, 0.472883, 0.299818,
		41.376003, 31.517645, 32.615395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.332607, 32.384361, 26.333014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.947403, 32.370586, 26.439913>,  <38.716278, 32.362320, 26.504051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.947403, 32.370586, 26.439913>,  <39.332607, 32.384361, 26.333014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947403, 32.370586, 26.439913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145889, -0.767216, -0.624577,
		0.226547, -0.640464, 0.733813,
		-0.963012, -0.034441, 0.267247,
		38.658501, 32.360252, 26.520086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112053, 31.677717, 26.584490>,  <39.332607, 32.384361, 26.333014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112053, 31.677717, 26.584490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.765415, 31.837795, 26.465250>,  <38.557434, 31.933842, 26.393705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.765415, 31.837795, 26.465250>,  <39.112053, 31.677717, 26.584490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765415, 31.837795, 26.465250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205182, -0.830291, -0.518186,
		-0.454886, -0.387890, 0.801636,
		-0.866590, 0.400197, -0.298100,
		38.505440, 31.957855, 26.375820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588223, 31.190079, 26.648237>,  <39.112053, 31.677717, 26.584490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588223, 31.190079, 26.648237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372494, 31.438995, 26.421295>,  <38.243057, 31.588345, 26.285130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372494, 31.438995, 26.421295>,  <38.588223, 31.190079, 26.648237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372494, 31.438995, 26.421295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296834, -0.770975, -0.563460,
		-0.788055, -0.135470, 0.600514,
		-0.539313, 0.622291, -0.567359,
		38.210697, 31.625683, 26.251089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015717, 30.859600, 26.568857>,  <38.588223, 31.190079, 26.648237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015717, 30.859600, 26.568857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.049004, 31.129866, 26.275858>,  <38.068974, 31.292025, 26.100058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.049004, 31.129866, 26.275858>,  <38.015717, 30.859600, 26.568857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049004, 31.129866, 26.275858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331431, -0.674441, -0.659760,
		-0.939802, 0.297674, 0.167813,
		0.083213, 0.675662, -0.732500,
		38.073967, 31.332563, 26.056108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311642, 31.050247, 26.308393>,  <38.015717, 30.859600, 26.568857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311642, 31.050247, 26.308393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569275, 31.127764, 26.012394>,  <37.723854, 31.174274, 25.834795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569275, 31.127764, 26.012394>,  <37.311642, 31.050247, 26.308393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569275, 31.127764, 26.012394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523028, -0.594354, -0.610888,
		-0.558206, 0.780505, -0.281457,
		0.644086, 0.193792, -0.739998,
		37.762501, 31.185902, 25.790394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922729, 31.120934, 25.644508>,  <37.311642, 31.050247, 26.308393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922729, 31.120934, 25.644508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278629, 31.075281, 25.467731>,  <37.492168, 31.047890, 25.361666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278629, 31.075281, 25.467731>,  <36.922729, 31.120934, 25.644508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278629, 31.075281, 25.467731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404107, -0.647148, -0.646450,
		-0.212221, 0.753772, -0.621924,
		0.889753, -0.114133, -0.441943,
		37.545555, 31.041040, 25.335148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842407, 31.128937, 24.849709>,  <36.922729, 31.120934, 25.644508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842407, 31.128937, 24.849709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207214, 30.976126, 24.909405>,  <37.426098, 30.884439, 24.945223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207214, 30.976126, 24.909405>,  <36.842407, 31.128937, 24.849709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207214, 30.976126, 24.909405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171927, -0.686456, -0.706554,
		0.372370, 0.618734, -0.691743,
		0.912020, -0.382029, 0.149239,
		37.480820, 30.861517, 24.954176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174049, 31.026852, 24.128294>,  <36.842407, 31.128937, 24.849709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174049, 31.026852, 24.128294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290932, 30.774771, 24.416033>,  <37.361061, 30.623522, 24.588676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290932, 30.774771, 24.416033>,  <37.174049, 31.026852, 24.128294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290932, 30.774771, 24.416033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177149, -0.774827, -0.606845,
		0.939804, 0.049894, -0.338051,
		0.292209, -0.630201, 0.719347,
		37.378593, 30.585711, 24.631838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592247, 30.514193, 23.688583>,  <37.174049, 31.026852, 24.128294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592247, 30.514193, 23.688583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526443, 30.325502, 24.035089>,  <37.486961, 30.212288, 24.242992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526443, 30.325502, 24.035089>,  <37.592247, 30.514193, 23.688583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526443, 30.325502, 24.035089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144867, -0.857150, -0.494274,
		0.975679, -0.206807, 0.072675,
		-0.164513, -0.471724, 0.866263,
		37.477089, 30.183985, 24.294968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886932, 29.834467, 23.575842>,  <37.592247, 30.514193, 23.688583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886932, 29.834467, 23.575842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620857, 29.821392, 23.874228>,  <37.461212, 29.813547, 24.053259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620857, 29.821392, 23.874228>,  <37.886932, 29.834467, 23.575842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620857, 29.821392, 23.874228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450967, -0.778659, -0.436255,
		0.595111, -0.626595, 0.503211,
		-0.665185, -0.032688, 0.745963,
		37.421303, 29.811586, 24.098017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837994, 29.105818, 23.858097>,  <37.886932, 29.834467, 23.575842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837994, 29.105818, 23.858097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485508, 29.259480, 23.968288>,  <37.274017, 29.351677, 24.034403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485508, 29.259480, 23.968288>,  <37.837994, 29.105818, 23.858097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485508, 29.259480, 23.968288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472219, -0.688515, -0.550415,
		-0.021774, -0.615119, 0.788134,
		-0.881213, 0.384156, 0.275479,
		37.221146, 29.374727, 24.050932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466850, 28.567123, 24.096437>,  <37.837994, 29.105818, 23.858097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466850, 28.567123, 24.096437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193741, 28.848385, 24.017040>,  <37.029877, 29.017141, 23.969402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193741, 28.848385, 24.017040>,  <37.466850, 28.567123, 24.096437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193741, 28.848385, 24.017040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418378, -0.598988, -0.682769,
		-0.598988, -0.383128, 0.703155,
		0.682769, -0.703155, 0.198494,
		36.988911, 29.059332, 23.957493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833145, 28.219410, 24.149673>,  <37.466850, 28.567123, 24.096437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833145, 28.219410, 24.149673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840073, 28.519751, 23.885576>,  <36.844231, 28.699955, 23.727118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840073, 28.519751, 23.885576>,  <36.833145, 28.219410, 24.149673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840073, 28.519751, 23.885576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490892, -0.568891, -0.659839,
		-0.871048, 0.335538, 0.358732,
		0.017321, 0.750851, -0.660245,
		36.845268, 28.745007, 23.687502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658298, 27.425003, 23.973560>,  <36.833145, 28.219410, 24.149673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658298, 27.425003, 23.973560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847389, 27.072725, 23.961517>,  <36.960842, 26.861359, 23.954290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.847389, 27.072725, 23.961517>,  <36.658298, 27.425003, 23.973560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847389, 27.072725, 23.961517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415745, 0.192769, 0.888817,
		-0.776974, -0.432683, 0.457271,
		0.472724, -0.880696, -0.030110,
		36.989208, 26.808516, 23.952484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425911, 27.314474, 24.613420>,  <36.658298, 27.425003, 23.973560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425911, 27.314474, 24.613420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332710, 26.930439, 24.675310>,  <36.276791, 26.700018, 24.712444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332710, 26.930439, 24.675310>,  <36.425911, 27.314474, 24.613420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332710, 26.930439, 24.675310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047889, 0.170241, 0.984238,
		-0.971296, 0.221922, -0.085645,
		-0.233004, -0.960088, 0.154726,
		36.262810, 26.642412, 24.721727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886578, 27.307716, 25.064232>,  <36.425911, 27.314474, 24.613420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886578, 27.307716, 25.064232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071255, 26.954088, 25.093246>,  <36.182060, 26.741911, 25.110655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071255, 26.954088, 25.093246>,  <35.886578, 27.307716, 25.064232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071255, 26.954088, 25.093246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014670, 0.074153, 0.997139,
		-0.886921, -0.461431, 0.021266,
		0.461688, -0.884071, 0.072537,
		36.209763, 26.688868, 25.115007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565460, 26.964346, 25.635805>,  <35.886578, 27.307716, 25.064232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565460, 26.964346, 25.635805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.915390, 26.778677, 25.580338>,  <36.125347, 26.667276, 25.547058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.915390, 26.778677, 25.580338>,  <35.565460, 26.964346, 25.635805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915390, 26.778677, 25.580338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186858, 0.059226, 0.980600,
		-0.446953, -0.883763, 0.138546,
		0.874824, -0.464171, -0.138668,
		36.177837, 26.639425, 25.538736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666187, 26.473259, 26.206209>,  <35.565460, 26.964346, 25.635805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666187, 26.473259, 26.206209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013165, 26.582541, 26.039883>,  <36.221352, 26.648109, 25.940086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013165, 26.582541, 26.039883>,  <35.666187, 26.473259, 26.206209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013165, 26.582541, 26.039883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370961, 0.201800, 0.906458,
		0.331562, -0.940551, 0.073700,
		0.867442, 0.273207, -0.415816,
		36.273396, 26.664501, 25.915138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126228, 26.088812, 26.619225>,  <35.666187, 26.473259, 26.206209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126228, 26.088812, 26.619225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.345879, 26.370264, 26.438841>,  <36.477669, 26.539135, 26.330610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.345879, 26.370264, 26.438841>,  <36.126228, 26.088812, 26.619225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345879, 26.370264, 26.438841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626876, 0.010072, 0.779054,
		0.552708, -0.710495, -0.435558,
		0.549128, 0.703630, -0.450959,
		36.510616, 26.581352, 26.303553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834740, 25.972336, 26.880478>,  <36.126228, 26.088812, 26.619225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834740, 25.972336, 26.880478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876053, 26.329470, 26.705126>,  <36.900841, 26.543751, 26.599915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876053, 26.329470, 26.705126>,  <36.834740, 25.972336, 26.880478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876053, 26.329470, 26.705126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504178, 0.332927, 0.796847,
		0.857402, -0.303319, -0.415763,
		0.103280, 0.892837, -0.438379,
		36.907036, 26.597321, 26.573612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499157, 26.125282, 26.861788>,  <36.834740, 25.972336, 26.880478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499157, 26.125282, 26.861788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.336693, 26.490538, 26.847876>,  <37.239216, 26.709692, 26.839529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.336693, 26.490538, 26.847876>,  <37.499157, 26.125282, 26.861788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336693, 26.490538, 26.847876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547959, 0.273834, 0.790415,
		0.731284, 0.301975, -0.611583,
		-0.406158, 0.913141, -0.034781,
		37.214844, 26.764481, 26.837440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081268, 26.622931, 27.032360>,  <37.499157, 26.125282, 26.861788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081268, 26.622931, 27.032360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.766956, 26.866829, 27.073851>,  <37.578369, 27.013168, 27.098745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.766956, 26.866829, 27.073851>,  <38.081268, 26.622931, 27.032360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766956, 26.866829, 27.073851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387874, 0.355163, 0.850537,
		0.481771, 0.708569, -0.515584,
		-0.785780, 0.609746, 0.103728,
		37.531223, 27.049753, 27.104969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285801, 27.332235, 27.079235>,  <38.081268, 26.622931, 27.032360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285801, 27.332235, 27.079235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933907, 27.293005, 27.265333>,  <37.722771, 27.269466, 27.376991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933907, 27.293005, 27.265333>,  <38.285801, 27.332235, 27.079235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933907, 27.293005, 27.265333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420024, 0.298268, 0.857098,
		-0.222829, 0.949430, -0.221201,
		-0.879731, -0.098077, 0.465246,
		37.669987, 27.263582, 27.404907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149593, 28.005430, 27.356295>,  <38.285801, 27.332235, 27.079235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149593, 28.005430, 27.356295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922466, 27.759623, 27.575365>,  <37.786190, 27.612139, 27.706806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922466, 27.759623, 27.575365>,  <38.149593, 28.005430, 27.356295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922466, 27.759623, 27.575365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344766, 0.426623, 0.836139,
		-0.747475, 0.663595, -0.030379,
		-0.567818, -0.614520, 0.547675,
		37.752121, 27.575266, 27.739668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914215, 28.432329, 27.816423>,  <38.149593, 28.005430, 27.356295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914215, 28.432329, 27.816423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884060, 28.067768, 27.978243>,  <37.865967, 27.849031, 28.075335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884060, 28.067768, 27.978243>,  <37.914215, 28.432329, 27.816423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884060, 28.067768, 27.978243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156550, 0.389852, 0.907473,
		-0.984789, 0.131744, 0.113291,
		-0.075388, -0.911405, 0.404547,
		37.861443, 27.794346, 28.099607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612789, 28.572876, 28.448723>,  <37.914215, 28.432329, 27.816423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612789, 28.572876, 28.448723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751354, 28.205132, 28.523315>,  <37.834492, 27.984486, 28.568071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751354, 28.205132, 28.523315>,  <37.612789, 28.572876, 28.448723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751354, 28.205132, 28.523315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227549, 0.275202, 0.934069,
		-0.910067, -0.281137, 0.304532,
		0.346409, -0.919362, 0.186480,
		37.855278, 27.929323, 28.579260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355061, 28.397169, 29.087837>,  <37.612789, 28.572876, 28.448723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355061, 28.397169, 29.087837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666939, 28.153145, 29.031397>,  <37.854065, 28.006731, 28.997532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666939, 28.153145, 29.031397>,  <37.355061, 28.397169, 29.087837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666939, 28.153145, 29.031397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239533, 0.082386, 0.967386,
		-0.578538, -0.788061, 0.210365,
		0.779691, -0.610059, -0.141103,
		37.900845, 27.970127, 28.989065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401085, 28.074919, 29.725613>,  <37.355061, 28.397169, 29.087837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401085, 28.074919, 29.725613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752884, 28.040314, 29.538422>,  <37.963963, 28.019550, 29.426107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752884, 28.040314, 29.538422>,  <37.401085, 28.074919, 29.725613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752884, 28.040314, 29.538422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469627, 0.316979, 0.823999,
		0.077054, -0.944479, 0.319410,
		0.879496, -0.086511, -0.467977,
		38.016731, 28.014360, 29.398029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992004, 27.673130, 30.333204>,  <37.401085, 28.074919, 29.725613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992004, 27.673130, 30.333204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632294, 27.776020, 30.474703>,  <36.416466, 27.837755, 30.559603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632294, 27.776020, 30.474703>,  <36.992004, 27.673130, 30.333204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632294, 27.776020, 30.474703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437275, -0.510985, -0.740058,
		-0.009604, -0.820201, 0.571995,
		-0.899276, 0.257226, 0.353746,
		36.362511, 27.853188, 30.580826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628067, 27.045990, 30.430759>,  <36.992004, 27.673130, 30.333204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628067, 27.045990, 30.430759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.388733, 27.364687, 30.396809>,  <36.245132, 27.555904, 30.376438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.388733, 27.364687, 30.396809>,  <36.628067, 27.045990, 30.430759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388733, 27.364687, 30.396809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469413, -0.434411, -0.768726,
		-0.649347, -0.420109, 0.633922,
		-0.598331, 0.796741, -0.084879,
		36.209232, 27.603708, 30.371346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950981, 26.762907, 30.454679>,  <36.628067, 27.045990, 30.430759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950981, 26.762907, 30.454679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928043, 27.119102, 30.274128>,  <35.914280, 27.332819, 30.165796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928043, 27.119102, 30.274128>,  <35.950981, 26.762907, 30.454679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928043, 27.119102, 30.274128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578288, -0.398181, -0.712064,
		-0.813815, 0.220194, 0.537792,
		-0.057347, 0.890487, -0.451381,
		35.910839, 27.386248, 30.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283783, 26.680813, 30.234503>,  <35.950981, 26.762907, 30.454679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283783, 26.680813, 30.234503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403725, 27.001921, 30.028339>,  <35.475689, 27.194586, 29.904640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403725, 27.001921, 30.028339>,  <35.283783, 26.680813, 30.234503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403725, 27.001921, 30.028339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600979, -0.260628, -0.755577,
		-0.740884, 0.536316, 0.404296,
		0.299858, 0.802769, -0.515410,
		35.493683, 27.242752, 29.873716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778881, 27.151403, 29.983259>,  <35.283783, 26.680813, 30.234503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778881, 27.151403, 29.983259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075291, 27.241776, 29.730328>,  <35.253136, 27.296000, 29.578569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075291, 27.241776, 29.730328>,  <34.778881, 27.151403, 29.983259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075291, 27.241776, 29.730328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572879, -0.278518, -0.770868,
		-0.350279, 0.933479, -0.076956,
		0.741023, 0.225932, -0.632329,
		35.297596, 27.309555, 29.540628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417793, 27.470428, 29.461649>,  <34.778881, 27.151403, 29.983259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417793, 27.470428, 29.461649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759037, 27.355293, 29.287586>,  <34.963783, 27.286213, 29.183149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759037, 27.355293, 29.287586>,  <34.417793, 27.470428, 29.461649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759037, 27.355293, 29.287586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500181, -0.213932, -0.839079,
		0.148425, 0.933479, -0.326477,
		0.853106, -0.287838, -0.435155,
		35.014969, 27.268942, 29.157040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382648, 27.792698, 28.814060>,  <34.417793, 27.470428, 29.461649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382648, 27.792698, 28.814060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.646126, 27.492414, 28.793812>,  <34.804211, 27.312244, 28.781664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.646126, 27.492414, 28.793812>,  <34.382648, 27.792698, 28.814060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646126, 27.492414, 28.793812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393746, -0.286591, -0.873402,
		0.641162, 0.595234, -0.484363,
		0.658692, -0.750708, -0.050619,
		34.843735, 27.267202, 28.778625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185795, 28.455919, 28.495596>,  <34.382648, 27.792698, 28.814060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185795, 28.455919, 28.495596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796257, 28.440941, 28.585239>,  <33.562534, 28.431953, 28.639025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796257, 28.440941, 28.585239>,  <34.185795, 28.455919, 28.495596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796257, 28.440941, 28.585239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209121, 0.237989, 0.948488,
		-0.088852, 0.970546, -0.223934,
		-0.973845, -0.037446, 0.224108,
		33.504105, 28.429707, 28.652472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054314, 29.110098, 28.723129>,  <34.185795, 28.455919, 28.495596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054314, 29.110098, 28.723129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761280, 28.877464, 28.864594>,  <33.585461, 28.737885, 28.949472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761280, 28.877464, 28.864594>,  <34.054314, 29.110098, 28.723129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761280, 28.877464, 28.864594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033975, 0.550167, 0.834363,
		-0.679825, 0.599228, -0.422804,
		-0.732587, -0.581586, 0.353659,
		33.541504, 28.702988, 28.970692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653709, 29.618797, 28.957842>,  <34.054314, 29.110098, 28.723129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653709, 29.618797, 28.957842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577705, 29.260391, 29.118368>,  <33.532101, 29.045347, 29.214684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577705, 29.260391, 29.118368>,  <33.653709, 29.618797, 28.957842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577705, 29.260391, 29.118368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022787, 0.404630, 0.914196,
		-0.981517, 0.182854, -0.056467,
		-0.190012, -0.896013, 0.401318,
		33.520702, 28.991587, 29.238764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181103, 29.733988, 29.527922>,  <33.653709, 29.618797, 28.957842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181103, 29.733988, 29.527922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317116, 29.372465, 29.631853>,  <33.398724, 29.155552, 29.694212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317116, 29.372465, 29.631853>,  <33.181103, 29.733988, 29.527922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317116, 29.372465, 29.631853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101455, 0.309937, 0.945329,
		-0.934924, -0.295085, 0.197085,
		0.340036, -0.903805, 0.259830,
		33.419128, 29.101324, 29.709803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720951, 29.498587, 30.106590>,  <33.181103, 29.733988, 29.527922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720951, 29.498587, 30.106590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067486, 29.299118, 30.095369>,  <33.275406, 29.179436, 30.088636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067486, 29.299118, 30.095369>,  <32.720951, 29.498587, 30.106590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067486, 29.299118, 30.095369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163423, 0.229940, 0.959385,
		-0.471968, -0.835735, 0.280700,
		0.866336, -0.498672, -0.028054,
		33.327385, 29.149517, 30.086954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770287, 29.109880, 30.759949>,  <32.720951, 29.498587, 30.106590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770287, 29.109880, 30.759949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148674, 29.146854, 30.635630>,  <33.375706, 29.169039, 30.561037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148674, 29.146854, 30.635630>,  <32.770287, 29.109880, 30.759949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148674, 29.146854, 30.635630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285221, 0.218730, 0.933170,
		0.154233, -0.971398, 0.180549,
		0.945971, 0.092430, -0.310798,
		33.432465, 29.174585, 30.542389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123337, 28.749887, 31.187881>,  <32.770287, 29.109880, 30.759949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123337, 28.749887, 31.187881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398823, 29.006533, 31.052822>,  <33.564114, 29.160519, 30.971786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398823, 29.006533, 31.052822>,  <33.123337, 28.749887, 31.187881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398823, 29.006533, 31.052822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459662, -0.026251, 0.887706,
		0.560699, -0.766581, -0.313003,
		0.688715, 0.641611, -0.337649,
		33.605438, 29.199017, 30.951527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.708282, 29.965532, 25.045229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.084229, 29.978453, 24.909222>,  <34.309795, 29.986206, 24.827618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.084229, 29.978453, 24.909222>,  <33.708282, 29.965532, 25.045229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084229, 29.978453, 24.909222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143601, 0.865882, 0.479194,
		0.309896, -0.499204, 0.809172,
		0.939863, 0.032302, -0.340019,
		34.366188, 29.988144, 24.807217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265205, 30.174772, 25.620300>,  <33.708282, 29.965532, 25.045229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265205, 30.174772, 25.620300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435734, 30.264885, 25.269873>,  <34.538052, 30.318953, 25.059616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435734, 30.264885, 25.269873>,  <34.265205, 30.174772, 25.620300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435734, 30.264885, 25.269873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122729, 0.945130, 0.302765,
		0.896209, -0.236594, 0.375278,
		0.426318, 0.225283, -0.876071,
		34.563629, 30.332470, 25.007051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962204, 30.344482, 25.725153>,  <34.265205, 30.174772, 25.620300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962204, 30.344482, 25.725153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.828388, 30.512871, 25.387901>,  <34.748100, 30.613905, 25.185551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.828388, 30.512871, 25.387901>,  <34.962204, 30.344482, 25.725153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828388, 30.512871, 25.387901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181513, 0.906710, 0.380697,
		0.924735, -0.025680, -0.379744,
		-0.334541, 0.420973, -0.843128,
		34.728027, 30.639162, 25.134962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485626, 30.859713, 25.482229>,  <34.962204, 30.344482, 25.725153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485626, 30.859713, 25.482229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.125252, 30.945620, 25.331402>,  <34.909027, 30.997164, 25.240906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.125252, 30.945620, 25.331402>,  <35.485626, 30.859713, 25.482229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125252, 30.945620, 25.331402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076631, 0.934024, 0.348894,
		0.427122, 0.285437, -0.857958,
		-0.900941, 0.214767, -0.377069,
		34.854969, 31.010050, 25.218281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600452, 31.568352, 25.112141>,  <35.485626, 30.859713, 25.482229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600452, 31.568352, 25.112141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.206650, 31.576578, 25.181801>,  <34.970367, 31.581514, 25.223597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.206650, 31.576578, 25.181801>,  <35.600452, 31.568352, 25.112141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206650, 31.576578, 25.181801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072605, 0.951785, 0.298051,
		-0.159624, 0.306077, -0.938529,
		-0.984504, 0.020566, 0.174150,
		34.911297, 31.582748, 25.234045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480095, 32.253189, 25.219723>,  <35.600452, 31.568352, 25.112141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480095, 32.253189, 25.219723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.123775, 32.104183, 25.323814>,  <34.909985, 32.014782, 25.386269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.123775, 32.104183, 25.323814>,  <35.480095, 32.253189, 25.219723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123775, 32.104183, 25.323814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244841, 0.875911, 0.415732,
		-0.382802, 0.306617, -0.871464,
		-0.890795, -0.372512, 0.260228,
		34.856537, 31.992430, 25.401882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061295, 32.893379, 25.317169>,  <35.480095, 32.253189, 25.219723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061295, 32.893379, 25.317169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.848019, 32.600952, 25.487463>,  <34.720055, 32.425495, 25.589640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.848019, 32.600952, 25.487463>,  <35.061295, 32.893379, 25.317169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848019, 32.600952, 25.487463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346575, 0.647826, 0.678386,
		-0.771746, 0.214160, -0.598784,
		-0.533191, -0.731066, 0.425734,
		34.688061, 32.381634, 25.615183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324074, 33.099857, 25.397955>,  <35.061295, 32.893379, 25.317169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324074, 33.099857, 25.397955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.384880, 32.825100, 25.682228>,  <34.421364, 32.660244, 25.852791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.384880, 32.825100, 25.682228>,  <34.324074, 33.099857, 25.397955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384880, 32.825100, 25.682228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152890, 0.694040, 0.703514,
		-0.976482, -0.215600, 0.000485,
		0.152014, -0.686895, 0.710681,
		34.430485, 32.619030, 25.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875397, 33.354294, 25.848141>,  <34.324074, 33.099857, 25.397955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875397, 33.354294, 25.848141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.113415, 33.083565, 26.021498>,  <34.256226, 32.921127, 26.125511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.113415, 33.083565, 26.021498>,  <33.875397, 33.354294, 25.848141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113415, 33.083565, 26.021498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063845, 0.497739, 0.864974,
		-0.801154, -0.542367, 0.252964,
		0.595043, -0.676826, 0.433392,
		34.291927, 32.880516, 26.151516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476078, 33.152615, 26.527218>,  <33.875397, 33.354294, 25.848141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476078, 33.152615, 26.527218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.866776, 33.068558, 26.544239>,  <34.101192, 33.018124, 26.554451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.866776, 33.068558, 26.544239>,  <33.476078, 33.152615, 26.527218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866776, 33.068558, 26.544239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015897, 0.268894, 0.963039,
		-0.213817, -0.939966, 0.265981,
		0.976744, -0.210142, 0.042551,
		34.159798, 33.005516, 26.557005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600830, 32.623718, 27.055689>,  <33.476078, 33.152615, 26.527218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600830, 32.623718, 27.055689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.910183, 32.870102, 26.995718>,  <34.095795, 33.017933, 26.959736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.910183, 32.870102, 26.995718>,  <33.600830, 32.623718, 27.055689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910183, 32.870102, 26.995718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092193, 0.343268, 0.934702,
		0.627201, -0.709059, 0.322264,
		0.773382, 0.615956, -0.149927,
		34.142197, 33.054890, 26.950739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933544, 32.710926, 27.732494>,  <33.600830, 32.623718, 27.055689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933544, 32.710926, 27.732494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.061039, 33.034107, 27.534256>,  <34.137535, 33.228016, 27.415314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.061039, 33.034107, 27.534256>,  <33.933544, 32.710926, 27.732494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061039, 33.034107, 27.534256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044665, 0.509482, 0.859321,
		0.946792, -0.296029, 0.126301,
		0.318733, 0.807957, -0.495596,
		34.156658, 33.276493, 27.385578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604561, 32.425354, 28.377882>,  <33.933544, 32.710926, 27.732494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604561, 32.425354, 28.377882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.275700, 32.535213, 28.577335>,  <33.078384, 32.601131, 28.697008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.275700, 32.535213, 28.577335>,  <33.604561, 32.425354, 28.377882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275700, 32.535213, 28.577335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566708, -0.477874, -0.671177,
		0.053944, -0.834388, 0.548532,
		-0.822151, 0.274651, 0.498633,
		33.029053, 32.617607, 28.726925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171947, 31.793810, 28.483442>,  <33.604561, 32.425354, 28.377882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171947, 31.793810, 28.483442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.917034, 32.101692, 28.498568>,  <32.764088, 32.286423, 28.507643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.917034, 32.101692, 28.498568>,  <33.171947, 31.793810, 28.483442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917034, 32.101692, 28.498568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542400, -0.413144, -0.731515,
		-0.547428, -0.486689, 0.680776,
		-0.637279, 0.769705, 0.037813,
		32.725849, 32.332603, 28.509912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480297, 31.505392, 28.459070>,  <33.171947, 31.793810, 28.483442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480297, 31.505392, 28.459070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.463341, 31.882977, 28.328144>,  <32.453167, 32.109528, 28.249588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.463341, 31.882977, 28.328144>,  <32.480297, 31.505392, 28.459070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463341, 31.882977, 28.328144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595161, -0.286999, -0.750610,
		-0.802488, 0.162987, 0.573976,
		-0.042391, 0.943963, -0.327317,
		32.450623, 32.166164, 28.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773052, 31.680269, 28.356504>,  <32.480297, 31.505392, 28.459070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773052, 31.680269, 28.356504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978992, 31.933758, 28.125566>,  <32.102558, 32.085850, 27.987003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978992, 31.933758, 28.125566>,  <31.773052, 31.680269, 28.356504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978992, 31.933758, 28.125566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533285, -0.290543, -0.794476,
		-0.671219, 0.716926, 0.188367,
		0.514852, 0.633720, -0.577344,
		32.133450, 32.123875, 27.952364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209515, 31.956863, 27.917101>,  <31.773052, 31.680269, 28.356504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209515, 31.956863, 27.917101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563099, 32.039345, 27.749245>,  <31.775249, 32.088833, 27.648531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563099, 32.039345, 27.749245>,  <31.209515, 31.956863, 27.917101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563099, 32.039345, 27.749245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312136, -0.407977, -0.857978,
		-0.348121, 0.889402, -0.296271,
		0.883959, 0.206203, -0.419639,
		31.828287, 32.101204, 27.623352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099266, 32.400700, 27.372568>,  <31.209515, 31.956863, 27.917101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099266, 32.400700, 27.372568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.432495, 32.190441, 27.303648>,  <31.632433, 32.064285, 27.262297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.432495, 32.190441, 27.303648>,  <31.099266, 32.400700, 27.372568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432495, 32.190441, 27.303648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363566, -0.285544, -0.886726,
		0.416905, 0.801349, -0.428986,
		0.833072, -0.525646, -0.172299,
		31.682417, 32.032749, 27.251959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203039, 32.465496, 26.679678>,  <31.099266, 32.400700, 27.372568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203039, 32.465496, 26.679678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444025, 32.166225, 26.790863>,  <31.588615, 31.986662, 26.857574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444025, 32.166225, 26.790863>,  <31.203039, 32.465496, 26.679678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444025, 32.166225, 26.790863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333710, -0.552486, -0.763804,
		0.725035, 0.367404, -0.582528,
		0.602463, -0.748180, 0.277965,
		31.624763, 31.941771, 26.874252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584621, 32.350651, 26.128309>,  <31.203039, 32.465496, 26.679678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584621, 32.350651, 26.128309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.600143, 32.020870, 26.354147>,  <31.609457, 31.823000, 26.489649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.600143, 32.020870, 26.354147>,  <31.584621, 32.350651, 26.128309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600143, 32.020870, 26.354147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306359, -0.547625, -0.778621,
		0.951125, -0.142754, -0.273830,
		0.038805, -0.824456, 0.564594,
		31.611786, 31.773533, 26.523525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173210, 31.870714, 25.758743>,  <31.584621, 32.350651, 26.128309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173210, 31.870714, 25.758743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.941727, 31.632467, 25.981575>,  <31.802837, 31.489519, 26.115274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.941727, 31.632467, 25.981575>,  <32.173210, 31.870714, 25.758743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941727, 31.632467, 25.981575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118957, -0.614129, -0.780189,
		0.806813, -0.517769, 0.284547,
		-0.578707, -0.595618, 0.557079,
		31.768114, 31.453781, 26.148699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422810, 31.294210, 25.562134>,  <32.173210, 31.870714, 25.758743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422810, 31.294210, 25.562134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062843, 31.198328, 25.707840>,  <31.846863, 31.140799, 25.795263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062843, 31.198328, 25.707840>,  <32.422810, 31.294210, 25.562134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062843, 31.198328, 25.707840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168981, -0.578382, -0.798072,
		0.401988, -0.779753, 0.479990,
		-0.899917, -0.239706, 0.364266,
		31.792868, 31.126415, 25.817120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428150, 30.578722, 25.446302>,  <32.422810, 31.294210, 25.562134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428150, 30.578722, 25.446302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043098, 30.676943, 25.492006>,  <31.812069, 30.735876, 25.519428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043098, 30.676943, 25.492006>,  <32.428150, 30.578722, 25.446302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043098, 30.676943, 25.492006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259377, -0.714417, -0.649870,
		-0.077948, -0.655218, 0.751407,
		-0.962625, 0.245554, 0.114261,
		31.754311, 30.750608, 25.526285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041340, 29.937004, 25.573854>,  <32.428150, 30.578722, 25.446302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041340, 29.937004, 25.573854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.765610, 30.192343, 25.436834>,  <31.600172, 30.345547, 25.354622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.765610, 30.192343, 25.436834>,  <32.041340, 29.937004, 25.573854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765610, 30.192343, 25.436834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337190, -0.701212, -0.628175,
		-0.641195, -0.317513, 0.698609,
		-0.689327, 0.638347, -0.342551,
		31.558811, 30.383846, 25.334068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549278, 29.437918, 25.385057>,  <32.041340, 29.937004, 25.573854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549278, 29.437918, 25.385057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492081, 29.784676, 25.194040>,  <31.457762, 29.992731, 25.079430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492081, 29.784676, 25.194040>,  <31.549278, 29.437918, 25.385057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492081, 29.784676, 25.194040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250071, -0.498492, -0.830042,
		-0.957610, 0.000730, 0.288065,
		-0.142993, 0.866894, -0.477543,
		31.449183, 30.044744, 25.050777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037434, 29.044859, 25.787207>,  <31.549278, 29.437918, 25.385057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037434, 29.044859, 25.787207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.042412, 28.646530, 25.823400>,  <32.045399, 28.407534, 25.845118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.042412, 28.646530, 25.823400>,  <32.037434, 29.044859, 25.787207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042412, 28.646530, 25.823400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170475, 0.091279, 0.981125,
		-0.985283, 0.003218, 0.170898,
		0.012442, -0.995820, 0.090484,
		32.046143, 28.347784, 25.850546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695248, 28.886066, 26.373569>,  <32.037434, 29.044859, 25.787207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695248, 28.886066, 26.373569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906883, 28.550848, 26.320282>,  <32.033863, 28.349718, 26.288309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906883, 28.550848, 26.320282>,  <31.695248, 28.886066, 26.373569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906883, 28.550848, 26.320282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172293, -0.047629, 0.983894,
		-0.830892, -0.543518, 0.119189,
		0.529088, -0.838045, -0.133219,
		32.065609, 28.299435, 26.280315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536758, 28.589216, 26.938768>,  <31.695248, 28.886066, 26.373569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536758, 28.589216, 26.938768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.857565, 28.391071, 26.805267>,  <32.050049, 28.272184, 26.725166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.857565, 28.391071, 26.805267>,  <31.536758, 28.589216, 26.938768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857565, 28.391071, 26.805267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330268, -0.097808, 0.938806,
		-0.497692, -0.863163, 0.085158,
		0.802014, -0.495361, -0.333753,
		32.098167, 28.242462, 26.705141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531649, 28.005816, 27.354015>,  <31.536758, 28.589216, 26.938768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531649, 28.005816, 27.354015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.897589, 28.044321, 27.197155>,  <32.117153, 28.067425, 27.103039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.897589, 28.044321, 27.197155>,  <31.531649, 28.005816, 27.354015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897589, 28.044321, 27.197155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403545, -0.184115, 0.896244,
		0.014075, -0.978179, -0.207284,
		0.914851, 0.096263, -0.392148,
		32.172043, 28.073200, 27.079510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011131, 27.486647, 27.691204>,  <31.531649, 28.005816, 27.354015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011131, 27.486647, 27.691204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.245125, 27.761168, 27.518333>,  <32.385521, 27.925880, 27.414610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.245125, 27.761168, 27.518333>,  <32.011131, 27.486647, 27.691204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245125, 27.761168, 27.518333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613187, -0.025485, 0.789527,
		0.530841, -0.726869, -0.435740,
		0.584987, 0.686303, -0.432178,
		32.420620, 27.967058, 27.388680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730972, 27.316940, 27.825497>,  <32.011131, 27.486647, 27.691204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730972, 27.316940, 27.825497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731140, 27.709366, 27.748026>,  <32.731239, 27.944822, 27.701544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731140, 27.709366, 27.748026>,  <32.730972, 27.316940, 27.825497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731140, 27.709366, 27.748026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342790, 0.181802, 0.921652,
		0.939412, -0.066778, -0.336223,
		0.000420, 0.981065, -0.193678,
		32.731266, 28.003685, 27.689922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374939, 27.454191, 27.934441>,  <32.730972, 27.316940, 27.825497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374939, 27.454191, 27.934441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.167603, 27.795727, 27.953537>,  <33.043201, 28.000648, 27.964994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.167603, 27.795727, 27.953537>,  <33.374939, 27.454191, 27.934441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167603, 27.795727, 27.953537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499298, 0.256845, 0.827486,
		0.694276, 0.452760, -0.559453,
		-0.518345, 0.853838, 0.047741,
		33.012100, 28.051878, 27.967859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910694, 27.928246, 28.029116>,  <33.374939, 27.454191, 27.934441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910694, 27.928246, 28.029116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.568157, 28.100479, 28.143154>,  <33.362637, 28.203819, 28.211576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.568157, 28.100479, 28.143154>,  <33.910694, 27.928246, 28.029116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568157, 28.100479, 28.143154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429367, 0.286926, 0.856339,
		0.286926, 0.855727, -0.430586,
		-0.856339, 0.430586, 0.285094,
		33.311256, 28.229654, 28.228682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640388, 27.707285, 27.995974>,  <33.910694, 27.928246, 28.029116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640388, 27.707285, 27.995974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.744591, 27.352955, 28.149570>,  <34.807114, 27.140356, 28.241728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.744591, 27.352955, 28.149570>,  <34.640388, 27.707285, 27.995974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744591, 27.352955, 28.149570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232676, -0.443603, -0.865493,
		0.937016, 0.136121, -0.321671,
		0.260506, -0.885826, 0.383991,
		34.822742, 27.087208, 28.264769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097183, 27.318892, 27.498972>,  <34.640388, 27.707285, 27.995974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097183, 27.318892, 27.498972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949017, 27.037600, 27.741711>,  <34.860119, 26.868824, 27.887354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949017, 27.037600, 27.741711>,  <35.097183, 27.318892, 27.498972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949017, 27.037600, 27.741711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140627, -0.603332, -0.784993,
		0.918160, -0.376112, 0.124590,
		-0.370414, -0.703228, 0.606847,
		34.837891, 26.826632, 27.923765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409275, 26.781048, 27.213917>,  <35.097183, 27.318892, 27.498972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409275, 26.781048, 27.213917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086086, 26.657164, 27.414423>,  <34.892174, 26.582832, 27.534727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086086, 26.657164, 27.414423>,  <35.409275, 26.781048, 27.213917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086086, 26.657164, 27.414423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207843, -0.646234, -0.734291,
		0.551353, -0.697468, 0.457765,
		-0.807967, -0.309711, 0.501266,
		34.843697, 26.564251, 27.564802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444374, 26.043522, 27.032164>,  <35.409275, 26.781048, 27.213917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444374, 26.043522, 27.032164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.098392, 26.082102, 27.229160>,  <34.890804, 26.105249, 27.347359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.098392, 26.082102, 27.229160>,  <35.444374, 26.043522, 27.032164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098392, 26.082102, 27.229160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465050, -0.522899, -0.714356,
		0.188622, -0.846920, 0.497140,
		-0.864957, 0.096451, 0.492490,
		34.838905, 26.111038, 27.376907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221817, 25.409935, 27.118114>,  <35.444374, 26.043522, 27.032164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221817, 25.409935, 27.118114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.919003, 25.670729, 27.101097>,  <34.737312, 25.827206, 27.090887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.919003, 25.670729, 27.101097>,  <35.221817, 25.409935, 27.118114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919003, 25.670729, 27.101097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334134, -0.442280, -0.832312,
		-0.561472, -0.615875, 0.552673,
		-0.757036, 0.651987, -0.042543,
		34.691891, 25.866323, 27.088335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779587, 25.024176, 26.894838>,  <35.221817, 25.409935, 27.118114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779587, 25.024176, 26.894838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.611511, 25.380560, 26.825985>,  <34.510666, 25.594391, 26.784672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.611511, 25.380560, 26.825985>,  <34.779587, 25.024176, 26.894838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611511, 25.380560, 26.825985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335467, -0.328775, -0.882819,
		-0.843148, -0.313210, 0.437036,
		-0.420194, 0.890958, -0.172135,
		34.485455, 25.647848, 26.774345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198788, 24.796135, 26.685080>,  <34.779587, 25.024176, 26.894838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198788, 24.796135, 26.685080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.231705, 25.178398, 26.571981>,  <34.251453, 25.407757, 26.504122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.231705, 25.178398, 26.571981>,  <34.198788, 24.796135, 26.685080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231705, 25.178398, 26.571981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295557, -0.247545, -0.922696,
		-0.951775, 0.159496, 0.262081,
		0.082290, 0.955658, -0.282747,
		34.256393, 25.465096, 26.487158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576214, 24.982538, 26.346214>,  <34.198788, 24.796135, 26.685080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576214, 24.982538, 26.346214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882519, 25.196287, 26.203074>,  <34.066303, 25.324535, 26.117189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882519, 25.196287, 26.203074>,  <33.576214, 24.982538, 26.346214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882519, 25.196287, 26.203074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311122, -0.179174, -0.933327,
		-0.562861, 0.826041, 0.029051,
		0.765762, 0.534371, -0.357850,
		34.112247, 25.356598, 26.095718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263794, 25.357851, 25.843809>,  <33.576214, 24.982538, 26.346214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263794, 25.357851, 25.843809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652325, 25.309366, 25.761993>,  <33.885441, 25.280275, 25.712904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652325, 25.309366, 25.761993>,  <33.263794, 25.357851, 25.843809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652325, 25.309366, 25.761993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218121, -0.111964, -0.969478,
		0.094611, 0.986292, -0.135192,
		0.971325, -0.121212, -0.204538,
		33.943722, 25.273003, 25.700632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.701790, 34.791939, 37.198959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.037178, 34.747253, 36.985611>,  <40.238411, 34.720440, 36.857601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.037178, 34.747253, 36.985611>,  <39.701790, 34.791939, 37.198959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037178, 34.747253, 36.985611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517135, -0.471785, -0.714136,
		-0.171854, 0.874608, -0.453352,
		0.838473, -0.111716, -0.533368,
		40.288719, 34.713737, 36.825600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523140, 35.011749, 36.597092>,  <39.701790, 34.791939, 37.198959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523140, 35.011749, 36.597092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846107, 34.777794, 36.566158>,  <40.039886, 34.637421, 36.547600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846107, 34.777794, 36.566158>,  <39.523140, 35.011749, 36.597092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846107, 34.777794, 36.566158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453426, -0.531325, -0.715611,
		0.377463, 0.612863, -0.694205,
		0.807420, -0.584887, -0.077332,
		40.088333, 34.602329, 36.542957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605362, 34.802521, 35.856087>,  <39.523140, 35.011749, 36.597092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605362, 34.802521, 35.856087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800659, 34.522308, 36.064266>,  <39.917839, 34.354179, 36.189175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800659, 34.522308, 36.064266>,  <39.605362, 34.802521, 35.856087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800659, 34.522308, 36.064266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415274, -0.711015, -0.567456,
		0.767569, 0.060928, -0.638063,
		0.488247, -0.700533, 0.520451,
		39.947132, 34.312149, 36.220402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760147, 34.318874, 35.384285>,  <39.605362, 34.802521, 35.856087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760147, 34.318874, 35.384285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.817680, 34.109417, 35.720169>,  <39.852200, 33.983742, 35.921700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.817680, 34.109417, 35.720169>,  <39.760147, 34.318874, 35.384285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817680, 34.109417, 35.720169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375344, -0.813995, -0.443316,
		0.915657, -0.251415, -0.313627,
		0.143835, -0.523644, 0.839707,
		39.860832, 33.952324, 35.972080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115437, 33.678577, 35.132736>,  <39.760147, 34.318874, 35.384285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115437, 33.678577, 35.132736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.933506, 33.617496, 35.483692>,  <39.824348, 33.580849, 35.694267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.933506, 33.617496, 35.483692>,  <40.115437, 33.678577, 35.132736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933506, 33.617496, 35.483692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554960, -0.721927, -0.413328,
		0.696532, -0.674909, 0.243602,
		-0.454822, -0.152707, 0.877393,
		39.797058, 33.571686, 35.746910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243713, 32.949154, 35.395683>,  <40.115437, 33.678577, 35.132736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243713, 32.949154, 35.395683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.909019, 33.081764, 35.570023>,  <39.708202, 33.161331, 35.674625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.909019, 33.081764, 35.570023>,  <40.243713, 32.949154, 35.395683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909019, 33.081764, 35.570023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475006, -0.835429, -0.276455,
		0.272468, -0.438351, 0.856510,
		-0.836738, 0.331523, 0.435847,
		39.657997, 33.181221, 35.700775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988605, 32.387131, 35.719696>,  <40.243713, 32.949154, 35.395683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988605, 32.387131, 35.719696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670128, 32.628906, 35.708942>,  <39.479042, 32.773972, 35.702492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670128, 32.628906, 35.708942>,  <39.988605, 32.387131, 35.719696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670128, 32.628906, 35.708942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592333, -0.787764, -0.169025,
		-0.123346, -0.118652, 0.985245,
		-0.796195, 0.604442, -0.026885,
		39.431271, 32.810238, 35.700878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512989, 31.954618, 35.953712>,  <39.988605, 32.387131, 35.719696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512989, 31.954618, 35.953712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.303146, 32.265774, 35.815334>,  <39.177242, 32.452469, 35.732307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.303146, 32.265774, 35.815334>,  <39.512989, 31.954618, 35.953712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303146, 32.265774, 35.815334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764416, -0.609279, -0.210827,
		-0.374777, 0.153844, 0.914262,
		-0.524606, 0.777889, -0.345945,
		39.145763, 32.499142, 35.711552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887455, 31.943325, 36.286629>,  <39.512989, 31.954618, 35.953712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887455, 31.943325, 36.286629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825325, 32.127789, 35.937183>,  <38.788048, 32.238468, 35.727516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825325, 32.127789, 35.937183>,  <38.887455, 31.943325, 36.286629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825325, 32.127789, 35.937183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702476, -0.673333, -0.230543,
		-0.694552, 0.577887, 0.428537,
		-0.155321, 0.461161, -0.873616,
		38.778728, 32.266136, 35.675098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187298, 31.827429, 36.174492>,  <38.887455, 31.943325, 36.286629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187298, 31.827429, 36.174492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320553, 31.959713, 35.821301>,  <38.400505, 32.039082, 35.609386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320553, 31.959713, 35.821301>,  <38.187298, 31.827429, 36.174492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320553, 31.959713, 35.821301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590309, -0.657074, -0.468816,
		-0.735224, 0.677411, -0.023675,
		0.333137, 0.330709, -0.882978,
		38.420494, 32.058926, 35.556408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589432, 31.947512, 35.733635>,  <38.187298, 31.827429, 36.174492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589432, 31.947512, 35.733635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909893, 31.879173, 35.504215>,  <38.102169, 31.838169, 35.366562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909893, 31.879173, 35.504215>,  <37.589432, 31.947512, 35.733635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909893, 31.879173, 35.504215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511839, -0.692237, -0.508752,
		-0.310115, 0.701156, -0.642035,
		0.801155, -0.170847, -0.573553,
		38.150238, 31.827919, 35.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360138, 32.099239, 35.066124>,  <37.589432, 31.947512, 35.733635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360138, 32.099239, 35.066124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666252, 31.841808, 35.070942>,  <37.849922, 31.687351, 35.073833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666252, 31.841808, 35.070942>,  <37.360138, 32.099239, 35.066124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666252, 31.841808, 35.070942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562495, -0.677741, -0.473568,
		0.312943, 0.355639, -0.880675,
		0.765288, -0.643575, 0.012049,
		37.895840, 31.648735, 35.074558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019894, 32.652851, 34.909840>,  <37.360138, 32.099239, 35.066124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019894, 32.652851, 34.909840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652340, 32.645489, 35.067478>,  <36.431808, 32.641071, 35.162060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652340, 32.645489, 35.067478>,  <37.019894, 32.652851, 34.909840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652340, 32.645489, 35.067478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310478, 0.582591, 0.751127,
		-0.243421, 0.812557, -0.529620,
		-0.918885, -0.018405, 0.394096,
		36.376675, 32.639969, 35.185707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825161, 33.307564, 34.900139>,  <37.019894, 32.652851, 34.909840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825161, 33.307564, 34.900139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602428, 33.125603, 35.178131>,  <36.468788, 33.016426, 35.344929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602428, 33.125603, 35.178131>,  <36.825161, 33.307564, 34.900139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602428, 33.125603, 35.178131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357288, 0.624167, 0.694810,
		-0.749855, 0.635203, -0.185027,
		-0.556833, -0.454899, 0.694984,
		36.435379, 32.989132, 35.386627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615963, 33.850971, 35.391537>,  <36.825161, 33.307564, 34.900139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615963, 33.850971, 35.391537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553402, 33.504589, 35.581551>,  <36.515865, 33.296761, 35.695557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553402, 33.504589, 35.581551>,  <36.615963, 33.850971, 35.391537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553402, 33.504589, 35.581551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191228, 0.445302, 0.874722,
		-0.969004, 0.227651, 0.095948,
		-0.156405, -0.865957, 0.475033,
		36.506481, 33.244801, 35.724060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324924, 33.983025, 36.075306>,  <36.615963, 33.850971, 35.391537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324924, 33.983025, 36.075306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460327, 33.615955, 36.158539>,  <36.541569, 33.395714, 36.208477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460327, 33.615955, 36.158539>,  <36.324924, 33.983025, 36.075306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460327, 33.615955, 36.158539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179664, 0.280103, 0.943008,
		-0.923654, -0.281827, 0.259688,
		0.338504, -0.917669, 0.208084,
		36.561878, 33.340656, 36.220963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050156, 33.860405, 36.724548>,  <36.324924, 33.983025, 36.075306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050156, 33.860405, 36.724548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354694, 33.604225, 36.684196>,  <36.537418, 33.450520, 36.659985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354694, 33.604225, 36.684196>,  <36.050156, 33.860405, 36.724548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354694, 33.604225, 36.684196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340711, 0.262842, 0.902679,
		-0.551602, -0.721625, 0.418321,
		0.761348, -0.640446, -0.100882,
		36.583099, 33.412090, 36.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031540, 33.445866, 37.364029>,  <36.050156, 33.860405, 36.724548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031540, 33.445866, 37.364029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403286, 33.378742, 37.232506>,  <36.626335, 33.338467, 37.153591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403286, 33.378742, 37.232506>,  <36.031540, 33.445866, 37.364029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403286, 33.378742, 37.232506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345486, 0.081557, 0.934873,
		-0.130067, -0.982439, 0.133774,
		0.929366, -0.167813, -0.328811,
		36.682095, 33.328400, 37.133862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315948, 32.919914, 37.856514>,  <36.031540, 33.445866, 37.364029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315948, 32.919914, 37.856514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636913, 33.085983, 37.685043>,  <36.829491, 33.185627, 37.582161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636913, 33.085983, 37.685043>,  <36.315948, 32.919914, 37.856514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636913, 33.085983, 37.685043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420468, 0.116433, 0.899806,
		0.423490, -0.902260, -0.081141,
		0.802411, 0.415176, -0.428680,
		36.877636, 33.210537, 37.556438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956772, 32.612938, 38.160507>,  <36.315948, 32.919914, 37.856514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956772, 32.612938, 38.160507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046837, 32.975922, 38.018627>,  <37.100876, 33.193714, 37.933498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046837, 32.975922, 38.018627>,  <36.956772, 32.612938, 38.160507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046837, 32.975922, 38.018627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117205, 0.336177, 0.934477,
		0.967246, -0.251982, -0.030665,
		0.225163, 0.907463, -0.354700,
		37.114388, 33.248161, 37.912216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412460, 32.910538, 38.693935>,  <36.956772, 32.612938, 38.160507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412460, 32.910538, 38.693935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288300, 33.211712, 38.461819>,  <37.213802, 33.392414, 38.322548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288300, 33.211712, 38.461819>,  <37.412460, 32.910538, 38.693935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288300, 33.211712, 38.461819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018191, 0.615042, 0.788285,
		0.950431, 0.234130, -0.204607,
		-0.310403, 0.752932, -0.580296,
		37.195179, 33.437592, 38.287731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798687, 33.461346, 39.019356>,  <37.412460, 32.910538, 38.693935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798687, 33.461346, 39.019356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.538635, 33.666363, 38.794987>,  <37.382607, 33.789371, 38.660366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.538635, 33.666363, 38.794987>,  <37.798687, 33.461346, 39.019356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538635, 33.666363, 38.794987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116019, 0.662607, 0.739926,
		0.750916, 0.546123, -0.371313,
		-0.650126, 0.512543, -0.560924,
		37.343597, 33.820126, 38.626709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940876, 34.126030, 39.036175>,  <37.798687, 33.461346, 39.019356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940876, 34.126030, 39.036175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568031, 34.151073, 38.893490>,  <37.344322, 34.166100, 38.807880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568031, 34.151073, 38.893490>,  <37.940876, 34.126030, 39.036175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568031, 34.151073, 38.893490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121663, 0.873569, 0.471249,
		0.341115, 0.482657, -0.806649,
		-0.932115, 0.062611, -0.356709,
		37.288395, 34.169857, 38.786476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763210, 34.756695, 38.641178>,  <37.940876, 34.126030, 39.036175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763210, 34.756695, 38.641178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.388271, 34.654747, 38.736191>,  <37.163307, 34.593578, 38.793198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.388271, 34.654747, 38.736191>,  <37.763210, 34.756695, 38.641178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388271, 34.654747, 38.736191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115926, 0.871107, 0.477215,
		-0.328545, 0.419779, -0.846075,
		-0.937347, -0.254869, 0.237534,
		37.107067, 34.578285, 38.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340374, 35.456497, 38.626842>,  <37.763210, 34.756695, 38.641178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340374, 35.456497, 38.626842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165668, 35.164341, 38.836899>,  <37.060844, 34.989048, 38.962933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165668, 35.164341, 38.836899>,  <37.340374, 35.456497, 38.626842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165668, 35.164341, 38.836899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372894, 0.678246, 0.633192,
		-0.818649, 0.080734, -0.568590,
		-0.436764, -0.730387, 0.525140,
		37.034637, 34.945225, 38.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680511, 35.636906, 38.769821>,  <37.340374, 35.456497, 38.626842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680511, 35.636906, 38.769821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770245, 35.382168, 39.064877>,  <36.824085, 35.229324, 39.241909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770245, 35.382168, 39.064877>,  <36.680511, 35.636906, 38.769821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770245, 35.382168, 39.064877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232909, 0.699955, 0.675141,
		-0.946271, -0.323259, 0.008697,
		0.224333, -0.636841, 0.737637,
		36.837543, 35.191116, 39.286167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112537, 35.619385, 39.150364>,  <36.680511, 35.636906, 38.769821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112537, 35.619385, 39.150364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416981, 35.533890, 39.395321>,  <36.599648, 35.482594, 39.542297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416981, 35.533890, 39.395321>,  <36.112537, 35.619385, 39.150364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416981, 35.533890, 39.395321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365694, 0.638379, 0.677303,
		-0.535706, -0.739452, 0.407714,
		0.761109, -0.213737, 0.612397,
		36.645313, 35.469769, 39.579041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523865, 35.688000, 38.779423>,  <36.112537, 35.619385, 39.150364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523865, 35.688000, 38.779423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659836, 35.940647, 38.500710>,  <35.741417, 36.092236, 38.333481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659836, 35.940647, 38.500710>,  <35.523865, 35.688000, 38.779423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659836, 35.940647, 38.500710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658613, -0.369001, -0.655795,
		-0.671327, 0.681832, 0.290559,
		0.339926, 0.631619, -0.696784,
		35.761814, 36.130135, 38.291676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995346, 36.094082, 38.418301>,  <35.523865, 35.688000, 38.779423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995346, 36.094082, 38.418301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305553, 36.110504, 38.166306>,  <35.491680, 36.120358, 38.015110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305553, 36.110504, 38.166306>,  <34.995346, 36.094082, 38.418301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305553, 36.110504, 38.166306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607208, -0.224653, -0.762122,
		-0.172816, 0.973574, -0.149295,
		0.775521, 0.041054, -0.629985,
		35.538208, 36.122822, 37.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714798, 36.486443, 37.955070>,  <34.995346, 36.094082, 38.418301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714798, 36.486443, 37.955070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027500, 36.293194, 37.797367>,  <35.215122, 36.177242, 37.702744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027500, 36.293194, 37.797367>,  <34.714798, 36.486443, 37.955070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027500, 36.293194, 37.797367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539168, -0.206040, -0.816606,
		0.313290, 0.850962, -0.421560,
		0.781759, -0.483126, -0.394262,
		35.262028, 36.148254, 37.679089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841152, 36.842991, 37.299732>,  <34.714798, 36.486443, 37.955070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841152, 36.842991, 37.299732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000214, 36.476028, 37.293552>,  <35.095650, 36.255852, 37.289845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000214, 36.476028, 37.293552>,  <34.841152, 36.842991, 37.299732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000214, 36.476028, 37.293552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338333, -0.130959, -0.931869,
		0.852880, 0.375786, -0.362465,
		0.397651, -0.917407, -0.015448,
		35.119511, 36.200806, 37.288918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265198, 36.843811, 36.691910>,  <34.841152, 36.842991, 37.299732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265198, 36.843811, 36.691910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207466, 36.454590, 36.763844>,  <35.172829, 36.221058, 36.807003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207466, 36.454590, 36.763844>,  <35.265198, 36.843811, 36.691910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207466, 36.454590, 36.763844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289981, -0.132166, -0.947862,
		0.946087, -0.188949, -0.263092,
		-0.144326, -0.973052, 0.179832,
		35.164169, 36.162674, 36.817795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429413, 36.497208, 36.063969>,  <35.265198, 36.843811, 36.691910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429413, 36.497208, 36.063969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225716, 36.214321, 36.260139>,  <35.103497, 36.044590, 36.377842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225716, 36.214321, 36.260139>,  <35.429413, 36.497208, 36.063969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225716, 36.214321, 36.260139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409652, -0.301966, -0.860815,
		0.756876, -0.639265, -0.135940,
		-0.509239, -0.707218, 0.490427,
		35.072945, 36.002155, 36.407269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714092, 35.773914, 35.887131>,  <35.429413, 36.497208, 36.063969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714092, 35.773914, 35.887131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337807, 35.750572, 36.020790>,  <35.112038, 35.736565, 36.100986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337807, 35.750572, 36.020790>,  <35.714092, 35.773914, 35.887131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337807, 35.750572, 36.020790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271266, -0.462018, -0.844366,
		0.203660, -0.884948, 0.418795,
		-0.940711, -0.058359, 0.334151,
		35.055592, 35.733063, 36.121037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538067, 35.095417, 35.771820>,  <35.714092, 35.773914, 35.887131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538067, 35.095417, 35.771820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176582, 35.260456, 35.817543>,  <34.959690, 35.359478, 35.844975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176582, 35.260456, 35.817543>,  <35.538067, 35.095417, 35.771820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176582, 35.260456, 35.817543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333926, -0.512181, -0.791305,
		-0.267943, -0.753284, 0.600641,
		-0.903715, 0.412595, 0.114306,
		34.905468, 35.384235, 35.851833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025116, 34.501251, 35.766216>,  <35.538067, 35.095417, 35.771820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025116, 34.501251, 35.766216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829800, 34.842312, 35.691856>,  <34.712608, 35.046947, 35.647240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829800, 34.842312, 35.691856>,  <35.025116, 34.501251, 35.766216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829800, 34.842312, 35.691856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420129, -0.416392, -0.806294,
		-0.764893, -0.315607, 0.561544,
		-0.488294, 0.852649, -0.185900,
		34.683311, 35.098106, 35.636086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252960, 34.343517, 35.683430>,  <35.025116, 34.501251, 35.766216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252960, 34.343517, 35.683430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316418, 34.702690, 35.519207>,  <34.354492, 34.918194, 35.420673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316418, 34.702690, 35.519207>,  <34.252960, 34.343517, 35.683430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316418, 34.702690, 35.519207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550885, -0.264578, -0.791533,
		-0.819364, 0.351742, 0.452681,
		0.158646, 0.897929, -0.410555,
		34.364010, 34.972069, 35.396042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639156, 34.438602, 35.370457>,  <34.252960, 34.343517, 35.683430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639156, 34.438602, 35.370457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871056, 34.719791, 35.205666>,  <34.010197, 34.888504, 35.106792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871056, 34.719791, 35.205666>,  <33.639156, 34.438602, 35.370457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871056, 34.719791, 35.205666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377328, -0.216503, -0.900416,
		-0.722159, 0.677467, 0.139733,
		0.579750, 0.702969, -0.411977,
		34.044979, 34.930683, 35.082073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300217, 34.842514, 34.892513>,  <33.639156, 34.438602, 35.370457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300217, 34.842514, 34.892513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679066, 34.892246, 34.774193>,  <33.906376, 34.922085, 34.703201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679066, 34.892246, 34.774193>,  <33.300217, 34.842514, 34.892513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679066, 34.892246, 34.774193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294695, -0.027606, -0.955193,
		-0.126929, 0.991856, 0.010494,
		0.947124, 0.124334, -0.295799,
		33.963203, 34.929546, 34.685452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253605, 35.307438, 34.349518>,  <33.300217, 34.842514, 34.892513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253605, 35.307438, 34.349518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612038, 35.134354, 34.309917>,  <33.827095, 35.030502, 34.286160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612038, 35.134354, 34.309917>,  <33.253605, 35.307438, 34.349518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612038, 35.134354, 34.309917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122616, -0.026943, -0.992088,
		0.426622, 0.901129, -0.077201,
		0.896080, -0.432713, -0.098998,
		33.880863, 35.004539, 34.280216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715744, 35.593922, 33.826839>,  <33.253605, 35.307438, 34.349518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715744, 35.593922, 33.826839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879669, 35.230488, 33.859165>,  <33.978024, 35.012428, 33.878559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879669, 35.230488, 33.859165>,  <33.715744, 35.593922, 33.826839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879669, 35.230488, 33.859165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096165, -0.131136, -0.986689,
		0.907084, 0.396590, -0.141116,
		0.409817, -0.908581, 0.080814,
		34.002613, 34.957912, 33.883408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376034, 35.436493, 33.370094>,  <33.715744, 35.593922, 33.826839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376034, 35.436493, 33.370094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209675, 35.081795, 33.450794>,  <34.109859, 34.868977, 33.499214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209675, 35.081795, 33.450794>,  <34.376034, 35.436493, 33.370094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209675, 35.081795, 33.450794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118191, -0.272672, -0.954820,
		0.901698, -0.373263, 0.218210,
		-0.415899, -0.886749, 0.201752,
		34.084904, 34.815769, 33.511318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665874, 35.084557, 32.832306>,  <34.376034, 35.436493, 33.370094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665874, 35.084557, 32.832306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382309, 34.831219, 32.956451>,  <34.212170, 34.679218, 33.030937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382309, 34.831219, 32.956451>,  <34.665874, 35.084557, 32.832306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382309, 34.831219, 32.956451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073567, -0.371242, -0.925617,
		0.701452, -0.679011, 0.216584,
		-0.708910, -0.633343, 0.310361,
		34.169636, 34.641216, 33.049561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924366, 34.379829, 32.569691>,  <34.665874, 35.084557, 32.832306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924366, 34.379829, 32.569691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528889, 34.363743, 32.627480>,  <34.291603, 34.354092, 32.662155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528889, 34.363743, 32.627480>,  <34.924366, 34.379829, 32.569691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528889, 34.363743, 32.627480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123168, -0.331832, -0.935263,
		0.085559, -0.942481, 0.323125,
		-0.988691, -0.040221, 0.144474,
		34.232281, 34.351677, 32.670822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725437, 33.731827, 32.346241>,  <34.924366, 34.379829, 32.569691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725437, 33.731827, 32.346241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383747, 33.939762, 32.343102>,  <34.178734, 34.064526, 32.341217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383747, 33.939762, 32.343102>,  <34.725437, 33.731827, 32.346241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383747, 33.939762, 32.343102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184266, -0.316833, -0.930410,
		-0.486152, -0.793335, 0.366437,
		-0.854226, 0.519843, -0.007844,
		34.127480, 34.095715, 32.340748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224834, 33.222546, 32.309025>,  <34.725437, 33.731827, 32.346241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224834, 33.222546, 32.309025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056355, 33.556911, 32.168262>,  <33.955265, 33.757530, 32.083805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056355, 33.556911, 32.168262>,  <34.224834, 33.222546, 32.309025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056355, 33.556911, 32.168262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331789, -0.503126, -0.797985,
		-0.844101, -0.219351, 0.489263,
		-0.421200, 0.835913, -0.351911,
		33.929993, 33.807686, 32.062691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656910, 32.966202, 31.969419>,  <34.224834, 33.222546, 32.309025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656910, 32.966202, 31.969419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666817, 33.339672, 31.826513>,  <33.672760, 33.563755, 31.740770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666817, 33.339672, 31.826513>,  <33.656910, 32.966202, 31.969419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666817, 33.339672, 31.826513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408138, -0.316788, -0.856194,
		-0.912584, 0.167022, 0.373221,
		0.024771, 0.933675, -0.357264,
		33.674248, 33.619774, 31.719334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968094, 33.068954, 31.703545>,  <33.656910, 32.966202, 31.969419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968094, 33.068954, 31.703545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220818, 33.334946, 31.544237>,  <33.372452, 33.494541, 31.448652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220818, 33.334946, 31.544237>,  <32.968094, 33.068954, 31.703545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220818, 33.334946, 31.544237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414990, -0.143776, -0.898394,
		-0.654677, 0.732890, 0.185123,
		0.631808, 0.664982, -0.398269,
		33.410358, 33.534439, 31.424757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571232, 33.385933, 31.173910>,  <32.968094, 33.068954, 31.703545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571232, 33.385933, 31.173910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943939, 33.489651, 31.072256>,  <33.167564, 33.551880, 31.011265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943939, 33.489651, 31.072256>,  <32.571232, 33.385933, 31.173910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943939, 33.489651, 31.072256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208052, -0.192314, -0.959025,
		-0.297539, 0.946459, -0.125245,
		0.931764, 0.259290, -0.254134,
		33.223469, 33.567436, 30.996016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534389, 33.915745, 30.562681>,  <32.571232, 33.385933, 31.173910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534389, 33.915745, 30.562681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895302, 33.743313, 30.559677>,  <33.111851, 33.639854, 30.557875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895302, 33.743313, 30.559677>,  <32.534389, 33.915745, 30.562681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895302, 33.743313, 30.559677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073698, -0.137040, -0.987820,
		0.424804, 0.891845, -0.155419,
		0.902281, -0.431084, -0.007512,
		33.165985, 33.613987, 30.557423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828751, 34.082813, 29.918158>,  <32.534389, 33.915745, 30.562681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828751, 34.082813, 29.918158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034763, 33.767555, 30.052965>,  <33.158371, 33.578400, 30.133850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034763, 33.767555, 30.052965>,  <32.828751, 34.082813, 29.918158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034763, 33.767555, 30.052965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034627, -0.373721, -0.926894,
		0.856473, 0.489047, -0.165186,
		0.515028, -0.788141, 0.337017,
		33.189270, 33.531113, 30.154070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422447, 34.056198, 29.459702>,  <32.828751, 34.082813, 29.918158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422447, 34.056198, 29.459702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361904, 33.698490, 29.628164>,  <33.325581, 33.483864, 29.729242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361904, 33.698490, 29.628164>,  <33.422447, 34.056198, 29.459702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361904, 33.698490, 29.628164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139137, -0.402549, -0.904762,
		0.978638, -0.195537, -0.063500,
		-0.151353, -0.894270, 0.421156,
		33.316498, 33.430210, 29.754511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604675, 33.706257, 28.991722>,  <33.422447, 34.056198, 29.459702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604675, 33.706257, 28.991722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412350, 33.432446, 29.210899>,  <33.296955, 33.268158, 29.342405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412350, 33.432446, 29.210899>,  <33.604675, 33.706257, 28.991722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412350, 33.432446, 29.210899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290722, -0.465110, -0.836154,
		0.827223, -0.561334, 0.024624,
		-0.480814, -0.684528, 0.547942,
		33.268105, 33.227089, 29.375282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812817, 33.117290, 28.667624>,  <33.604675, 33.706257, 28.991722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812817, 33.117290, 28.667624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456585, 33.051937, 28.837412>,  <33.242847, 33.012726, 28.939285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456585, 33.051937, 28.837412>,  <33.812817, 33.117290, 28.667624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456585, 33.051937, 28.837412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325370, -0.423261, -0.845568,
		0.317815, -0.891154, 0.323787,
		-0.890577, -0.163384, 0.424473,
		33.189411, 33.002922, 28.964754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422928, 32.937389, 28.260286>,  <33.812817, 33.117290, 28.667624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422928, 32.937389, 28.260286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455437, 33.265804, 28.034260>,  <34.474941, 33.462852, 27.898643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455437, 33.265804, 28.034260>,  <34.422928, 32.937389, 28.260286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455437, 33.265804, 28.034260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539654, 0.440398, 0.717512,
		0.837955, -0.363255, -0.407281,
		0.081274, 0.821033, -0.565065,
		34.479820, 33.512115, 27.864740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095795, 33.070343, 28.266779>,  <34.422928, 32.937389, 28.260286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095795, 33.070343, 28.266779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935387, 33.422588, 28.165821>,  <34.839142, 33.633934, 28.105247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935387, 33.422588, 28.165821>,  <35.095795, 33.070343, 28.266779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935387, 33.422588, 28.165821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510406, 0.443579, 0.736698,
		0.760702, 0.166610, -0.627355,
		-0.401023, 0.880613, -0.252393,
		34.815079, 33.686771, 28.090103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669384, 33.523590, 28.212599>,  <35.095795, 33.070343, 28.266779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669384, 33.523590, 28.212599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346226, 33.750977, 28.274765>,  <35.152332, 33.887409, 28.312065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346226, 33.750977, 28.274765>,  <35.669384, 33.523590, 28.212599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346226, 33.750977, 28.274765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490378, 0.502192, 0.712272,
		0.326852, 0.651655, -0.684481,
		-0.807897, 0.568462, 0.155415,
		35.103855, 33.921516, 28.321390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965637, 34.159256, 28.169092>,  <35.669384, 33.523590, 28.212599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965637, 34.159256, 28.169092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.626881, 34.180893, 28.380697>,  <35.423626, 34.193874, 28.507660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.626881, 34.180893, 28.380697>,  <35.965637, 34.159256, 28.169092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626881, 34.180893, 28.380697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508909, 0.370997, 0.776770,
		-0.154249, 0.927057, -0.341719,
		-0.846888, 0.054089, 0.529014,
		35.372814, 34.197121, 28.539402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873573, 34.844101, 28.349836>,  <35.965637, 34.159256, 28.169092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873573, 34.844101, 28.349836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683590, 34.633011, 28.631523>,  <35.569599, 34.506355, 28.800535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.683590, 34.633011, 28.631523>,  <35.873573, 34.844101, 28.349836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683590, 34.633011, 28.631523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339802, 0.628196, 0.699932,
		-0.811759, 0.571731, -0.119042,
		-0.474954, -0.527726, 0.704219,
		35.541103, 34.474693, 28.842789>
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
