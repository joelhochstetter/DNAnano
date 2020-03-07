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
	<2.118562, 0.911348, 3.095455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.380363, 1.183754, 2.964096>,  <2.537444, 1.347197, 2.885281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.380363, 1.183754, 2.964096>,  <2.118562, 0.911348, 3.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.380363, 1.183754, 2.964096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694261, 0.369359, -0.617718,
		-0.299378, 0.632292, 0.714548,
		0.654503, 0.681014, -0.328398,
		2.576715, 1.388058, 2.865577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867532, 1.629980, 3.217768>,  <2.118562, 0.911348, 3.095455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867532, 1.629980, 3.217768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091133, 1.582123, 2.889572>,  <2.225294, 1.553409, 2.692655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091133, 1.582123, 2.889572>,  <1.867532, 1.629980, 3.217768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.091133, 1.582123, 2.889572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689994, 0.481621, -0.540324,
		0.459810, 0.868174, 0.186675,
		0.559002, -0.119642, -0.820489,
		2.258834, 1.546230, 2.643425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.100518, 2.260276, 2.859807>,  <1.867532, 1.629980, 3.217768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.100518, 2.260276, 2.859807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.066345, 1.973228, 2.583336>,  <2.045841, 1.801000, 2.417453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.066345, 1.973228, 2.583336>,  <2.100518, 2.260276, 2.859807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066345, 1.973228, 2.583336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652098, 0.564768, -0.505772,
		0.753306, 0.407506, -0.516206,
		-0.085432, -0.717618, -0.691177,
		2.040716, 1.757943, 2.375983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.290833, 2.467680, 2.070670>,  <2.100518, 2.260276, 2.859807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.290833, 2.467680, 2.070670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.009735, 2.183990, 2.093124>,  <1.841076, 2.013777, 2.106597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.009735, 2.183990, 2.093124>,  <2.290833, 2.467680, 2.070670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.009735, 2.183990, 2.093124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627293, 0.580468, -0.519192,
		0.335638, -0.400074, -0.852812,
		-0.702745, -0.709223, 0.056136,
		1.798912, 1.971223, 2.109965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.825294, 2.544184, 1.449791>,  <2.290833, 2.467680, 2.070670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.825294, 2.544184, 1.449791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603661, 2.295975, 1.671761>,  <1.470680, 2.147049, 1.804942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603661, 2.295975, 1.671761>,  <1.825294, 2.544184, 1.449791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.603661, 2.295975, 1.671761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827416, 0.337247, -0.449051,
		0.091500, -0.707965, -0.700295,
		-0.554084, -0.620524, 0.554924,
		1.437435, 2.109818, 1.838238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.365029, 2.163600, 1.116020>,  <1.825294, 2.544184, 1.449791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.365029, 2.163600, 1.116020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.160378, 2.150032, 1.459435>,  <1.037586, 2.141891, 1.665483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.160378, 2.150032, 1.459435>,  <1.365029, 2.163600, 1.116020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.160378, 2.150032, 1.459435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783838, 0.427672, -0.450216,
		-0.351900, -0.903297, -0.245399,
		-0.511629, -0.033921, 0.858536,
		1.006889, 2.139856, 1.716995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.715713, 1.778129, 1.098089>,  <1.365029, 2.163600, 1.116020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.715713, 1.778129, 1.098089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.688896, 2.071510, 1.368660>,  <0.672806, 2.247539, 1.531003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.688896, 2.071510, 1.368660>,  <0.715713, 1.778129, 1.098089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.688896, 2.071510, 1.368660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713789, 0.438440, -0.546146,
		-0.697144, -0.519441, 0.494137,
		-0.067041, 0.733452, 0.676427,
		0.668784, 2.291546, 1.571588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.024561, 1.939953, 1.169263>,  <0.715713, 1.778129, 1.098089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.024561, 1.939953, 1.169263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.215157, 2.250824, 1.246040>,  <0.358987, 2.437347, 1.292107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.215157, 2.250824, 1.246040>,  <-0.024561, 1.939953, 1.169263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.215157, 2.250824, 1.246040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586542, 0.589467, -0.555425,
		-0.544808, 0.220280, 0.809111,
		0.599293, 0.777178, 0.191943,
		0.394944, 2.483977, 1.303623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.281933, 2.969171, 1.281164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.416952, 2.615173, 1.152885>,  <-1.497963, 2.402775, 1.075918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.416952, 2.615173, 1.152885>,  <-1.281933, 2.969171, 1.281164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.416952, 2.615173, 1.152885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024999, 0.332144, -0.942897,
		0.940977, -0.326289, -0.089990,
		-0.337547, -0.884995, -0.320697,
		-1.518216, 2.349675, 1.056676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.727319, 3.560079, 1.201846>,  <-1.281933, 2.969171, 1.281164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.727319, 3.560079, 1.201846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.404737, 3.778931, 1.291542>,  <-0.211189, 3.910242, 1.345360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.404737, 3.778931, 1.291542>,  <-0.727319, 3.560079, 1.201846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.404737, 3.778931, 1.291542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415965, -0.794471, 0.442481,
		0.420246, -0.263564, -0.868290,
		0.806453, 0.547129, 0.224240,
		-0.162802, 3.943069, 1.358814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.084975, 3.245802, 0.876952>,  <-0.727319, 3.560079, 1.201846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.084975, 3.245802, 0.876952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.049765, 3.443207, 1.223061>,  <-0.028639, 3.561650, 1.430726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.049765, 3.443207, 1.223061>,  <-0.084975, 3.245802, 0.876952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.049765, 3.443207, 1.223061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463888, -0.789012, 0.402825,
		0.881510, 0.365931, -0.298388,
		0.088025, 0.493513, 0.865273,
		-0.023357, 3.591261, 1.482642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.657277, 3.215370, 1.164729>,  <-0.084975, 3.245802, 0.876952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.657277, 3.215370, 1.164729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.362522, 3.215164, 1.435135>,  <0.185669, 3.215041, 1.597378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.362522, 3.215164, 1.435135>,  <0.657277, 3.215370, 1.164729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.362522, 3.215164, 1.435135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304175, -0.893304, 0.330886,
		0.603717, 0.449453, 0.658421,
		-0.736888, -0.000514, 0.676015,
		0.141456, 3.215010, 1.637939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.870891, 3.361496, 1.829707>,  <0.657277, 3.215370, 1.164729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.870891, 3.361496, 1.829707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.573689, 3.095825, 1.796700>,  <0.395367, 2.936423, 1.776895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.573689, 3.095825, 1.796700>,  <0.870891, 3.361496, 1.829707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.573689, 3.095825, 1.796700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523519, -0.653565, 0.546609,
		-0.416976, 0.362934, 0.833313,
		-0.743007, -0.664178, -0.082518,
		0.350787, 2.896572, 1.771944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.535962, 3.110423, 2.529894>,  <0.870891, 3.361496, 1.829707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.535962, 3.110423, 2.529894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559792, 2.847260, 2.229599>,  <0.574090, 2.689361, 2.049422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559792, 2.847260, 2.229599>,  <0.535962, 3.110423, 2.529894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.559792, 2.847260, 2.229599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718387, -0.493922, 0.489858,
		-0.693088, -0.568503, 0.443208,
		0.059575, -0.657910, -0.750737,
		0.577664, 2.649887, 2.004378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.538771, 2.461289, 2.844664>,  <0.535962, 3.110423, 2.529894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.538771, 2.461289, 2.844664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.710854, 2.421844, 2.485733>,  <0.814103, 2.398178, 2.270374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.710854, 2.421844, 2.485733>,  <0.538771, 2.461289, 2.844664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.710854, 2.421844, 2.485733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809604, -0.397560, 0.431842,
		-0.399333, -0.912260, -0.091183,
		0.430203, -0.098627, -0.897328,
		0.839916, 2.392261, 2.216535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.937172, 1.891909, 2.916430>,  <0.538771, 2.461289, 2.844664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.937172, 1.891909, 2.916430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.033016, 2.019775, 2.549736>,  <1.090523, 2.096495, 2.329720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.033016, 2.019775, 2.549736>,  <0.937172, 1.891909, 2.916430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.033016, 2.019775, 2.549736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829768, -0.557659, 0.022423,
		-0.504057, -0.766049, -0.398869,
		0.239610, 0.319666, -0.916734,
		1.104899, 2.115675, 2.274716>
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
