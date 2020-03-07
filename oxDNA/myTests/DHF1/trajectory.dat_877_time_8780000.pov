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
	<0.528417, 3.320977, 2.555636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.491043, 3.707817, 2.460991>,  <0.468619, 3.939921, 2.404204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.491043, 3.707817, 2.460991>,  <0.528417, 3.320977, 2.555636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.491043, 3.707817, 2.460991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167446, -0.249532, -0.953780,
		-0.981444, -0.049495, 0.185251,
		-0.093434, 0.967101, -0.236614,
		0.463013, 3.997947, 2.390007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.116184, 3.460801, 2.201891>,  <0.528417, 3.320977, 2.555636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.116184, 3.460801, 2.201891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.181587, 3.703674, 2.090784>,  <0.360250, 3.849398, 2.024120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.181587, 3.703674, 2.090784>,  <-0.116184, 3.460801, 2.201891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.181587, 3.703674, 2.090784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104661, -0.304754, -0.946663,
		-0.659448, 0.733795, -0.163319,
		0.744429, 0.607182, -0.277769,
		0.404916, 3.885829, 2.007453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.108720, 2.790170, 1.779147>,  <-0.116184, 3.460801, 2.201891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.108720, 2.790170, 1.779147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.169250, 2.939888, 1.413195>,  <-0.205569, 3.029718, 1.193624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.169250, 2.939888, 1.413195>,  <-0.108720, 2.790170, 1.779147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.169250, 2.939888, 1.413195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580372, -0.715571, -0.388751,
		-0.800168, -0.589799, -0.108945,
		-0.151327, 0.374294, -0.914879,
		-0.214649, 3.052176, 1.138731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.329946, 2.208500, 1.310052>,  <-0.108720, 2.790170, 1.779147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.329946, 2.208500, 1.310052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.152298, 2.501450, 1.103602>,  <-0.045709, 2.677219, 0.979732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.152298, 2.501450, 1.103602>,  <-0.329946, 2.208500, 1.310052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.152298, 2.501450, 1.103602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647089, -0.660621, -0.380599,
		-0.619704, -0.164949, -0.767306,
		0.444119, 0.732374, -0.516126,
		-0.019062, 2.721162, 0.948764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.293303, 1.933205, 0.586824>,  <-0.329946, 2.208500, 1.310052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.293303, 1.933205, 0.586824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.018158, 2.220314, 0.629990>,  <0.146929, 2.392580, 0.655890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.018158, 2.220314, 0.629990>,  <-0.293303, 1.933205, 0.586824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.018158, 2.220314, 0.629990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658287, -0.554276, -0.509350,
		-0.305782, 0.421403, -0.853766,
		0.687863, 0.717773, 0.107916,
		0.188201, 2.435646, 0.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.048362, 1.922428, -0.037021>,  <-0.293303, 1.933205, 0.586824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.048362, 1.922428, -0.037021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.312935, 2.102959, 0.202582>,  <0.471678, 2.211277, 0.346345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.312935, 2.102959, 0.202582>,  <0.048362, 1.922428, -0.037021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.312935, 2.102959, 0.202582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718217, -0.611214, -0.332539,
		0.216039, 0.650171, -0.728426,
		0.661432, 0.451326, 0.599010,
		0.511364, 2.238357, 0.382285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.591732, 2.112351, -0.439768>,  <0.048362, 1.922428, -0.037021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.591732, 2.112351, -0.439768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.759972, 2.113701, -0.076872>,  <0.860916, 2.114511, 0.140866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.759972, 2.113701, -0.076872>,  <0.591732, 2.112351, -0.439768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.759972, 2.113701, -0.076872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780829, -0.510526, -0.360097,
		0.461955, 0.859856, -0.217361,
		0.420600, 0.003374, 0.907240,
		0.886152, 2.114713, 0.195300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.302293, 2.396649, -0.528893>,  <0.591732, 2.112351, -0.439768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.302293, 2.396649, -0.528893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.299004, 2.164093, -0.203459>,  <1.297030, 2.024559, -0.008199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.299004, 2.164093, -0.203459>,  <1.302293, 2.396649, -0.528893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.299004, 2.164093, -0.203459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813894, -0.476579, -0.332339,
		0.580955, 0.659438, 0.477109,
		-0.008223, -0.581390, 0.813583,
		1.296537, 1.989676, 0.040616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.889633, 0.543804, 1.187967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601242, 0.434288, 1.442598>,  <1.428208, 0.368579, 1.595377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601242, 0.434288, 1.442598>,  <1.889633, 0.543804, 1.187967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601242, 0.434288, 1.442598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615622, 0.674794, -0.407017,
		-0.318123, -0.685342, -0.655061,
		-0.720977, -0.273788, 0.636578,
		1.384949, 0.352151, 1.633571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.277844, 0.347959, 0.820544>,  <1.889633, 0.543804, 1.187967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.277844, 0.347959, 0.820544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213799, 0.497253, 1.186070>,  <1.175371, 0.586830, 1.405386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213799, 0.497253, 1.186070>,  <1.277844, 0.347959, 0.820544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.213799, 0.497253, 1.186070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360926, 0.839519, -0.406129,
		-0.918747, -0.394846, 0.000292,
		-0.160113, 0.373235, 0.913816,
		1.165765, 0.609224, 1.460215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.947942, 1.041776, 0.733901>,  <1.277844, 0.347959, 0.820544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.947942, 1.041776, 0.733901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.227654, 1.275162, 0.568696>,  <1.395480, 1.415193, 0.469573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.227654, 1.275162, 0.568696>,  <0.947942, 1.041776, 0.733901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.227654, 1.275162, 0.568696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457810, 0.809258, 0.368118,
		0.549018, -0.068336, 0.833012,
		0.699278, 0.583465, -0.413013,
		1.437437, 1.450201, 0.444792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.271215, 1.463524, 1.279786>,  <0.947942, 1.041776, 0.733901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.271215, 1.463524, 1.279786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.282677, 1.629456, 0.916006>,  <1.289554, 1.729014, 0.697738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.282677, 1.629456, 0.916006>,  <1.271215, 1.463524, 1.279786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.282677, 1.629456, 0.916006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472359, 0.807448, 0.353419,
		0.880941, 0.419459, 0.219085,
		0.028654, 0.414828, -0.909449,
		1.291273, 1.753904, 0.643172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.372744, 2.165628, 1.360101>,  <1.271215, 1.463524, 1.279786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.372744, 2.165628, 1.360101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212250, 2.131844, 0.995272>,  <1.115953, 2.111573, 0.776374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212250, 2.131844, 0.995272>,  <1.372744, 2.165628, 1.360101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.212250, 2.131844, 0.995272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627914, 0.750319, 0.206749,
		0.666883, 0.655658, -0.354089,
		-0.401237, -0.084460, -0.912072,
		1.091879, 2.106505, 0.721650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.333648, 2.845010, 1.156031>,  <1.372744, 2.165628, 1.360101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.333648, 2.845010, 1.156031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.063538, 2.655739, 0.929720>,  <0.901471, 2.542176, 0.793933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.063538, 2.655739, 0.929720>,  <1.333648, 2.845010, 1.156031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.063538, 2.655739, 0.929720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661751, 0.727436, 0.181446,
		0.325711, 0.496930, -0.804346,
		-0.675276, -0.473178, -0.565778,
		0.860955, 2.513785, 0.759986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.146814, 3.330645, 0.717981>,  <1.333648, 2.845010, 1.156031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.146814, 3.330645, 0.717981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.848763, 3.064201, 0.704822>,  <0.669932, 2.904335, 0.696926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.848763, 3.064201, 0.704822>,  <1.146814, 3.330645, 0.717981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.848763, 3.064201, 0.704822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666369, 0.745612, -0.003874,
		0.027111, 0.019036, -0.999451,
		-0.745129, -0.666108, -0.032899,
		0.625224, 2.864369, 0.694952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.691935, 3.621174, 0.332374>,  <1.146814, 3.330645, 0.717981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.691935, 3.621174, 0.332374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.479012, 3.349472, 0.534468>,  <0.351257, 3.186451, 0.655724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.479012, 3.349472, 0.534468>,  <0.691935, 3.621174, 0.332374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.479012, 3.349472, 0.534468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800083, 0.598679, -0.038075,
		-0.276610, -0.424496, -0.862142,
		-0.532309, -0.679254, 0.505233,
		0.319319, 3.145696, 0.686038>
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
