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
	<23.941906, 34.858177, 34.827553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.143137, 35.112633, 35.061558>,  <24.263876, 35.265305, 35.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.143137, 35.112633, 35.061558>,  <23.941906, 34.858177, 34.827553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.143137, 35.112633, 35.061558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639361, 0.181499, -0.747178,
		-0.581489, 0.749922, -0.315415,
		0.503078, 0.636140, 0.585011,
		24.294060, 35.303474, 35.237061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.996223, 35.545959, 34.446125>,  <23.941906, 34.858177, 34.827553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.996223, 35.545959, 34.446125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295771, 35.438953, 34.688652>,  <24.475500, 35.374748, 34.834167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295771, 35.438953, 34.688652>,  <23.996223, 35.545959, 34.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295771, 35.438953, 34.688652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635506, 0.030415, -0.771496,
		0.187949, 0.963072, 0.192787,
		0.748870, -0.267520, 0.606322,
		24.520432, 35.358696, 34.870548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.557611, 36.137722, 34.659809>,  <23.996223, 35.545959, 34.446125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.557611, 36.137722, 34.659809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716261, 35.770535, 34.661907>,  <24.811451, 35.550224, 34.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716261, 35.770535, 34.661907>,  <24.557611, 36.137722, 34.659809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716261, 35.770535, 34.661907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630939, 0.268450, -0.727909,
		0.666787, 0.292017, 0.685654,
		0.396625, -0.917966, 0.005246,
		24.835249, 35.495144, 34.663483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298416, 36.147686, 34.708797>,  <24.557611, 36.137722, 34.659809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298416, 36.147686, 34.708797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234583, 35.812248, 34.500458>,  <25.196283, 35.610985, 34.375454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234583, 35.812248, 34.500458>,  <25.298416, 36.147686, 34.708797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234583, 35.812248, 34.500458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627455, 0.321162, -0.709334,
		0.762124, -0.440010, 0.474930,
		-0.159585, -0.838598, -0.520852,
		25.186707, 35.560669, 34.344204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013342, 36.098431, 34.493839>,  <25.298416, 36.147686, 34.708797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013342, 36.098431, 34.493839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768953, 35.879292, 34.265251>,  <25.622320, 35.747810, 34.128098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768953, 35.879292, 34.265251>,  <26.013342, 36.098431, 34.493839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768953, 35.879292, 34.265251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544478, 0.233225, -0.805699,
		0.574679, -0.803412, 0.155795,
		-0.610973, -0.547845, -0.571470,
		25.585661, 35.714939, 34.093811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633078, 36.484261, 34.124378>,  <26.013342, 36.098431, 34.493839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633078, 36.484261, 34.124378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727659, 36.122574, 34.266636>,  <26.784409, 35.905563, 34.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727659, 36.122574, 34.266636>,  <26.633078, 36.484261, 34.124378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727659, 36.122574, 34.266636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142215, 0.394289, 0.907916,
		-0.961179, -0.164102, 0.221824,
		0.236454, -0.904216, 0.355644,
		26.798595, 35.851311, 34.373329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944254, 36.638519, 33.462597>,  <26.633078, 36.484261, 34.124378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944254, 36.638519, 33.462597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230730, 36.376793, 33.559711>,  <27.402615, 36.219757, 33.617981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230730, 36.376793, 33.559711>,  <26.944254, 36.638519, 33.462597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230730, 36.376793, 33.559711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356964, 0.044511, -0.933057,
		0.599708, 0.754910, 0.265445,
		0.716189, -0.654316, 0.242783,
		27.445587, 36.180496, 33.632545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504906, 36.906631, 32.988705>,  <26.944254, 36.638519, 33.462597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504906, 36.906631, 32.988705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542942, 36.519577, 33.082211>,  <27.565763, 36.287346, 33.138313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542942, 36.519577, 33.082211>,  <27.504906, 36.906631, 32.988705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542942, 36.519577, 33.082211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276545, -0.199905, -0.939979,
		0.956285, 0.154031, 0.248584,
		0.095092, -0.967632, 0.233763,
		27.571470, 36.229286, 33.152340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158794, 36.673370, 32.739464>,  <27.504906, 36.906631, 32.988705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158794, 36.673370, 32.739464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940517, 36.339241, 32.766167>,  <27.809551, 36.138763, 32.782188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940517, 36.339241, 32.766167>,  <28.158794, 36.673370, 32.739464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940517, 36.339241, 32.766167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374215, -0.314188, -0.872496,
		0.749789, -0.451133, 0.484040,
		-0.545691, -0.835323, 0.066754,
		27.776810, 36.088646, 32.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541746, 36.013496, 32.911537>,  <28.158794, 36.673370, 32.739464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541746, 36.013496, 32.911537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211889, 35.935040, 32.699314>,  <28.013975, 35.887966, 32.571980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211889, 35.935040, 32.699314>,  <28.541746, 36.013496, 32.911537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211889, 35.935040, 32.699314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565229, -0.249383, -0.786336,
		0.021919, -0.948334, 0.316516,
		-0.824643, -0.196140, -0.530559,
		27.964497, 35.876198, 32.540146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745146, 35.582146, 32.370522>,  <28.541746, 36.013496, 32.911537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745146, 35.582146, 32.370522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363724, 35.620262, 32.256222>,  <28.134871, 35.643131, 32.187641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363724, 35.620262, 32.256222>,  <28.745146, 35.582146, 32.370522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363724, 35.620262, 32.256222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266693, -0.173924, -0.947958,
		-0.140025, -0.980138, 0.140435,
		-0.953555, 0.095285, -0.285750,
		28.077658, 35.648849, 32.170498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717869, 35.032475, 31.986645>,  <28.745146, 35.582146, 32.370522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717869, 35.032475, 31.986645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381794, 35.224403, 31.885569>,  <28.180149, 35.339561, 31.824923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381794, 35.224403, 31.885569>,  <28.717869, 35.032475, 31.986645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381794, 35.224403, 31.885569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065525, -0.372728, -0.925624,
		-0.538321, -0.794257, 0.281721,
		-0.840188, 0.479823, -0.252691,
		28.129738, 35.368351, 31.809761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192398, 34.551537, 31.645340>,  <28.717869, 35.032475, 31.986645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192398, 34.551537, 31.645340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078350, 34.910065, 31.509506>,  <28.009922, 35.125183, 31.428005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078350, 34.910065, 31.509506>,  <28.192398, 34.551537, 31.645340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078350, 34.910065, 31.509506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189406, -0.399994, -0.896733,
		-0.939591, -0.191357, 0.283815,
		-0.285120, 0.896319, -0.339586,
		27.992813, 35.178959, 31.407631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595907, 34.401527, 31.148743>,  <28.192398, 34.551537, 31.645340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595907, 34.401527, 31.148743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776012, 34.742325, 31.041880>,  <27.884075, 34.946804, 30.977762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776012, 34.742325, 31.041880>,  <27.595907, 34.401527, 31.148743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776012, 34.742325, 31.041880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027930, -0.312498, -0.949508,
		-0.892458, 0.420068, -0.164503,
		0.450265, 0.851990, -0.267158,
		27.911093, 34.997921, 30.961733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243748, 34.534660, 30.555977>,  <27.595907, 34.401527, 31.148743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243748, 34.534660, 30.555977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505342, 34.831585, 30.497635>,  <27.662300, 35.009739, 30.462629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505342, 34.831585, 30.497635>,  <27.243748, 34.534660, 30.555977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505342, 34.831585, 30.497635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018151, -0.177348, -0.983981,
		-0.756288, 0.646158, -0.102510,
		0.653987, 0.742312, -0.145854,
		27.701538, 35.054279, 30.453878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996078, 35.014614, 30.005678>,  <27.243748, 34.534660, 30.555977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996078, 35.014614, 30.005678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394117, 35.051189, 30.020752>,  <27.632940, 35.073135, 30.029797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394117, 35.051189, 30.020752>,  <26.996078, 35.014614, 30.005678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394117, 35.051189, 30.020752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046154, -0.092342, -0.994657,
		-0.087469, 0.991520, -0.096110,
		0.995097, 0.091437, 0.037686,
		27.692646, 35.078621, 30.032057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187160, 35.435101, 29.365019>,  <26.996078, 35.014614, 30.005678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187160, 35.435101, 29.365019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530651, 35.274750, 29.492701>,  <27.736746, 35.178539, 29.569309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530651, 35.274750, 29.492701>,  <27.187160, 35.435101, 29.365019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530651, 35.274750, 29.492701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315336, -0.077617, -0.945800,
		0.403924, 0.912838, 0.059759,
		0.858725, -0.400876, 0.319202,
		27.788269, 35.154488, 29.588461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691332, 35.671978, 28.888498>,  <27.187160, 35.435101, 29.365019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691332, 35.671978, 28.888498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870050, 35.345692, 29.035454>,  <27.977282, 35.149918, 29.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870050, 35.345692, 29.035454>,  <27.691332, 35.671978, 28.888498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870050, 35.345692, 29.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241668, -0.285346, -0.927456,
		0.861377, 0.503169, 0.069642,
		0.446795, -0.815719, 0.367391,
		28.004089, 35.100975, 29.145672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431093, 35.710022, 28.718569>,  <27.691332, 35.671978, 28.888498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431093, 35.710022, 28.718569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344488, 35.326790, 28.793629>,  <28.292524, 35.096851, 28.838665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344488, 35.326790, 28.793629>,  <28.431093, 35.710022, 28.718569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344488, 35.326790, 28.793629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407879, -0.263402, -0.874216,
		0.886993, -0.112739, 0.447809,
		-0.216512, -0.958076, 0.187652,
		28.279535, 35.039368, 28.849924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054516, 35.368649, 28.504911>,  <28.431093, 35.710022, 28.718569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054516, 35.368649, 28.504911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776031, 35.081875, 28.490501>,  <28.608940, 34.909813, 28.481855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776031, 35.081875, 28.490501>,  <29.054516, 35.368649, 28.504911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776031, 35.081875, 28.490501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350409, -0.295626, -0.888717,
		0.626500, -0.631359, 0.457038,
		-0.696212, -0.716931, -0.036025,
		28.567167, 34.866795, 28.479694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445620, 34.723988, 28.385149>,  <29.054516, 35.368649, 28.504911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445620, 34.723988, 28.385149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071722, 34.636620, 28.273041>,  <28.847383, 34.584198, 28.205776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071722, 34.636620, 28.273041>,  <29.445620, 34.723988, 28.385149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071722, 34.636620, 28.273041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344225, -0.361006, -0.866708,
		0.088125, -0.906625, 0.412632,
		-0.934742, -0.218417, -0.280269,
		28.791300, 34.571095, 28.188959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389702, 34.012417, 28.259834>,  <29.445620, 34.723988, 28.385149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389702, 34.012417, 28.259834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103365, 34.196438, 28.049723>,  <28.931562, 34.306850, 27.923656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103365, 34.196438, 28.049723>,  <29.389702, 34.012417, 28.259834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103365, 34.196438, 28.049723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379136, -0.375629, -0.845671,
		-0.586364, -0.804520, 0.094469,
		-0.715844, 0.460054, -0.525278,
		28.888611, 34.334454, 27.892139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198002, 33.478958, 27.816788>,  <29.389702, 34.012417, 28.259834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198002, 33.478958, 27.816788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998289, 33.784653, 27.653494>,  <28.878462, 33.968071, 27.555517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998289, 33.784653, 27.653494>,  <29.198002, 33.478958, 27.816788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998289, 33.784653, 27.653494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311174, -0.281568, -0.907684,
		-0.808634, -0.580222, -0.097229,
		-0.499282, 0.764239, -0.408235,
		28.848505, 34.013924, 27.531023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906733, 33.199703, 27.189550>,  <29.198002, 33.478958, 27.816788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906733, 33.199703, 27.189550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900921, 33.597347, 27.146608>,  <28.897434, 33.835934, 27.120844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900921, 33.597347, 27.146608>,  <28.906733, 33.199703, 27.189550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900921, 33.597347, 27.146608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195723, -0.102462, -0.975291,
		-0.980551, -0.035180, -0.193083,
		-0.014527, 0.994114, -0.107354,
		28.896563, 33.895580, 27.114403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500872, 33.271484, 26.650179>,  <28.906733, 33.199703, 27.189550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500872, 33.271484, 26.650179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723543, 33.603371, 26.666546>,  <28.857145, 33.802505, 26.676367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723543, 33.603371, 26.666546>,  <28.500872, 33.271484, 26.650179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723543, 33.603371, 26.666546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282420, -0.142699, -0.948618,
		-0.781248, 0.539630, -0.313767,
		0.556677, 0.829720, 0.040919,
		28.890547, 33.852287, 26.678822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467764, 33.894615, 26.170452>,  <28.500872, 33.271484, 26.650179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467764, 33.894615, 26.170452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834259, 33.819798, 26.312170>,  <29.054155, 33.774906, 26.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834259, 33.819798, 26.312170>,  <28.467764, 33.894615, 26.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834259, 33.819798, 26.312170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290109, -0.300148, -0.908707,
		0.276313, 0.935374, -0.220741,
		0.916236, -0.187049, 0.354295,
		29.109129, 33.763683, 26.418459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879284, 34.276470, 25.819674>,  <28.467764, 33.894615, 26.170452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879284, 34.276470, 25.819674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089382, 33.961662, 25.949118>,  <29.215441, 33.772778, 26.026785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089382, 33.961662, 25.949118>,  <28.879284, 34.276470, 25.819674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089382, 33.961662, 25.949118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168371, -0.276656, -0.946104,
		0.834128, 0.551423, -0.012802,
		0.525245, -0.787016, 0.323610,
		29.246956, 33.725559, 26.046200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115980, 34.585968, 25.176064>,  <28.879284, 34.276470, 25.819674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115980, 34.585968, 25.176064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273096, 34.566982, 24.808702>,  <29.367367, 34.555592, 24.588285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273096, 34.566982, 24.808702>,  <29.115980, 34.585968, 25.176064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273096, 34.566982, 24.808702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728480, -0.593458, 0.342235,
		-0.561277, -0.803464, -0.198528,
		0.392792, -0.047465, -0.918402,
		29.390934, 34.552742, 24.533182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224276, 33.798527, 25.015247>,  <29.115980, 34.585968, 25.176064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224276, 33.798527, 25.015247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469555, 34.045742, 24.818466>,  <29.616722, 34.194069, 24.700397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469555, 34.045742, 24.818466>,  <29.224276, 33.798527, 25.015247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469555, 34.045742, 24.818466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774237, -0.593748, 0.219137,
		-0.156662, -0.515263, -0.842592,
		0.613200, 0.618035, -0.491954,
		29.653515, 34.231152, 24.670879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679451, 33.421120, 24.541773>,  <29.224276, 33.798527, 25.015247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679451, 33.421120, 24.541773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905214, 33.744701, 24.607548>,  <30.040672, 33.938850, 24.647013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905214, 33.744701, 24.607548>,  <29.679451, 33.421120, 24.541773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905214, 33.744701, 24.607548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786177, -0.587499, 0.191758,
		0.251730, 0.021048, -0.967569,
		0.564409, 0.808951, 0.164439,
		30.074537, 33.987389, 24.656879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278330, 33.361912, 24.109003>,  <29.679451, 33.421120, 24.541773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278330, 33.361912, 24.109003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341171, 33.543781, 24.459679>,  <30.378876, 33.652905, 24.670084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341171, 33.543781, 24.459679>,  <30.278330, 33.361912, 24.109003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341171, 33.543781, 24.459679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672645, -0.699238, 0.242107,
		0.723096, 0.551665, -0.415690,
		0.157104, 0.454678, 0.876690,
		30.388302, 33.680183, 24.722685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976610, 33.504848, 24.178467>,  <30.278330, 33.361912, 24.109003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976610, 33.504848, 24.178467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833355, 33.476727, 24.550875>,  <30.747402, 33.459854, 24.774319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833355, 33.476727, 24.550875>,  <30.976610, 33.504848, 24.178467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833355, 33.476727, 24.550875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757462, -0.604885, 0.245695,
		0.545884, 0.793203, 0.269886,
		-0.358136, -0.070307, 0.931018,
		30.725914, 33.455635, 24.830181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492920, 33.571835, 24.621286>,  <30.976610, 33.504848, 24.178467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492920, 33.571835, 24.621286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226748, 33.325520, 24.790052>,  <31.067043, 33.177731, 24.891312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226748, 33.325520, 24.790052>,  <31.492920, 33.571835, 24.621286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226748, 33.325520, 24.790052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678328, -0.734755, -0.002531,
		0.311563, 0.284512, 0.906632,
		-0.665432, -0.615783, 0.421915,
		31.027119, 33.140785, 24.916626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843235, 33.190960, 25.093576>,  <31.492920, 33.571835, 24.621286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843235, 33.190960, 25.093576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513771, 32.979645, 25.011114>,  <31.316093, 32.852856, 24.961637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513771, 32.979645, 25.011114>,  <31.843235, 33.190960, 25.093576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513771, 32.979645, 25.011114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540151, -0.841567, -0.001529,
		-0.172686, -0.112614, 0.978518,
		-0.823660, -0.528283, -0.206156,
		31.266672, 32.821159, 24.949268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650854, 32.542980, 25.522011>,  <31.843235, 33.190960, 25.093576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650854, 32.542980, 25.522011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533209, 32.438660, 25.154211>,  <31.462622, 32.376068, 24.933531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533209, 32.438660, 25.154211>,  <31.650854, 32.542980, 25.522011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533209, 32.438660, 25.154211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536625, -0.841161, 0.066940,
		-0.790905, -0.473738, 0.387352,
		-0.294114, -0.260806, -0.919499,
		31.444975, 32.360416, 24.878361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830713, 32.565769, 26.186811>,  <31.650854, 32.542980, 25.522011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830713, 32.565769, 26.186811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160778, 32.584221, 26.412016>,  <32.358818, 32.595291, 26.547138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160778, 32.584221, 26.412016>,  <31.830713, 32.565769, 26.186811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160778, 32.584221, 26.412016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549132, -0.168312, 0.818612,
		0.132526, -0.984654, -0.113552,
		0.825162, 0.046132, 0.563010,
		32.408325, 32.598061, 26.580919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932837, 31.970846, 26.677530>,  <31.830713, 32.565769, 26.186811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932837, 31.970846, 26.677530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068535, 32.323891, 26.807705>,  <32.149956, 32.535717, 26.885809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068535, 32.323891, 26.807705>,  <31.932837, 31.970846, 26.677530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068535, 32.323891, 26.807705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491464, -0.128690, 0.861337,
		0.802106, -0.452146, 0.390114,
		0.339247, 0.882612, 0.325437,
		32.170307, 32.588673, 26.905336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032482, 31.746046, 27.318228>,  <31.932837, 31.970846, 26.677530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032482, 31.746046, 27.318228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036987, 32.145988, 27.313181>,  <32.039692, 32.385956, 27.310152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036987, 32.145988, 27.313181>,  <32.032482, 31.746046, 27.318228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036987, 32.145988, 27.313181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275948, 0.015237, 0.961052,
		0.961106, -0.007341, 0.276081,
		0.011262, 0.999857, -0.012619,
		32.040367, 32.445946, 27.309395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453819, 31.936132, 27.927088>,  <32.032482, 31.746046, 27.318228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453819, 31.936132, 27.927088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226910, 32.253510, 27.838861>,  <32.090763, 32.443935, 27.785925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226910, 32.253510, 27.838861>,  <32.453819, 31.936132, 27.927088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226910, 32.253510, 27.838861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311284, 0.041373, 0.949416,
		0.762435, 0.607234, 0.223517,
		-0.567270, 0.793445, -0.220566,
		32.056728, 32.491543, 27.772692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515411, 32.233143, 28.562321>,  <32.453819, 31.936132, 27.927088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515411, 32.233143, 28.562321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225960, 32.430634, 28.369411>,  <32.052288, 32.549129, 28.253666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225960, 32.430634, 28.369411>,  <32.515411, 32.233143, 28.562321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225960, 32.430634, 28.369411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381282, 0.296483, 0.875626,
		0.575310, 0.817513, -0.026294,
		-0.723631, 0.493731, -0.482273,
		32.008869, 32.578754, 28.224730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541931, 33.014435, 28.635912>,  <32.515411, 32.233143, 28.562321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541931, 33.014435, 28.635912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154907, 32.928768, 28.582308>,  <31.922693, 32.877369, 28.550144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154907, 32.928768, 28.582308>,  <32.541931, 33.014435, 28.635912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154907, 32.928768, 28.582308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203545, 0.346612, 0.915658,
		-0.149657, 0.913231, -0.378962,
		-0.967560, -0.214170, -0.134011,
		31.864639, 32.864517, 28.542105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125134, 33.512432, 29.053804>,  <32.541931, 33.014435, 28.635912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125134, 33.512432, 29.053804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843824, 33.246578, 28.952871>,  <31.675039, 33.087067, 28.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843824, 33.246578, 28.952871>,  <32.125134, 33.512432, 29.053804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843824, 33.246578, 28.952871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364801, 0.032736, 0.930510,
		-0.610186, 0.746454, -0.265480,
		-0.703274, -0.664631, -0.252332,
		31.632843, 33.047188, 28.877172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477793, 33.798786, 29.272215>,  <32.125134, 33.512432, 29.053804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477793, 33.798786, 29.272215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435167, 33.403297, 29.230129>,  <31.409592, 33.166004, 29.204878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435167, 33.403297, 29.230129>,  <31.477793, 33.798786, 29.272215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435167, 33.403297, 29.230129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664871, -0.007826, 0.746917,
		-0.739318, 0.149548, -0.656540,
		-0.106562, -0.988723, -0.105216,
		31.403198, 33.106682, 29.198565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648596, 33.744087, 29.173637>,  <31.477793, 33.798786, 29.272215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648596, 33.744087, 29.173637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811720, 33.396667, 29.286287>,  <30.909595, 33.188217, 29.353878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811720, 33.396667, 29.286287>,  <30.648596, 33.744087, 29.173637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811720, 33.396667, 29.286287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612417, -0.031423, 0.789910,
		-0.677226, -0.494606, -0.544729,
		0.407811, -0.868549, 0.281625,
		30.934063, 33.136105, 29.370775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135368, 33.410019, 29.494480>,  <30.648596, 33.744087, 29.173637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135368, 33.410019, 29.494480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422335, 33.159180, 29.615847>,  <30.594515, 33.008675, 29.688667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422335, 33.159180, 29.615847>,  <30.135368, 33.410019, 29.494480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422335, 33.159180, 29.615847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403814, -0.019432, 0.914635,
		-0.567671, -0.778697, -0.267172,
		0.717414, -0.627100, 0.303418,
		30.637560, 32.971050, 29.706871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817646, 32.697765, 29.728445>,  <30.135368, 33.410019, 29.494480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817646, 32.697765, 29.728445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162441, 32.751812, 29.923880>,  <30.369318, 32.784241, 30.041140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162441, 32.751812, 29.923880>,  <29.817646, 32.697765, 29.728445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162441, 32.751812, 29.923880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443370, -0.266308, 0.855864,
		0.245757, -0.954371, -0.169647,
		0.861989, 0.135119, 0.488586,
		30.421038, 32.792347, 30.070456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943859, 32.150146, 30.201651>,  <29.817646, 32.697765, 29.728445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943859, 32.150146, 30.201651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161051, 32.449116, 30.354769>,  <30.291365, 32.628498, 30.446640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161051, 32.449116, 30.354769>,  <29.943859, 32.150146, 30.201651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161051, 32.449116, 30.354769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421599, -0.151599, 0.894020,
		0.726244, -0.646819, 0.232798,
		0.542977, 0.747424, 0.382796,
		30.323944, 32.673344, 30.469608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294729, 31.839729, 30.714382>,  <29.943859, 32.150146, 30.201651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294729, 31.839729, 30.714382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288305, 32.233662, 30.783497>,  <30.284451, 32.470020, 30.824965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288305, 32.233662, 30.783497>,  <30.294729, 31.839729, 30.714382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288305, 32.233662, 30.783497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526802, -0.155210, 0.835697,
		0.849836, -0.077603, 0.521302,
		-0.016059, 0.984829, 0.172784,
		30.283487, 32.529110, 30.835333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441216, 31.928946, 31.365313>,  <30.294729, 31.839729, 30.714382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441216, 31.928946, 31.365313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267111, 32.280251, 31.286114>,  <30.162647, 32.491032, 31.238594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267111, 32.280251, 31.286114>,  <30.441216, 31.928946, 31.365313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267111, 32.280251, 31.286114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517480, -0.064092, 0.853292,
		0.736723, 0.473866, 0.482379,
		-0.435262, 0.878261, -0.197998,
		30.136532, 32.543728, 31.226715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372400, 32.249729, 32.047279>,  <30.441216, 31.928946, 31.365313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372400, 32.249729, 32.047279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131866, 32.492172, 31.839039>,  <29.987547, 32.637638, 31.714094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131866, 32.492172, 31.839039>,  <30.372400, 32.249729, 32.047279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131866, 32.492172, 31.839039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464787, 0.264628, 0.844953,
		0.649901, 0.750068, 0.122583,
		-0.601333, 0.606111, -0.520604,
		29.951466, 32.674004, 31.682858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425264, 32.868389, 32.359028>,  <30.372400, 32.249729, 32.047279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425264, 32.868389, 32.359028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075220, 32.868065, 32.165459>,  <29.865194, 32.867870, 32.049316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075220, 32.868065, 32.165459>,  <30.425264, 32.868389, 32.359028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075220, 32.868065, 32.165459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462924, 0.292785, 0.836647,
		0.141008, 0.956178, -0.256594,
		-0.875110, -0.000810, -0.483923,
		29.812687, 32.867821, 32.020283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230883, 33.559887, 32.529377>,  <30.425264, 32.868389, 32.359028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230883, 33.559887, 32.529377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917778, 33.355263, 32.387623>,  <29.729916, 33.232487, 32.302570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917778, 33.355263, 32.387623>,  <30.230883, 33.559887, 32.529377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917778, 33.355263, 32.387623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556437, 0.320317, 0.766664,
		-0.278682, 0.797308, -0.535384,
		-0.782760, -0.511563, -0.354385,
		29.682949, 33.201794, 32.281307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757881, 34.086655, 32.371582>,  <30.230883, 33.559887, 32.529377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757881, 34.086655, 32.371582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562710, 33.741737, 32.425793>,  <29.445606, 33.534786, 32.458317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562710, 33.741737, 32.425793>,  <29.757881, 34.086655, 32.371582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562710, 33.741737, 32.425793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645994, 0.461141, 0.608310,
		-0.587040, 0.209265, -0.782044,
		-0.487931, -0.862298, 0.135524,
		29.416330, 33.483047, 32.466450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041616, 34.214230, 32.480061>,  <29.757881, 34.086655, 32.371582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041616, 34.214230, 32.480061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077606, 33.847233, 32.635040>,  <29.099199, 33.627037, 32.728027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077606, 33.847233, 32.635040>,  <29.041616, 34.214230, 32.480061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077606, 33.847233, 32.635040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627712, 0.249791, 0.737280,
		-0.773229, -0.309544, -0.553444,
		0.089975, -0.917490, 0.387450,
		29.104599, 33.571987, 32.751274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382797, 34.054840, 32.548210>,  <29.041616, 34.214230, 32.480061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382797, 34.054840, 32.548210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571335, 33.793835, 32.785553>,  <28.684458, 33.637234, 32.927956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571335, 33.793835, 32.785553>,  <28.382797, 34.054840, 32.548210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571335, 33.793835, 32.785553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733158, 0.084060, 0.674843,
		-0.490218, -0.753104, -0.438771,
		0.471344, -0.652509, 0.593352,
		28.712738, 33.598083, 32.963558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868818, 33.656334, 32.880177>,  <28.382797, 34.054840, 32.548210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868818, 33.656334, 32.880177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197998, 33.603283, 33.101143>,  <28.395506, 33.571453, 33.233723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197998, 33.603283, 33.101143>,  <27.868818, 33.656334, 32.880177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197998, 33.603283, 33.101143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540059, 0.119163, 0.833148,
		-0.176330, -0.983976, 0.026436,
		0.822948, -0.132632, 0.552417,
		28.444883, 33.563492, 33.266869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596249, 33.273174, 33.478954>,  <27.868818, 33.656334, 32.880177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596249, 33.273174, 33.478954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941866, 33.423656, 33.612759>,  <28.149237, 33.513947, 33.693039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941866, 33.423656, 33.612759>,  <27.596249, 33.273174, 33.478954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941866, 33.423656, 33.612759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440564, 0.243579, 0.864044,
		0.243579, -0.893945, 0.376206,
		-0.864044, -0.376206, -0.334509,
		28.201078, 33.536518, 33.713112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780447, 33.067699, 34.207981>,  <27.596249, 33.273174, 33.478954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780447, 33.067699, 34.207981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022268, 33.385948, 34.192490>,  <28.167360, 33.576897, 34.183193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022268, 33.385948, 34.192490>,  <27.780447, 33.067699, 34.207981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022268, 33.385948, 34.192490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364415, 0.319481, 0.874719,
		0.708321, -0.514699, 0.483080,
		0.604552, 0.795624, -0.038731,
		28.203634, 33.624634, 34.180870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953798, 33.154106, 34.845959>,  <27.780447, 33.067699, 34.207981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953798, 33.154106, 34.845959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003124, 33.506710, 34.663647>,  <28.032719, 33.718273, 34.554260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003124, 33.506710, 34.663647>,  <27.953798, 33.154106, 34.845959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003124, 33.506710, 34.663647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337069, 0.469189, 0.816239,
		0.933369, 0.052978, 0.354986,
		0.123313, 0.881507, -0.455783,
		28.040119, 33.771164, 34.526913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687574, 33.308514, 34.477287>,  <27.953798, 33.154106, 34.845959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687574, 33.308514, 34.477287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955681, 33.371639, 34.767345>,  <29.116545, 33.409515, 34.941380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955681, 33.371639, 34.767345>,  <28.687574, 33.308514, 34.477287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955681, 33.371639, 34.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505101, 0.618870, -0.601558,
		-0.543706, 0.769476, 0.335096,
		0.670266, 0.157814, 0.725147,
		29.156761, 33.418983, 34.984890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752951, 34.051785, 34.627804>,  <28.687574, 33.308514, 34.477287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752951, 34.051785, 34.627804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084587, 33.867077, 34.753906>,  <29.283569, 33.756252, 34.829567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084587, 33.867077, 34.753906>,  <28.752951, 34.051785, 34.627804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084587, 33.867077, 34.753906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557465, 0.639406, -0.529521,
		0.042940, 0.614762, 0.787543,
		0.829089, -0.461765, 0.315253,
		29.333313, 33.728546, 34.848480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324421, 34.506516, 34.870464>,  <28.752951, 34.051785, 34.627804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324421, 34.506516, 34.870464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475866, 34.174267, 34.707142>,  <29.566732, 33.974918, 34.609146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475866, 34.174267, 34.707142>,  <29.324421, 34.506516, 34.870464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475866, 34.174267, 34.707142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601333, 0.556114, -0.573705,
		0.703599, -0.028318, 0.710033,
		0.378613, -0.830624, -0.408310,
		29.589451, 33.925079, 34.584648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039614, 34.687656, 34.813354>,  <29.324421, 34.506516, 34.870464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039614, 34.687656, 34.813354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973158, 34.397297, 34.546379>,  <29.933285, 34.223080, 34.386196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973158, 34.397297, 34.546379>,  <30.039614, 34.687656, 34.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973158, 34.397297, 34.546379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454058, 0.544506, -0.705227,
		0.875345, -0.420221, 0.239134,
		-0.166141, -0.725898, -0.667435,
		29.923315, 34.179527, 34.346149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657534, 34.311718, 34.545731>,  <30.039614, 34.687656, 34.813354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657534, 34.311718, 34.545731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346809, 34.389278, 34.306076>,  <30.160376, 34.435814, 34.162285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346809, 34.389278, 34.306076>,  <30.657534, 34.311718, 34.545731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346809, 34.389278, 34.306076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574313, 0.608415, -0.547719,
		0.258320, -0.769566, -0.583985,
		-0.776811, 0.193903, -0.599137,
		30.113766, 34.447449, 34.126335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843670, 34.112041, 33.791466>,  <30.657534, 34.311718, 34.545731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843670, 34.112041, 33.791466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589008, 34.420078, 33.807625>,  <30.436211, 34.604900, 33.817322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589008, 34.420078, 33.807625>,  <30.843670, 34.112041, 33.791466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589008, 34.420078, 33.807625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659332, 0.570763, -0.489398,
		-0.399940, -0.284940, -0.871124,
		-0.636655, 0.770090, 0.040401,
		30.398012, 34.651104, 33.819744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061953, 33.690239, 33.173996>,  <30.843670, 34.112041, 33.791466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061953, 33.690239, 33.173996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459515, 33.664219, 33.138397>,  <31.698051, 33.648609, 33.117039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459515, 33.664219, 33.138397>,  <31.061953, 33.690239, 33.173996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459515, 33.664219, 33.138397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091558, 0.037563, 0.995091,
		-0.061388, -0.997175, 0.043290,
		0.993906, -0.065050, -0.088993,
		31.757687, 33.644707, 33.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264967, 33.177937, 33.621616>,  <31.061953, 33.690239, 33.173996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264967, 33.177937, 33.621616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593534, 33.400505, 33.571545>,  <31.790674, 33.534046, 33.541500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593534, 33.400505, 33.571545>,  <31.264967, 33.177937, 33.621616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593534, 33.400505, 33.571545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083992, 0.099076, 0.991529,
		0.564109, -0.824973, 0.034648,
		0.821417, 0.556420, -0.125181,
		31.839960, 33.567432, 33.533989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839071, 32.923130, 34.241741>,  <31.264967, 33.177937, 33.621616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839071, 32.923130, 34.241741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984594, 33.271011, 34.108318>,  <32.071907, 33.479740, 34.028267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984594, 33.271011, 34.108318>,  <31.839071, 32.923130, 34.241741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984594, 33.271011, 34.108318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346204, 0.206188, 0.915221,
		0.864747, -0.448442, -0.226082,
		0.363808, 0.869705, -0.333552,
		32.093739, 33.531921, 34.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560356, 33.041832, 34.525127>,  <31.839071, 32.923130, 34.241741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560356, 33.041832, 34.525127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420940, 33.406349, 34.437431>,  <32.337292, 33.625057, 34.384811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420940, 33.406349, 34.437431>,  <32.560356, 33.041832, 34.525127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420940, 33.406349, 34.437431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462531, 0.370671, 0.805400,
		0.815220, 0.179310, -0.550695,
		-0.348542, 0.911291, -0.219242,
		32.316380, 33.679737, 34.371658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062706, 33.466534, 34.704239>,  <32.560356, 33.041832, 34.525127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062706, 33.466534, 34.704239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745430, 33.706722, 34.663700>,  <32.555065, 33.850838, 34.639378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745430, 33.706722, 34.663700>,  <33.062706, 33.466534, 34.704239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745430, 33.706722, 34.663700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345651, 0.580960, 0.736893,
		0.501367, 0.549467, -0.668369,
		-0.793194, 0.600476, -0.101351,
		32.507473, 33.886864, 34.633293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326420, 34.155510, 34.670883>,  <33.062706, 33.466534, 34.704239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326420, 34.155510, 34.670883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940384, 34.202747, 34.764393>,  <32.708763, 34.231091, 34.820499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940384, 34.202747, 34.764393>,  <33.326420, 34.155510, 34.670883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940384, 34.202747, 34.764393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261450, 0.487345, 0.833150,
		-0.015543, 0.865188, -0.501207,
		-0.965092, 0.118091, 0.233779,
		32.650856, 34.238174, 34.834526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230034, 34.785839, 34.995800>,  <33.326420, 34.155510, 34.670883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230034, 34.785839, 34.995800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901707, 34.586723, 35.107841>,  <32.704708, 34.467255, 35.175068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901707, 34.586723, 35.107841>,  <33.230034, 34.785839, 34.995800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901707, 34.586723, 35.107841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082021, 0.382589, 0.920271,
		-0.565264, 0.778353, -0.273208,
		-0.820822, -0.497787, 0.280105,
		32.655460, 34.437386, 35.191872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849892, 35.276035, 35.281723>,  <33.230034, 34.785839, 34.995800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849892, 35.276035, 35.281723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753593, 34.912777, 35.418732>,  <32.695816, 34.694824, 35.500935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753593, 34.912777, 35.418732>,  <32.849892, 35.276035, 35.281723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753593, 34.912777, 35.418732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115930, 0.323466, 0.939111,
		-0.963640, 0.265795, 0.027407,
		-0.240746, -0.908142, 0.342518,
		32.681370, 34.640335, 35.521488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341061, 35.430943, 35.835995>,  <32.849892, 35.276035, 35.281723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341061, 35.430943, 35.835995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484177, 35.061760, 35.892750>,  <32.570045, 34.840248, 35.926804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484177, 35.061760, 35.892750>,  <32.341061, 35.430943, 35.835995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484177, 35.061760, 35.892750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069447, 0.177823, 0.981609,
		-0.931217, -0.341353, 0.127719,
		0.357787, -0.922961, 0.141886,
		32.591515, 34.784870, 35.935314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025574, 35.243340, 36.396645>,  <32.341061, 35.430943, 35.835995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025574, 35.243340, 36.396645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323223, 34.976711, 36.378929>,  <32.501812, 34.816734, 36.368301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323223, 34.976711, 36.378929>,  <32.025574, 35.243340, 36.396645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323223, 34.976711, 36.378929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078428, 0.021328, 0.996692,
		-0.663420, -0.745138, 0.068148,
		0.744126, -0.666570, -0.044290,
		32.546459, 34.776741, 36.365643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780527, 34.691700, 36.851166>,  <32.025574, 35.243340, 36.396645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780527, 34.691700, 36.851166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178432, 34.653061, 36.837799>,  <32.417175, 34.629879, 36.829781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178432, 34.653061, 36.837799>,  <31.780527, 34.691700, 36.851166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178432, 34.653061, 36.837799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041220, 0.079935, 0.995948,
		-0.093537, -0.992108, 0.083498,
		0.994762, -0.096600, -0.033417,
		32.476860, 34.624081, 36.827774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977520, 34.072414, 37.119835>,  <31.780527, 34.691700, 36.851166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977520, 34.072414, 37.119835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313923, 34.285053, 37.160053>,  <32.515762, 34.412636, 37.184185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313923, 34.285053, 37.160053>,  <31.977520, 34.072414, 37.119835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313923, 34.285053, 37.160053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054782, -0.101222, 0.993354,
		0.538247, -0.840924, -0.056006,
		0.841005, 0.531602, 0.100550,
		32.566223, 34.444534, 37.190220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375698, 33.678982, 37.565418>,  <31.977520, 34.072414, 37.119835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375698, 33.678982, 37.565418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589428, 34.014866, 37.604187>,  <32.717667, 34.216396, 37.627449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589428, 34.014866, 37.604187>,  <32.375698, 33.678982, 37.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589428, 34.014866, 37.604187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084559, -0.060993, 0.994550,
		0.841042, -0.539604, 0.038415,
		0.534320, 0.839707, 0.096926,
		32.749725, 34.266777, 37.633266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633846, 33.469700, 38.186455>,  <32.375698, 33.678982, 37.565418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633846, 33.469700, 38.186455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695480, 33.863598, 38.154121>,  <32.732460, 34.099937, 38.134720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695480, 33.863598, 38.154121>,  <32.633846, 33.469700, 38.186455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695480, 33.863598, 38.154121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101804, 0.097200, 0.990045,
		0.982799, -0.144318, 0.115228,
		0.154081, 0.984746, -0.080836,
		32.741703, 34.159023, 38.129871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116238, 33.688206, 38.663082>,  <32.633846, 33.469700, 38.186455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116238, 33.688206, 38.663082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902813, 34.020412, 38.599133>,  <32.774757, 34.219734, 38.560760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902813, 34.020412, 38.599133>,  <33.116238, 33.688206, 38.663082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902813, 34.020412, 38.599133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234007, 0.036690, 0.971543,
		0.812746, 0.555787, 0.174770,
		-0.533558, 0.830515, -0.159878,
		32.742744, 34.269566, 38.551170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334797, 34.275433, 39.196434>,  <33.116238, 33.688206, 38.663082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334797, 34.275433, 39.196434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967453, 34.357647, 39.061161>,  <32.747047, 34.406975, 38.979996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967453, 34.357647, 39.061161>,  <33.334797, 34.275433, 39.196434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967453, 34.357647, 39.061161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348449, -0.014847, 0.937210,
		0.187612, 0.978536, 0.085254,
		-0.918360, 0.205539, -0.338184,
		32.691944, 34.419308, 38.959705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119236, 34.710369, 39.676685>,  <33.334797, 34.275433, 39.196434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119236, 34.710369, 39.676685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765892, 34.623878, 39.510349>,  <32.553886, 34.571983, 39.410549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765892, 34.623878, 39.510349>,  <33.119236, 34.710369, 39.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765892, 34.623878, 39.510349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457485, 0.204885, 0.865292,
		-0.101902, 0.954603, -0.279909,
		-0.883359, -0.216229, -0.415838,
		32.500885, 34.559010, 39.385597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626637, 35.249020, 39.831696>,  <33.119236, 34.710369, 39.676685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626637, 35.249020, 39.831696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405918, 34.923672, 39.757999>,  <32.273487, 34.728462, 39.713783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405918, 34.923672, 39.757999>,  <32.626637, 35.249020, 39.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405918, 34.923672, 39.757999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489582, 0.137080, 0.861115,
		-0.675151, 0.565362, -0.473853,
		-0.551798, -0.813372, -0.184241,
		32.240379, 34.679661, 39.702728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086712, 35.413059, 40.350067>,  <32.626637, 35.249020, 39.831696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086712, 35.413059, 40.350067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988180, 35.058529, 40.193222>,  <31.929062, 34.845810, 40.099117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988180, 35.058529, 40.193222>,  <32.086712, 35.413059, 40.350067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988180, 35.058529, 40.193222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686112, -0.126274, 0.716453,
		-0.684524, 0.445514, -0.577013,
		-0.246328, -0.886325, -0.392111,
		31.914282, 34.792633, 40.075588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450333, 35.458252, 40.219521>,  <32.086712, 35.413059, 40.350067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450333, 35.458252, 40.219521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527706, 35.067856, 40.259590>,  <31.574129, 34.833618, 40.283630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527706, 35.067856, 40.259590>,  <31.450333, 35.458252, 40.219521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527706, 35.067856, 40.259590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723123, -0.072817, 0.686870,
		-0.663081, -0.205302, -0.719843,
		0.193433, -0.975986, 0.100175,
		31.585735, 34.775059, 40.289642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774178, 35.045452, 40.208340>,  <31.450333, 35.458252, 40.219521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774178, 35.045452, 40.208340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036104, 34.819931, 40.409672>,  <31.193260, 34.684620, 40.530472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036104, 34.819931, 40.409672>,  <30.774178, 35.045452, 40.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036104, 34.819931, 40.409672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653970, -0.088838, 0.751286,
		-0.378861, -0.821119, -0.426882,
		0.654818, -0.563801, 0.503331,
		31.232550, 34.650791, 40.560673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358303, 34.599110, 40.655704>,  <30.774178, 35.045452, 40.208340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358303, 34.599110, 40.655704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718216, 34.586742, 40.829800>,  <30.934164, 34.579323, 40.934258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718216, 34.586742, 40.829800>,  <30.358303, 34.599110, 40.655704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718216, 34.586742, 40.829800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436086, -0.030004, 0.899404,
		-0.014748, -0.999071, -0.040480,
		0.899784, -0.030918, 0.435239,
		30.988152, 34.577469, 40.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242559, 34.356529, 41.314083>,  <30.358303, 34.599110, 40.655704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242559, 34.356529, 41.314083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624340, 34.459515, 41.374390>,  <30.853409, 34.521305, 41.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624340, 34.459515, 41.374390>,  <30.242559, 34.356529, 41.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624340, 34.459515, 41.374390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162072, 0.023121, 0.986508,
		0.250506, -0.966011, 0.063796,
		0.954453, 0.257465, 0.150771,
		30.910675, 34.536755, 41.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496008, 33.892403, 41.825504>,  <30.242559, 34.356529, 41.314083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496008, 33.892403, 41.825504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739567, 34.208580, 41.852192>,  <30.885702, 34.398285, 41.868206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739567, 34.208580, 41.852192>,  <30.496008, 33.892403, 41.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739567, 34.208580, 41.852192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238903, 0.102526, 0.965616,
		0.756420, -0.603899, 0.251267,
		0.608896, 0.790439, 0.066721,
		30.922235, 34.445713, 41.872208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079979, 33.728855, 42.308605>,  <30.496008, 33.892403, 41.825504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079979, 33.728855, 42.308605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050488, 34.127548, 42.295387>,  <31.032793, 34.366764, 42.287457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050488, 34.127548, 42.295387>,  <31.079979, 33.728855, 42.308605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050488, 34.127548, 42.295387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007241, 0.033669, 0.999407,
		0.997252, 0.073445, -0.009700,
		-0.073728, 0.996731, -0.033045,
		31.028370, 34.426567, 42.285473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321070, 33.933071, 42.913082>,  <31.079979, 33.728855, 42.308605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321070, 33.933071, 42.913082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144762, 34.276680, 42.808929>,  <31.038977, 34.482845, 42.746437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144762, 34.276680, 42.808929>,  <31.321070, 33.933071, 42.913082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144762, 34.276680, 42.808929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158023, 0.211294, 0.964564,
		0.883601, 0.466297, 0.042613,
		-0.440769, 0.859024, -0.260386,
		31.012531, 34.534386, 42.730812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653170, 34.519215, 43.237270>,  <31.321070, 33.933071, 42.913082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653170, 34.519215, 43.237270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281580, 34.636589, 43.147026>,  <31.058626, 34.707016, 43.092880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281580, 34.636589, 43.147026>,  <31.653170, 34.519215, 43.237270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281580, 34.636589, 43.147026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046964, 0.511153, 0.858206,
		0.367152, 0.807847, -0.461067,
		-0.928975, 0.293438, -0.225610,
		31.002888, 34.724621, 43.079342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733967, 35.260887, 43.458778>,  <31.653170, 34.519215, 43.237270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733967, 35.260887, 43.458778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359989, 35.120377, 43.438850>,  <31.135603, 35.036068, 43.426895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359989, 35.120377, 43.438850>,  <31.733967, 35.260887, 43.458778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359989, 35.120377, 43.438850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163550, 0.302098, 0.939142,
		-0.314851, 0.886194, -0.339897,
		-0.934944, -0.351280, -0.049821,
		31.079506, 35.014992, 43.423904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277971, 35.716816, 43.729996>,  <31.733967, 35.260887, 43.458778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277971, 35.716816, 43.729996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050705, 35.391136, 43.777760>,  <30.914345, 35.195728, 43.806419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050705, 35.391136, 43.777760>,  <31.277971, 35.716816, 43.729996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050705, 35.391136, 43.777760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218009, 0.288855, 0.932220,
		-0.793509, 0.503624, -0.341622,
		-0.568168, -0.814202, 0.119414,
		30.880255, 35.146877, 43.813583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686533, 35.975212, 44.016026>,  <31.277971, 35.716816, 43.729996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686533, 35.975212, 44.016026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625305, 35.586250, 44.086452>,  <30.588568, 35.352875, 44.128708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625305, 35.586250, 44.086452>,  <30.686533, 35.975212, 44.016026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625305, 35.586250, 44.086452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422553, 0.225465, 0.877846,
		-0.893318, 0.059974, -0.445405,
		-0.153071, -0.972403, 0.176070,
		30.579384, 35.294529, 44.139275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945942, 35.837914, 44.140984>,  <30.686533, 35.975212, 44.016026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945942, 35.837914, 44.140984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159004, 35.556633, 44.329361>,  <30.286842, 35.387863, 44.442387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159004, 35.556633, 44.329361>,  <29.945942, 35.837914, 44.140984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159004, 35.556633, 44.329361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414648, 0.268257, 0.869543,
		-0.737797, -0.658443, -0.148692,
		0.532656, -0.703201, 0.470941,
		30.318802, 35.345673, 44.470642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540073, 35.739277, 44.756199>,  <29.945942, 35.837914, 44.140984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540073, 35.739277, 44.756199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855167, 35.507938, 44.841042>,  <30.044224, 35.369137, 44.891949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855167, 35.507938, 44.841042>,  <29.540073, 35.739277, 44.756199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855167, 35.507938, 44.841042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290167, -0.044631, 0.955935,
		-0.543393, -0.814571, -0.202973,
		0.787735, -0.578345, 0.212109,
		30.091488, 35.334435, 44.904675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291044, 35.186420, 45.220402>,  <29.540073, 35.739277, 44.756199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291044, 35.186420, 45.220402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682116, 35.258755, 45.263184>,  <29.916759, 35.302155, 45.288853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682116, 35.258755, 45.263184>,  <29.291044, 35.186420, 45.220402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682116, 35.258755, 45.263184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126290, 0.099024, 0.987039,
		0.167908, -0.978514, 0.119652,
		0.977680, 0.180843, 0.106950,
		29.975420, 35.313007, 45.295269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524448, 34.674568, 45.714188>,  <29.291044, 35.186420, 45.220402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524448, 34.674568, 45.714188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775057, 34.986301, 45.710106>,  <29.925423, 35.173344, 45.707657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775057, 34.986301, 45.710106>,  <29.524448, 34.674568, 45.714188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775057, 34.986301, 45.710106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042061, -0.020736, 0.998900,
		0.778268, -0.626262, -0.045771,
		0.626522, 0.779337, -0.010204,
		29.963013, 35.220104, 45.707047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918932, 34.443748, 46.243660>,  <29.524448, 34.674568, 45.714188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918932, 34.443748, 46.243660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026087, 34.825272, 46.189270>,  <30.090380, 35.054184, 46.156635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026087, 34.825272, 46.189270>,  <29.918932, 34.443748, 46.243660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026087, 34.825272, 46.189270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104816, 0.111445, 0.988227,
		0.957732, -0.278985, -0.070119,
		0.267886, 0.953807, -0.135976,
		30.106453, 35.111412, 46.148476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477791, 34.574848, 46.752003>,  <29.918932, 34.443748, 46.243660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477791, 34.574848, 46.752003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359865, 34.932743, 46.617821>,  <30.289110, 35.147480, 46.537312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359865, 34.932743, 46.617821>,  <30.477791, 34.574848, 46.752003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359865, 34.932743, 46.617821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267479, 0.414298, 0.869949,
		0.917354, 0.166748, -0.361465,
		-0.294816, 0.894736, -0.335457,
		30.271420, 35.201164, 46.517185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960411, 35.034935, 46.902027>,  <30.477791, 34.574848, 46.752003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960411, 35.034935, 46.902027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621086, 35.241417, 46.854877>,  <30.417490, 35.365307, 46.826588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621086, 35.241417, 46.854877>,  <30.960411, 35.034935, 46.902027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621086, 35.241417, 46.854877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000185, 0.222324, 0.974973,
		0.529495, 0.827104, -0.188505,
		-0.848313, 0.516208, -0.117872,
		30.366592, 35.396278, 46.819515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983633, 35.573875, 47.379803>,  <30.960411, 35.034935, 46.902027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983633, 35.573875, 47.379803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592392, 35.555950, 47.298508>,  <30.357647, 35.545197, 47.249733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592392, 35.555950, 47.298508>,  <30.983633, 35.573875, 47.379803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592392, 35.555950, 47.298508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206178, 0.075707, 0.975581,
		-0.028334, 0.996123, -0.083289,
		-0.978104, -0.044814, -0.203234,
		30.298962, 35.542507, 47.237537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692757, 36.037476, 47.836891>,  <30.983633, 35.573875, 47.379803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692757, 36.037476, 47.836891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353476, 35.839436, 47.761597>,  <30.149906, 35.720612, 47.716419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353476, 35.839436, 47.761597>,  <30.692757, 36.037476, 47.836891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353476, 35.839436, 47.761597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349548, 0.256216, 0.901204,
		-0.397957, 0.830199, -0.390384,
		-0.848202, -0.495098, -0.188232,
		30.099014, 35.690907, 47.705128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090284, 36.513332, 47.969601>,  <30.692757, 36.037476, 47.836891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090284, 36.513332, 47.969601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955458, 36.137878, 47.998882>,  <29.874561, 35.912605, 48.016453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955458, 36.137878, 47.998882>,  <30.090284, 36.513332, 47.969601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955458, 36.137878, 47.998882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532370, 0.254151, 0.807459,
		-0.776510, 0.233195, -0.585365,
		-0.337066, -0.938631, 0.073205,
		29.854338, 35.856289, 48.020844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322041, 36.466633, 48.084190>,  <30.090284, 36.513332, 47.969601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322041, 36.466633, 48.084190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476046, 36.130989, 48.237900>,  <29.568449, 35.929604, 48.330124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476046, 36.130989, 48.237900>,  <29.322041, 36.466633, 48.084190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476046, 36.130989, 48.237900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347927, 0.253681, 0.902548,
		-0.854818, -0.481188, -0.194278,
		0.385011, -0.839109, 0.384270,
		29.591549, 35.879257, 48.353180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771315, 35.954433, 48.479847>,  <29.322041, 36.466633, 48.084190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771315, 35.954433, 48.479847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133776, 35.873856, 48.628609>,  <29.351252, 35.825508, 48.717865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133776, 35.873856, 48.628609>,  <28.771315, 35.954433, 48.479847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133776, 35.873856, 48.628609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380815, -0.005979, 0.924632,
		-0.184039, -0.979481, -0.082131,
		0.906151, -0.201446, 0.371900,
		29.405621, 35.813423, 48.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725655, 35.653759, 49.105995>,  <28.771315, 35.954433, 48.479847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725655, 35.653759, 49.105995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111845, 35.754433, 49.132858>,  <29.343559, 35.814838, 49.148975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111845, 35.754433, 49.132858>,  <28.725655, 35.653759, 49.105995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111845, 35.754433, 49.132858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074808, 0.020931, 0.996978,
		0.249521, -0.967582, 0.039037,
		0.965475, 0.251687, 0.067160,
		29.401487, 35.829937, 49.153008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051044, 35.075115, 49.471195>,  <28.725655, 35.653759, 49.105995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051044, 35.075115, 49.471195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228317, 35.433479, 49.483437>,  <29.334681, 35.648499, 49.490780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228317, 35.433479, 49.483437>,  <29.051044, 35.075115, 49.471195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228317, 35.433479, 49.483437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158347, 0.044637, 0.986374,
		0.882336, -0.441988, 0.161647,
		0.443180, 0.895910, 0.030602,
		29.361271, 35.702251, 49.492619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538795, 35.168282, 50.045078>,  <29.051044, 35.075115, 49.471195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538795, 35.168282, 50.045078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384052, 35.523201, 49.944649>,  <29.291206, 35.736153, 49.884392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384052, 35.523201, 49.944649>,  <29.538795, 35.168282, 50.045078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384052, 35.523201, 49.944649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270765, 0.150975, 0.950733,
		0.881490, 0.435784, 0.181843,
		-0.386860, 0.887299, -0.251078,
		29.267994, 35.789391, 49.869324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066133, 34.690411, 49.670925>,  <29.538795, 35.168282, 50.045078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066133, 34.690411, 49.670925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870716, 34.550819, 49.351040>,  <29.753466, 34.467064, 49.159107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870716, 34.550819, 49.351040>,  <30.066133, 34.690411, 49.670925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870716, 34.550819, 49.351040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870976, -0.140178, -0.470905,
		0.052232, -0.926589, 0.372432,
		-0.488542, -0.348975, -0.799714,
		29.724154, 34.446125, 49.111126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240862, 33.966412, 49.432602>,  <30.066133, 34.690411, 49.670925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240862, 33.966412, 49.432602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125044, 34.175236, 49.111698>,  <30.055553, 34.300529, 48.919155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125044, 34.175236, 49.111698>,  <30.240862, 33.966412, 49.432602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125044, 34.175236, 49.111698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883922, -0.175719, -0.433365,
		-0.367214, -0.834612, -0.410581,
		-0.289544, 0.522059, -0.802258,
		30.038181, 34.331852, 48.871021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120613, 33.370121, 49.765514>,  <30.240862, 33.966412, 49.432602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120613, 33.370121, 49.765514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872349, 33.130901, 49.968342>,  <29.723391, 32.987370, 50.090038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872349, 33.130901, 49.968342>,  <30.120613, 33.370121, 49.765514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872349, 33.130901, 49.968342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692539, 0.114892, -0.712173,
		0.367654, -0.793184, -0.485479,
		-0.620661, -0.598047, 0.507070,
		29.686150, 32.951488, 50.120464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936563, 32.792969, 49.336914>,  <30.120613, 33.370121, 49.765514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936563, 32.792969, 49.336914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634470, 32.905140, 49.573887>,  <29.453215, 32.972443, 49.716072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634470, 32.905140, 49.573887>,  <29.936563, 32.792969, 49.336914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634470, 32.905140, 49.573887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628843, -0.055061, -0.775581,
		-0.184880, -0.958292, 0.217934,
		-0.755233, 0.280435, 0.592435,
		29.407900, 32.989269, 49.751617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965546, 33.075150, 48.782852>,  <29.936563, 32.792969, 49.336914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965546, 33.075150, 48.782852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769083, 33.220387, 48.466137>,  <29.651205, 33.307529, 48.276108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769083, 33.220387, 48.466137>,  <29.965546, 33.075150, 48.782852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769083, 33.220387, 48.466137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588454, -0.531900, -0.608937,
		-0.642252, -0.765015, 0.047584,
		-0.491156, 0.363090, -0.791790,
		29.621737, 33.329315, 48.228600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814713, 32.479889, 48.306080>,  <29.965546, 33.075150, 48.782852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814713, 32.479889, 48.306080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786667, 32.814514, 48.088734>,  <29.769840, 33.015289, 47.958324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786667, 32.814514, 48.088734>,  <29.814713, 32.479889, 48.306080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786667, 32.814514, 48.088734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446961, -0.460623, -0.766846,
		-0.891802, -0.296629, -0.341615,
		-0.070113, 0.836563, -0.543366,
		29.765633, 33.065483, 47.925724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498451, 32.354393, 47.665260>,  <29.814713, 32.479889, 48.306080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498451, 32.354393, 47.665260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713730, 32.686123, 47.605164>,  <29.842897, 32.885159, 47.569107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713730, 32.686123, 47.605164>,  <29.498451, 32.354393, 47.665260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713730, 32.686123, 47.605164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414632, -0.415728, -0.809475,
		-0.733774, 0.373361, -0.567606,
		0.538196, 0.829320, -0.150243,
		29.875189, 32.934917, 47.560089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469086, 32.441082, 47.018177>,  <29.498451, 32.354393, 47.665260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469086, 32.441082, 47.018177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778112, 32.678333, 47.108807>,  <29.963530, 32.820683, 47.163185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778112, 32.678333, 47.108807>,  <29.469086, 32.441082, 47.018177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778112, 32.678333, 47.108807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486908, -0.324430, -0.810966,
		-0.407502, 0.736846, -0.539444,
		0.772569, 0.593130, 0.226570,
		30.009884, 32.856274, 47.176777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623878, 32.851246, 46.388115>,  <29.469086, 32.441082, 47.018177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623878, 32.851246, 46.388115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957815, 32.818996, 46.605938>,  <30.158176, 32.799648, 46.736629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957815, 32.818996, 46.605938>,  <29.623878, 32.851246, 46.388115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957815, 32.818996, 46.605938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531033, -0.142731, -0.835243,
		0.145061, 0.986473, -0.076346,
		0.834842, -0.080619, 0.544555,
		30.208267, 32.794811, 46.769306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099745, 33.059837, 45.882328>,  <29.623878, 32.851246, 46.388115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099745, 33.059837, 45.882328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359085, 32.946308, 46.164909>,  <30.514690, 32.878189, 46.334457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359085, 32.946308, 46.164909>,  <30.099745, 33.059837, 45.882328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359085, 32.946308, 46.164909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721560, -0.066943, -0.689108,
		0.242879, 0.956536, 0.161394,
		0.648353, -0.283825, 0.706457,
		30.553591, 32.861160, 46.376846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642185, 33.608101, 46.008396>,  <30.099745, 33.059837, 45.882328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642185, 33.608101, 46.008396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757536, 33.238758, 46.109783>,  <30.826746, 33.017151, 46.170616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757536, 33.238758, 46.109783>,  <30.642185, 33.608101, 46.008396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757536, 33.238758, 46.109783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513415, -0.074334, -0.854915,
		0.808236, 0.376670, 0.452631,
		0.288375, -0.923360, 0.253467,
		30.844049, 32.961750, 46.185822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372900, 33.469505, 45.756626>,  <30.642185, 33.608101, 46.008396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372900, 33.469505, 45.756626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244081, 33.095287, 45.814644>,  <31.166790, 32.870754, 45.849453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244081, 33.095287, 45.814644>,  <31.372900, 33.469505, 45.756626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244081, 33.095287, 45.814644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490761, -0.295981, -0.819481,
		0.809593, -0.192731, 0.554450,
		-0.322046, -0.935548, 0.145040,
		31.147469, 32.814625, 45.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833231, 32.984077, 45.335758>,  <31.372900, 33.469505, 45.756626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833231, 32.984077, 45.335758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548542, 32.727734, 45.450825>,  <31.377729, 32.573929, 45.519863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548542, 32.727734, 45.450825>,  <31.833231, 32.984077, 45.335758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548542, 32.727734, 45.450825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200539, -0.577837, -0.791131,
		0.673227, -0.505377, 0.539777,
		-0.711723, -0.640857, 0.287668,
		31.335026, 32.535477, 45.537125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144909, 32.270657, 45.472664>,  <31.833231, 32.984077, 45.335758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144909, 32.270657, 45.472664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762228, 32.231285, 45.363098>,  <31.532619, 32.207661, 45.297359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762228, 32.231285, 45.363098>,  <32.144909, 32.270657, 45.472664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762228, 32.231285, 45.363098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290659, -0.372965, -0.881144,
		-0.015429, -0.922609, 0.385427,
		-0.956703, -0.098433, -0.273919,
		31.475218, 32.201756, 45.280922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191914, 31.664757, 45.202446>,  <32.144909, 32.270657, 45.472664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191914, 31.664757, 45.202446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853008, 31.820024, 45.057411>,  <31.649664, 31.913185, 44.970390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853008, 31.820024, 45.057411>,  <32.191914, 31.664757, 45.202446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853008, 31.820024, 45.057411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240908, -0.327552, -0.913604,
		-0.473399, -0.861414, 0.184010,
		-0.847264, 0.388170, -0.362584,
		31.598829, 31.936476, 44.948635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038288, 31.218903, 44.710453>,  <32.191914, 31.664757, 45.202446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038288, 31.218903, 44.710453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805655, 31.531958, 44.621696>,  <31.666075, 31.719791, 44.568443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805655, 31.531958, 44.621696>,  <32.038288, 31.218903, 44.710453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805655, 31.531958, 44.621696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070018, -0.223591, -0.972165,
		-0.810467, -0.580932, 0.075238,
		-0.581584, 0.782640, -0.221889,
		31.631180, 31.766750, 44.555130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504110, 31.048368, 44.244232>,  <32.038288, 31.218903, 44.710453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504110, 31.048368, 44.244232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572607, 31.438490, 44.188435>,  <31.613705, 31.672564, 44.154957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572607, 31.438490, 44.188435>,  <31.504110, 31.048368, 44.244232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572607, 31.438490, 44.188435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128755, -0.162520, -0.978269,
		-0.976779, 0.149562, -0.153406,
		0.171244, 0.975304, -0.139490,
		31.623980, 31.731081, 44.146587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178568, 31.231472, 43.654915>,  <31.504110, 31.048368, 44.244232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178568, 31.231472, 43.654915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438351, 31.533724, 43.688927>,  <31.594219, 31.715075, 43.709335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438351, 31.533724, 43.688927>,  <31.178568, 31.231472, 43.654915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438351, 31.533724, 43.688927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203614, -0.065073, -0.976886,
		-0.732631, 0.651758, -0.196119,
		0.649456, 0.755630, 0.085033,
		31.633188, 31.760412, 43.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933784, 31.900990, 43.235859>,  <31.178568, 31.231472, 43.654915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933784, 31.900990, 43.235859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331631, 31.881454, 43.272411>,  <31.570339, 31.869734, 43.294342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331631, 31.881454, 43.272411>,  <30.933784, 31.900990, 43.235859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331631, 31.881454, 43.272411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098160, 0.161861, -0.981919,
		0.033162, 0.985604, 0.165783,
		0.994618, -0.048836, 0.091379,
		31.630016, 31.866804, 43.299824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057144, 32.435303, 42.855183>,  <30.933784, 31.900990, 43.235859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057144, 32.435303, 42.855183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387505, 32.211807, 42.885384>,  <31.585720, 32.077709, 42.903503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387505, 32.211807, 42.885384>,  <31.057144, 32.435303, 42.855183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387505, 32.211807, 42.885384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120185, 0.043637, -0.991792,
		0.550858, 0.828195, 0.103192,
		0.825900, -0.558739, 0.075499,
		31.635275, 32.044186, 42.908031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481121, 32.768471, 42.275314>,  <31.057144, 32.435303, 42.855183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481121, 32.768471, 42.275314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628223, 32.416107, 42.394485>,  <31.716484, 32.204689, 42.465988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628223, 32.416107, 42.394485>,  <31.481121, 32.768471, 42.275314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628223, 32.416107, 42.394485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340090, -0.170783, -0.924755,
		0.865503, 0.441406, 0.236781,
		0.367754, -0.880905, 0.297931,
		31.738550, 32.151836, 42.483864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129807, 32.780792, 42.021664>,  <31.481121, 32.768471, 42.275314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129807, 32.780792, 42.021664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012806, 32.400055, 42.058414>,  <31.942606, 32.171612, 42.080467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012806, 32.400055, 42.058414>,  <32.129807, 32.780792, 42.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012806, 32.400055, 42.058414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263754, -0.172658, -0.949012,
		0.919172, -0.253353, 0.301555,
		-0.292501, -0.951841, 0.091880,
		31.925056, 32.114502, 42.085979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684200, 32.434784, 41.776516>,  <32.129807, 32.780792, 42.021664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684200, 32.434784, 41.776516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391544, 32.162205, 41.769341>,  <32.215950, 31.998655, 41.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391544, 32.162205, 41.769341>,  <32.684200, 32.434784, 41.776516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391544, 32.162205, 41.769341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382316, -0.388407, -0.838436,
		0.564388, -0.620293, 0.544705,
		-0.731643, -0.681452, -0.017935,
		32.172050, 31.957769, 41.763962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005989, 31.765430, 41.896526>,  <32.684200, 32.434784, 41.776516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005989, 31.765430, 41.896526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666306, 31.744120, 41.686382>,  <32.462494, 31.731333, 41.560295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666306, 31.744120, 41.686382>,  <33.005989, 31.765430, 41.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666306, 31.744120, 41.686382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496259, -0.420545, -0.759519,
		-0.180475, -0.905706, 0.383569,
		-0.849209, -0.053276, -0.525362,
		32.411545, 31.728138, 41.528774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189335, 31.339615, 41.447392>,  <33.005989, 31.765430, 41.896526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189335, 31.339615, 41.447392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828442, 31.450449, 41.315205>,  <32.611908, 31.516949, 41.235893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828442, 31.450449, 41.315205>,  <33.189335, 31.339615, 41.447392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828442, 31.450449, 41.315205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187457, -0.438127, -0.879150,
		-0.388380, -0.855144, 0.343351,
		-0.902231, 0.277081, -0.330462,
		32.557774, 31.533573, 41.216064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890953, 30.672710, 41.090855>,  <33.189335, 31.339615, 41.447392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890953, 30.672710, 41.090855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688984, 30.992165, 40.959869>,  <32.567802, 31.183838, 40.881279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688984, 30.992165, 40.959869>,  <32.890953, 30.672710, 41.090855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688984, 30.992165, 40.959869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050905, -0.406267, -0.912335,
		-0.861660, -0.443992, 0.245789,
		-0.504925, 0.798635, -0.327463,
		32.537506, 31.231754, 40.861629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463871, 30.392029, 40.538513>,  <32.890953, 30.672710, 41.090855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463871, 30.392029, 40.538513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471867, 30.782753, 40.453239>,  <32.476662, 31.017187, 40.402077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471867, 30.782753, 40.453239>,  <32.463871, 30.392029, 40.538513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471867, 30.782753, 40.453239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079085, -0.211011, -0.974279,
		-0.996667, 0.036331, 0.073034,
		0.019985, 0.976808, -0.213181,
		32.477863, 31.075796, 40.389286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925905, 30.491842, 40.081478>,  <32.463871, 30.392029, 40.538513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925905, 30.491842, 40.081478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204124, 30.776945, 40.045277>,  <32.371056, 30.948008, 40.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204124, 30.776945, 40.045277>,  <31.925905, 30.491842, 40.081478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204124, 30.776945, 40.045277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090486, -0.038058, -0.995170,
		-0.712760, 0.700377, 0.038023,
		0.695547, 0.712758, -0.090500,
		32.412788, 30.990772, 40.018127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683792, 30.948597, 39.615730>,  <31.925905, 30.491842, 40.081478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683792, 30.948597, 39.615730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072739, 31.039623, 39.594875>,  <32.306107, 31.094238, 39.582363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072739, 31.039623, 39.594875>,  <31.683792, 30.948597, 39.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072739, 31.039623, 39.594875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083943, 0.132418, -0.987633,
		-0.217846, 0.964718, 0.147861,
		0.972367, 0.227564, -0.052134,
		32.364449, 31.107893, 39.579235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777607, 31.462696, 39.084866>,  <31.683792, 30.948597, 39.615730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777607, 31.462696, 39.084866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145084, 31.311972, 39.132225>,  <32.365570, 31.221537, 39.160641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145084, 31.311972, 39.132225>,  <31.777607, 31.462696, 39.084866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145084, 31.311972, 39.132225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088365, -0.096095, -0.991442,
		0.384963, 0.921292, -0.054985,
		0.918692, -0.376810, 0.118403,
		32.420692, 31.198929, 39.167747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211258, 31.844854, 38.502888>,  <31.777607, 31.462696, 39.084866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211258, 31.844854, 38.502888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408279, 31.525604, 38.641670>,  <32.526493, 31.334053, 38.724941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408279, 31.525604, 38.641670>,  <32.211258, 31.844854, 38.502888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408279, 31.525604, 38.641670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198085, -0.285394, -0.937717,
		0.847437, 0.530607, 0.017524,
		0.492557, -0.798127, 0.346959,
		32.556046, 31.286165, 38.745758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835159, 31.861393, 38.224751>,  <32.211258, 31.844854, 38.502888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835159, 31.861393, 38.224751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800129, 31.473921, 38.317692>,  <32.779110, 31.241438, 38.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800129, 31.473921, 38.317692>,  <32.835159, 31.861393, 38.224751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800129, 31.473921, 38.317692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353266, -0.248286, -0.901974,
		0.931415, 0.003090, 0.363946,
		-0.087576, -0.968682, 0.232349,
		32.773857, 31.183317, 38.387398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432682, 31.517452, 38.003674>,  <32.835159, 31.861393, 38.224751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432682, 31.517452, 38.003674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180447, 31.208439, 38.033485>,  <33.029106, 31.023031, 38.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180447, 31.208439, 38.033485>,  <33.432682, 31.517452, 38.003674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180447, 31.208439, 38.033485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323790, -0.349128, -0.879357,
		0.705350, -0.530381, 0.470294,
		-0.630588, -0.772531, 0.074526,
		32.991272, 30.976679, 38.055843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770569, 30.888538, 37.848835>,  <33.432682, 31.517452, 38.003674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770569, 30.888538, 37.848835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390862, 30.789228, 37.771645>,  <33.163036, 30.729643, 37.725330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390862, 30.789228, 37.771645>,  <33.770569, 30.888538, 37.848835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390862, 30.789228, 37.771645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288773, -0.445395, -0.847486,
		0.124462, -0.860222, 0.494498,
		-0.949273, -0.248277, -0.192975,
		33.106079, 30.714745, 37.713753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777958, 30.165997, 37.647739>,  <33.770569, 30.888538, 37.848835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777958, 30.165997, 37.647739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441540, 30.324734, 37.500683>,  <33.239689, 30.419977, 37.412449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441540, 30.324734, 37.500683>,  <33.777958, 30.165997, 37.647739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441540, 30.324734, 37.500683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212011, -0.383439, -0.898902,
		-0.497694, -0.833959, 0.238353,
		-0.841042, 0.396845, -0.367644,
		33.189228, 30.443787, 37.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531555, 29.738163, 37.086704>,  <33.777958, 30.165997, 37.647739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531555, 29.738163, 37.086704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292110, 30.046244, 36.998661>,  <33.148441, 30.231092, 36.945835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292110, 30.046244, 36.998661>,  <33.531555, 29.738163, 37.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292110, 30.046244, 36.998661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018949, -0.261090, -0.965128,
		-0.800813, -0.581911, 0.141698,
		-0.598615, 0.770202, -0.220111,
		33.112526, 30.277304, 36.932629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215389, 29.505871, 36.580090>,  <33.531555, 29.738163, 37.086704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215389, 29.505871, 36.580090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114960, 29.891073, 36.540932>,  <33.054703, 30.122194, 36.517437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114960, 29.891073, 36.540932>,  <33.215389, 29.505871, 36.580090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114960, 29.891073, 36.540932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086039, -0.122936, -0.988678,
		-0.964137, -0.239807, 0.113722,
		-0.251072, 0.963005, -0.097894,
		33.039639, 30.179976, 36.511562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724312, 29.583279, 36.043098>,  <33.215389, 29.505871, 36.580090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724312, 29.583279, 36.043098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886955, 29.948492, 36.055981>,  <32.984539, 30.167622, 36.063709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886955, 29.948492, 36.055981>,  <32.724312, 29.583279, 36.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886955, 29.948492, 36.055981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213086, -0.060501, -0.975159,
		-0.888406, 0.403368, -0.219155,
		0.406606, 0.913036, 0.032203,
		33.008938, 30.222403, 36.065643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349655, 30.005669, 35.531231>,  <32.724312, 29.583279, 36.043098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349655, 30.005669, 35.531231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693714, 30.200562, 35.591572>,  <32.900150, 30.317497, 35.627777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693714, 30.200562, 35.591572>,  <32.349655, 30.005669, 35.531231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693714, 30.200562, 35.591572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150312, 0.040471, -0.987810,
		-0.487396, 0.872335, -0.038425,
		0.860146, 0.487231, 0.150848,
		32.951759, 30.346731, 35.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377930, 30.585663, 35.095497>,  <32.349655, 30.005669, 35.531231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377930, 30.585663, 35.095497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767918, 30.539274, 35.171368>,  <33.001911, 30.511442, 35.216888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767918, 30.539274, 35.171368>,  <32.377930, 30.585663, 35.095497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767918, 30.539274, 35.171368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190529, -0.003776, -0.981674,
		0.114561, 0.993246, 0.018414,
		0.974974, -0.115970, 0.189674,
		33.060410, 30.504482, 35.228271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813217, 31.176853, 34.777611>,  <32.377930, 30.585663, 35.095497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813217, 31.176853, 34.777611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075432, 30.881430, 34.840607>,  <33.232761, 30.704176, 34.878403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075432, 30.881430, 34.840607>,  <32.813217, 31.176853, 34.777611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075432, 30.881430, 34.840607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273862, 0.038155, -0.961012,
		0.703756, 0.673107, 0.227276,
		0.655535, -0.738560, 0.157487,
		33.272091, 30.659863, 34.887852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455540, 31.438433, 34.486160>,  <32.813217, 31.176853, 34.777611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455540, 31.438433, 34.486160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566799, 31.055021, 34.511013>,  <33.633556, 30.824974, 34.525925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566799, 31.055021, 34.511013>,  <33.455540, 31.438433, 34.486160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566799, 31.055021, 34.511013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434974, 0.068021, -0.897870,
		0.856406, 0.276767, 0.435854,
		0.278148, -0.958526, 0.062133,
		33.650242, 30.767464, 34.529652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162510, 31.353107, 34.147949>,  <33.455540, 31.438433, 34.486160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162510, 31.353107, 34.147949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028782, 30.976170, 34.153770>,  <33.948544, 30.750006, 34.157265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028782, 30.976170, 34.153770>,  <34.162510, 31.353107, 34.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028782, 30.976170, 34.153770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464068, -0.178041, -0.867723,
		0.820287, -0.283345, 0.496835,
		-0.334322, -0.942347, 0.014553,
		33.928486, 30.693466, 34.158134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714581, 30.937819, 33.999458>,  <34.162510, 31.353107, 34.147949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714581, 30.937819, 33.999458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390057, 30.713770, 33.932468>,  <34.195343, 30.579340, 33.892277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390057, 30.713770, 33.932468>,  <34.714581, 30.937819, 33.999458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390057, 30.713770, 33.932468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406601, -0.334780, -0.850058,
		0.420069, -0.757751, 0.499355,
		-0.811306, -0.560121, -0.167472,
		34.146664, 30.545734, 33.882225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886967, 30.256346, 33.780151>,  <34.714581, 30.937819, 33.999458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886967, 30.256346, 33.780151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523865, 30.329565, 33.629169>,  <34.306004, 30.373497, 33.538582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523865, 30.329565, 33.629169>,  <34.886967, 30.256346, 33.780151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523865, 30.329565, 33.629169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319352, -0.281895, -0.904737,
		-0.271988, -0.941827, 0.197446,
		-0.907765, 0.183023, -0.377446,
		34.251537, 30.384480, 33.515934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498653, 30.410835, 34.278225>,  <34.886967, 30.256346, 33.780151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498653, 30.410835, 34.278225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881638, 30.495630, 34.199905>,  <36.111427, 30.546507, 34.152916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881638, 30.495630, 34.199905>,  <35.498653, 30.410835, 34.278225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881638, 30.495630, 34.199905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263784, -0.367807, 0.891704,
		0.117015, -0.905416, -0.408079,
		0.957458, 0.211988, -0.195795,
		36.168877, 30.559227, 34.141167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007839, 29.781458, 34.285137>,  <35.498653, 30.410835, 34.278225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007839, 29.781458, 34.285137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218281, 30.107721, 34.381401>,  <36.344543, 30.303480, 34.439159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218281, 30.107721, 34.381401>,  <36.007839, 29.781458, 34.285137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218281, 30.107721, 34.381401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376484, -0.477130, 0.794108,
		0.762547, -0.327177, -0.558101,
		0.526101, 0.815661, 0.240657,
		36.376110, 30.352419, 34.453598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699142, 29.511017, 34.239136>,  <36.007839, 29.781458, 34.285137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699142, 29.511017, 34.239136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659149, 29.847298, 34.452011>,  <36.635155, 30.049067, 34.579735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659149, 29.847298, 34.452011>,  <36.699142, 29.511017, 34.239136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659149, 29.847298, 34.452011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318937, -0.479565, 0.817494,
		0.942488, 0.251470, -0.220182,
		-0.099984, 0.840702, 0.532187,
		36.629154, 30.099508, 34.611668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110889, 29.384954, 34.874882>,  <36.699142, 29.511017, 34.239136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110889, 29.384954, 34.874882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909348, 29.707233, 34.999451>,  <36.788422, 29.900600, 35.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909348, 29.707233, 34.999451>,  <37.110889, 29.384954, 34.874882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909348, 29.707233, 34.999451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013696, -0.353031, 0.935511,
		0.863681, 0.475626, 0.166841,
		-0.503853, 0.805698, 0.311420,
		36.758190, 29.948942, 35.092876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472221, 29.676989, 35.488247>,  <37.110889, 29.384954, 34.874882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472221, 29.676989, 35.488247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091839, 29.800529, 35.494999>,  <36.863609, 29.874655, 35.499050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091839, 29.800529, 35.494999>,  <37.472221, 29.676989, 35.488247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091839, 29.800529, 35.494999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051684, -0.212461, 0.975802,
		0.304964, 0.927077, 0.218004,
		-0.950960, 0.308852, 0.016878,
		36.806549, 29.893185, 35.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511272, 30.172230, 35.929432>,  <37.472221, 29.676989, 35.488247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511272, 30.172230, 35.929432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113850, 30.127781, 35.920567>,  <36.875397, 30.101112, 35.915249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113850, 30.127781, 35.920567>,  <37.511272, 30.172230, 35.929432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113850, 30.127781, 35.920567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026032, 0.033486, 0.999100,
		-0.110281, 0.993242, -0.036163,
		-0.993560, -0.111123, -0.022163,
		36.815781, 30.094444, 35.913918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325306, 30.565910, 36.557636>,  <37.511272, 30.172230, 35.929432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325306, 30.565910, 36.557636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010941, 30.332224, 36.476608>,  <36.822323, 30.192011, 36.427990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010941, 30.332224, 36.476608>,  <37.325306, 30.565910, 36.557636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010941, 30.332224, 36.476608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132429, -0.160973, 0.978034,
		-0.603992, 0.795474, 0.049143,
		-0.785911, -0.584217, -0.202570,
		36.775166, 30.156960, 36.415836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730213, 30.773365, 36.950943>,  <37.325306, 30.565910, 36.557636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730213, 30.773365, 36.950943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610680, 30.397709, 36.883167>,  <36.538960, 30.172316, 36.842503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610680, 30.397709, 36.883167>,  <36.730213, 30.773365, 36.950943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610680, 30.397709, 36.883167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250647, -0.094079, 0.963497,
		-0.920800, 0.330399, -0.207278,
		-0.298838, -0.939141, -0.169441,
		36.521027, 30.115967, 36.832336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068375, 30.722958, 37.267807>,  <36.730213, 30.773365, 36.950943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068375, 30.722958, 37.267807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152431, 30.337193, 37.203613>,  <36.202866, 30.105734, 37.165096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152431, 30.337193, 37.203613>,  <36.068375, 30.722958, 37.267807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152431, 30.337193, 37.203613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399816, -0.234563, 0.886074,
		-0.892182, -0.122034, -0.434877,
		0.210137, -0.964411, -0.160482,
		36.215473, 30.047869, 37.155468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431530, 30.272236, 37.326672>,  <36.068375, 30.722958, 37.267807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431530, 30.272236, 37.326672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743877, 30.029438, 37.385727>,  <35.931286, 29.883760, 37.421162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743877, 30.029438, 37.385727>,  <35.431530, 30.272236, 37.326672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743877, 30.029438, 37.385727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375748, -0.267580, 0.887251,
		-0.499051, -0.748304, -0.437022,
		0.780872, -0.606994, 0.147638,
		35.978138, 29.847340, 37.430019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054169, 29.621433, 37.619713>,  <35.431530, 30.272236, 37.326672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054169, 29.621433, 37.619713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444233, 29.647074, 37.704529>,  <35.678272, 29.662458, 37.755417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444233, 29.647074, 37.704529>,  <35.054169, 29.621433, 37.619713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444233, 29.647074, 37.704529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183412, -0.303129, 0.935132,
		0.124220, -0.950791, -0.283841,
		0.975156, 0.064103, 0.212042,
		35.736778, 29.666304, 37.768143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154251, 29.063005, 38.085686>,  <35.054169, 29.621433, 37.619713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154251, 29.063005, 38.085686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451889, 29.321718, 38.152615>,  <35.630470, 29.476946, 38.192772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451889, 29.321718, 38.152615>,  <35.154251, 29.063005, 38.085686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451889, 29.321718, 38.152615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165617, -0.064056, 0.984108,
		0.647219, -0.759982, 0.059454,
		0.744095, 0.646780, 0.167324,
		35.675117, 29.515753, 38.202812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608299, 28.770569, 38.596134>,  <35.154251, 29.063005, 38.085686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608299, 28.770569, 38.596134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657230, 29.164616, 38.644440>,  <35.686588, 29.401043, 38.673424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657230, 29.164616, 38.644440>,  <35.608299, 28.770569, 38.596134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657230, 29.164616, 38.644440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228874, -0.090403, 0.969249,
		0.965740, -0.146203, 0.214409,
		0.122324, 0.985115, 0.120767,
		35.693928, 29.460150, 38.680672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924709, 28.750658, 39.229881>,  <35.608299, 28.770569, 38.596134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924709, 28.750658, 39.229881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830997, 29.137108, 39.186584>,  <35.774773, 29.368979, 39.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830997, 29.137108, 39.186584>,  <35.924709, 28.750658, 39.229881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830997, 29.137108, 39.186584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236588, 0.051334, 0.970253,
		0.942942, 0.252917, 0.216547,
		-0.234277, 0.966125, -0.108242,
		35.760715, 29.426945, 39.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147228, 29.050222, 39.814590>,  <35.924709, 28.750658, 39.229881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147228, 29.050222, 39.814590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906677, 29.338251, 39.676113>,  <35.762348, 29.511068, 39.593029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906677, 29.338251, 39.676113>,  <36.147228, 29.050222, 39.814590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906677, 29.338251, 39.676113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273605, 0.221496, 0.935991,
		0.750659, 0.657601, 0.063812,
		-0.601375, 0.720070, -0.346191,
		35.726265, 29.554272, 39.572254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293957, 29.639029, 40.217815>,  <36.147228, 29.050222, 39.814590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293957, 29.639029, 40.217815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922398, 29.708679, 40.087078>,  <35.699463, 29.750469, 40.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922398, 29.708679, 40.087078>,  <36.293957, 29.639029, 40.217815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922398, 29.708679, 40.087078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289278, 0.209882, 0.933953,
		0.231226, 0.962096, -0.144587,
		-0.928899, 0.174128, -0.326843,
		35.643726, 29.760918, 39.989025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128845, 30.303005, 40.480236>,  <36.293957, 29.639029, 40.217815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128845, 30.303005, 40.480236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791405, 30.103928, 40.399597>,  <35.588940, 29.984482, 40.351215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791405, 30.103928, 40.399597>,  <36.128845, 30.303005, 40.480236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791405, 30.103928, 40.399597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315832, 0.156267, 0.935858,
		-0.434269, 0.853160, -0.289014,
		-0.843600, -0.497694, -0.201593,
		35.538326, 29.954620, 40.339119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653343, 30.726421, 40.698322>,  <36.128845, 30.303005, 40.480236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653343, 30.726421, 40.698322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426029, 30.397755, 40.680824>,  <35.289642, 30.200554, 40.670326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426029, 30.397755, 40.680824>,  <35.653343, 30.726421, 40.698322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426029, 30.397755, 40.680824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407838, 0.235098, 0.882268,
		-0.714647, 0.519220, -0.468711,
		-0.568284, -0.821669, -0.043746,
		35.255543, 30.151255, 40.667702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024258, 31.026236, 40.687656>,  <35.653343, 30.726421, 40.698322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024258, 31.026236, 40.687656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966534, 30.645344, 40.795311>,  <34.931900, 30.416809, 40.859905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966534, 30.645344, 40.795311>,  <35.024258, 31.026236, 40.687656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966534, 30.645344, 40.795311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498299, 0.304916, 0.811618,
		-0.854911, -0.016986, -0.518497,
		-0.144312, -0.952227, 0.269140,
		34.923241, 30.359676, 40.876053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386688, 30.977594, 40.902805>,  <35.024258, 31.026236, 40.687656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386688, 30.977594, 40.902805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575134, 30.672274, 41.079628>,  <34.688202, 30.489080, 41.185722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575134, 30.672274, 41.079628>,  <34.386688, 30.977594, 40.902805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575134, 30.672274, 41.079628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502112, 0.179966, 0.845870,
		-0.725210, -0.620468, -0.298478,
		0.471119, -0.763303, 0.442058,
		34.716469, 30.443283, 41.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849003, 30.549257, 41.306698>,  <34.386688, 30.977594, 40.902805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849003, 30.549257, 41.306698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186478, 30.430080, 41.485325>,  <34.388962, 30.358574, 41.592503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186478, 30.430080, 41.485325>,  <33.849003, 30.549257, 41.306698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186478, 30.430080, 41.485325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421943, 0.146258, 0.894747,
		-0.331899, -0.943312, -0.002319,
		0.843687, -0.297944, 0.446567,
		34.439583, 30.340698, 41.619293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674934, 30.189535, 41.931217>,  <33.849003, 30.549257, 41.306698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674934, 30.189535, 41.931217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052536, 30.294905, 42.010674>,  <34.279099, 30.358126, 42.058346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052536, 30.294905, 42.010674>,  <33.674934, 30.189535, 41.931217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052536, 30.294905, 42.010674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263671, 0.240474, 0.934157,
		0.198305, -0.934229, 0.296465,
		0.944009, 0.263417, 0.198641,
		34.335739, 30.373932, 42.070267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793243, 30.033016, 42.557934>,  <33.674934, 30.189535, 41.931217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793243, 30.033016, 42.557934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094254, 30.294931, 42.529770>,  <34.274860, 30.452080, 42.512871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094254, 30.294931, 42.529770>,  <33.793243, 30.033016, 42.557934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094254, 30.294931, 42.529770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246952, 0.379684, 0.891546,
		0.610507, -0.653523, 0.447424,
		0.752526, 0.654788, -0.070411,
		34.320011, 30.491367, 42.508648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178123, 29.985653, 43.181747>,  <33.793243, 30.033016, 42.557934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178123, 29.985653, 43.181747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313408, 30.328609, 43.026573>,  <34.394577, 30.534384, 42.933468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313408, 30.328609, 43.026573>,  <34.178123, 29.985653, 43.181747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313408, 30.328609, 43.026573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036941, 0.399812, 0.915853,
		0.940346, -0.324080, 0.103547,
		0.338209, 0.857393, -0.387933,
		34.414871, 30.585827, 42.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665051, 30.260355, 43.634048>,  <34.178123, 29.985653, 43.181747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665051, 30.260355, 43.634048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536705, 30.583796, 43.436783>,  <34.459698, 30.777859, 43.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536705, 30.583796, 43.436783>,  <34.665051, 30.260355, 43.634048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536705, 30.583796, 43.436783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011942, 0.517205, 0.855778,
		0.947051, 0.280475, -0.156295,
		-0.320861, 0.808600, -0.493168,
		34.440445, 30.826376, 43.288834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136055, 30.863840, 43.717403>,  <34.665051, 30.260355, 43.634048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136055, 30.863840, 43.717403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782772, 31.025103, 43.621559>,  <34.570801, 31.121861, 43.564053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782772, 31.025103, 43.621559>,  <35.136055, 30.863840, 43.717403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782772, 31.025103, 43.621559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083087, 0.637341, 0.766090,
		0.461567, 0.656707, -0.596400,
		-0.883206, 0.403154, -0.239612,
		34.517811, 31.146049, 43.549675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237785, 31.607870, 43.681385>,  <35.136055, 30.863840, 43.717403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237785, 31.607870, 43.681385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845627, 31.539673, 43.720879>,  <34.610332, 31.498755, 43.744576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845627, 31.539673, 43.720879>,  <35.237785, 31.607870, 43.681385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845627, 31.539673, 43.720879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052448, 0.708903, 0.703354,
		-0.189910, 0.684389, -0.703950,
		-0.980400, -0.170494, 0.098733,
		34.551506, 31.488525, 43.750500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028099, 32.200359, 43.795803>,  <35.237785, 31.607870, 43.681385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028099, 32.200359, 43.795803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713497, 31.988943, 43.923584>,  <34.524734, 31.862093, 44.000252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713497, 31.988943, 43.923584>,  <35.028099, 32.200359, 43.795803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713497, 31.988943, 43.923584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190714, 0.699846, 0.688363,
		-0.587401, 0.480475, -0.651233,
		-0.786504, -0.528544, 0.319457,
		34.477547, 31.830379, 44.019421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433792, 32.631538, 43.786522>,  <35.028099, 32.200359, 43.795803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433792, 32.631538, 43.786522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383705, 32.330738, 44.045383>,  <34.353653, 32.150257, 44.200699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383705, 32.330738, 44.045383>,  <34.433792, 32.631538, 43.786522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383705, 32.330738, 44.045383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193852, 0.658260, 0.727403,
		-0.973007, -0.034367, -0.228204,
		-0.125219, -0.752006, 0.647154,
		34.346138, 32.105137, 44.239529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852837, 32.849476, 44.194607>,  <34.433792, 32.631538, 43.786522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852837, 32.849476, 44.194607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008808, 32.555382, 44.416378>,  <34.102390, 32.378925, 44.549438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008808, 32.555382, 44.416378>,  <33.852837, 32.849476, 44.194607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008808, 32.555382, 44.416378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452804, 0.371172, 0.810678,
		-0.801824, -0.567156, -0.188184,
		0.389933, -0.735232, 0.554425,
		34.125790, 32.334812, 44.582706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350063, 32.754368, 44.576851>,  <33.852837, 32.849476, 44.194607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350063, 32.754368, 44.576851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648445, 32.581589, 44.779617>,  <33.827477, 32.477921, 44.901279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648445, 32.581589, 44.779617>,  <33.350063, 32.754368, 44.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648445, 32.581589, 44.779617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411396, 0.299707, 0.860772,
		-0.523738, -0.850644, 0.045866,
		0.745957, -0.431950, 0.506919,
		33.872231, 32.452003, 44.931694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994850, 32.374508, 45.113960>,  <33.350063, 32.754368, 44.576851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994850, 32.374508, 45.113960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379997, 32.427742, 45.207924>,  <33.611084, 32.459682, 45.264301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379997, 32.427742, 45.207924>,  <32.994850, 32.374508, 45.113960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379997, 32.427742, 45.207924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265003, 0.299488, 0.916559,
		0.051626, -0.944773, 0.323633,
		0.962865, 0.133082, 0.234906,
		33.668858, 32.467667, 45.278397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091896, 31.891668, 45.719177>,  <32.994850, 32.374508, 45.113960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091896, 31.891668, 45.719177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381443, 32.166954, 45.699692>,  <33.555172, 32.332127, 45.688000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381443, 32.166954, 45.699692>,  <33.091896, 31.891668, 45.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381443, 32.166954, 45.699692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180170, 0.256722, 0.949543,
		0.665994, -0.678570, 0.309829,
		0.723872, 0.688213, -0.048717,
		33.598606, 32.373417, 45.685078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571842, 31.730581, 46.275391>,  <33.091896, 31.891668, 45.719177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571842, 31.730581, 46.275391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656841, 32.115509, 46.207523>,  <33.707840, 32.346466, 46.166801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656841, 32.115509, 46.207523>,  <33.571842, 31.730581, 46.275391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656841, 32.115509, 46.207523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038251, 0.165308, 0.985500,
		0.976412, -0.215907, -0.001682,
		0.212498, 0.962319, -0.169667,
		33.720592, 32.404205, 46.156624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216206, 31.920366, 46.660793>,  <33.571842, 31.730581, 46.275391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216206, 31.920366, 46.660793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993858, 32.250877, 46.624397>,  <33.860451, 32.449184, 46.602562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993858, 32.250877, 46.624397>,  <34.216206, 31.920366, 46.660793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993858, 32.250877, 46.624397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010635, 0.116516, 0.993132,
		0.831204, 0.551081, -0.073555,
		-0.555866, 0.826277, -0.090988,
		33.827099, 32.498760, 46.597099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529079, 32.370289, 47.134319>,  <34.216206, 31.920366, 46.660793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529079, 32.370289, 47.134319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177097, 32.550095, 47.072845>,  <33.965908, 32.657978, 47.035961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177097, 32.550095, 47.072845>,  <34.529079, 32.370289, 47.134319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177097, 32.550095, 47.072845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059131, 0.217349, 0.974301,
		0.471368, 0.866426, -0.164676,
		-0.879952, 0.449517, -0.153684,
		33.913113, 32.684948, 47.026741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518063, 33.025600, 47.431274>,  <34.529079, 32.370289, 47.134319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518063, 33.025600, 47.431274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127819, 32.937866, 47.434662>,  <33.893673, 32.885227, 47.436695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127819, 32.937866, 47.434662>,  <34.518063, 33.025600, 47.431274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127819, 32.937866, 47.434662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055280, 0.282871, 0.957564,
		-0.212424, 0.933743, -0.288097,
		-0.975613, -0.219335, 0.008472,
		33.835136, 32.872066, 47.437202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148621, 33.553421, 47.787971>,  <34.518063, 33.025600, 47.431274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148621, 33.553421, 47.787971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923733, 33.225632, 47.832455>,  <33.788799, 33.028957, 47.859146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923733, 33.225632, 47.832455>,  <34.148621, 33.553421, 47.787971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923733, 33.225632, 47.832455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133705, 0.042630, 0.990104,
		-0.816107, 0.571527, 0.085601,
		-0.562221, -0.819475, 0.111207,
		33.755066, 32.979790, 47.865818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321064, 34.202850, 47.781834>,  <34.148621, 33.553421, 47.787971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321064, 34.202850, 47.781834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544136, 34.525578, 47.859856>,  <34.677979, 34.719212, 47.906670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544136, 34.525578, 47.859856>,  <34.321064, 34.202850, 47.781834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544136, 34.525578, 47.859856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406516, -0.060590, -0.911632,
		-0.723699, 0.587690, -0.361773,
		0.557677, 0.806814, 0.195056,
		34.711441, 34.767620, 47.918373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211208, 34.760445, 47.287071>,  <34.321064, 34.202850, 47.781834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211208, 34.760445, 47.287071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579155, 34.833759, 47.425785>,  <34.799923, 34.877750, 47.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579155, 34.833759, 47.425785>,  <34.211208, 34.760445, 47.287071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579155, 34.833759, 47.425785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339257, 0.071966, -0.937937,
		-0.196871, 0.980421, 0.004016,
		0.919862, 0.183290, 0.346783,
		34.855114, 34.888748, 47.529819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466145, 35.315765, 46.906361>,  <34.211208, 34.760445, 47.287071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466145, 35.315765, 46.906361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806568, 35.182465, 47.068665>,  <35.010822, 35.102482, 47.166046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806568, 35.182465, 47.068665>,  <34.466145, 35.315765, 46.906361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806568, 35.182465, 47.068665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436279, 0.018815, -0.899615,
		0.292166, 0.942649, 0.161404,
		0.851058, -0.333254, 0.405761,
		35.061886, 35.082489, 47.190392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063911, 35.662075, 46.606144>,  <34.466145, 35.315765, 46.906361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063911, 35.662075, 46.606144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225498, 35.319405, 46.734459>,  <35.322453, 35.113800, 46.811447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225498, 35.319405, 46.734459>,  <35.063911, 35.662075, 46.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225498, 35.319405, 46.734459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474448, -0.103611, -0.874164,
		0.782117, 0.505335, 0.364595,
		0.403970, -0.856680, 0.320791,
		35.346691, 35.062401, 46.830696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732452, 35.752918, 46.444717>,  <35.063911, 35.662075, 46.606144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732452, 35.752918, 46.444717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709812, 35.355434, 46.483387>,  <35.696228, 35.116943, 46.506588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709812, 35.355434, 46.483387>,  <35.732452, 35.752918, 46.444717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709812, 35.355434, 46.483387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549428, -0.111852, -0.828021,
		0.833622, 0.006254, 0.552299,
		-0.056597, -0.993705, 0.096678,
		35.692833, 35.057323, 46.512390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405048, 35.527603, 46.231617>,  <35.732452, 35.752918, 46.444717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405048, 35.527603, 46.231617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176437, 35.199745, 46.215919>,  <36.039272, 35.003029, 46.206501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176437, 35.199745, 46.215919>,  <36.405048, 35.527603, 46.231617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176437, 35.199745, 46.215919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486163, -0.299694, -0.820871,
		0.661062, -0.488226, 0.569765,
		-0.571526, -0.819645, -0.039241,
		36.004978, 34.953850, 46.204147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825027, 34.888401, 46.028191>,  <36.405048, 35.527603, 46.231617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825027, 34.888401, 46.028191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446003, 34.799866, 45.935978>,  <36.218590, 34.746746, 45.880650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446003, 34.799866, 45.935978>,  <36.825027, 34.888401, 46.028191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446003, 34.799866, 45.935978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310023, -0.461508, -0.831202,
		0.077584, -0.859081, 0.505925,
		-0.947558, -0.221336, -0.230529,
		36.161736, 34.733463, 45.866817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784191, 34.156242, 45.727562>,  <36.825027, 34.888401, 46.028191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784191, 34.156242, 45.727562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457355, 34.356888, 45.613899>,  <36.261253, 34.477276, 45.545700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457355, 34.356888, 45.613899>,  <36.784191, 34.156242, 45.727562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457355, 34.356888, 45.613899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072165, -0.400026, -0.913658,
		-0.571972, -0.767049, 0.290659,
		-0.817092, 0.501612, -0.284157,
		36.212227, 34.507370, 45.528652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394932, 33.653488, 45.478615>,  <36.784191, 34.156242, 45.727562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394932, 33.653488, 45.478615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252254, 33.987633, 45.311314>,  <36.166649, 34.188122, 45.210934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252254, 33.987633, 45.311314>,  <36.394932, 33.653488, 45.478615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252254, 33.987633, 45.311314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152862, -0.493858, -0.856001,
		-0.921632, -0.241392, 0.303849,
		-0.356690, 0.835365, -0.418256,
		36.145248, 34.238243, 45.185837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853096, 33.504189, 45.093719>,  <36.394932, 33.653488, 45.478615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853096, 33.504189, 45.093719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925476, 33.862865, 44.932129>,  <35.968903, 34.078072, 44.835175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925476, 33.862865, 44.932129>,  <35.853096, 33.504189, 45.093719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925476, 33.862865, 44.932129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008434, -0.412160, -0.911072,
		-0.983456, 0.161450, -0.082142,
		0.180949, 0.896693, -0.403980,
		35.979759, 34.131874, 44.810936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297157, 33.723148, 44.549305>,  <35.853096, 33.504189, 45.093719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297157, 33.723148, 44.549305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636112, 33.914017, 44.456135>,  <35.839485, 34.028538, 44.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636112, 33.914017, 44.456135>,  <35.297157, 33.723148, 44.549305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636112, 33.914017, 44.456135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043177, -0.375293, -0.925900,
		-0.529224, 0.794649, -0.297414,
		0.847383, 0.477167, -0.232925,
		35.890327, 34.057167, 44.386257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145012, 34.004818, 43.892616>,  <35.297157, 33.723148, 44.549305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145012, 34.004818, 43.892616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542416, 34.008041, 43.938000>,  <35.780857, 34.009975, 43.965229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542416, 34.008041, 43.938000>,  <35.145012, 34.004818, 43.892616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542416, 34.008041, 43.938000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110279, -0.312600, -0.943462,
		0.027863, 0.949850, -0.311460,
		0.993510, 0.008059, 0.113458,
		35.840469, 34.010460, 43.972038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367004, 34.301781, 43.206371>,  <35.145012, 34.004818, 43.892616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367004, 34.301781, 43.206371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689556, 34.116695, 43.353695>,  <35.883087, 34.005646, 43.442089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689556, 34.116695, 43.353695>,  <35.367004, 34.301781, 43.206371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689556, 34.116695, 43.353695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311592, -0.196918, -0.929588,
		0.502656, 0.864363, -0.014615,
		0.806379, -0.462709, 0.368311,
		35.931469, 33.977882, 43.464188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961121, 34.620323, 42.814129>,  <35.367004, 34.301781, 43.206371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961121, 34.620323, 42.814129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090340, 34.278484, 42.976761>,  <36.167873, 34.073380, 43.074341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090340, 34.278484, 42.976761>,  <35.961121, 34.620323, 42.814129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090340, 34.278484, 42.976761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306075, -0.312175, -0.899369,
		0.895520, 0.414984, 0.160722,
		0.323050, -0.854596, 0.406575,
		36.187256, 34.022106, 43.098732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552090, 34.492725, 42.490292>,  <35.961121, 34.620323, 42.814129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552090, 34.492725, 42.490292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438927, 34.137756, 42.635868>,  <36.371029, 33.924774, 42.723213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438927, 34.137756, 42.635868>,  <36.552090, 34.492725, 42.490292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438927, 34.137756, 42.635868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370834, -0.451132, -0.811765,
		0.884561, -0.094690, 0.456712,
		-0.282903, -0.887420, 0.363940,
		36.354057, 33.871529, 42.745049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001381, 33.961437, 42.155720>,  <36.552090, 34.492725, 42.490292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001381, 33.961437, 42.155720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751846, 33.700928, 42.328541>,  <36.602127, 33.544621, 42.432232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751846, 33.700928, 42.328541>,  <37.001381, 33.961437, 42.155720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751846, 33.700928, 42.328541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168221, -0.651745, -0.739547,
		0.763238, -0.388675, 0.516139,
		-0.623835, -0.651276, 0.432053,
		36.564697, 33.505547, 42.458157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351967, 33.401070, 42.348946>,  <37.001381, 33.961437, 42.155720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351967, 33.401070, 42.348946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968460, 33.320175, 42.269089>,  <36.738354, 33.271637, 42.221176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968460, 33.320175, 42.269089>,  <37.351967, 33.401070, 42.348946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968460, 33.320175, 42.269089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283687, -0.639763, -0.714300,
		0.016736, -0.741486, 0.670759,
		-0.958771, -0.202240, -0.199643,
		36.680828, 33.259502, 42.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328880, 32.694347, 42.333172>,  <37.351967, 33.401070, 42.348946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328880, 32.694347, 42.333172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997993, 32.804218, 42.137104>,  <36.799461, 32.870140, 42.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997993, 32.804218, 42.137104>,  <37.328880, 32.694347, 42.333172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997993, 32.804218, 42.137104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227478, -0.633963, -0.739151,
		-0.513775, -0.722941, 0.461943,
		-0.827218, 0.274676, -0.490168,
		36.749828, 32.886620, 41.990055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000931, 32.076542, 42.019409>,  <37.328880, 32.694347, 42.333172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000931, 32.076542, 42.019409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865623, 32.372768, 41.787155>,  <36.784439, 32.550503, 41.647800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865623, 32.372768, 41.787155>,  <37.000931, 32.076542, 42.019409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865623, 32.372768, 41.787155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134228, -0.572732, -0.808678,
		-0.931429, -0.351485, 0.094330,
		-0.338264, 0.740565, -0.580639,
		36.764145, 32.594936, 41.612965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702774, 31.586115, 41.381580>,  <37.000931, 32.076542, 42.019409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702774, 31.586115, 41.381580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689888, 31.965830, 41.256477>,  <36.682156, 32.193657, 41.181416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689888, 31.965830, 41.256477>,  <36.702774, 31.586115, 41.381580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689888, 31.965830, 41.256477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020818, -0.313490, -0.949363,
		-0.999264, -0.024072, 0.029861,
		-0.032214, 0.949286, -0.312758,
		36.680225, 32.250614, 41.162651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293530, 31.568789, 40.827793>,  <36.702774, 31.586115, 41.381580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293530, 31.568789, 40.827793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501331, 31.906702, 40.776478>,  <36.626011, 32.109451, 40.745689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501331, 31.906702, 40.776478>,  <36.293530, 31.568789, 40.827793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501331, 31.906702, 40.776478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130473, -0.226799, -0.965163,
		-0.844449, 0.484667, -0.228044,
		0.519502, 0.844784, -0.128284,
		36.657181, 32.160137, 40.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006672, 31.815670, 40.239510>,  <36.293530, 31.568789, 40.827793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006672, 31.815670, 40.239510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374886, 31.969917, 40.264542>,  <36.595814, 32.062466, 40.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374886, 31.969917, 40.264542>,  <36.006672, 31.815670, 40.239510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374886, 31.969917, 40.264542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188044, -0.296950, -0.936194,
		-0.342430, 0.873567, -0.345866,
		0.920533, 0.385619, 0.062584,
		36.651047, 32.085602, 40.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042065, 32.192204, 39.657810>,  <36.006672, 31.815670, 40.239510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042065, 32.192204, 39.657810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420315, 32.214550, 39.785984>,  <36.647263, 32.227959, 39.862888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420315, 32.214550, 39.785984>,  <36.042065, 32.192204, 39.657810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420315, 32.214550, 39.785984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325271, -0.163969, -0.931296,
		0.000511, 0.984882, -0.173225,
		0.945621, 0.055869, 0.320438,
		36.704002, 32.231312, 39.882114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461952, 32.590893, 39.151382>,  <36.042065, 32.192204, 39.657810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461952, 32.590893, 39.151382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719257, 32.361938, 39.354786>,  <36.873642, 32.224567, 39.476830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719257, 32.361938, 39.354786>,  <36.461952, 32.590893, 39.151382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719257, 32.361938, 39.354786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442373, -0.264234, -0.857022,
		0.624914, 0.776244, 0.083235,
		0.643265, -0.572386, 0.508512,
		36.912235, 32.190224, 39.507339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239098, 32.773506, 38.993443>,  <36.461952, 32.590893, 39.151382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239098, 32.773506, 38.993443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234928, 32.399685, 39.135708>,  <37.232426, 32.175392, 39.221069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234928, 32.399685, 39.135708>,  <37.239098, 32.773506, 38.993443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234928, 32.399685, 39.135708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639656, -0.279624, -0.715996,
		0.768590, 0.220039, 0.600709,
		-0.010426, -0.934555, 0.355666,
		37.231800, 32.119320, 39.242409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935062, 32.574226, 39.039707>,  <37.239098, 32.773506, 38.993443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935062, 32.574226, 39.039707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741398, 32.226418, 39.078716>,  <37.625198, 32.017731, 39.102119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741398, 32.226418, 39.078716>,  <37.935062, 32.574226, 39.039707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741398, 32.226418, 39.078716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568763, -0.397455, -0.720096,
		0.664902, -0.293177, 0.686988,
		-0.484163, -0.869527, 0.097521,
		37.596149, 31.965559, 39.107971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461075, 32.082214, 39.164726>,  <37.935062, 32.574226, 39.039707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461075, 32.082214, 39.164726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142445, 31.886316, 39.022961>,  <37.951267, 31.768778, 38.937901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142445, 31.886316, 39.022961>,  <38.461075, 32.082214, 39.164726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142445, 31.886316, 39.022961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542692, -0.321001, -0.776172,
		0.266360, -0.810621, 0.521485,
		-0.796578, -0.489747, -0.354416,
		37.903473, 31.739391, 38.916637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706184, 31.462543, 39.031216>,  <38.461075, 32.082214, 39.164726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706184, 31.462543, 39.031216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378090, 31.507866, 38.806938>,  <38.181232, 31.535059, 38.672371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378090, 31.507866, 38.806938>,  <38.706184, 31.462543, 39.031216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378090, 31.507866, 38.806938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501641, -0.328565, -0.800251,
		-0.274895, -0.937660, 0.212663,
		-0.820237, 0.113305, -0.560690,
		38.132019, 31.541857, 38.638733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722401, 30.881935, 38.571930>,  <38.706184, 31.462543, 39.031216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722401, 30.881935, 38.571930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471680, 31.153618, 38.419197>,  <38.321247, 31.316628, 38.327557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471680, 31.153618, 38.419197>,  <38.722401, 30.881935, 38.571930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471680, 31.153618, 38.419197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371253, -0.170511, -0.912742,
		-0.685049, -0.713864, -0.145282,
		-0.626801, 0.679209, -0.381832,
		38.283638, 31.357380, 38.304646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596493, 30.632374, 37.941086>,  <38.722401, 30.881935, 38.571930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596493, 30.632374, 37.941086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502434, 31.020948, 37.928356>,  <38.445999, 31.254093, 37.920719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502434, 31.020948, 37.928356>,  <38.596493, 30.632374, 37.941086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502434, 31.020948, 37.928356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419321, 0.071855, -0.904990,
		-0.876854, -0.226155, -0.424241,
		-0.235152, 0.971437, -0.031825,
		38.431889, 31.312380, 37.918808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357288, 30.674503, 37.262211>,  <38.596493, 30.632374, 37.941086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357288, 30.674503, 37.262211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402241, 31.059425, 37.361282>,  <38.429211, 31.290379, 37.420727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402241, 31.059425, 37.361282>,  <38.357288, 30.674503, 37.262211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402241, 31.059425, 37.361282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403261, 0.183640, -0.896469,
		-0.908158, 0.200622, -0.367422,
		0.112378, 0.962303, 0.247678,
		38.435955, 31.348116, 37.435585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059578, 31.016666, 36.683311>,  <38.357288, 30.674503, 37.262211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059578, 31.016666, 36.683311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324799, 31.240759, 36.881908>,  <38.483929, 31.375214, 37.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324799, 31.240759, 36.881908>,  <38.059578, 31.016666, 36.683311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324799, 31.240759, 36.881908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346985, 0.357683, -0.866986,
		-0.663299, 0.747131, 0.042770,
		0.663050, 0.560231, 0.496494,
		38.523712, 31.408829, 37.030857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079330, 31.625198, 36.335251>,  <38.059578, 31.016666, 36.683311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079330, 31.625198, 36.335251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421230, 31.608875, 36.542225>,  <38.626369, 31.599081, 36.666409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421230, 31.608875, 36.542225>,  <38.079330, 31.625198, 36.335251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421230, 31.608875, 36.542225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505969, 0.287814, -0.813117,
		-0.115741, 0.956816, 0.266657,
		0.854751, -0.040809, 0.517431,
		38.677654, 31.596632, 36.697453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447681, 32.285229, 36.193996>,  <38.079330, 31.625198, 36.335251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447681, 32.285229, 36.193996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731766, 32.029572, 36.312046>,  <38.902214, 31.876177, 36.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731766, 32.029572, 36.312046>,  <38.447681, 32.285229, 36.193996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731766, 32.029572, 36.312046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469361, 0.117443, -0.875162,
		0.524696, 0.760065, 0.383399,
		0.710208, -0.639146, 0.295123,
		38.944828, 31.837828, 36.400581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100456, 32.552101, 36.011868>,  <38.447681, 32.285229, 36.193996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100456, 32.552101, 36.011868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166340, 32.158352, 36.036789>,  <39.205868, 31.922102, 36.051743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166340, 32.158352, 36.036789>,  <39.100456, 32.552101, 36.011868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166340, 32.158352, 36.036789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598409, 0.049510, -0.799660,
		0.784079, 0.168994, 0.597212,
		0.164705, -0.984373, 0.062308,
		39.215752, 31.863041, 36.055481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733738, 32.500835, 35.804756>,  <39.100456, 32.552101, 36.011868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733738, 32.500835, 35.804756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628460, 32.114998, 35.797882>,  <39.565292, 31.883497, 35.793758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628460, 32.114998, 35.797882>,  <39.733738, 32.500835, 35.804756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628460, 32.114998, 35.797882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624305, -0.156716, -0.765300,
		0.735507, -0.212150, 0.643445,
		-0.263196, -0.964589, -0.017181,
		39.549500, 31.825621, 35.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377037, 32.223820, 35.742741>,  <39.733738, 32.500835, 35.804756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377037, 32.223820, 35.742741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127098, 31.934780, 35.624474>,  <39.977135, 31.761356, 35.553513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127098, 31.934780, 35.624474>,  <40.377037, 32.223820, 35.742741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127098, 31.934780, 35.624474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544844, -0.132339, -0.828029,
		0.559203, -0.678484, 0.476394,
		-0.624850, -0.722597, -0.295664,
		39.939644, 31.718000, 35.535774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743618, 31.654478, 35.538105>,  <40.377037, 32.223820, 35.742741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743618, 31.654478, 35.538105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407745, 31.606588, 35.326218>,  <40.206223, 31.577854, 35.199085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407745, 31.606588, 35.326218>,  <40.743618, 31.654478, 35.538105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407745, 31.606588, 35.326218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537674, -0.045983, -0.841898,
		0.076439, -0.991742, 0.102984,
		-0.839681, -0.119725, -0.529719,
		40.155842, 31.570671, 35.167301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810398, 31.100311, 35.150322>,  <40.743618, 31.654478, 35.538105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810398, 31.100311, 35.150322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503635, 31.275841, 34.963005>,  <40.319580, 31.381159, 34.850616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503635, 31.275841, 34.963005>,  <40.810398, 31.100311, 35.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503635, 31.275841, 34.963005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532666, 0.028258, -0.845854,
		-0.357947, -0.898129, -0.255417,
		-0.766903, 0.438823, -0.468288,
		40.273563, 31.407488, 34.822517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765839, 30.737938, 34.479778>,  <40.810398, 31.100311, 35.150322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765839, 30.737938, 34.479778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635143, 31.115639, 34.463638>,  <40.556725, 31.342260, 34.453953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635143, 31.115639, 34.463638>,  <40.765839, 30.737938, 34.479778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635143, 31.115639, 34.463638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643256, 0.190900, -0.741471,
		-0.692434, -0.268222, -0.669770,
		-0.326738, 0.944253, -0.040350,
		40.537121, 31.398914, 34.451534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488464, 30.960247, 33.823292>,  <40.765839, 30.737938, 34.479778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488464, 30.960247, 33.823292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688808, 31.243393, 34.022518>,  <40.809017, 31.413280, 34.142052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688808, 31.243393, 34.022518>,  <40.488464, 30.960247, 33.823292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688808, 31.243393, 34.022518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655276, 0.065826, -0.752516,
		-0.565464, 0.703275, -0.430876,
		0.500862, 0.707864, 0.498062,
		40.839066, 31.455751, 34.171936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471130, 31.583063, 33.445755>,  <40.488464, 30.960247, 33.823292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471130, 31.583063, 33.445755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789658, 31.519732, 33.679268>,  <40.980774, 31.481733, 33.819378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789658, 31.519732, 33.679268>,  <40.471130, 31.583063, 33.445755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789658, 31.519732, 33.679268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586857, -0.031589, -0.809074,
		0.146541, 0.986881, 0.067762,
		0.796320, -0.158329, 0.583787,
		41.028553, 31.472233, 33.854404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999950, 32.035847, 33.383556>,  <40.471130, 31.583063, 33.445755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999950, 32.035847, 33.383556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230785, 31.742126, 33.526539>,  <41.369286, 31.565893, 33.612328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230785, 31.742126, 33.526539>,  <40.999950, 32.035847, 33.383556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230785, 31.742126, 33.526539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657155, 0.157648, -0.737085,
		0.484891, 0.660264, 0.573527,
		0.577086, -0.734302, 0.357454,
		41.403912, 31.521835, 33.633774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629379, 32.336636, 33.376884>,  <40.999950, 32.035847, 33.383556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629379, 32.336636, 33.376884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587429, 31.944317, 33.311108>,  <41.562260, 31.708925, 33.271641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587429, 31.944317, 33.311108>,  <41.629379, 32.336636, 33.376884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587429, 31.944317, 33.311108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575683, 0.074957, -0.814230,
		0.810920, -0.180056, 0.556767,
		-0.104874, -0.980796, -0.164439,
		41.555965, 31.650078, 33.261776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069794, 31.723377, 33.748970>,  <41.629379, 32.336636, 33.376884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069794, 31.723377, 33.748970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236298, 31.814688, 33.396919>,  <42.336201, 31.869474, 33.185688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236298, 31.814688, 33.396919>,  <42.069794, 31.723377, 33.748970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236298, 31.814688, 33.396919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076604, 0.973334, 0.216224,
		0.906015, -0.022584, 0.422644,
		0.416257, 0.228278, -0.880125,
		42.361176, 31.883171, 33.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749065, 32.076744, 33.800030>,  <42.069794, 31.723377, 33.748970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749065, 32.076744, 33.800030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580227, 32.193363, 33.456673>,  <42.478924, 32.263332, 33.250660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580227, 32.193363, 33.456673>,  <42.749065, 32.076744, 33.800030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580227, 32.193363, 33.456673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030597, 0.941756, 0.334903,
		0.906036, 0.167625, -0.388587,
		-0.422092, 0.291544, -0.858394,
		42.453598, 32.280827, 33.199154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110466, 32.603886, 33.377678>,  <42.749065, 32.076744, 33.800030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110466, 32.603886, 33.377678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715084, 32.645222, 33.333359>,  <42.477856, 32.670025, 33.306767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715084, 32.645222, 33.333359>,  <43.110466, 32.603886, 33.377678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715084, 32.645222, 33.333359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065777, 0.951477, 0.300608,
		0.136485, 0.289850, -0.947290,
		-0.988456, 0.103339, -0.110797,
		42.418549, 32.676224, 33.300121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675007, 33.114346, 33.671593>,  <43.110466, 32.603886, 33.377678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675007, 33.114346, 33.671593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917370, 33.423901, 33.745319>,  <43.062790, 33.609634, 33.789555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917370, 33.423901, 33.745319>,  <42.675007, 33.114346, 33.671593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917370, 33.423901, 33.745319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214655, -0.064051, 0.974587,
		0.766025, -0.630078, 0.127309,
		0.605912, 0.773885, 0.184314,
		43.099144, 33.656067, 33.800613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120098, 32.885174, 34.190308>,  <42.675007, 33.114346, 33.671593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120098, 32.885174, 34.190308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146187, 33.283829, 34.210159>,  <43.161839, 33.523022, 34.222069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146187, 33.283829, 34.210159>,  <43.120098, 32.885174, 34.190308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146187, 33.283829, 34.210159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171497, -0.037800, 0.984459,
		0.983023, -0.072719, 0.168455,
		0.065221, 0.996636, 0.049629,
		43.165752, 33.582821, 34.225048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487865, 33.041325, 34.808792>,  <43.120098, 32.885174, 34.190308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487865, 33.041325, 34.808792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299397, 33.389801, 34.753620>,  <43.186314, 33.598885, 34.720516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299397, 33.389801, 34.753620>,  <43.487865, 33.041325, 34.808792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299397, 33.389801, 34.753620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178807, 0.058791, 0.982126,
		0.863725, 0.487419, 0.128074,
		-0.471177, 0.871187, -0.137933,
		43.158043, 33.651157, 34.712242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748997, 33.541840, 35.369514>,  <43.487865, 33.041325, 34.808792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748997, 33.541840, 35.369514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398270, 33.674736, 35.230484>,  <43.187832, 33.754475, 35.147064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398270, 33.674736, 35.230484>,  <43.748997, 33.541840, 35.369514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398270, 33.674736, 35.230484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294127, 0.201235, 0.934341,
		0.380369, 0.921478, -0.078726,
		-0.876817, 0.332239, -0.347575,
		43.135223, 33.774406, 35.126213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597427, 34.017387, 35.781261>,  <43.748997, 33.541840, 35.369514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597427, 34.017387, 35.781261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232464, 33.937439, 35.638401>,  <43.013485, 33.889469, 35.552685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232464, 33.937439, 35.638401>,  <43.597427, 34.017387, 35.781261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232464, 33.937439, 35.638401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372308, 0.042902, 0.927117,
		-0.169982, 0.978882, -0.113557,
		-0.912411, -0.199871, -0.357153,
		42.958740, 33.877476, 35.531254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155933, 34.458031, 36.135769>,  <43.597427, 34.017387, 35.781261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155933, 34.458031, 36.135769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896500, 34.194782, 35.982815>,  <42.740841, 34.036835, 35.891041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896500, 34.194782, 35.982815>,  <43.155933, 34.458031, 36.135769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896500, 34.194782, 35.982815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467432, -0.052096, 0.882493,
		-0.600707, 0.751108, -0.273838,
		-0.648582, -0.658120, -0.382386,
		42.701923, 33.997345, 35.868099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536877, 34.595085, 36.442463>,  <43.155933, 34.458031, 36.135769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536877, 34.595085, 36.442463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463497, 34.222008, 36.318249>,  <42.419468, 33.998161, 36.243721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463497, 34.222008, 36.318249>,  <42.536877, 34.595085, 36.442463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463497, 34.222008, 36.318249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536893, -0.169556, 0.826436,
		-0.823464, 0.318332, -0.469651,
		-0.183449, -0.932693, -0.310533,
		42.408463, 33.942200, 36.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875904, 34.536694, 36.590382>,  <42.536877, 34.595085, 36.442463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875904, 34.536694, 36.590382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033089, 34.169849, 36.563560>,  <42.127399, 33.949745, 36.547470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033089, 34.169849, 36.563560>,  <41.875904, 34.536694, 36.590382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033089, 34.169849, 36.563560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276969, -0.187575, 0.942393,
		-0.876852, -0.351753, -0.327720,
		0.392961, -0.917107, -0.067050,
		42.150978, 33.894718, 36.543446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345673, 34.116566, 36.798527>,  <41.875904, 34.536694, 36.590382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345673, 34.116566, 36.798527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663250, 33.878201, 36.846764>,  <41.853798, 33.735184, 36.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663250, 33.878201, 36.846764>,  <41.345673, 34.116566, 36.798527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663250, 33.878201, 36.846764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241536, -0.127120, 0.962029,
		-0.557952, -0.792927, -0.244860,
		0.793946, -0.595909, 0.120594,
		41.901432, 33.699429, 36.882942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114616, 33.428291, 36.975060>,  <41.345673, 34.116566, 36.798527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114616, 33.428291, 36.975060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492477, 33.466602, 37.100574>,  <41.719193, 33.489590, 37.175884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492477, 33.466602, 37.100574>,  <41.114616, 33.428291, 36.975060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492477, 33.466602, 37.100574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305708, -0.090191, 0.947844,
		0.119089, -0.991308, -0.055917,
		0.944648, 0.095784, 0.313791,
		41.775871, 33.495335, 37.194714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134098, 32.858059, 37.407166>,  <41.114616, 33.428291, 36.975060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134098, 32.858059, 37.407166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429943, 33.101353, 37.522423>,  <41.607449, 33.247330, 37.591579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429943, 33.101353, 37.522423>,  <41.134098, 32.858059, 37.407166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429943, 33.101353, 37.522423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164936, -0.251276, 0.953759,
		0.652515, -0.752934, -0.085526,
		0.739608, 0.608236, 0.288147,
		41.651825, 33.283825, 37.608868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420490, 32.489128, 37.874680>,  <41.134098, 32.858059, 37.407166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420490, 32.489128, 37.874680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557602, 32.858986, 37.941051>,  <41.639870, 33.080902, 37.980873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557602, 32.858986, 37.941051>,  <41.420490, 32.489128, 37.874680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557602, 32.858986, 37.941051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137226, -0.125449, 0.982564,
		0.929338, -0.359574, 0.083884,
		0.342782, 0.924645, 0.165927,
		41.660435, 33.136379, 37.990829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858654, 32.492634, 38.483593>,  <41.420490, 32.489128, 37.874680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858654, 32.492634, 38.483593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797844, 32.887737, 38.469658>,  <41.761356, 33.124802, 38.461296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797844, 32.887737, 38.469658>,  <41.858654, 32.492634, 38.483593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797844, 32.887737, 38.469658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102100, 0.019368, 0.994586,
		0.983089, 0.154760, 0.097906,
		-0.152026, 0.987762, -0.034842,
		41.752235, 33.184067, 38.459206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240681, 32.779125, 39.114403>,  <41.858654, 32.492634, 38.483593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240681, 32.779125, 39.114403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983665, 33.067825, 39.011471>,  <41.829456, 33.241043, 38.949711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983665, 33.067825, 39.011471>,  <42.240681, 32.779125, 39.114403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983665, 33.067825, 39.011471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257972, 0.112468, 0.959584,
		0.721519, 0.682958, 0.113926,
		-0.642542, 0.721748, -0.257331,
		41.790901, 33.284351, 38.934273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362297, 33.385208, 39.480904>,  <42.240681, 32.779125, 39.114403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362297, 33.385208, 39.480904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972492, 33.395897, 39.391811>,  <41.738609, 33.402309, 39.338356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972492, 33.395897, 39.391811>,  <42.362297, 33.385208, 39.480904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972492, 33.395897, 39.391811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220586, 0.066381, 0.973106,
		0.040788, 0.997436, -0.058795,
		-0.974514, 0.026722, -0.222728,
		41.680138, 33.403912, 39.324993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021717, 33.945862, 39.927616>,  <42.362297, 33.385208, 39.480904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021717, 33.945862, 39.927616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725952, 33.697948, 39.822437>,  <41.548492, 33.549202, 39.759331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725952, 33.697948, 39.822437>,  <42.021717, 33.945862, 39.927616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725952, 33.697948, 39.822437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216164, -0.151336, 0.964557,
		-0.637607, 0.770046, -0.022074,
		-0.739413, -0.619780, -0.262948,
		41.504128, 33.512016, 39.743553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785862, 33.877228, 40.565170>,  <42.021717, 33.945862, 39.927616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785862, 33.877228, 40.565170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520561, 33.640549, 40.381870>,  <41.361382, 33.498543, 40.271893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520561, 33.640549, 40.381870>,  <41.785862, 33.877228, 40.565170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520561, 33.640549, 40.381870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387665, -0.252130, 0.886649,
		-0.640163, 0.765721, -0.062153,
		-0.663255, -0.591694, -0.458248,
		41.321587, 33.463039, 40.244396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047325, 34.000362, 40.880585>,  <41.785862, 33.877228, 40.565170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047325, 34.000362, 40.880585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052944, 33.632523, 40.723545>,  <41.056316, 33.411819, 40.629322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052944, 33.632523, 40.723545>,  <41.047325, 34.000362, 40.880585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052944, 33.632523, 40.723545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395754, -0.365687, 0.842408,
		-0.918249, 0.143541, -0.369072,
		0.014045, -0.919603, -0.392599,
		41.057159, 33.356644, 40.605766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384640, 33.730324, 41.054951>,  <41.047325, 34.000362, 40.880585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384640, 33.730324, 41.054951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630104, 33.426525, 40.968609>,  <40.777382, 33.244247, 40.916805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630104, 33.426525, 40.968609>,  <40.384640, 33.730324, 41.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630104, 33.426525, 40.968609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248910, -0.445522, 0.859973,
		-0.749312, -0.474002, -0.462444,
		0.613658, -0.759495, -0.215851,
		40.814201, 33.198677, 40.903854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984203, 33.200672, 41.135517>,  <40.384640, 33.730324, 41.054951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984203, 33.200672, 41.135517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359886, 33.066040, 41.162636>,  <40.585297, 32.985260, 41.178909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359886, 33.066040, 41.162636>,  <39.984203, 33.200672, 41.135517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359886, 33.066040, 41.162636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169072, -0.281522, 0.944542,
		-0.298846, -0.898581, -0.321316,
		0.939205, -0.336598, 0.067793,
		40.641651, 32.965065, 41.182976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972942, 32.515713, 41.383472>,  <39.984203, 33.200672, 41.135517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972942, 32.515713, 41.383472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346779, 32.632401, 41.464893>,  <40.571079, 32.702415, 41.513748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346779, 32.632401, 41.464893>,  <39.972942, 32.515713, 41.383472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346779, 32.632401, 41.464893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087478, -0.366175, 0.926425,
		0.344798, -0.883636, -0.316705,
		0.934592, 0.291724, 0.203555,
		40.627155, 32.719917, 41.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385410, 31.926229, 41.621643>,  <39.972942, 32.515713, 41.383472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385410, 31.926229, 41.621643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487469, 32.284897, 41.766357>,  <40.548706, 32.500095, 41.853184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487469, 32.284897, 41.766357>,  <40.385410, 31.926229, 41.621643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487469, 32.284897, 41.766357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238756, -0.304154, 0.922218,
		0.936960, -0.321681, 0.136480,
		0.255149, 0.896667, 0.361783,
		40.564014, 32.553898, 41.874893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911514, 31.901014, 42.218498>,  <40.385410, 31.926229, 41.621643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911514, 31.901014, 42.218498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659615, 32.211704, 42.214306>,  <40.508472, 32.398117, 42.211788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659615, 32.211704, 42.214306>,  <40.911514, 31.901014, 42.218498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659615, 32.211704, 42.214306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424880, -0.333124, 0.841727,
		0.650298, 0.534535, 0.539801,
		-0.629753, 0.776724, -0.010483,
		40.470688, 32.444721, 42.211163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976612, 32.480839, 42.817295>,  <40.911514, 31.901014, 42.218498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976612, 32.480839, 42.817295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607960, 32.410927, 42.678707>,  <40.386768, 32.368980, 42.595554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607960, 32.410927, 42.678707>,  <40.976612, 32.480839, 42.817295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607960, 32.410927, 42.678707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280997, -0.315183, 0.906477,
		-0.267636, 0.932798, 0.241370,
		-0.921635, -0.174782, -0.346468,
		40.331470, 32.358494, 42.574768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935402, 32.966549, 43.239483>,  <40.976612, 32.480839, 42.817295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935402, 32.966549, 43.239483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307949, 32.926693, 43.379551>,  <41.531479, 32.902779, 43.463593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307949, 32.926693, 43.379551>,  <40.935402, 32.966549, 43.239483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307949, 32.926693, 43.379551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137018, 0.987036, -0.083576,
		-0.337305, 0.125820, 0.932949,
		0.931371, -0.099640, 0.350172,
		41.587360, 32.896801, 43.484604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968266, 33.417072, 43.902866>,  <40.935402, 32.966549, 43.239483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968266, 33.417072, 43.902866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317223, 33.355282, 43.717365>,  <41.526596, 33.318207, 43.606064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317223, 33.355282, 43.717365>,  <40.968266, 33.417072, 43.902866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317223, 33.355282, 43.717365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041415, 0.968697, -0.244767,
		0.487051, 0.194326, 0.851480,
		0.872391, -0.154479, -0.463757,
		41.578941, 33.308937, 43.578239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576839, 33.745239, 44.175072>,  <40.968266, 33.417072, 43.902866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576839, 33.745239, 44.175072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624786, 33.705215, 43.779976>,  <41.653553, 33.681202, 43.542919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624786, 33.705215, 43.779976>,  <41.576839, 33.745239, 44.175072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624786, 33.705215, 43.779976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177180, 0.981092, -0.077881,
		0.976851, -0.165672, 0.135330,
		0.119868, -0.100056, -0.987735,
		41.660748, 33.675198, 43.483654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265266, 33.966038, 43.808064>,  <41.576839, 33.745239, 44.175072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265266, 33.966038, 43.808064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931404, 33.998817, 43.590210>,  <41.731087, 34.018486, 43.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931404, 33.998817, 43.590210>,  <42.265266, 33.966038, 43.808064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931404, 33.998817, 43.590210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110256, 0.993713, -0.019441,
		0.539620, -0.076276, -0.838446,
		-0.834658, 0.081953, -0.544637,
		41.681007, 34.023403, 43.426819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456104, 34.584755, 43.493763>,  <42.265266, 33.966038, 43.808064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456104, 34.584755, 43.493763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117046, 34.626797, 43.701782>,  <41.913612, 34.652023, 43.826595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117046, 34.626797, 43.701782>,  <42.456104, 34.584755, 43.493763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117046, 34.626797, 43.701782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441268, -0.404580, 0.800998,
		0.294592, 0.908442, 0.296560,
		-0.847643, 0.105105, 0.520053,
		41.862755, 34.658329, 43.857800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067116, 34.753551, 43.803516>,  <42.456104, 34.584755, 43.493763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067116, 34.753551, 43.803516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937817, 34.428925, 43.608845>,  <42.860237, 34.234146, 43.492043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937817, 34.428925, 43.608845>,  <43.067116, 34.753551, 43.803516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937817, 34.428925, 43.608845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537455, 0.265848, -0.800292,
		0.778878, -0.520265, 0.350248,
		-0.323251, -0.811572, -0.486683,
		42.840843, 34.185452, 43.462841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673565, 34.437824, 43.539715>,  <43.067116, 34.753551, 43.803516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673565, 34.437824, 43.539715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380527, 34.288902, 43.311783>,  <43.204704, 34.199551, 43.175026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380527, 34.288902, 43.311783>,  <43.673565, 34.437824, 43.539715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380527, 34.288902, 43.311783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565126, 0.133942, -0.814059,
		0.379400, -0.918396, 0.112273,
		-0.732590, -0.372302, -0.569827,
		43.160751, 34.177212, 43.140835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006142, 34.034115, 43.103340>,  <43.673565, 34.437824, 43.539715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006142, 34.034115, 43.103340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662212, 34.162819, 42.944759>,  <43.455853, 34.240040, 42.849613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662212, 34.162819, 42.944759>,  <44.006142, 34.034115, 43.103340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662212, 34.162819, 42.944759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467415, 0.183554, -0.864772,
		-0.205476, -0.928860, -0.308218,
		-0.859827, 0.321756, -0.396447,
		43.404263, 34.259346, 42.825825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901150, 33.672474, 42.572937>,  <44.006142, 34.034115, 43.103340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901150, 33.672474, 42.572937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659954, 33.976345, 42.475540>,  <43.515236, 34.158669, 42.417103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659954, 33.976345, 42.475540>,  <43.901150, 33.672474, 42.572937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659954, 33.976345, 42.475540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478536, 0.100227, -0.872329,
		-0.638288, -0.642524, -0.423971,
		-0.602986, 0.759682, -0.243497,
		43.479057, 34.204250, 42.402493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863007, 33.588360, 41.932243>,  <43.901150, 33.672474, 42.572937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863007, 33.588360, 41.932243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709953, 33.957912, 41.934868>,  <43.618122, 34.179642, 41.936443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709953, 33.957912, 41.934868>,  <43.863007, 33.588360, 41.932243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709953, 33.957912, 41.934868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370864, 0.160090, -0.914785,
		-0.846199, -0.347593, -0.403889,
		-0.382632, 0.923878, 0.006558,
		43.595165, 34.235077, 41.936836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432568, 33.671696, 41.314777>,  <43.863007, 33.588360, 41.932243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432568, 33.671696, 41.314777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529396, 34.041126, 41.433712>,  <43.587494, 34.262783, 41.505074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529396, 34.041126, 41.433712>,  <43.432568, 33.671696, 41.314777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529396, 34.041126, 41.433712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252463, 0.235935, -0.938401,
		-0.936836, 0.302229, -0.176054,
		0.242075, 0.923576, 0.297334,
		43.602020, 34.318199, 41.522911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032845, 34.226944, 40.854450>,  <43.432568, 33.671696, 41.314777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032845, 34.226944, 40.854450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346264, 34.417694, 41.013771>,  <43.534317, 34.532143, 41.109364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346264, 34.417694, 41.013771>,  <43.032845, 34.226944, 40.854450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346264, 34.417694, 41.013771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313120, 0.250627, -0.916047,
		-0.536663, 0.842484, 0.047060,
		0.783549, 0.476873, 0.398300,
		43.581329, 34.560757, 41.133263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090218, 34.829811, 40.423229>,  <43.032845, 34.226944, 40.854450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090218, 34.829811, 40.423229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442356, 34.785862, 40.607800>,  <43.653641, 34.759495, 40.718540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442356, 34.785862, 40.607800>,  <43.090218, 34.829811, 40.423229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442356, 34.785862, 40.607800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474185, 0.180425, -0.861740,
		0.011427, 0.977433, 0.210935,
		0.880351, -0.109869, 0.461423,
		43.706463, 34.752903, 40.746227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529949, 35.440754, 40.190411>,  <43.090218, 34.829811, 40.423229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529949, 35.440754, 40.190411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773018, 35.143829, 40.303345>,  <43.918858, 34.965675, 40.371105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773018, 35.143829, 40.303345>,  <43.529949, 35.440754, 40.190411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773018, 35.143829, 40.303345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492860, 0.073714, -0.866981,
		0.622754, 0.665992, 0.410647,
		0.607673, -0.742308, 0.282335,
		43.955318, 34.921139, 40.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143803, 35.678047, 40.009945>,  <43.529949, 35.440754, 40.190411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143803, 35.678047, 40.009945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220154, 35.288269, 40.057312>,  <44.265965, 35.054401, 40.085732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220154, 35.288269, 40.057312>,  <44.143803, 35.678047, 40.009945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220154, 35.288269, 40.057312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412328, -0.029888, -0.910545,
		0.890816, 0.222627, 0.396087,
		0.190874, -0.974445, 0.118420,
		44.277416, 34.995934, 40.092838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904964, 35.597408, 39.742588>,  <44.143803, 35.678047, 40.009945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904964, 35.597408, 39.742588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713001, 35.246773, 39.728283>,  <44.597824, 35.036392, 39.719700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713001, 35.246773, 39.728283>,  <44.904964, 35.597408, 39.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713001, 35.246773, 39.728283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464851, -0.219500, -0.857749,
		0.744044, -0.428265, 0.512823,
		-0.479909, -0.876589, -0.035762,
		44.569027, 34.983795, 39.717556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335320, 35.302067, 39.353687>,  <44.904964, 35.597408, 39.742588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335320, 35.302067, 39.353687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043003, 35.029255, 39.364902>,  <44.867615, 34.865570, 39.371632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043003, 35.029255, 39.364902>,  <45.335320, 35.302067, 39.353687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043003, 35.029255, 39.364902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270795, -0.327368, -0.905262,
		0.626592, -0.653964, 0.423927,
		-0.730789, -0.682028, 0.028036,
		44.823765, 34.824646, 39.373314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657459, 34.634727, 39.224098>,  <45.335320, 35.302067, 39.353687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657459, 34.634727, 39.224098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273487, 34.631409, 39.112053>,  <45.043102, 34.629417, 39.044827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273487, 34.631409, 39.112053>,  <45.657459, 34.634727, 39.224098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273487, 34.631409, 39.112053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277953, -0.155453, -0.947933,
		-0.035675, -0.987808, 0.151532,
		-0.959932, -0.008301, -0.280110,
		44.985508, 34.628918, 39.028019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516098, 34.004448, 38.846001>,  <45.657459, 34.634727, 39.224098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516098, 34.004448, 38.846001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232929, 34.268051, 38.744373>,  <45.063026, 34.426212, 38.683399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232929, 34.268051, 38.744373>,  <45.516098, 34.004448, 38.846001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232929, 34.268051, 38.744373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070712, -0.291782, -0.953867,
		-0.702739, -0.693232, 0.159960,
		-0.707924, 0.659009, -0.254066,
		45.020554, 34.465755, 38.668152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187782, 33.609348, 38.287212>,  <45.516098, 34.004448, 38.846001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187782, 33.609348, 38.287212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077103, 33.992950, 38.262722>,  <45.010693, 34.223110, 38.248028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077103, 33.992950, 38.262722>,  <45.187782, 33.609348, 38.287212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077103, 33.992950, 38.262722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216837, -0.124380, -0.968252,
		-0.936172, -0.254642, 0.242364,
		-0.276703, 0.959003, -0.061225,
		44.994091, 34.280651, 38.244354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555046, 33.585884, 37.752430>,  <45.187782, 33.609348, 38.287212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555046, 33.585884, 37.752430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700237, 33.958271, 37.768211>,  <44.787350, 34.181702, 37.777679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700237, 33.958271, 37.768211>,  <44.555046, 33.585884, 37.752430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700237, 33.958271, 37.768211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002964, 0.043498, -0.999049,
		-0.931794, 0.362514, 0.018548,
		0.362976, 0.930963, 0.039457,
		44.809132, 34.237560, 37.780048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042999, 34.061848, 37.365353>,  <44.555046, 33.585884, 37.752430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042999, 34.061848, 37.365353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404530, 34.232285, 37.381073>,  <44.621449, 34.334549, 37.390507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404530, 34.232285, 37.381073>,  <44.042999, 34.061848, 37.365353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404530, 34.232285, 37.381073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100491, 0.300644, -0.948428,
		-0.415935, 0.853263, 0.314548,
		0.903825, 0.426094, 0.039303,
		44.675678, 34.360111, 37.392864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963898, 34.607403, 36.888248>,  <44.042999, 34.061848, 37.365353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963898, 34.607403, 36.888248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359669, 34.585239, 36.941872>,  <44.597130, 34.571941, 36.974045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359669, 34.585239, 36.941872>,  <43.963898, 34.607403, 36.888248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359669, 34.585239, 36.941872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144469, 0.293144, -0.945090,
		0.013071, 0.954461, 0.298049,
		0.989423, -0.055412, 0.134058,
		44.656494, 34.568615, 36.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304855, 35.335155, 36.658508>,  <43.963898, 34.607403, 36.888248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304855, 35.335155, 36.658508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568790, 35.035851, 36.631039>,  <44.727150, 34.856266, 36.614555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568790, 35.035851, 36.631039>,  <44.304855, 35.335155, 36.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568790, 35.035851, 36.631039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165486, 0.233862, -0.958083,
		0.732960, 0.620813, 0.278138,
		0.659837, -0.748264, -0.068675,
		44.766743, 34.811371, 36.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685802, 35.662029, 36.105492>,  <44.304855, 35.335155, 36.658508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685802, 35.662029, 36.105492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804134, 35.281467, 36.139690>,  <44.875134, 35.053131, 36.160210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804134, 35.281467, 36.139690>,  <44.685802, 35.662029, 36.105492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804134, 35.281467, 36.139690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337955, 0.020526, -0.940939,
		0.893461, 0.307251, 0.327605,
		0.295829, -0.951407, 0.085498,
		44.892883, 34.996044, 36.165340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419491, 35.651402, 35.898308>,  <44.685802, 35.662029, 36.105492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419491, 35.651402, 35.898308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297657, 35.270905, 35.878853>,  <45.224556, 35.042606, 35.867180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297657, 35.270905, 35.878853>,  <45.419491, 35.651402, 35.898308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297657, 35.270905, 35.878853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313168, -0.051787, -0.948285,
		0.899530, -0.304064, 0.313673,
		-0.304583, -0.951243, -0.048640,
		45.206284, 34.985531, 35.864262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961712, 35.355507, 35.708717>,  <45.419491, 35.651402, 35.898308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961712, 35.355507, 35.708717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661709, 35.106628, 35.618954>,  <45.481709, 34.957302, 35.565098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661709, 35.106628, 35.618954>,  <45.961712, 35.355507, 35.708717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661709, 35.106628, 35.618954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406805, -0.166409, -0.898230,
		0.521536, -0.764967, 0.377921,
		-0.750006, -0.622200, -0.224404,
		45.436707, 34.919968, 35.551632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292084, 34.712669, 35.546432>,  <45.961712, 35.355507, 35.708717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292084, 34.712669, 35.546432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937160, 34.751534, 35.366100>,  <45.724205, 34.774853, 35.257900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937160, 34.751534, 35.366100>,  <46.292084, 34.712669, 35.546432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937160, 34.751534, 35.366100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433637, -0.156983, -0.887308,
		-0.156983, -0.982810, 0.097160,
		0.887308, -0.097160, 0.450827,
		45.670967, 34.780682, 35.230854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007473, 34.743866, 34.869480>,  <46.292084, 34.712669, 35.546432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007473, 34.743866, 34.869480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226688, 34.939354, 34.597950>,  <46.358215, 35.056648, 34.435032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226688, 34.939354, 34.597950>,  <46.007473, 34.743866, 34.869480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226688, 34.939354, 34.597950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752420, 0.066493, 0.655318,
		0.365405, -0.869903, -0.331283,
		0.548035, 0.488721, -0.678829,
		46.391098, 35.085972, 34.394302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606724, 34.368462, 34.727798>,  <46.007473, 34.743866, 34.869480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606724, 34.368462, 34.727798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665840, 34.756168, 34.649132>,  <46.701309, 34.988792, 34.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665840, 34.756168, 34.649132>,  <46.606724, 34.368462, 34.727798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665840, 34.756168, 34.649132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828225, -0.012606, 0.560253,
		0.540555, -0.245688, -0.804635,
		0.147791, 0.969267, -0.196671,
		46.710178, 35.046947, 34.590130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318653, 34.408337, 34.620541>,  <46.606724, 34.368462, 34.727798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318653, 34.408337, 34.620541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175186, 34.770882, 34.709858>,  <47.089108, 34.988411, 34.763447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175186, 34.770882, 34.709858>,  <47.318653, 34.408337, 34.620541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.175186, 34.770882, 34.709858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760668, 0.145140, 0.632707,
		0.541055, 0.396782, -0.741500,
		-0.358668, 0.906365, 0.223291,
		47.067585, 35.042789, 34.776844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897167, 34.946571, 34.482155>,  <47.318653, 34.408337, 34.620541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897167, 34.946571, 34.482155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667812, 35.107014, 34.767906>,  <47.530197, 35.203278, 34.939358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667812, 35.107014, 34.767906>,  <47.897167, 34.946571, 34.482155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.667812, 35.107014, 34.767906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812164, 0.392982, 0.431226,
		-0.107772, 0.827454, -0.551094,
		-0.573389, 0.401104, 0.714381,
		47.495796, 35.227345, 34.982220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.635441, 37.202099, 41.296757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245689, 37.112190, 41.300041>,  <34.011837, 37.058247, 41.302013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245689, 37.112190, 41.300041>,  <34.635441, 37.202099, 41.296757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245689, 37.112190, 41.300041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059989, -0.294898, -0.953644,
		0.216770, -0.928717, 0.300825,
		-0.974378, -0.224767, 0.008212,
		33.953377, 37.044762, 41.302505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688774, 36.591743, 41.022545>,  <34.635441, 37.202099, 41.296757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688774, 36.591743, 41.022545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300842, 36.685493, 40.995720>,  <34.068085, 36.741741, 40.979626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300842, 36.685493, 40.995720>,  <34.688774, 36.591743, 41.022545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300842, 36.685493, 40.995720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012251, -0.321620, -0.946790,
		-0.243469, -0.917405, 0.314788,
		-0.969831, 0.234370, -0.067065,
		34.009892, 36.755806, 40.975601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400970, 36.061947, 40.666962>,  <34.688774, 36.591743, 41.022545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400970, 36.061947, 40.666962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.138390, 36.360447, 40.622814>,  <33.980843, 36.539547, 40.596325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.138390, 36.360447, 40.622814>,  <34.400970, 36.061947, 40.666962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138390, 36.360447, 40.622814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018417, -0.162121, -0.986599,
		-0.754142, -0.645623, 0.120168,
		-0.656453, 0.746249, -0.110372,
		33.941452, 36.584320, 40.589703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092342, 35.751049, 40.191391>,  <34.400970, 36.061947, 40.666962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092342, 35.751049, 40.191391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977478, 36.134144, 40.184711>,  <33.908558, 36.364002, 40.180702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977478, 36.134144, 40.184711>,  <34.092342, 35.751049, 40.191391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977478, 36.134144, 40.184711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065414, -0.037002, -0.997172,
		-0.955646, -0.285257, 0.073275,
		-0.287161, 0.957736, -0.016701,
		33.891331, 36.421463, 40.179703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410591, 35.821823, 39.786240>,  <34.092342, 35.751049, 40.191391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410591, 35.821823, 39.786240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.597511, 36.175457, 39.784676>,  <33.709663, 36.387638, 39.783737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.597511, 36.175457, 39.784676>,  <33.410591, 35.821823, 39.786240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597511, 36.175457, 39.784676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097230, 0.046992, -0.994152,
		-0.878735, 0.464950, 0.107919,
		0.467303, 0.884089, -0.003914,
		33.737701, 36.440685, 39.783501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041767, 36.177372, 39.340916>,  <33.410591, 35.821823, 39.786240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041767, 36.177372, 39.340916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.385120, 36.382339, 39.350681>,  <33.591133, 36.505322, 39.356541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.385120, 36.382339, 39.350681>,  <33.041767, 36.177372, 39.340916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385120, 36.382339, 39.350681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120772, 0.248105, -0.961175,
		-0.498584, 0.822112, 0.274857,
		0.858387, 0.512421, 0.024413,
		33.642635, 36.536064, 39.358006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037685, 36.409687, 38.693092>,  <33.041767, 36.177372, 39.340916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037685, 36.409687, 38.693092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.405365, 36.522163, 38.803364>,  <33.625973, 36.589649, 38.869526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.405365, 36.522163, 38.803364>,  <33.037685, 36.409687, 38.693092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405365, 36.522163, 38.803364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227679, 0.191677, -0.954684,
		-0.321292, 0.940314, 0.112168,
		0.919203, 0.281194, 0.275674,
		33.681126, 36.606522, 38.886066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207161, 37.032288, 38.284561>,  <33.037685, 36.409687, 38.693092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207161, 37.032288, 38.284561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541725, 36.837494, 38.385166>,  <33.742466, 36.720619, 38.445530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541725, 36.837494, 38.385166>,  <33.207161, 37.032288, 38.284561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541725, 36.837494, 38.385166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315144, 0.051860, -0.947626,
		0.448435, 0.871870, 0.196847,
		0.836415, -0.486984, 0.251509,
		33.792648, 36.691399, 38.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780788, 37.405991, 37.917591>,  <33.207161, 37.032288, 38.284561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780788, 37.405991, 37.917591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.925797, 37.051304, 38.032356>,  <34.012802, 36.838493, 38.101215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.925797, 37.051304, 38.032356>,  <33.780788, 37.405991, 37.917591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925797, 37.051304, 38.032356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456276, -0.099570, -0.884250,
		0.812645, 0.451468, 0.368490,
		0.362520, -0.886714, 0.286909,
		34.034554, 36.785290, 38.118427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507622, 37.432518, 37.677273>,  <33.780788, 37.405991, 37.917591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507622, 37.432518, 37.677273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415794, 37.044376, 37.707512>,  <34.360699, 36.811493, 37.725655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415794, 37.044376, 37.707512>,  <34.507622, 37.432518, 37.677273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415794, 37.044376, 37.707512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326565, -0.149965, -0.933202,
		0.916871, -0.189550, 0.351310,
		-0.229573, -0.970351, 0.075598,
		34.346924, 36.753269, 37.730190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124290, 37.068192, 37.484428>,  <34.507622, 37.432518, 37.677273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124290, 37.068192, 37.484428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852303, 36.776787, 37.451164>,  <34.689110, 36.601944, 37.431206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852303, 36.776787, 37.451164>,  <35.124290, 37.068192, 37.484428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852303, 36.776787, 37.451164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369392, -0.242379, -0.897108,
		0.633394, -0.640725, 0.433916,
		-0.679972, -0.728508, -0.083157,
		34.648312, 36.558235, 37.426216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514431, 36.432152, 37.520752>,  <35.124290, 37.068192, 37.484428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514431, 36.432152, 37.520752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180096, 36.383270, 37.306675>,  <34.979492, 36.353943, 37.178226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180096, 36.383270, 37.306675>,  <35.514431, 36.432152, 37.520752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180096, 36.383270, 37.306675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548429, -0.229139, -0.804190,
		-0.024362, -0.965693, 0.258542,
		-0.835842, -0.122200, -0.535196,
		34.929344, 36.346611, 37.146114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556847, 35.806488, 37.188812>,  <35.514431, 36.432152, 37.520752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556847, 35.806488, 37.188812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240784, 35.943405, 36.985447>,  <35.051147, 36.025555, 36.863426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240784, 35.943405, 36.985447>,  <35.556847, 35.806488, 37.188812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240784, 35.943405, 36.985447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339531, -0.446145, -0.828054,
		-0.510265, -0.826916, 0.236305,
		-0.790157, 0.342294, -0.508416,
		35.003735, 36.046093, 36.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247070, 35.283081, 36.861019>,  <35.556847, 35.806488, 37.188812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247070, 35.283081, 36.861019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113110, 35.587933, 36.639389>,  <35.032734, 35.770844, 36.506409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113110, 35.587933, 36.639389>,  <35.247070, 35.283081, 36.861019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113110, 35.587933, 36.639389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169514, -0.529709, -0.831067,
		-0.926881, -0.372247, 0.048208,
		-0.334899, 0.762128, -0.554078,
		35.012638, 35.816570, 36.473164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699753, 34.998062, 36.427551>,  <35.247070, 35.283081, 36.861019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699753, 34.998062, 36.427551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826416, 35.331161, 36.245892>,  <34.902416, 35.531021, 36.136894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826416, 35.331161, 36.245892>,  <34.699753, 34.998062, 36.427551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826416, 35.331161, 36.245892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060035, -0.495426, -0.866573,
		-0.946637, 0.247144, -0.206876,
		0.316661, 0.832750, -0.454151,
		34.921413, 35.580986, 36.109646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532822, 34.908279, 35.748363>,  <34.699753, 34.998062, 36.427551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532822, 34.908279, 35.748363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.804596, 35.200237, 35.718391>,  <34.967663, 35.375412, 35.700409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.804596, 35.200237, 35.718391>,  <34.532822, 34.908279, 35.748363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804596, 35.200237, 35.718391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265810, -0.340042, -0.902062,
		-0.683891, 0.592979, -0.425052,
		0.679439, 0.729895, -0.074932,
		35.008427, 35.419205, 35.695911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407352, 35.181934, 35.052963>,  <34.532822, 34.908279, 35.748363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407352, 35.181934, 35.052963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783123, 35.298145, 35.125702>,  <35.008587, 35.367870, 35.169346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783123, 35.298145, 35.125702>,  <34.407352, 35.181934, 35.052963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783123, 35.298145, 35.125702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267265, -0.288769, -0.919338,
		-0.214578, 0.912254, -0.348925,
		0.939428, 0.290525, 0.181851,
		35.064953, 35.385303, 35.180256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654556, 35.678226, 34.532806>,  <34.407352, 35.181934, 35.052963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654556, 35.678226, 34.532806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978065, 35.512913, 34.700180>,  <35.172169, 35.413723, 34.800606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978065, 35.512913, 34.700180>,  <34.654556, 35.678226, 34.532806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978065, 35.512913, 34.700180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309609, -0.305718, -0.900377,
		0.500036, 0.857748, -0.119299,
		0.808769, -0.413285, 0.418436,
		35.220695, 35.388927, 34.825710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073338, 35.759346, 34.064583>,  <34.654556, 35.678226, 34.532806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073338, 35.759346, 34.064583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302364, 35.502930, 34.269024>,  <35.439781, 35.349079, 34.391689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302364, 35.502930, 34.269024>,  <35.073338, 35.759346, 34.064583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302364, 35.502930, 34.269024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388602, -0.336732, -0.857671,
		0.721907, 0.689695, 0.056307,
		0.572572, -0.641040, 0.511106,
		35.474136, 35.310619, 34.422356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715530, 35.734402, 33.784431>,  <35.073338, 35.759346, 34.064583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715530, 35.734402, 33.784431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686771, 35.383732, 33.974701>,  <35.669514, 35.173328, 34.088863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686771, 35.383732, 33.974701>,  <35.715530, 35.734402, 33.784431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686771, 35.383732, 33.974701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297250, -0.474070, -0.828794,
		0.952089, 0.081803, 0.294678,
		-0.071901, -0.876679, 0.475673,
		35.665199, 35.120728, 34.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435741, 35.310280, 33.708523>,  <35.715530, 35.734402, 33.784431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435741, 35.310280, 33.708523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135567, 35.053772, 33.772537>,  <35.955463, 34.899868, 33.810947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135567, 35.053772, 33.772537>,  <36.435741, 35.310280, 33.708523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135567, 35.053772, 33.772537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324784, -0.568676, -0.755727,
		0.575637, -0.515148, 0.635031,
		-0.750438, -0.641273, 0.160039,
		35.910435, 34.861389, 33.820549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744812, 34.618771, 33.832947>,  <36.435741, 35.310280, 33.708523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744812, 34.618771, 33.832947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364113, 34.582413, 33.715702>,  <36.135693, 34.560596, 33.645355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364113, 34.582413, 33.715702>,  <36.744812, 34.618771, 33.832947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364113, 34.582413, 33.715702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265320, -0.723715, -0.637057,
		-0.154225, -0.684086, 0.712910,
		-0.951746, -0.090900, -0.293116,
		36.078590, 34.555141, 33.627766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098827, 33.945702, 34.026886>,  <36.744812, 34.618771, 33.832947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098827, 33.945702, 34.026886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490936, 33.963238, 34.103981>,  <37.726200, 33.973759, 34.150238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490936, 33.963238, 34.103981>,  <37.098827, 33.945702, 34.026886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490936, 33.963238, 34.103981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194867, 0.050844, 0.979511,
		0.033114, -0.997745, 0.058379,
		0.980271, 0.043811, 0.192744,
		37.785019, 33.976391, 34.161804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290005, 33.486729, 34.533501>,  <37.098827, 33.945702, 34.026886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290005, 33.486729, 34.533501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593239, 33.747055, 34.550228>,  <37.775181, 33.903252, 34.560265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593239, 33.747055, 34.550228>,  <37.290005, 33.486729, 34.533501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593239, 33.747055, 34.550228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203603, 0.175269, 0.963237,
		0.619557, -0.738732, 0.265376,
		0.758087, 0.650812, 0.041819,
		37.820663, 33.942299, 34.562775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672585, 33.298309, 35.080795>,  <37.290005, 33.486729, 34.533501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672585, 33.298309, 35.080795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812065, 33.669300, 35.026848>,  <37.895752, 33.891895, 34.994480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812065, 33.669300, 35.026848>,  <37.672585, 33.298309, 35.080795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812065, 33.669300, 35.026848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122610, 0.187808, 0.974523,
		0.929181, -0.323277, 0.179206,
		0.348698, 0.927481, -0.134870,
		37.916676, 33.947544, 34.986385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138359, 33.352932, 35.671917>,  <37.672585, 33.298309, 35.080795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138359, 33.352932, 35.671917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038620, 33.713776, 35.531044>,  <37.978779, 33.930283, 35.446522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038620, 33.713776, 35.531044>,  <38.138359, 33.352932, 35.671917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038620, 33.713776, 35.531044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115796, 0.333287, 0.935688,
		0.961467, 0.274090, 0.021357,
		-0.249345, 0.902106, -0.352183,
		37.963818, 33.984406, 35.425388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539471, 33.854652, 36.109962>,  <38.138359, 33.352932, 35.671917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539471, 33.854652, 36.109962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246937, 34.087276, 35.967449>,  <38.071415, 34.226852, 35.881943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246937, 34.087276, 35.967449>,  <38.539471, 33.854652, 36.109962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246937, 34.087276, 35.967449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153260, 0.368893, 0.916749,
		0.664577, 0.725053, -0.180654,
		-0.731334, 0.581563, -0.356280,
		38.027538, 34.261745, 35.860565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710133, 34.523922, 36.259453>,  <38.539471, 33.854652, 36.109962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710133, 34.523922, 36.259453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317772, 34.547775, 36.185406>,  <38.082355, 34.562088, 36.140976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317772, 34.547775, 36.185406>,  <38.710133, 34.523922, 36.259453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317772, 34.547775, 36.185406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117247, 0.578106, 0.807494,
		0.155169, 0.813780, -0.560075,
		-0.980906, 0.059631, -0.185117,
		38.023499, 34.565666, 36.129871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491608, 35.219650, 36.567074>,  <38.710133, 34.523922, 36.259453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491608, 35.219650, 36.567074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.148247, 35.023880, 36.505619>,  <37.942230, 34.906418, 36.468746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.148247, 35.023880, 36.505619>,  <38.491608, 35.219650, 36.567074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148247, 35.023880, 36.505619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460407, 0.603004, 0.651469,
		-0.226202, 0.629959, -0.742956,
		-0.858404, -0.489426, -0.153637,
		37.890724, 34.877052, 36.459526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008221, 35.713741, 36.474110>,  <38.491608, 35.219650, 36.567074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008221, 35.713741, 36.474110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828381, 35.380192, 36.602184>,  <37.720478, 35.180061, 36.679028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828381, 35.380192, 36.602184>,  <38.008221, 35.713741, 36.474110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828381, 35.380192, 36.602184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336441, 0.490152, 0.804089,
		-0.827446, 0.253795, -0.500921,
		-0.449601, -0.833870, 0.320187,
		37.693501, 35.130032, 36.698238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413391, 36.026649, 36.739319>,  <38.008221, 35.713741, 36.474110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413391, 36.026649, 36.739319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433578, 35.659634, 36.897087>,  <37.445690, 35.439423, 36.991749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433578, 35.659634, 36.897087>,  <37.413391, 36.026649, 36.739319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433578, 35.659634, 36.897087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378676, 0.347858, 0.857671,
		-0.924152, -0.192648, -0.329894,
		0.050473, -0.917541, 0.394425,
		37.448719, 35.384373, 37.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781452, 35.907986, 37.186901>,  <37.413391, 36.026649, 36.739319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781452, 35.907986, 37.186901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023544, 35.625622, 37.334084>,  <37.168800, 35.456203, 37.422394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023544, 35.625622, 37.334084>,  <36.781452, 35.907986, 37.186901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023544, 35.625622, 37.334084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326229, 0.201694, 0.923523,
		-0.726137, -0.678980, -0.108217,
		0.605227, -0.705908, 0.367960,
		37.205112, 35.413849, 37.444473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426811, 35.527134, 37.641624>,  <36.781452, 35.907986, 37.186901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426811, 35.527134, 37.641624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803787, 35.454777, 37.754108>,  <37.029972, 35.411362, 37.821598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803787, 35.454777, 37.754108>,  <36.426811, 35.527134, 37.641624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803787, 35.454777, 37.754108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272849, 0.070099, 0.959500,
		-0.193277, -0.981002, 0.016709,
		0.942443, -0.180890, 0.281214,
		37.086521, 35.400509, 37.838474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309246, 35.150726, 38.248001>,  <36.426811, 35.527134, 37.641624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309246, 35.150726, 38.248001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695465, 35.250244, 38.278503>,  <36.927197, 35.309956, 38.296806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695465, 35.250244, 38.278503>,  <36.309246, 35.150726, 38.248001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695465, 35.250244, 38.278503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113455, 0.138767, 0.983805,
		0.234180, -0.958565, 0.162213,
		0.965551, 0.248791, 0.076257,
		36.985130, 35.324883, 38.301380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434555, 34.846954, 38.869102>,  <36.309246, 35.150726, 38.248001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434555, 34.846954, 38.869102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708145, 35.135384, 38.824852>,  <36.872299, 35.308441, 38.798302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708145, 35.135384, 38.824852>,  <36.434555, 34.846954, 38.869102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708145, 35.135384, 38.824852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104078, 0.246543, 0.963527,
		0.722044, -0.647513, 0.243677,
		0.683973, 0.721070, -0.110623,
		36.913338, 35.351704, 38.791664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923882, 34.740417, 39.356483>,  <36.434555, 34.846954, 38.869102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923882, 34.740417, 39.356483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933010, 35.128143, 39.258575>,  <36.938488, 35.360779, 39.199833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933010, 35.128143, 39.258575>,  <36.923882, 34.740417, 39.356483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933010, 35.128143, 39.258575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178902, 0.244838, 0.952916,
		0.983602, 0.022047, 0.178998,
		0.022817, 0.969313, -0.244768,
		36.939854, 35.418938, 39.185146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109756, 35.029976, 39.919197>,  <36.923882, 34.740417, 39.356483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109756, 35.029976, 39.919197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003902, 35.363304, 39.725063>,  <36.940392, 35.563301, 39.608582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003902, 35.363304, 39.725063>,  <37.109756, 35.029976, 39.919197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003902, 35.363304, 39.725063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187341, 0.449267, 0.873534,
		0.945976, 0.322092, 0.037222,
		-0.264636, 0.833316, -0.485337,
		36.924511, 35.613300, 39.579464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518940, 35.551094, 40.160767>,  <37.109756, 35.029976, 39.919197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518940, 35.551094, 40.160767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181744, 35.716663, 40.023342>,  <36.979427, 35.816006, 39.940887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181744, 35.716663, 40.023342>,  <37.518940, 35.551094, 40.160767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181744, 35.716663, 40.023342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043623, 0.583961, 0.810608,
		0.536158, 0.698322, -0.474216,
		-0.842990, 0.413927, -0.343559,
		36.928848, 35.840843, 39.920273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596306, 36.305355, 40.053204>,  <37.518940, 35.551094, 40.160767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596306, 36.305355, 40.053204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202179, 36.256500, 40.100918>,  <36.965702, 36.227188, 40.129547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202179, 36.256500, 40.100918>,  <37.596306, 36.305355, 40.053204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202179, 36.256500, 40.100918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021727, 0.603322, 0.797202,
		-0.169337, 0.788090, -0.591811,
		-0.985319, -0.122137, 0.119287,
		36.906582, 36.219860, 40.136703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288715, 37.020859, 40.235302>,  <37.596306, 36.305355, 40.053204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288715, 37.020859, 40.235302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030933, 36.731632, 40.334778>,  <36.876263, 36.558094, 40.394463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030933, 36.731632, 40.334778>,  <37.288715, 37.020859, 40.235302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030933, 36.731632, 40.334778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261024, 0.513736, 0.817277,
		-0.718707, 0.461788, -0.519820,
		-0.644459, -0.723068, 0.248687,
		36.837597, 36.514713, 40.409386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.403305, 37.399780, 40.454487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.452835, 37.025784, 40.587429>,  <36.482555, 36.801388, 40.667194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.452835, 37.025784, 40.587429>,  <36.403305, 37.399780, 40.454487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452835, 37.025784, 40.587429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561199, 0.210241, 0.800534,
		-0.818366, -0.285649, -0.498680,
		0.123829, -0.934989, 0.332360,
		36.489983, 36.745289, 40.687138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754463, 37.189060, 40.670586>,  <36.403305, 37.399780, 40.454487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754463, 37.189060, 40.670586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006371, 36.965946, 40.886829>,  <36.157516, 36.832077, 41.016575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006371, 36.965946, 40.886829>,  <35.754463, 37.189060, 40.670586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006371, 36.965946, 40.886829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548031, 0.174177, 0.818123,
		-0.550502, -0.811501, -0.195995,
		0.629769, -0.557790, 0.540612,
		36.195301, 36.798611, 41.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367970, 37.023376, 41.385727>,  <35.754463, 37.189060, 40.670586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367970, 37.023376, 41.385727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754669, 36.937729, 41.441662>,  <35.986687, 36.886341, 41.475224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754669, 36.937729, 41.441662>,  <35.367970, 37.023376, 41.385727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754669, 36.937729, 41.441662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140253, 0.013347, 0.990026,
		-0.213852, -0.976716, -0.017128,
		0.966745, -0.214122, 0.139841,
		36.044693, 36.873493, 41.483616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315052, 36.475956, 41.945164>,  <35.367970, 37.023376, 41.385727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315052, 36.475956, 41.945164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691608, 36.610806, 41.949844>,  <35.917542, 36.691715, 41.952652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691608, 36.610806, 41.949844>,  <35.315052, 36.475956, 41.945164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691608, 36.610806, 41.949844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065071, 0.147450, 0.986927,
		0.330992, -0.929842, 0.160744,
		0.941387, 0.337124, 0.011701,
		35.974026, 36.711941, 41.953354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749680, 36.034668, 42.479836>,  <35.315052, 36.475956, 41.945164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749680, 36.034668, 42.479836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911373, 36.395241, 42.417839>,  <36.008389, 36.611584, 42.380642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911373, 36.395241, 42.417839>,  <35.749680, 36.034668, 42.479836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911373, 36.395241, 42.417839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180883, 0.244894, 0.952528,
		0.896591, -0.357008, 0.262047,
		0.404234, 0.901428, -0.154992,
		36.032642, 36.665668, 42.371342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071800, 36.026405, 43.153988>,  <35.749680, 36.034668, 42.479836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071800, 36.026405, 43.153988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077370, 36.406960, 43.030918>,  <36.080711, 36.635292, 42.957077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.077370, 36.406960, 43.030918>,  <36.071800, 36.026405, 43.153988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077370, 36.406960, 43.030918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223219, 0.302901, 0.926512,
		0.974669, 0.055776, 0.216586,
		0.013927, 0.951388, -0.307679,
		36.081547, 36.692375, 42.938614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412075, 36.346554, 43.662502>,  <36.071800, 36.026405, 43.153988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412075, 36.346554, 43.662502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214531, 36.629505, 43.460224>,  <36.096004, 36.799274, 43.338860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214531, 36.629505, 43.460224>,  <36.412075, 36.346554, 43.662502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214531, 36.629505, 43.460224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234641, 0.451576, 0.860827,
		0.837287, 0.543780, -0.057034,
		-0.493856, 0.707377, -0.505692,
		36.066376, 36.841717, 43.308517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626575, 37.040058, 43.881577>,  <36.412075, 36.346554, 43.662502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626575, 37.040058, 43.881577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266605, 37.090176, 43.714516>,  <36.050621, 37.120247, 43.614281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266605, 37.090176, 43.714516>,  <36.626575, 37.040058, 43.881577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266605, 37.090176, 43.714516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313069, 0.481038, 0.818895,
		0.303507, 0.867700, -0.393675,
		-0.899928, 0.125293, -0.417649,
		35.996628, 37.127762, 43.589222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535576, 37.739578, 43.925232>,  <36.626575, 37.040058, 43.881577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535576, 37.739578, 43.925232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184902, 37.548420, 43.903137>,  <35.974499, 37.433727, 43.889881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184902, 37.548420, 43.903137>,  <36.535576, 37.739578, 43.925232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184902, 37.548420, 43.903137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273171, 0.400011, 0.874854,
		-0.395994, 0.782054, -0.481228,
		-0.876680, -0.477894, -0.055233,
		35.921898, 37.405052, 43.886566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947968, 38.237476, 44.053566>,  <36.535576, 37.739578, 43.925232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947968, 38.237476, 44.053566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777451, 37.880215, 44.110901>,  <35.675140, 37.665855, 44.145302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777451, 37.880215, 44.110901>,  <35.947968, 38.237476, 44.053566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777451, 37.880215, 44.110901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442240, 0.344007, 0.828301,
		-0.789113, 0.289708, -0.541637,
		-0.426292, -0.893157, 0.143339,
		35.649563, 37.612267, 44.153904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344017, 38.458855, 44.193272>,  <35.947968, 38.237476, 44.053566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344017, 38.458855, 44.193272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354954, 38.080162, 44.321609>,  <35.361515, 37.852947, 44.398613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354954, 38.080162, 44.321609>,  <35.344017, 38.458855, 44.193272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354954, 38.080162, 44.321609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527423, 0.258993, 0.809165,
		-0.849163, -0.191349, -0.492248,
		0.027344, -0.946735, 0.320849,
		35.363155, 37.796143, 44.417866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604565, 38.248169, 44.532352>,  <35.344017, 38.458855, 44.193272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604565, 38.248169, 44.532352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867897, 37.983120, 44.675201>,  <35.025894, 37.824089, 44.760910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867897, 37.983120, 44.675201>,  <34.604565, 38.248169, 44.532352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867897, 37.983120, 44.675201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402275, 0.091288, 0.910956,
		-0.636221, -0.743369, -0.206459,
		0.658329, -0.662623, 0.357119,
		35.065395, 37.784332, 44.782337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239384, 37.767242, 44.952694>,  <34.604565, 38.248169, 44.532352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239384, 37.767242, 44.952694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617382, 37.727253, 45.077263>,  <34.844181, 37.703259, 45.152004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617382, 37.727253, 45.077263>,  <34.239384, 37.767242, 44.952694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617382, 37.727253, 45.077263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309826, 0.031488, 0.950272,
		-0.104810, -0.994491, -0.001219,
		0.944999, -0.099975, 0.311419,
		34.900883, 37.697262, 45.170689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132278, 37.105438, 45.289223>,  <34.239384, 37.767242, 44.952694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132278, 37.105438, 45.289223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447060, 37.328129, 45.395618>,  <34.635929, 37.461742, 45.459457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447060, 37.328129, 45.395618>,  <34.132278, 37.105438, 45.289223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447060, 37.328129, 45.395618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315477, -0.007420, 0.948904,
		0.530258, -0.830660, 0.169797,
		0.786956, 0.556731, 0.265988,
		34.683147, 37.495148, 45.475414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469452, 36.754185, 45.825207>,  <34.132278, 37.105438, 45.289223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469452, 36.754185, 45.825207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597786, 37.131649, 45.857613>,  <34.674786, 37.358128, 45.877056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597786, 37.131649, 45.857613>,  <34.469452, 36.754185, 45.825207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597786, 37.131649, 45.857613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287377, 0.015490, 0.957692,
		0.902483, -0.330547, 0.276157,
		0.320840, 0.943662, 0.081012,
		34.694038, 37.414749, 45.881916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875484, 36.753036, 46.371696>,  <34.469452, 36.754185, 45.825207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875484, 36.753036, 46.371696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764687, 37.135250, 46.331234>,  <34.698208, 37.364578, 46.306957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764687, 37.135250, 46.331234>,  <34.875484, 36.753036, 46.371696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764687, 37.135250, 46.331234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402408, -0.019763, 0.915247,
		0.872550, 0.294219, 0.389989,
		-0.276990, 0.955534, -0.101152,
		34.681591, 37.421909, 46.300888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145042, 37.055206, 47.095554>,  <34.875484, 36.753036, 46.371696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145042, 37.055206, 47.095554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897678, 37.326523, 46.936813>,  <34.749260, 37.489311, 46.841568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897678, 37.326523, 46.936813>,  <35.145042, 37.055206, 47.095554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897678, 37.326523, 46.936813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596099, -0.075809, 0.799324,
		0.512091, 0.730871, 0.451210,
		-0.618408, 0.678293, -0.396850,
		34.712154, 37.530010, 46.817757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216236, 37.574585, 47.556179>,  <35.145042, 37.055206, 47.095554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216236, 37.574585, 47.556179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863422, 37.610241, 47.371113>,  <34.651733, 37.631634, 47.260071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863422, 37.610241, 47.371113>,  <35.216236, 37.574585, 47.556179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863422, 37.610241, 47.371113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464572, -0.000694, 0.885535,
		0.078617, 0.996019, 0.042025,
		-0.882039, 0.089142, -0.462668,
		34.598812, 37.636982, 47.232311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971397, 38.024155, 47.979187>,  <35.216236, 37.574585, 47.556179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971397, 38.024155, 47.979187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671490, 37.866749, 47.766403>,  <34.491543, 37.772305, 47.638733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671490, 37.866749, 47.766403>,  <34.971397, 38.024155, 47.979187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671490, 37.866749, 47.766403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624063, 0.153287, 0.766191,
		-0.219965, 0.906448, -0.360509,
		-0.749774, -0.393516, -0.531963,
		34.446556, 37.748695, 47.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279217, 38.434479, 48.035728>,  <34.971397, 38.024155, 47.979187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279217, 38.434479, 48.035728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180099, 38.058739, 47.940876>,  <34.120628, 37.833294, 47.883965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180099, 38.058739, 47.940876>,  <34.279217, 38.434479, 48.035728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180099, 38.058739, 47.940876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573112, -0.055218, 0.817615,
		-0.781116, 0.338498, -0.524668,
		-0.247790, -0.939345, -0.237129,
		34.105762, 37.776936, 47.869736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639030, 38.496098, 48.268234>,  <34.279217, 38.434479, 48.035728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639030, 38.496098, 48.268234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706543, 38.105999, 48.211090>,  <33.747051, 37.871941, 48.176804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706543, 38.105999, 48.211090>,  <33.639030, 38.496098, 48.268234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706543, 38.105999, 48.211090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539423, -0.212705, 0.814726,
		-0.824946, -0.060447, -0.561970,
		0.168781, -0.975245, -0.142864,
		33.757179, 37.813427, 48.168232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034691, 38.188530, 48.450520>,  <33.639030, 38.496098, 48.268234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034691, 38.188530, 48.450520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324883, 37.915440, 48.485310>,  <33.498997, 37.751583, 48.506184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324883, 37.915440, 48.485310>,  <33.034691, 38.188530, 48.450520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324883, 37.915440, 48.485310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379317, -0.291183, 0.878254,
		-0.574285, -0.670143, -0.470218,
		0.725476, -0.682730, 0.086975,
		33.542526, 37.710621, 48.511402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897720, 38.371754, 49.091900>,  <33.034691, 38.188530, 48.450520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897720, 38.371754, 49.091900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.656841, 38.689400, 49.124725>,  <32.512314, 38.879990, 49.144421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.656841, 38.689400, 49.124725>,  <32.897720, 38.371754, 49.091900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656841, 38.689400, 49.124725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740889, 0.517608, 0.427979,
		0.297391, 0.318525, -0.900056,
		-0.602198, 0.794118, 0.082059,
		32.476181, 38.927635, 49.149342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860264, 37.593262, 48.950752>,  <32.897720, 38.371754, 49.091900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860264, 37.593262, 48.950752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258129, 37.586655, 48.910019>,  <33.496849, 37.582691, 48.885578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258129, 37.586655, 48.910019>,  <32.860264, 37.593262, 48.950752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258129, 37.586655, 48.910019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081553, -0.478663, 0.874203,
		-0.063189, -0.877843, -0.474761,
		0.994664, -0.016521, -0.101837,
		33.556530, 37.581699, 48.879467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290348, 38.091305, 48.851452>,  <32.860264, 37.593262, 48.950752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290348, 38.091305, 48.851452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938440, 38.192188, 48.690258>,  <31.727295, 38.252720, 48.593540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938440, 38.192188, 48.690258>,  <32.290348, 38.091305, 48.851452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938440, 38.192188, 48.690258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156359, -0.647001, -0.746285,
		-0.448952, -0.719569, 0.529776,
		-0.879769, 0.252212, -0.402983,
		31.674509, 38.267853, 48.569363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065678, 37.483994, 48.602310>,  <32.290348, 38.091305, 48.851452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065678, 37.483994, 48.602310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.814852, 37.723179, 48.402615>,  <31.664356, 37.866688, 48.282799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.814852, 37.723179, 48.402615>,  <32.065678, 37.483994, 48.602310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814852, 37.723179, 48.402615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026193, -0.656718, -0.753682,
		-0.778529, -0.459528, 0.427465,
		-0.627061, 0.597960, -0.499238,
		31.626734, 37.902565, 48.252842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526360, 37.075672, 48.425110>,  <32.065678, 37.483994, 48.602310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526360, 37.075672, 48.425110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490923, 37.386543, 48.175903>,  <31.469660, 37.573067, 48.026379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490923, 37.386543, 48.175903>,  <31.526360, 37.075672, 48.425110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490923, 37.386543, 48.175903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156945, -0.628556, -0.761765,
		-0.983626, 0.030293, 0.177659,
		-0.088593, 0.777174, -0.623018,
		31.464346, 37.619694, 47.988998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026546, 36.877003, 47.961964>,  <31.526360, 37.075672, 48.425110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026546, 36.877003, 47.961964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209051, 37.184650, 47.782951>,  <31.318554, 37.369240, 47.675545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209051, 37.184650, 47.782951>,  <31.026546, 36.877003, 47.961964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209051, 37.184650, 47.782951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098509, -0.543496, -0.833611,
		-0.884376, 0.336260, -0.323742,
		0.456262, 0.769117, -0.447530,
		31.345930, 37.415386, 47.648693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714205, 36.961071, 47.322582>,  <31.026546, 36.877003, 47.961964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714205, 36.961071, 47.322582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071962, 37.137550, 47.293198>,  <31.286617, 37.243439, 47.275566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071962, 37.137550, 47.293198>,  <30.714205, 36.961071, 47.322582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071962, 37.137550, 47.293198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136635, -0.425896, -0.894396,
		-0.425896, 0.789907, -0.441203,
		0.894396, 0.441203, -0.073458,
		31.340281, 37.269913, 47.271160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744835, 37.196003, 46.644859>,  <30.714205, 36.961071, 47.322582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744835, 37.196003, 46.644859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130142, 37.220779, 46.749378>,  <31.361326, 37.235645, 46.812092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130142, 37.220779, 46.749378>,  <30.744835, 37.196003, 46.644859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130142, 37.220779, 46.749378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259832, -0.460803, -0.848615,
		0.067842, 0.885338, -0.459972,
		0.963268, 0.061944, 0.261301,
		31.419123, 37.239361, 46.827770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998854, 37.687065, 46.191807>,  <30.744835, 37.196003, 46.644859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998854, 37.687065, 46.191807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302473, 37.472012, 46.338665>,  <31.484644, 37.342979, 46.426781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302473, 37.472012, 46.338665>,  <30.998854, 37.687065, 46.191807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302473, 37.472012, 46.338665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370007, -0.107754, -0.922759,
		0.535669, 0.836264, 0.117139,
		0.759048, -0.537636, 0.367144,
		31.530188, 37.310722, 46.448807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612057, 37.921280, 45.898220>,  <30.998854, 37.687065, 46.191807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612057, 37.921280, 45.898220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725760, 37.562420, 46.033459>,  <31.793982, 37.347103, 46.114601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725760, 37.562420, 46.033459>,  <31.612057, 37.921280, 45.898220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725760, 37.562420, 46.033459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520921, -0.151527, -0.840048,
		0.804884, 0.414913, 0.424274,
		0.284258, -0.897155, 0.338098,
		31.811037, 37.293274, 46.134888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286350, 37.805790, 45.575245>,  <31.612057, 37.921280, 45.898220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286350, 37.805790, 45.575245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175919, 37.431488, 45.663010>,  <32.109661, 37.206905, 45.715668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175919, 37.431488, 45.663010>,  <32.286350, 37.805790, 45.575245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175919, 37.431488, 45.663010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474536, -0.331225, -0.815540,
		0.835822, -0.121031, 0.535493,
		-0.276075, -0.935757, 0.219412,
		32.093098, 37.150761, 45.728832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885044, 37.365402, 45.841209>,  <32.286350, 37.805790, 45.575245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885044, 37.365402, 45.841209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608135, 37.125923, 45.680058>,  <32.441990, 36.982235, 45.583366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608135, 37.125923, 45.680058>,  <32.885044, 37.365402, 45.841209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608135, 37.125923, 45.680058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602482, -0.172218, -0.779331,
		0.397202, -0.782240, 0.479929,
		-0.692276, -0.598700, -0.402880,
		32.400452, 36.946312, 45.559193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393703, 36.925068, 45.444397>,  <32.885044, 37.365402, 45.841209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393703, 36.925068, 45.444397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024872, 36.874023, 45.298260>,  <32.803574, 36.843395, 45.210575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024872, 36.874023, 45.298260>,  <33.393703, 36.925068, 45.444397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024872, 36.874023, 45.298260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377839, -0.092740, -0.921215,
		0.083679, -0.987478, 0.133732,
		-0.922082, -0.127615, -0.365348,
		32.748245, 36.835739, 45.188656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478798, 36.448967, 44.998188>,  <33.393703, 36.925068, 45.444397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478798, 36.448967, 44.998188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127796, 36.606415, 44.888607>,  <32.917194, 36.700882, 44.822861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127796, 36.606415, 44.888607>,  <33.478798, 36.448967, 44.998188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127796, 36.606415, 44.888607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200738, -0.217314, -0.955237,
		-0.435533, -0.893218, 0.111680,
		-0.877505, 0.393619, -0.273950,
		32.864544, 36.724499, 44.806423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130028, 35.930000, 44.554638>,  <33.478798, 36.448967, 44.998188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130028, 35.930000, 44.554638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002975, 36.298943, 44.466667>,  <32.926743, 36.520309, 44.413887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002975, 36.298943, 44.466667>,  <33.130028, 35.930000, 44.554638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002975, 36.298943, 44.466667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311476, -0.117572, -0.942952,
		-0.895596, -0.368014, -0.249948,
		-0.317633, 0.922357, -0.219924,
		32.907684, 36.575649, 44.400688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033619, 35.832687, 43.840378>,  <33.130028, 35.930000, 44.554638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033619, 35.832687, 43.840378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018906, 36.231434, 43.868420>,  <33.010078, 36.470680, 43.885242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018906, 36.231434, 43.868420>,  <33.033619, 35.832687, 43.840378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018906, 36.231434, 43.868420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136676, 0.074506, -0.987810,
		-0.989933, -0.026751, -0.138987,
		-0.036780, 0.996862, 0.070100,
		33.007870, 36.530491, 43.889450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630157, 36.100567, 43.293674>,  <33.033619, 35.832687, 43.840378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630157, 36.100567, 43.293674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840523, 36.420567, 43.409206>,  <32.966740, 36.612568, 43.478523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840523, 36.420567, 43.409206>,  <32.630157, 36.100567, 43.293674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840523, 36.420567, 43.409206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183525, 0.224845, -0.956955,
		-0.830504, 0.556280, -0.028571,
		0.525911, 0.799998, 0.288826,
		32.998295, 36.660564, 43.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395229, 36.653679, 42.913528>,  <32.630157, 36.100567, 43.293674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395229, 36.653679, 42.913528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.752621, 36.786171, 43.034840>,  <32.967056, 36.865665, 43.107624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.752621, 36.786171, 43.034840>,  <32.395229, 36.653679, 42.913528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752621, 36.786171, 43.034840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205863, 0.298094, -0.932073,
		-0.399139, 0.895223, 0.198152,
		0.893481, 0.331235, 0.303274,
		33.020664, 36.885540, 43.125820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503326, 37.350281, 42.648380>,  <32.395229, 36.653679, 42.913528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503326, 37.350281, 42.648380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870335, 37.207516, 42.718548>,  <33.090538, 37.121857, 42.760647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.870335, 37.207516, 42.718548>,  <32.503326, 37.350281, 42.648380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870335, 37.207516, 42.718548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309122, 0.362547, -0.879206,
		0.250205, 0.860913, 0.442974,
		0.917519, -0.356915, 0.175416,
		33.145592, 37.100441, 42.771172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939228, 37.876373, 42.418217>,  <32.503326, 37.350281, 42.648380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939228, 37.876373, 42.418217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163876, 37.545502, 42.425865>,  <33.298664, 37.346981, 42.430454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163876, 37.545502, 42.425865>,  <32.939228, 37.876373, 42.418217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163876, 37.545502, 42.425865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196348, 0.110792, -0.974255,
		0.803762, 0.550913, 0.224637,
		0.561617, -0.827176, 0.019121,
		33.332359, 37.297348, 42.431602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529938, 38.001602, 42.043297>,  <32.939228, 37.876373, 42.418217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529938, 38.001602, 42.043297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549271, 37.602337, 42.057938>,  <33.560871, 37.362778, 42.066723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.549271, 37.602337, 42.057938>,  <33.529938, 38.001602, 42.043297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549271, 37.602337, 42.057938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277878, -0.021765, -0.960370,
		0.959400, 0.056586, 0.276315,
		0.048329, -0.998160, 0.036605,
		33.563770, 37.302887, 42.068920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191555, 37.879860, 41.640148>,  <33.529938, 38.001602, 42.043297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191555, 37.879860, 41.640148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979961, 37.541115, 41.662083>,  <33.853004, 37.337868, 41.675243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979961, 37.541115, 41.662083>,  <34.191555, 37.879860, 41.640148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979961, 37.541115, 41.662083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182468, -0.176604, -0.967221,
		0.828785, -0.501636, 0.247945,
		-0.528981, -0.846860, 0.054834,
		33.821266, 37.287056, 41.678532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.864014, 33.095509, 41.702152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486362, 32.979137, 41.640213>,  <41.259769, 32.909313, 41.603050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486362, 32.979137, 41.640213>,  <41.864014, 33.095509, 41.702152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486362, 32.979137, 41.640213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099070, 0.197589, -0.975266,
		0.314329, -0.936119, -0.157728,
		-0.944130, -0.290928, -0.154850,
		41.203125, 32.891861, 41.593758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904255, 32.506481, 41.182316>,  <41.864014, 33.095509, 41.702152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904255, 32.506481, 41.182316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.533920, 32.657284, 41.192883>,  <41.311722, 32.747765, 41.199223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.533920, 32.657284, 41.192883>,  <41.904255, 32.506481, 41.182316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533920, 32.657284, 41.192883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005947, 0.055363, -0.998449,
		-0.377888, -0.924553, -0.049015,
		-0.925832, 0.377010, 0.026419,
		41.256172, 32.770386, 41.200809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681400, 32.180260, 40.682457>,  <41.904255, 32.506481, 41.182316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681400, 32.180260, 40.682457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.409176, 32.465149, 40.751240>,  <41.245842, 32.636082, 40.792511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.409176, 32.465149, 40.751240>,  <41.681400, 32.180260, 40.682457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409176, 32.465149, 40.751240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111520, 0.131265, -0.985055,
		-0.724155, -0.689566, -0.009906,
		-0.680560, 0.712228, 0.171956,
		41.205009, 32.678818, 40.802826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301449, 32.106216, 40.158813>,  <41.681400, 32.180260, 40.682457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301449, 32.106216, 40.158813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209362, 32.476940, 40.277496>,  <41.154110, 32.699375, 40.348705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209362, 32.476940, 40.277496>,  <41.301449, 32.106216, 40.158813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209362, 32.476940, 40.277496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059273, 0.290974, -0.954893,
		-0.971334, -0.237415, -0.012051,
		-0.230213, 0.926805, 0.296705,
		41.140297, 32.754982, 40.366508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946896, 32.376087, 39.657860>,  <41.301449, 32.106216, 40.158813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946896, 32.376087, 39.657860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026367, 32.732803, 39.820461>,  <41.074051, 32.946831, 39.918022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026367, 32.732803, 39.820461>,  <40.946896, 32.376087, 39.657860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026367, 32.732803, 39.820461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225113, 0.362153, -0.904527,
		-0.953861, 0.271219, -0.128801,
		0.198679, 0.891788, 0.406499,
		41.085972, 33.000340, 39.942410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480194, 32.774067, 39.379131>,  <40.946896, 32.376087, 39.657860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480194, 32.774067, 39.379131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793938, 32.991390, 39.498859>,  <40.982185, 33.121784, 39.570698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793938, 32.991390, 39.498859>,  <40.480194, 32.774067, 39.379131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793938, 32.991390, 39.498859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121906, 0.338117, -0.933175,
		-0.608205, 0.768437, 0.198974,
		0.784363, 0.543306, 0.299321,
		41.029247, 33.154381, 39.588657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470337, 33.348648, 38.868286>,  <40.480194, 32.774067, 39.379131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470337, 33.348648, 38.868286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847584, 33.361469, 39.000652>,  <41.073933, 33.369164, 39.080070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847584, 33.361469, 39.000652>,  <40.470337, 33.348648, 38.868286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847584, 33.361469, 39.000652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301430, 0.337434, -0.891784,
		-0.140247, 0.940803, 0.308578,
		0.943117, 0.032055, 0.330911,
		41.130520, 33.371086, 39.099926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782646, 34.066643, 38.673832>,  <40.470337, 33.348648, 38.868286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782646, 34.066643, 38.673832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.094074, 33.823357, 38.735683>,  <41.280930, 33.677387, 38.772793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.094074, 33.823357, 38.735683>,  <40.782646, 34.066643, 38.673832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094074, 33.823357, 38.735683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307550, 0.155019, -0.938820,
		0.547030, 0.778491, 0.307748,
		0.778570, -0.608211, 0.154625,
		41.327644, 33.640892, 38.782070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410099, 34.424828, 38.480701>,  <40.782646, 34.066643, 38.673832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410099, 34.424828, 38.480701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501282, 34.035641, 38.465923>,  <41.555992, 33.802128, 38.457058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501282, 34.035641, 38.465923>,  <41.410099, 34.424828, 38.480701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501282, 34.035641, 38.465923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434678, 0.135647, -0.890311,
		0.871257, 0.186896, 0.453851,
		0.227959, -0.972969, -0.036944,
		41.569668, 33.743752, 38.454842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063602, 34.396980, 38.190212>,  <41.410099, 34.424828, 38.480701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063602, 34.396980, 38.190212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961040, 34.013443, 38.141418>,  <41.899502, 33.783321, 38.112141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961040, 34.013443, 38.141418>,  <42.063602, 34.396980, 38.190212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961040, 34.013443, 38.141418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386422, 0.013994, -0.922216,
		0.885964, -0.283603, 0.366929,
		-0.256409, -0.958840, -0.121989,
		41.884117, 33.725792, 38.104820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629036, 34.098347, 37.888885>,  <42.063602, 34.396980, 38.190212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629036, 34.098347, 37.888885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341309, 33.831387, 37.811775>,  <42.168671, 33.671211, 37.765507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341309, 33.831387, 37.811775>,  <42.629036, 34.098347, 37.888885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341309, 33.831387, 37.811775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359456, -0.120118, -0.925399,
		0.594453, -0.734950, 0.326303,
		-0.719317, -0.667398, -0.192777,
		42.125515, 33.631168, 37.753941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909786, 33.391804, 37.740871>,  <42.629036, 34.098347, 37.888885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909786, 33.391804, 37.740871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552803, 33.430916, 37.564713>,  <42.338612, 33.454384, 37.459015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552803, 33.430916, 37.564713>,  <42.909786, 33.391804, 37.740871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552803, 33.430916, 37.564713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417136, -0.192883, -0.888140,
		-0.171780, -0.976339, 0.131357,
		-0.892462, 0.097771, -0.440400,
		42.285065, 33.460251, 37.432590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926224, 32.916054, 37.112411>,  <42.909786, 33.391804, 37.740871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926224, 32.916054, 37.112411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616646, 33.159420, 37.042179>,  <42.430897, 33.305439, 37.000038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616646, 33.159420, 37.042179>,  <42.926224, 32.916054, 37.112411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616646, 33.159420, 37.042179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232235, 0.014747, -0.972548,
		-0.589128, -0.793479, -0.152709,
		-0.773948, 0.608419, -0.175585,
		42.384460, 33.341946, 36.989502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701359, 32.725586, 36.453449>,  <42.926224, 32.916054, 37.112411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701359, 32.725586, 36.453449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506321, 33.073784, 36.480289>,  <42.389297, 33.282703, 36.496395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506321, 33.073784, 36.480289>,  <42.701359, 32.725586, 36.453449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506321, 33.073784, 36.480289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010568, 0.082735, -0.996516,
		-0.873009, -0.485182, -0.049540,
		-0.487590, 0.870491, 0.067101,
		42.360043, 33.334930, 36.500420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161758, 32.715523, 35.953247>,  <42.701359, 32.725586, 36.453449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161758, 32.715523, 35.953247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226402, 33.102459, 36.031368>,  <42.265190, 33.334621, 36.078239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226402, 33.102459, 36.031368>,  <42.161758, 32.715523, 35.953247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226402, 33.102459, 36.031368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119938, 0.177182, -0.976842,
		-0.979539, 0.181294, -0.087385,
		0.161613, 0.967336, 0.195301,
		42.274887, 33.392658, 36.089958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871429, 33.041115, 35.432606>,  <42.161758, 32.715523, 35.953247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871429, 33.041115, 35.432606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115795, 33.332111, 35.557533>,  <42.262413, 33.506710, 35.632488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115795, 33.332111, 35.557533>,  <41.871429, 33.041115, 35.432606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115795, 33.332111, 35.557533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243701, 0.202533, -0.948467,
		-0.753255, 0.655545, -0.053559,
		0.610915, 0.727490, 0.312316,
		42.299068, 33.550358, 35.651230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810207, 33.665695, 35.013741>,  <41.871429, 33.041115, 35.432606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810207, 33.665695, 35.013741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169155, 33.735161, 35.176006>,  <42.384525, 33.776840, 35.273365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169155, 33.735161, 35.176006>,  <41.810207, 33.665695, 35.013741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169155, 33.735161, 35.176006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392067, 0.108101, -0.913563,
		-0.202508, 0.978853, 0.028917,
		0.897370, 0.173667, 0.405668,
		42.438366, 33.787262, 35.297707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048115, 34.206169, 34.588703>,  <41.810207, 33.665695, 35.013741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048115, 34.206169, 34.588703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362644, 34.046703, 34.777493>,  <42.551361, 33.951023, 34.890766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362644, 34.046703, 34.777493>,  <42.048115, 34.206169, 34.588703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362644, 34.046703, 34.777493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551307, 0.107973, -0.827286,
		0.278851, 0.910717, 0.304690,
		0.786322, -0.398668, 0.471977,
		42.598541, 33.927105, 34.919086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515171, 34.733349, 34.478214>,  <42.048115, 34.206169, 34.588703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515171, 34.733349, 34.478214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.709427, 34.388577, 34.536507>,  <42.825981, 34.181713, 34.571480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.709427, 34.388577, 34.536507>,  <42.515171, 34.733349, 34.478214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709427, 34.388577, 34.536507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488443, 0.129302, -0.862963,
		0.724967, 0.490270, 0.483796,
		0.485640, -0.861926, 0.145729,
		42.855118, 34.129997, 34.580227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180126, 34.880672, 34.248360>,  <42.515171, 34.733349, 34.478214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180126, 34.880672, 34.248360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.177689, 34.480686, 34.246464>,  <43.176228, 34.240692, 34.245327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.177689, 34.480686, 34.246464>,  <43.180126, 34.880672, 34.248360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177689, 34.480686, 34.246464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446247, 0.001522, -0.894908,
		0.894889, -0.007568, 0.446225,
		-0.006093, -0.999970, -0.004739,
		43.175861, 34.180695, 34.245041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903458, 34.546230, 34.208084>,  <43.180126, 34.880672, 34.248360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903458, 34.546230, 34.208084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614723, 34.326672, 34.039486>,  <43.441483, 34.194935, 33.938328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.614723, 34.326672, 34.039486>,  <43.903458, 34.546230, 34.208084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614723, 34.326672, 34.039486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501833, 0.004251, -0.864954,
		0.476562, -0.835880, 0.272386,
		-0.721840, -0.548896, -0.421498,
		43.398170, 34.162003, 33.913036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328362, 34.819550, 34.806252>,  <43.903458, 34.546230, 34.208084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328362, 34.819550, 34.806252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713600, 34.798100, 34.911751>,  <44.944744, 34.785229, 34.975048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713600, 34.798100, 34.911751>,  <44.328362, 34.819550, 34.806252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713600, 34.798100, 34.911751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267339, -0.303836, 0.914447,
		0.031100, -0.951214, -0.306960,
		0.963100, -0.053623, 0.263746,
		45.002529, 34.782013, 34.990875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392807, 34.209816, 35.237656>,  <44.328362, 34.819550, 34.806252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392807, 34.209816, 35.237656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711166, 34.435081, 35.326550>,  <44.902184, 34.570240, 35.379887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711166, 34.435081, 35.326550>,  <44.392807, 34.209816, 35.237656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711166, 34.435081, 35.326550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207573, -0.090999, 0.973978,
		0.568733, -0.821319, 0.044472,
		0.795900, 0.563165, 0.222238,
		44.949936, 34.604031, 35.393223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614574, 33.833759, 35.727066>,  <44.392807, 34.209816, 35.237656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614574, 33.833759, 35.727066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782204, 34.194271, 35.771011>,  <44.882782, 34.410580, 35.797379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782204, 34.194271, 35.771011>,  <44.614574, 33.833759, 35.727066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782204, 34.194271, 35.771011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274558, 0.010460, 0.961513,
		0.865447, -0.433104, 0.251838,
		0.419070, 0.901283, 0.109860,
		44.907925, 34.464657, 35.803970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181114, 33.746220, 36.219898>,  <44.614574, 33.833759, 35.727066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181114, 33.746220, 36.219898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105217, 34.138882, 36.227329>,  <45.059677, 34.374481, 36.231789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105217, 34.138882, 36.227329>,  <45.181114, 33.746220, 36.219898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105217, 34.138882, 36.227329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085353, -0.035341, 0.995724,
		0.978117, 0.187346, 0.090493,
		-0.189743, 0.981658, 0.018577,
		45.048294, 34.433380, 36.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729233, 33.929531, 36.640892>,  <45.181114, 33.746220, 36.219898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729233, 33.929531, 36.640892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424606, 34.188553, 36.651390>,  <45.241833, 34.343967, 36.657688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424606, 34.188553, 36.651390>,  <45.729233, 33.929531, 36.640892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424606, 34.188553, 36.651390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047825, 0.015765, 0.998731,
		0.646322, 0.761854, -0.042975,
		-0.761565, 0.647557, 0.026247,
		45.196136, 34.382820, 36.659264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918076, 34.369961, 37.104465>,  <45.729233, 33.929531, 36.640892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918076, 34.369961, 37.104465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526253, 34.440727, 37.066177>,  <45.291157, 34.483189, 37.043205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526253, 34.440727, 37.066177>,  <45.918076, 34.369961, 37.104465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526253, 34.440727, 37.066177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071826, 0.136844, 0.987985,
		0.187893, 0.974665, -0.121339,
		-0.979560, 0.176920, -0.095719,
		45.232384, 34.493805, 37.037460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760624, 35.138882, 37.478168>,  <45.918076, 34.369961, 37.104465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760624, 35.138882, 37.478168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434235, 34.908390, 37.459633>,  <45.238400, 34.770096, 37.448509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434235, 34.908390, 37.459633>,  <45.760624, 35.138882, 37.478168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434235, 34.908390, 37.459633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086819, 0.042896, 0.995300,
		-0.571530, 0.816164, -0.085029,
		-0.815975, -0.576226, -0.046342,
		45.189442, 34.735523, 37.445732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172359, 35.490906, 37.774513>,  <45.760624, 35.138882, 37.478168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172359, 35.490906, 37.774513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047440, 35.111038, 37.784317>,  <44.972488, 34.883118, 37.790199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047440, 35.111038, 37.784317>,  <45.172359, 35.490906, 37.774513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047440, 35.111038, 37.784317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181702, 0.085040, 0.979670,
		-0.932444, 0.301499, -0.199115,
		-0.312302, -0.949666, 0.024512,
		44.953751, 34.826138, 37.791672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543736, 35.547436, 38.090282>,  <45.172359, 35.490906, 37.774513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543736, 35.547436, 38.090282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663593, 35.168732, 38.137386>,  <44.735508, 34.941509, 38.165649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663593, 35.168732, 38.137386>,  <44.543736, 35.547436, 38.090282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663593, 35.168732, 38.137386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302628, 0.022736, 0.952837,
		-0.904782, -0.321146, -0.279703,
		0.299641, -0.946756, 0.117759,
		44.753487, 34.884705, 38.172714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004005, 35.214005, 38.386360>,  <44.543736, 35.547436, 38.090282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004005, 35.214005, 38.386360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320251, 34.982990, 38.467720>,  <44.509998, 34.844379, 38.516537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320251, 34.982990, 38.467720>,  <44.004005, 35.214005, 38.386360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320251, 34.982990, 38.467720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276230, -0.039962, 0.960261,
		-0.546462, -0.815383, -0.191129,
		0.790618, -0.577541, 0.203395,
		44.557438, 34.809727, 38.528740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702290, 34.586678, 38.782692>,  <44.004005, 35.214005, 38.386360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702290, 34.586678, 38.782692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094990, 34.629868, 38.845314>,  <44.330608, 34.655781, 38.882889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094990, 34.629868, 38.845314>,  <43.702290, 34.586678, 38.782692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094990, 34.629868, 38.845314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141575, -0.134719, 0.980718,
		0.126980, -0.984984, -0.116974,
		0.981750, 0.107971, 0.156555,
		44.389515, 34.662258, 38.892281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785263, 34.071297, 39.155453>,  <43.702290, 34.586678, 38.782692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785263, 34.071297, 39.155453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089409, 34.319290, 39.232883>,  <44.271896, 34.468086, 39.279343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089409, 34.319290, 39.232883>,  <43.785263, 34.071297, 39.155453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089409, 34.319290, 39.232883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158323, -0.112124, 0.981001,
		0.629909, -0.776562, 0.012903,
		0.760361, 0.619984, 0.193575,
		44.317516, 34.505283, 39.290955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083878, 33.727516, 39.702908>,  <43.785263, 34.071297, 39.155453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083878, 33.727516, 39.702908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226063, 34.101326, 39.709843>,  <44.311375, 34.325611, 39.714005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226063, 34.101326, 39.709843>,  <44.083878, 33.727516, 39.702908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226063, 34.101326, 39.709843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146198, 0.037270, 0.988553,
		0.923185, -0.353930, 0.149874,
		0.355464, 0.934529, 0.017337,
		44.332703, 34.381683, 39.715042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657589, 33.784309, 40.220867>,  <44.083878, 33.727516, 39.702908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657589, 33.784309, 40.220867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522114, 34.157520, 40.172287>,  <44.440826, 34.381447, 40.143139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522114, 34.157520, 40.172287>,  <44.657589, 33.784309, 40.220867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522114, 34.157520, 40.172287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079587, 0.100207, 0.991778,
		0.937526, 0.345571, 0.040318,
		-0.338690, 0.933027, -0.121450,
		44.420506, 34.437428, 40.135853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781784, 34.014458, 40.826881>,  <44.657589, 33.784309, 40.220867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781784, 34.014458, 40.826881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538952, 34.301094, 40.689507>,  <44.393253, 34.473076, 40.607082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538952, 34.301094, 40.689507>,  <44.781784, 34.014458, 40.826881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538952, 34.301094, 40.689507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324961, 0.170530, 0.930226,
		0.725157, 0.676328, 0.129338,
		-0.607082, 0.716589, -0.343442,
		44.356827, 34.516071, 40.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851845, 34.568867, 41.266502>,  <44.781784, 34.014458, 40.826881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851845, 34.568867, 41.266502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488495, 34.644840, 41.117489>,  <44.270485, 34.690422, 41.028080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488495, 34.644840, 41.117489>,  <44.851845, 34.568867, 41.266502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488495, 34.644840, 41.117489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313083, 0.281631, 0.907008,
		0.277186, 0.940537, -0.196362,
		-0.908376, 0.189932, -0.372530,
		44.215981, 34.701820, 41.005730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573856, 35.161160, 41.658634>,  <44.851845, 34.568867, 41.266502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573856, 35.161160, 41.658634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262272, 34.970894, 41.495186>,  <44.075321, 34.856735, 41.397118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262272, 34.970894, 41.495186>,  <44.573856, 35.161160, 41.658634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262272, 34.970894, 41.495186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493159, 0.062205, 0.867712,
		-0.387319, 0.877427, -0.283031,
		-0.778960, -0.475661, -0.408618,
		44.028584, 34.828197, 41.372601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938580, 35.549213, 41.859859>,  <44.573856, 35.161160, 41.658634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938580, 35.549213, 41.859859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812675, 35.179825, 41.772102>,  <43.737133, 34.958191, 41.719448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812675, 35.179825, 41.772102>,  <43.938580, 35.549213, 41.859859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812675, 35.179825, 41.772102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481753, -0.043724, 0.875216,
		-0.817826, 0.381178, -0.431120,
		-0.314763, -0.923467, -0.219392,
		43.718246, 34.902786, 41.706284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202835, 35.440926, 42.122940>,  <43.938580, 35.549213, 41.859859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202835, 35.440926, 42.122940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.312645, 35.060310, 42.067482>,  <43.378529, 34.831944, 42.034206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.312645, 35.060310, 42.067482>,  <43.202835, 35.440926, 42.122940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312645, 35.060310, 42.067482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633319, -0.287409, 0.718543,
		-0.723565, -0.109450, -0.681524,
		0.274520, -0.951534, -0.138642,
		43.395000, 34.774849, 42.025890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610786, 35.120216, 42.096756>,  <43.202835, 35.440926, 42.122940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610786, 35.120216, 42.096756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.885109, 34.852745, 42.211670>,  <43.049702, 34.692261, 42.280621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.885109, 34.852745, 42.211670>,  <42.610786, 35.120216, 42.096756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885109, 34.852745, 42.211670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600606, -0.297070, 0.742308,
		-0.411024, -0.681626, -0.605347,
		0.685807, -0.668682, 0.287286,
		43.090851, 34.652142, 42.297855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248165, 34.606850, 42.341000>,  <42.610786, 35.120216, 42.096756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248165, 34.606850, 42.341000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610397, 34.518284, 42.485722>,  <42.827736, 34.465145, 42.572556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610397, 34.518284, 42.485722>,  <42.248165, 34.606850, 42.341000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610397, 34.518284, 42.485722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404541, -0.194261, 0.893649,
		-0.127584, -0.955634, -0.265491,
		0.905577, -0.221417, 0.361809,
		42.882069, 34.451859, 42.594265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.234165, 35.588211, 38.431671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848763, 35.490807, 38.387199>,  <37.617523, 35.432365, 38.360516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848763, 35.490807, 38.387199>,  <38.234165, 35.588211, 38.431671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848763, 35.490807, 38.387199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205837, -0.408407, -0.889289,
		0.171142, -0.879720, 0.443625,
		-0.963505, -0.243509, -0.111183,
		37.559711, 35.417755, 38.353844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206345, 34.918636, 38.206024>,  <38.234165, 35.588211, 38.431671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206345, 34.918636, 38.206024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872925, 35.100086, 38.079906>,  <37.672871, 35.208958, 38.004234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872925, 35.100086, 38.079906>,  <38.206345, 34.918636, 38.206024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872925, 35.100086, 38.079906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186771, -0.305721, -0.933623,
		-0.519907, -0.837113, 0.170111,
		-0.833554, 0.453625, -0.315295,
		37.622860, 35.236176, 37.985317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043091, 34.458641, 37.756516>,  <38.206345, 34.918636, 38.206024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043091, 34.458641, 37.756516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773865, 34.741768, 37.670746>,  <37.612328, 34.911644, 37.619282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773865, 34.741768, 37.670746>,  <38.043091, 34.458641, 37.756516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773865, 34.741768, 37.670746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055454, -0.240814, -0.968986,
		-0.737500, -0.664083, 0.122833,
		-0.673067, 0.707815, -0.214426,
		37.571945, 34.954113, 37.606419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496162, 34.110069, 37.431622>,  <38.043091, 34.458641, 37.756516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496162, 34.110069, 37.431622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482994, 34.492893, 37.316418>,  <37.475094, 34.722588, 37.247295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482994, 34.492893, 37.316418>,  <37.496162, 34.110069, 37.431622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482994, 34.492893, 37.316418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018885, -0.287516, -0.957589,
		-0.999279, -0.036967, -0.008608,
		-0.032925, 0.957062, -0.288007,
		37.473118, 34.780010, 37.230015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032967, 34.008480, 36.969967>,  <37.496162, 34.110069, 37.431622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032967, 34.008480, 36.969967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247612, 34.339970, 36.906395>,  <37.376400, 34.538864, 36.868252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247612, 34.339970, 36.906395>,  <37.032967, 34.008480, 36.969967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247612, 34.339970, 36.906395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109927, -0.255391, -0.960568,
		-0.836639, 0.497980, -0.228145,
		0.536610, 0.828729, -0.158929,
		37.408596, 34.588589, 36.858715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724167, 34.394344, 36.472279>,  <37.032967, 34.008480, 36.969967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724167, 34.394344, 36.472279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106884, 34.508156, 36.448299>,  <37.336514, 34.576443, 36.433910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106884, 34.508156, 36.448299>,  <36.724167, 34.394344, 36.472279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106884, 34.508156, 36.448299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027984, -0.295316, -0.954990,
		-0.289429, 0.912047, -0.290518,
		0.956790, 0.284532, -0.059950,
		37.393921, 34.593513, 36.430313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787121, 34.529354, 35.812195>,  <36.724167, 34.394344, 36.472279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787121, 34.529354, 35.812195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172520, 34.568222, 35.911972>,  <37.403759, 34.591545, 35.971840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172520, 34.568222, 35.911972>,  <36.787121, 34.529354, 35.812195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172520, 34.568222, 35.911972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260601, -0.127207, -0.957029,
		-0.061265, 0.987105, -0.147888,
		0.963501, 0.097172, 0.249447,
		37.461571, 34.597374, 35.986805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090996, 35.007004, 35.400192>,  <36.787121, 34.529354, 35.812195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090996, 35.007004, 35.400192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393173, 34.780380, 35.531841>,  <37.574478, 34.644405, 35.610828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393173, 34.780380, 35.531841>,  <37.090996, 35.007004, 35.400192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393173, 34.780380, 35.531841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390457, -0.014104, -0.920513,
		0.526168, 0.823900, 0.210562,
		0.755441, -0.566560, 0.329118,
		37.619804, 34.610413, 35.630577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693672, 35.283653, 35.168201>,  <37.090996, 35.007004, 35.400192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693672, 35.283653, 35.168201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755337, 34.892071, 35.221687>,  <37.792336, 34.657120, 35.253780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755337, 34.892071, 35.221687>,  <37.693672, 35.283653, 35.168201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755337, 34.892071, 35.221687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282683, -0.085974, -0.955353,
		0.946744, 0.185079, 0.263480,
		0.154163, -0.978956, 0.133714,
		37.801586, 34.598385, 35.261803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281155, 35.176350, 34.794609>,  <37.693672, 35.283653, 35.168201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281155, 35.176350, 34.794609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186565, 34.794392, 34.866444>,  <38.129810, 34.565216, 34.909546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186565, 34.794392, 34.866444>,  <38.281155, 35.176350, 34.794609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186565, 34.794392, 34.866444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392358, -0.262937, -0.881430,
		0.888895, -0.137974, 0.436839,
		-0.236475, -0.954897, 0.179588,
		38.115623, 34.507923, 34.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889732, 34.711884, 34.613049>,  <38.281155, 35.176350, 34.794609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889732, 34.711884, 34.613049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554028, 34.496292, 34.584335>,  <38.352604, 34.366940, 34.567108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554028, 34.496292, 34.584335>,  <38.889732, 34.711884, 34.613049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554028, 34.496292, 34.584335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337858, -0.413487, -0.845506,
		0.426026, -0.733849, 0.529119,
		-0.839258, -0.538975, -0.071781,
		38.302250, 34.334599, 34.562801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094746, 34.038342, 34.439144>,  <38.889732, 34.711884, 34.613049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094746, 34.038342, 34.439144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711250, 34.036255, 34.325455>,  <38.481152, 34.035004, 34.257240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711250, 34.036255, 34.325455>,  <39.094746, 34.038342, 34.439144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711250, 34.036255, 34.325455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256613, -0.446089, -0.857411,
		-0.122321, -0.894973, 0.429022,
		-0.958742, -0.005214, -0.284227,
		38.423626, 34.034691, 34.240185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829571, 33.316868, 34.218502>,  <39.094746, 34.038342, 34.439144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829571, 33.316868, 34.218502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641525, 33.613884, 34.027660>,  <38.528698, 33.792095, 33.913155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641525, 33.613884, 34.027660>,  <38.829571, 33.316868, 34.218502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641525, 33.613884, 34.027660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235119, -0.415665, -0.878602,
		-0.850711, -0.525221, 0.020825,
		-0.470116, 0.742540, -0.477100,
		38.500492, 33.836647, 33.884529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439812, 32.876377, 34.112034>,  <38.829571, 33.316868, 34.218502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439812, 32.876377, 34.112034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186268, 32.612282, 34.273182>,  <39.034142, 32.453823, 34.369869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186268, 32.612282, 34.273182>,  <39.439812, 32.876377, 34.112034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186268, 32.612282, 34.273182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489996, 0.745806, 0.451307,
		-0.598433, 0.088662, -0.796252,
		-0.633863, -0.660237, 0.402870,
		38.996109, 32.414211, 34.394043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058788, 32.564598, 34.164776>,  <39.439812, 32.876377, 34.112034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058788, 32.564598, 34.164776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130989, 32.176987, 34.232193>,  <40.174309, 31.944420, 34.272644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130989, 32.176987, 34.232193>,  <40.058788, 32.564598, 34.164776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130989, 32.176987, 34.232193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706083, -0.008363, 0.708079,
		-0.684738, -0.246818, -0.685723,
		0.180501, -0.969026, 0.168547,
		40.185139, 31.886278, 34.282757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400490, 32.113159, 34.258625>,  <40.058788, 32.564598, 34.164776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400490, 32.113159, 34.258625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675385, 31.880903, 34.433235>,  <39.840321, 31.741549, 34.538002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675385, 31.880903, 34.433235>,  <39.400490, 32.113159, 34.258625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675385, 31.880903, 34.433235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616549, -0.148453, 0.773194,
		-0.384146, -0.800510, -0.460017,
		0.687240, -0.580642, 0.436526,
		39.881557, 31.706711, 34.564194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982212, 31.432993, 34.624634>,  <39.400490, 32.113159, 34.258625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982212, 31.432993, 34.624634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345818, 31.473194, 34.786423>,  <39.563980, 31.497314, 34.883495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345818, 31.473194, 34.786423>,  <38.982212, 31.432993, 34.624634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345818, 31.473194, 34.786423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393062, -0.115940, 0.912173,
		0.138574, -0.988158, -0.065886,
		0.909010, 0.100506, 0.404473,
		39.618519, 31.503345, 34.907764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064095, 30.887386, 35.050240>,  <38.982212, 31.432993, 34.624634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064095, 30.887386, 35.050240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324749, 31.146872, 35.207485>,  <39.481144, 31.302563, 35.301830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324749, 31.146872, 35.207485>,  <39.064095, 30.887386, 35.050240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324749, 31.146872, 35.207485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430909, -0.109914, 0.895677,
		0.624246, -0.753054, 0.207912,
		0.651640, 0.648714, 0.393110,
		39.520241, 31.341486, 35.325417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332146, 30.573906, 35.597214>,  <39.064095, 30.887386, 35.050240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332146, 30.573906, 35.597214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373360, 30.966253, 35.663277>,  <39.398090, 31.201662, 35.702915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373360, 30.966253, 35.663277>,  <39.332146, 30.573906, 35.597214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373360, 30.966253, 35.663277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272075, -0.131918, 0.953191,
		0.956744, -0.143151, 0.253277,
		0.103038, 0.980870, 0.165160,
		39.404270, 31.260513, 35.712826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527306, 30.655340, 36.303051>,  <39.332146, 30.573906, 35.597214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527306, 30.655340, 36.303051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417358, 31.030951, 36.220421>,  <39.351391, 31.256317, 36.170841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417358, 31.030951, 36.220421>,  <39.527306, 30.655340, 36.303051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417358, 31.030951, 36.220421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360965, 0.098356, 0.927378,
		0.891152, 0.329475, 0.311921,
		-0.274869, 0.939027, -0.206579,
		39.334896, 31.312658, 36.158447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836250, 31.036789, 36.845028>,  <39.527306, 30.655340, 36.303051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836250, 31.036789, 36.845028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544548, 31.259806, 36.686367>,  <39.369526, 31.393616, 36.591171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544548, 31.259806, 36.686367>,  <39.836250, 31.036789, 36.845028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544548, 31.259806, 36.686367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344677, 0.201442, 0.916853,
		0.591084, 0.805339, 0.045268,
		-0.729258, 0.557540, -0.396651,
		39.325771, 31.427067, 36.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823746, 31.555981, 37.314114>,  <39.836250, 31.036789, 36.845028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823746, 31.555981, 37.314114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475197, 31.576967, 37.118992>,  <39.266068, 31.589560, 37.001919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475197, 31.576967, 37.118992>,  <39.823746, 31.555981, 37.314114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475197, 31.576967, 37.118992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484505, 0.064483, 0.872409,
		0.077226, 0.996539, -0.030769,
		-0.871373, 0.052464, -0.487808,
		39.213783, 31.592707, 36.972649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444019, 32.169327, 37.608074>,  <39.823746, 31.555981, 37.314114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444019, 32.169327, 37.608074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161228, 31.937456, 37.446011>,  <38.991554, 31.798334, 37.348770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161228, 31.937456, 37.446011>,  <39.444019, 32.169327, 37.608074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161228, 31.937456, 37.446011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494030, -0.005160, 0.869430,
		-0.506077, 0.814832, -0.282728,
		-0.706980, -0.579674, -0.405162,
		38.949135, 31.763554, 37.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831718, 32.544842, 37.720520>,  <39.444019, 32.169327, 37.608074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831718, 32.544842, 37.720520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714012, 32.173458, 37.629852>,  <38.643391, 31.950628, 37.575451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714012, 32.173458, 37.629852>,  <38.831718, 32.544842, 37.720520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714012, 32.173458, 37.629852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625189, 0.007612, 0.780436,
		-0.722874, 0.371366, -0.582700,
		-0.294263, -0.928455, -0.226672,
		38.625732, 31.894922, 37.561852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164738, 32.590691, 37.790371>,  <38.831718, 32.544842, 37.720520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164738, 32.590691, 37.790371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239262, 32.198795, 37.819763>,  <38.283978, 31.963657, 37.837399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239262, 32.198795, 37.819763>,  <38.164738, 32.590691, 37.790371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239262, 32.198795, 37.819763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674876, -0.073269, 0.734284,
		-0.714023, -0.186397, -0.674854,
		0.186314, -0.979739, 0.073479,
		38.295155, 31.904873, 37.841808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462780, 32.303406, 37.954746>,  <38.164738, 32.590691, 37.790371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462780, 32.303406, 37.954746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712311, 32.002331, 38.038929>,  <37.862030, 31.821686, 38.089439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712311, 32.002331, 38.038929>,  <37.462780, 32.303406, 37.954746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712311, 32.002331, 38.038929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495069, -0.172197, 0.851619,
		-0.604766, -0.635456, -0.480055,
		0.623831, -0.752691, 0.210456,
		37.899460, 31.776524, 38.102066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041409, 31.683046, 37.931412>,  <37.462780, 32.303406, 37.954746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041409, 31.683046, 37.931412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362930, 31.615641, 38.159622>,  <37.555843, 31.575197, 38.296547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362930, 31.615641, 38.159622>,  <37.041409, 31.683046, 37.931412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362930, 31.615641, 38.159622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590506, -0.109757, 0.799535,
		-0.072107, -0.979571, -0.187728,
		0.803805, -0.168506, 0.570528,
		37.604073, 31.565086, 38.330780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887859, 31.078306, 38.438084>,  <37.041409, 31.683046, 37.931412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887859, 31.078306, 38.438084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195415, 31.288393, 38.583939>,  <37.379948, 31.414444, 38.671452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195415, 31.288393, 38.583939>,  <36.887859, 31.078306, 38.438084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195415, 31.288393, 38.583939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427960, -0.000954, 0.903797,
		0.475036, -0.850969, 0.224038,
		0.768889, 0.525215, 0.364634,
		37.426083, 31.445957, 38.693329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770348, 30.273073, 38.483921>,  <36.887859, 31.078306, 38.438084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770348, 30.273073, 38.483921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441799, 30.060230, 38.401737>,  <36.244671, 29.932524, 38.352428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441799, 30.060230, 38.401737>,  <36.770348, 30.273073, 38.483921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441799, 30.060230, 38.401737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281551, -0.064949, -0.957346,
		0.496068, -0.844181, 0.203163,
		-0.821368, -0.532109, -0.205460,
		36.195389, 29.900599, 38.340099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005402, 29.722332, 38.114975>,  <36.770348, 30.273073, 38.483921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005402, 29.722332, 38.114975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617504, 29.704916, 38.018890>,  <36.384766, 29.694466, 37.961239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617504, 29.704916, 38.018890>,  <37.005402, 29.722332, 38.114975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617504, 29.704916, 38.018890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244045, -0.197930, -0.949350,
		-0.006207, -0.979248, 0.202567,
		-0.969744, -0.043543, -0.240210,
		36.326580, 29.691853, 37.946827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983101, 29.096243, 37.649563>,  <37.005402, 29.722332, 38.114975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983101, 29.096243, 37.649563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670044, 29.337383, 37.587536>,  <36.482212, 29.482067, 37.550320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670044, 29.337383, 37.587536>,  <36.983101, 29.096243, 37.649563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670044, 29.337383, 37.587536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186847, -0.010106, -0.982337,
		-0.593771, -0.797789, -0.104732,
		-0.782639, 0.602852, -0.155065,
		36.435253, 29.518238, 37.541016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609947, 28.824495, 37.090969>,  <36.983101, 29.096243, 37.649563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609947, 28.824495, 37.090969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494167, 29.207129, 37.104633>,  <36.424698, 29.436708, 37.112831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494167, 29.207129, 37.104633>,  <36.609947, 28.824495, 37.090969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494167, 29.207129, 37.104633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038927, 0.047422, -0.998116,
		-0.956401, -0.287576, -0.050964,
		-0.289451, 0.956583, 0.034160,
		36.407333, 29.494102, 37.114880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283932, 28.928576, 36.479347>,  <36.609947, 28.824495, 37.090969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283932, 28.928576, 36.479347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320301, 29.311716, 36.588345>,  <36.342121, 29.541601, 36.653744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320301, 29.311716, 36.588345>,  <36.283932, 28.928576, 36.479347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320301, 29.311716, 36.588345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061780, 0.267673, -0.961527,
		-0.993940, 0.104257, -0.034839,
		0.090920, 0.957853, 0.272492,
		36.347576, 29.599072, 36.670094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768478, 29.322920, 36.222794>,  <36.283932, 28.928576, 36.479347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768478, 29.322920, 36.222794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064430, 29.587267, 36.273113>,  <36.242001, 29.745876, 36.303307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064430, 29.587267, 36.273113>,  <35.768478, 29.322920, 36.222794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064430, 29.587267, 36.273113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045547, 0.235780, -0.970738,
		-0.671193, 0.712502, 0.204551,
		0.739882, 0.660870, 0.125802,
		36.286396, 29.785528, 36.310852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566776, 29.867781, 35.824871>,  <35.768478, 29.322920, 36.222794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566776, 29.867781, 35.824871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955151, 29.943497, 35.883446>,  <36.188175, 29.988926, 35.918591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955151, 29.943497, 35.883446>,  <35.566776, 29.867781, 35.824871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955151, 29.943497, 35.883446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078442, 0.326388, -0.941976,
		-0.226102, 0.926089, 0.302055,
		0.970940, 0.189289, 0.146441,
		36.246433, 30.000284, 35.927380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642937, 30.519182, 35.600533>,  <35.566776, 29.867781, 35.824871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642937, 30.519182, 35.600533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995640, 30.334560, 35.561604>,  <36.207260, 30.223787, 35.538246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995640, 30.334560, 35.561604>,  <35.642937, 30.519182, 35.600533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995640, 30.334560, 35.561604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146363, 0.463843, -0.873743,
		0.448423, 0.756184, 0.476552,
		0.881756, -0.461557, -0.097321,
		36.260166, 30.196093, 35.532406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998764, 31.004589, 35.298492>,  <35.642937, 30.519182, 35.600533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998764, 31.004589, 35.298492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237503, 30.687819, 35.246922>,  <36.380749, 30.497757, 35.215981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237503, 30.687819, 35.246922>,  <35.998764, 31.004589, 35.298492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237503, 30.687819, 35.246922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320947, 0.382912, -0.866240,
		0.735366, 0.475637, 0.482708,
		0.596850, -0.791927, -0.128926,
		36.416557, 30.450241, 35.208244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765305, 31.231277, 35.195957>,  <35.998764, 31.004589, 35.298492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765305, 31.231277, 35.195957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684406, 30.882643, 35.017323>,  <36.635868, 30.673462, 34.910141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684406, 30.882643, 35.017323>,  <36.765305, 31.231277, 35.195957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684406, 30.882643, 35.017323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352647, 0.360603, -0.863485,
		0.913639, -0.332122, 0.234431,
		-0.202245, -0.871585, -0.446582,
		36.623734, 30.621166, 34.883347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214291, 31.275806, 34.553963>,  <36.765305, 31.231277, 35.195957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214291, 31.275806, 34.553963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952290, 30.981453, 34.485332>,  <36.795090, 30.804840, 34.444153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952290, 30.981453, 34.485332>,  <37.214291, 31.275806, 34.553963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952290, 30.981453, 34.485332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111206, 0.318474, -0.941386,
		0.747395, -0.597534, -0.290438,
		-0.655007, -0.735886, -0.171576,
		36.755787, 30.760687, 34.433861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468285, 30.878719, 33.936413>,  <37.214291, 31.275806, 34.553963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468285, 30.878719, 33.936413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073814, 30.844923, 33.993431>,  <36.837132, 30.824644, 34.027641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073814, 30.844923, 33.993431>,  <37.468285, 30.878719, 33.936413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073814, 30.844923, 33.993431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155387, 0.172698, -0.972641,
		0.057561, -0.981344, -0.183439,
		-0.986175, -0.084491, 0.142548,
		36.777962, 30.819576, 34.036194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.511417, 30.017923, 42.214153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189358, 30.149508, 42.016766>,  <34.996120, 30.228458, 41.898335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189358, 30.149508, 42.016766>,  <35.511417, 30.017923, 42.214153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189358, 30.149508, 42.016766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287209, -0.511708, -0.809732,
		-0.518905, -0.793679, 0.317510,
		-0.805139, 0.328982, -0.493479,
		34.947811, 30.248196, 41.868725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246811, 29.432959, 41.850121>,  <35.511417, 30.017923, 42.214153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246811, 29.432959, 41.850121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105068, 29.749502, 41.650848>,  <35.020023, 29.939428, 41.531284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105068, 29.749502, 41.650848>,  <35.246811, 29.432959, 41.850121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105068, 29.749502, 41.650848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234452, -0.440546, -0.866575,
		-0.905243, -0.423873, -0.029427,
		-0.354354, 0.791360, -0.498179,
		34.998760, 29.986910, 41.501396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890930, 29.117292, 41.264828>,  <35.246811, 29.432959, 41.850121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890930, 29.117292, 41.264828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.921349, 29.499903, 41.152203>,  <34.939602, 29.729469, 41.084629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.921349, 29.499903, 41.152203>,  <34.890930, 29.117292, 41.264828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921349, 29.499903, 41.152203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124790, -0.289289, -0.949073,
		-0.989265, 0.037039, -0.141364,
		0.076048, 0.956525, -0.281561,
		34.944164, 29.786860, 41.067734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558083, 29.098228, 40.601009>,  <34.890930, 29.117292, 41.264828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558083, 29.098228, 40.601009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766544, 29.439613, 40.600712>,  <34.891621, 29.644445, 40.600533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766544, 29.439613, 40.600712>,  <34.558083, 29.098228, 40.601009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766544, 29.439613, 40.600712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147396, -0.090868, -0.984895,
		-0.840640, 0.513170, -0.173153,
		0.521152, 0.853463, -0.000748,
		34.922890, 29.695652, 40.600487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328495, 29.509094, 40.036106>,  <34.558083, 29.098228, 40.601009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328495, 29.509094, 40.036106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697983, 29.638733, 40.117786>,  <34.919678, 29.716516, 40.166794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697983, 29.638733, 40.117786>,  <34.328495, 29.509094, 40.036106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697983, 29.638733, 40.117786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225229, -0.028319, -0.973894,
		-0.309855, 0.945599, -0.099155,
		0.923722, 0.324099, 0.204202,
		34.975098, 29.735962, 40.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473415, 30.006163, 39.505074>,  <34.328495, 29.509094, 40.036106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473415, 30.006163, 39.505074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828281, 29.905735, 39.659943>,  <35.041203, 29.845478, 39.752865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828281, 29.905735, 39.659943>,  <34.473415, 30.006163, 39.505074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828281, 29.905735, 39.659943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371631, -0.108636, -0.922002,
		0.273546, 0.961854, -0.003074,
		0.887166, -0.251067, 0.387172,
		35.094433, 29.830416, 39.776093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918907, 30.531639, 39.212997>,  <34.473415, 30.006163, 39.505074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918907, 30.531639, 39.212997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154873, 30.231491, 39.332291>,  <35.296452, 30.051401, 39.403866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154873, 30.231491, 39.332291>,  <34.918907, 30.531639, 39.212997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154873, 30.231491, 39.332291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449245, -0.001897, -0.893407,
		0.670952, 0.661014, 0.335982,
		0.589917, -0.750371, 0.298230,
		35.331848, 30.006380, 39.421761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513672, 30.682545, 38.847420>,  <34.918907, 30.531639, 39.212997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513672, 30.682545, 38.847420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572678, 30.306751, 38.971107>,  <35.608082, 30.081276, 39.045319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572678, 30.306751, 38.971107>,  <35.513672, 30.682545, 38.847420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572678, 30.306751, 38.971107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579507, -0.171254, -0.796770,
		0.801506, 0.296726, 0.519175,
		0.147512, -0.939481, 0.309216,
		35.616932, 30.024906, 39.063873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262661, 30.574036, 38.921360>,  <35.513672, 30.682545, 38.847420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262661, 30.574036, 38.921360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.069717, 30.230556, 38.852119>,  <35.953953, 30.024469, 38.810574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.069717, 30.230556, 38.852119>,  <36.262661, 30.574036, 38.921360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069717, 30.230556, 38.852119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440396, -0.066899, -0.895308,
		0.757219, -0.508095, 0.410437,
		-0.482359, -0.858699, -0.173106,
		35.925011, 29.972946, 38.800186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797909, 30.935019, 39.143280>,  <36.262661, 30.574036, 38.921360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797909, 30.935019, 39.143280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064095, 31.233383, 39.132183>,  <37.223808, 31.412401, 39.125526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064095, 31.233383, 39.132183>,  <36.797909, 30.935019, 39.143280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064095, 31.233383, 39.132183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337913, 0.334195, 0.879846,
		0.665557, -0.576135, 0.474449,
		0.665469, 0.745911, -0.027742,
		37.263737, 31.457157, 39.123859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360806, 30.937513, 39.711765>,  <36.797909, 30.935019, 39.143280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360806, 30.937513, 39.711765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302753, 31.307941, 39.572433>,  <37.267921, 31.530197, 39.488834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302753, 31.307941, 39.572433>,  <37.360806, 30.937513, 39.711765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302753, 31.307941, 39.572433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178144, 0.321846, 0.929882,
		0.973243, 0.197006, 0.118264,
		-0.145129, 0.926069, -0.348330,
		37.259216, 31.585762, 39.467934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736183, 31.370163, 40.116322>,  <37.360806, 30.937513, 39.711765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736183, 31.370163, 40.116322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474239, 31.618418, 39.943825>,  <37.317074, 31.767370, 39.840328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474239, 31.618418, 39.943825>,  <37.736183, 31.370163, 40.116322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474239, 31.618418, 39.943825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021889, 0.585949, 0.810052,
		0.755433, 0.521031, -0.397300,
		-0.654860, 0.620636, -0.431240,
		37.277782, 31.804609, 39.814453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924110, 32.002861, 40.327206>,  <37.736183, 31.370163, 40.116322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924110, 32.002861, 40.327206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560349, 32.077663, 40.178604>,  <37.342091, 32.122543, 40.089443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560349, 32.077663, 40.178604>,  <37.924110, 32.002861, 40.327206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560349, 32.077663, 40.178604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190798, 0.606117, 0.772152,
		0.369568, 0.773080, -0.515525,
		-0.909404, 0.187001, -0.371504,
		37.287529, 32.133762, 40.067154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847458, 32.685249, 40.423748>,  <37.924110, 32.002861, 40.327206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847458, 32.685249, 40.423748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479832, 32.532978, 40.382957>,  <37.259254, 32.441616, 40.358482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479832, 32.532978, 40.382957>,  <37.847458, 32.685249, 40.423748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479832, 32.532978, 40.382957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239685, 0.334536, 0.911393,
		-0.312833, 0.862073, -0.398704,
		-0.919068, -0.380677, -0.101973,
		37.204113, 32.418774, 40.352367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354053, 33.198715, 40.514496>,  <37.847458, 32.685249, 40.423748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354053, 33.198715, 40.514496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140461, 32.867699, 40.583832>,  <37.012306, 32.669090, 40.625435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140461, 32.867699, 40.583832>,  <37.354053, 33.198715, 40.514496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140461, 32.867699, 40.583832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419864, 0.437487, 0.795185,
		-0.733881, 0.351833, -0.581062,
		-0.533979, -0.827538, 0.173341,
		36.980267, 32.619438, 40.635834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755341, 33.460258, 40.756496>,  <37.354053, 33.198715, 40.514496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755341, 33.460258, 40.756496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751888, 33.076305, 40.868610>,  <36.749817, 32.845936, 40.935879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751888, 33.076305, 40.868610>,  <36.755341, 33.460258, 40.756496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751888, 33.076305, 40.868610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360355, 0.264445, 0.894546,
		-0.932775, -0.093284, -0.348178,
		-0.008627, -0.959879, 0.280283,
		36.749302, 32.788342, 40.952694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021931, 33.421383, 40.988506>,  <36.755341, 33.460258, 40.756496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021931, 33.421383, 40.988506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254440, 33.157730, 41.179363>,  <36.393948, 32.999538, 41.293877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254440, 33.157730, 41.179363>,  <36.021931, 33.421383, 40.988506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254440, 33.157730, 41.179363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437752, 0.240984, 0.866198,
		-0.685925, -0.712367, -0.148460,
		0.581275, -0.659135, 0.477138,
		36.428822, 32.959991, 41.322506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603489, 33.187008, 41.388313>,  <36.021931, 33.421383, 40.988506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603489, 33.187008, 41.388313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.950787, 33.120274, 41.575211>,  <36.159164, 33.080231, 41.687347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.950787, 33.120274, 41.575211>,  <35.603489, 33.187008, 41.388313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950787, 33.120274, 41.575211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368507, 0.413710, 0.832494,
		-0.332195, -0.894991, 0.297720,
		0.868245, -0.166838, 0.467243,
		36.211262, 33.070221, 41.715385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391785, 33.058723, 42.033894>,  <35.603489, 33.187008, 41.388313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391785, 33.058723, 42.033894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.782364, 33.085884, 42.115807>,  <36.016712, 33.102180, 42.164955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.782364, 33.085884, 42.115807>,  <35.391785, 33.058723, 42.033894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782364, 33.085884, 42.115807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209419, 0.526505, 0.823976,
		-0.051869, -0.847456, 0.528325,
		0.976449, 0.067902, 0.204783,
		36.075298, 33.106255, 42.177242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516037, 32.829670, 42.702812>,  <35.391785, 33.058723, 42.033894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516037, 32.829670, 42.702812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845219, 33.043797, 42.626713>,  <36.042728, 33.172272, 42.581055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845219, 33.043797, 42.626713>,  <35.516037, 32.829670, 42.702812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845219, 33.043797, 42.626713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094775, 0.459547, 0.883082,
		0.560154, -0.708700, 0.428918,
		0.822949, 0.535313, -0.190250,
		36.092102, 33.204391, 42.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920422, 32.750019, 43.252605>,  <35.516037, 32.829670, 42.702812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920422, 32.750019, 43.252605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 33.089283, 43.094463>,  <36.146080, 33.292843, 42.999577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 33.089283, 43.094463>,  <35.920422, 32.750019, 43.252605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061459, 33.089283, 43.094463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095201, 0.452808, 0.886511,
		0.930923, -0.274935, 0.240400,
		0.352588, 0.848160, -0.395356,
		36.167236, 33.343731, 42.975857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567135, 32.975533, 43.653683>,  <35.920422, 32.750019, 43.252605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567135, 32.975533, 43.653683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438160, 33.311829, 43.479698>,  <36.360775, 33.513607, 43.375309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438160, 33.311829, 43.479698>,  <36.567135, 32.975533, 43.653683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438160, 33.311829, 43.479698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115227, 0.421222, 0.899608,
		0.939553, 0.340183, -0.038941,
		-0.322434, 0.840742, -0.434959,
		36.341431, 33.564053, 43.349209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909512, 33.398506, 44.065552>,  <36.567135, 32.975533, 43.653683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909512, 33.398506, 44.065552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622917, 33.591007, 43.863544>,  <36.450962, 33.706509, 43.742340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622917, 33.591007, 43.863544>,  <36.909512, 33.398506, 44.065552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622917, 33.591007, 43.863544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155882, 0.595186, 0.788324,
		0.679961, 0.643548, -0.351425,
		-0.716487, 0.481248, -0.505021,
		36.407970, 33.735382, 43.712040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.439342, 35.693428, 42.411015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.602825, 35.339714, 42.501347>,  <30.700914, 35.127487, 42.555546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.602825, 35.339714, 42.501347>,  <30.439342, 35.693428, 42.411015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602825, 35.339714, 42.501347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187016, -0.161045, -0.969067,
		0.893300, 0.438298, 0.099555,
		0.408707, -0.884285, 0.225830,
		30.725437, 35.074429, 42.569096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019344, 35.737026, 42.106335>,  <30.439342, 35.693428, 42.411015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019344, 35.737026, 42.106335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.007278, 35.340363, 42.156456>,  <31.000038, 35.102364, 42.186527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.007278, 35.340363, 42.156456>,  <31.019344, 35.737026, 42.106335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007278, 35.340363, 42.156456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476063, -0.124480, -0.870556,
		0.878894, 0.033392, 0.475848,
		-0.030164, -0.991660, 0.125301,
		30.998230, 35.042866, 42.194046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653906, 35.516987, 41.998810>,  <31.019344, 35.737026, 42.106335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653906, 35.516987, 41.998810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438028, 35.182907, 41.956520>,  <31.308502, 34.982460, 41.931145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438028, 35.182907, 41.956520>,  <31.653906, 35.516987, 41.998810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438028, 35.182907, 41.956520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479256, -0.201555, -0.854219,
		0.692132, -0.511684, 0.509051,
		-0.539691, -0.835198, -0.105724,
		31.276121, 34.932346, 41.924801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040112, 35.081406, 41.617790>,  <31.653906, 35.516987, 41.998810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040112, 35.081406, 41.617790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.684742, 34.909836, 41.552387>,  <31.471521, 34.806896, 41.513145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.684742, 34.909836, 41.552387>,  <32.040112, 35.081406, 41.617790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684742, 34.909836, 41.552387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382118, -0.493689, -0.781189,
		0.254350, -0.756503, 0.602503,
		-0.888421, -0.428923, -0.163503,
		31.418215, 34.781158, 41.503338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201439, 34.401596, 41.449158>,  <32.040112, 35.081406, 41.617790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201439, 34.401596, 41.449158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.832581, 34.466480, 41.308685>,  <31.611265, 34.505409, 41.224403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.832581, 34.466480, 41.308685>,  <32.201439, 34.401596, 41.449158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832581, 34.466480, 41.308685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310629, -0.230540, -0.922150,
		-0.230540, -0.959448, 0.162207,
		0.922150, -0.162207, 0.351181,
		31.555935, 34.515141, 41.203331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070518, 33.865047, 41.074013>,  <32.201439, 34.401596, 41.449158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070518, 33.865047, 41.074013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.816921, 34.134151, 40.921459>,  <31.664762, 34.295612, 40.829929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.816921, 34.134151, 40.921459>,  <32.070518, 33.865047, 41.074013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816921, 34.134151, 40.921459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316104, -0.224643, -0.921745,
		-0.705785, -0.704935, -0.070240,
		-0.633992, 0.672757, -0.381382,
		31.626724, 34.335979, 40.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925720, 33.546741, 40.507725>,  <32.070518, 33.865047, 41.074013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925720, 33.546741, 40.507725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796167, 33.913914, 40.416069>,  <31.718435, 34.134216, 40.361076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796167, 33.913914, 40.416069>,  <31.925720, 33.546741, 40.507725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796167, 33.913914, 40.416069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481105, -0.048743, -0.875307,
		-0.814641, -0.393732, -0.425835,
		-0.323880, 0.917932, -0.229135,
		31.699003, 34.189293, 40.347328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642670, 33.512894, 39.831791>,  <31.925720, 33.546741, 40.507725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642670, 33.512894, 39.831791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736919, 33.894222, 39.907333>,  <31.793470, 34.123020, 39.952660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736919, 33.894222, 39.907333>,  <31.642670, 33.512894, 39.831791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736919, 33.894222, 39.907333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387675, 0.085994, -0.917776,
		-0.891173, 0.289466, -0.349315,
		0.235626, 0.953318, 0.188854,
		31.807608, 34.180218, 39.963989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378710, 33.830315, 39.291695>,  <31.642670, 33.512894, 39.831791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378710, 33.830315, 39.291695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.655457, 34.083076, 39.431416>,  <31.821505, 34.234734, 39.515247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.655457, 34.083076, 39.431416>,  <31.378710, 33.830315, 39.291695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655457, 34.083076, 39.431416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363004, 0.113771, -0.924816,
		-0.624139, 0.766648, -0.150671,
		0.691866, 0.631908, 0.349305,
		31.863016, 34.272648, 39.536205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372730, 34.328869, 38.750202>,  <31.378710, 33.830315, 39.291695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372730, 34.328869, 38.750202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.725416, 34.404320, 38.923176>,  <31.937027, 34.449593, 39.026958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.725416, 34.404320, 38.923176>,  <31.372730, 34.328869, 38.750202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725416, 34.404320, 38.923176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407524, 0.157312, -0.899543,
		-0.237708, 0.969367, 0.061832,
		0.881714, 0.188630, 0.432434,
		31.989931, 34.460907, 39.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591782, 34.847443, 38.377098>,  <31.372730, 34.328869, 38.750202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591782, 34.847443, 38.377098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926176, 34.718723, 38.554897>,  <32.126812, 34.641491, 38.661575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926176, 34.718723, 38.554897>,  <31.591782, 34.847443, 38.377098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926176, 34.718723, 38.554897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510685, 0.159796, -0.844787,
		0.200819, 0.933227, 0.297923,
		0.835986, -0.321794, 0.444495,
		32.176971, 34.622185, 38.688248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108356, 35.392803, 38.231255>,  <31.591782, 34.847443, 38.377098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108356, 35.392803, 38.231255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294605, 35.052975, 38.330387>,  <32.406357, 34.849079, 38.389866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.294605, 35.052975, 38.330387>,  <32.108356, 35.392803, 38.231255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294605, 35.052975, 38.330387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506619, 0.026272, -0.861770,
		0.725625, 0.526818, 0.442642,
		0.465625, -0.849572, 0.247833,
		32.434292, 34.798103, 38.404736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649048, 35.447567, 37.887695>,  <32.108356, 35.392803, 38.231255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649048, 35.447567, 37.887695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723042, 35.062279, 37.965656>,  <32.767437, 34.831104, 38.012432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723042, 35.062279, 37.965656>,  <32.649048, 35.447567, 37.887695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723042, 35.062279, 37.965656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452080, -0.092690, -0.887148,
		0.872586, 0.252217, 0.418307,
		0.184981, -0.963221, 0.194902,
		32.778534, 34.773312, 38.024128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352936, 35.358772, 37.781990>,  <32.649048, 35.447567, 37.887695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352936, 35.358772, 37.781990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150890, 35.017651, 37.728954>,  <33.029663, 34.812977, 37.697132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150890, 35.017651, 37.728954>,  <33.352936, 35.358772, 37.781990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150890, 35.017651, 37.728954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299170, -0.028912, -0.953762,
		0.809540, -0.521427, 0.269738,
		-0.505115, -0.852806, -0.132590,
		32.999355, 34.761810, 37.689178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082344, 35.425663, 37.830746>,  <33.352936, 35.358772, 37.781990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082344, 35.425663, 37.830746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146469, 35.820068, 37.812538>,  <34.184944, 36.056713, 37.801613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146469, 35.820068, 37.812538>,  <34.082344, 35.425663, 37.830746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146469, 35.820068, 37.812538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161862, 0.071755, 0.984201,
		0.973705, -0.150409, 0.171101,
		0.160310, 0.986016, -0.045523,
		34.194561, 36.115871, 37.798882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571602, 35.599323, 38.343353>,  <34.082344, 35.425663, 37.830746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571602, 35.599323, 38.343353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386429, 35.948860, 38.283913>,  <34.275326, 36.158585, 38.248249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386429, 35.948860, 38.283913>,  <34.571602, 35.599323, 38.343353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386429, 35.948860, 38.283913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108080, 0.110752, 0.987954,
		0.879777, 0.473421, 0.043174,
		-0.462937, 0.873846, -0.148605,
		34.247547, 36.211014, 38.239330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920414, 36.139774, 38.689220>,  <34.571602, 35.599323, 38.343353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920414, 36.139774, 38.689220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563366, 36.312611, 38.637783>,  <34.349136, 36.416313, 38.606918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563366, 36.312611, 38.637783>,  <34.920414, 36.139774, 38.689220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563366, 36.312611, 38.637783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075231, 0.138483, 0.987503,
		0.444497, 0.891135, -0.091106,
		-0.892616, 0.432088, -0.128596,
		34.295582, 36.442238, 38.599205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979244, 36.816845, 39.102974>,  <34.920414, 36.139774, 38.689220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979244, 36.816845, 39.102974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587578, 36.759941, 39.045021>,  <34.352577, 36.725800, 39.010250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587578, 36.759941, 39.045021>,  <34.979244, 36.816845, 39.102974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587578, 36.759941, 39.045021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166518, 0.154274, 0.973895,
		-0.116192, 0.977733, -0.174749,
		-0.979169, -0.142258, -0.144884,
		34.293827, 36.717262, 39.001556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688274, 37.318012, 39.453060>,  <34.979244, 36.816845, 39.102974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688274, 37.318012, 39.453060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373291, 37.073925, 39.418304>,  <34.184303, 36.927471, 39.397453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373291, 37.073925, 39.418304>,  <34.688274, 37.318012, 39.453060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373291, 37.073925, 39.418304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106774, -0.003784, 0.994276,
		-0.607054, 0.792224, -0.062176,
		-0.787454, -0.610218, -0.086886,
		34.137054, 36.890858, 39.392239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334511, 37.544842, 39.926414>,  <34.688274, 37.318012, 39.453060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334511, 37.544842, 39.926414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136814, 37.205059, 39.852486>,  <34.018196, 37.001190, 39.808128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136814, 37.205059, 39.852486>,  <34.334511, 37.544842, 39.926414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136814, 37.205059, 39.852486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222532, -0.081899, 0.971480,
		-0.840362, 0.521271, -0.148553,
		-0.494237, -0.849453, -0.184824,
		33.988544, 36.950222, 39.797039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649014, 37.708794, 40.105610>,  <34.334511, 37.544842, 39.926414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649014, 37.708794, 40.105610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687496, 37.312550, 40.144478>,  <33.710587, 37.074802, 40.167797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687496, 37.312550, 40.144478>,  <33.649014, 37.708794, 40.105610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687496, 37.312550, 40.144478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262597, 0.068901, 0.962443,
		-0.960098, -0.118106, -0.253502,
		0.096204, -0.990608, 0.097166,
		33.716358, 37.015366, 40.173626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031414, 37.447002, 40.332134>,  <33.649014, 37.708794, 40.105610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031414, 37.447002, 40.332134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332767, 37.200050, 40.422703>,  <33.513580, 37.051880, 40.477043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332767, 37.200050, 40.422703>,  <33.031414, 37.447002, 40.332134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332767, 37.200050, 40.422703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233445, 0.070798, 0.969789,
		-0.614755, -0.783476, -0.090786,
		0.753379, -0.617376, 0.226422,
		33.558781, 37.014839, 40.490631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772968, 37.199894, 40.955002>,  <33.031414, 37.447002, 40.332134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772968, 37.199894, 40.955002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146759, 37.064159, 40.911915>,  <33.371033, 36.982719, 40.886063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146759, 37.064159, 40.911915>,  <32.772968, 37.199894, 40.955002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146759, 37.064159, 40.911915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066158, -0.131776, 0.989069,
		-0.349824, -0.931389, -0.100691,
		0.934477, -0.339338, -0.107717,
		33.427101, 36.962357, 40.879601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730808, 36.637108, 41.372292>,  <32.772968, 37.199894, 40.955002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730808, 36.637108, 41.372292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113770, 36.749886, 41.347343>,  <33.343544, 36.817551, 41.332375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113770, 36.749886, 41.347343>,  <32.730808, 36.637108, 41.372292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113770, 36.749886, 41.347343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103388, -0.133025, 0.985705,
		0.269618, -0.950164, -0.156509,
		0.957401, 0.281945, -0.062370,
		33.400990, 36.834469, 41.328632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103012, 36.167919, 41.750061>,  <32.730808, 36.637108, 41.372292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103012, 36.167919, 41.750061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333687, 36.494213, 41.732113>,  <33.472092, 36.689991, 41.721344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333687, 36.494213, 41.732113>,  <33.103012, 36.167919, 41.750061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333687, 36.494213, 41.732113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051284, 0.018670, 0.998510,
		0.815355, -0.578127, -0.031067,
		0.576685, 0.815733, -0.044872,
		33.506691, 36.738934, 41.718651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679207, 35.942757, 42.080467>,  <33.103012, 36.167919, 41.750061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679207, 35.942757, 42.080467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619701, 36.338287, 42.076626>,  <33.583996, 36.575607, 42.074322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619701, 36.338287, 42.076626>,  <33.679207, 35.942757, 42.080467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619701, 36.338287, 42.076626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119629, 0.027636, 0.992434,
		0.981609, 0.146493, -0.122404,
		-0.148768, 0.988826, -0.009603,
		33.575069, 36.634933, 42.073746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131908, 36.170574, 42.578369>,  <33.679207, 35.942757, 42.080467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131908, 36.170574, 42.578369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908432, 36.498314, 42.526955>,  <33.774345, 36.694958, 42.496105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908432, 36.498314, 42.526955>,  <34.131908, 36.170574, 42.578369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908432, 36.498314, 42.526955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004306, 0.152113, 0.988354,
		0.829362, 0.552741, -0.081457,
		-0.558695, 0.819352, -0.128537,
		33.740822, 36.744118, 42.488392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352615, 36.713589, 43.072144>,  <34.131908, 36.170574, 42.578369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352615, 36.713589, 43.072144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.979084, 36.810371, 42.966759>,  <33.754963, 36.868443, 42.903526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.979084, 36.810371, 42.966759>,  <34.352615, 36.713589, 43.072144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979084, 36.810371, 42.966759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252306, 0.076567, 0.964614,
		0.253571, 0.967260, -0.010452,
		-0.933833, 0.241961, -0.263461,
		33.698933, 36.882961, 42.887722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858177, 37.315834, 43.018475>,  <34.352615, 36.713589, 43.072144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858177, 37.315834, 43.018475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214615, 37.288467, 43.197926>,  <35.428478, 37.272049, 43.305595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214615, 37.288467, 43.197926>,  <34.858177, 37.315834, 43.018475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214615, 37.288467, 43.197926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415933, -0.272259, -0.867684,
		0.181503, 0.959789, -0.214154,
		0.891099, -0.068414, 0.448623,
		35.481945, 37.267944, 43.332512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333061, 37.746273, 42.639252>,  <34.858177, 37.315834, 43.018475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333061, 37.746273, 42.639252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535339, 37.462620, 42.835781>,  <35.656708, 37.292427, 42.953701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535339, 37.462620, 42.835781>,  <35.333061, 37.746273, 42.639252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535339, 37.462620, 42.835781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446972, -0.271754, -0.852271,
		0.737894, 0.650599, 0.179538,
		0.505696, -0.709133, 0.491326,
		35.687050, 37.249878, 42.983177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081959, 37.913517, 42.461288>,  <35.333061, 37.746273, 42.639252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081959, 37.913517, 42.461288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078499, 37.536263, 42.594208>,  <36.076424, 37.309910, 42.673958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078499, 37.536263, 42.594208>,  <36.081959, 37.913517, 42.461288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078499, 37.536263, 42.594208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487487, -0.294124, -0.822099,
		0.873087, 0.154882, 0.462309,
		-0.008648, -0.943134, 0.332300,
		36.075905, 37.253323, 42.693897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746807, 37.751873, 42.290653>,  <36.081959, 37.913517, 42.461288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746807, 37.751873, 42.290653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520668, 37.423359, 42.321320>,  <36.384987, 37.226250, 42.339718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520668, 37.423359, 42.321320>,  <36.746807, 37.751873, 42.290653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520668, 37.423359, 42.321320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383699, -0.344120, -0.856946,
		0.730178, -0.455054, 0.509672,
		-0.565345, -0.821284, 0.076665,
		36.351063, 37.176975, 42.344318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176739, 37.192905, 42.094105>,  <36.746807, 37.751873, 42.290653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176739, 37.192905, 42.094105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808666, 37.045155, 42.042206>,  <36.587822, 36.956505, 42.011066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808666, 37.045155, 42.042206>,  <37.176739, 37.192905, 42.094105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808666, 37.045155, 42.042206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302535, -0.460535, -0.834494,
		0.248486, -0.807136, 0.535523,
		-0.920178, -0.369375, -0.129750,
		36.532612, 36.934341, 42.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262787, 36.552212, 41.718735>,  <37.176739, 37.192905, 42.094105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262787, 36.552212, 41.718735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886055, 36.651569, 41.628166>,  <36.660015, 36.711185, 41.573826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886055, 36.651569, 41.628166>,  <37.262787, 36.552212, 41.718735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886055, 36.651569, 41.628166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054509, -0.551857, -0.832156,
		-0.331653, -0.796087, 0.506213,
		-0.941825, 0.248394, -0.226419,
		36.603508, 36.726089, 41.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957489, 35.924500, 41.625870>,  <37.262787, 36.552212, 41.718735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957489, 35.924500, 41.625870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734032, 36.195751, 41.434849>,  <36.599957, 36.358501, 41.320236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734032, 36.195751, 41.434849>,  <36.957489, 35.924500, 41.625870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734032, 36.195751, 41.434849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022451, -0.563197, -0.826018,
		-0.829102, -0.472173, 0.299403,
		-0.558646, 0.678131, -0.477548,
		36.566437, 36.399189, 41.291584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632492, 35.514027, 41.162556>,  <36.957489, 35.924500, 41.625870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632492, 35.514027, 41.162556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578648, 35.884541, 41.021774>,  <36.546341, 36.106850, 40.937305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578648, 35.884541, 41.021774>,  <36.632492, 35.514027, 41.162556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578648, 35.884541, 41.021774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023788, -0.358104, -0.933379,
		-0.990613, -0.117270, 0.070239,
		-0.134610, 0.926288, -0.351953,
		36.538265, 36.162426, 40.916187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040871, 35.503220, 40.625904>,  <36.632492, 35.514027, 41.162556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040871, 35.503220, 40.625904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268181, 35.826706, 40.565174>,  <36.404568, 36.020798, 40.528736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268181, 35.826706, 40.565174>,  <36.040871, 35.503220, 40.625904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268181, 35.826706, 40.565174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087211, -0.242673, -0.966180,
		-0.818206, 0.535813, -0.208433,
		0.568273, 0.808712, -0.151827,
		36.438663, 36.069321, 40.519627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659988, 35.976871, 40.128952>,  <36.040871, 35.503220, 40.625904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659988, 35.976871, 40.128952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.050144, 36.065056, 40.130207>,  <36.284237, 36.117966, 40.130962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.050144, 36.065056, 40.130207>,  <35.659988, 35.976871, 40.128952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050144, 36.065056, 40.130207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052599, -0.218840, -0.974342,
		-0.214117, 0.950530, -0.225051,
		0.975391, 0.220460, 0.003140,
		36.342762, 36.131195, 40.131149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824581, 36.422779, 39.511631>,  <35.659988, 35.976871, 40.128952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824581, 36.422779, 39.511631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.150852, 36.235035, 39.646912>,  <36.346615, 36.122391, 39.728081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.150852, 36.235035, 39.646912>,  <35.824581, 36.422779, 39.511631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150852, 36.235035, 39.646912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261436, -0.222435, -0.939241,
		0.516067, 0.854533, -0.058728,
		0.815675, -0.469358, 0.338197,
		36.395554, 36.094227, 39.748371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368774, 36.484310, 38.849579>,  <35.824581, 36.422779, 39.511631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368774, 36.484310, 38.849579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563267, 36.234577, 39.094135>,  <36.679962, 36.084740, 39.240868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563267, 36.234577, 39.094135>,  <36.368774, 36.484310, 38.849579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563267, 36.234577, 39.094135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522455, -0.353130, -0.776106,
		0.700445, 0.696787, 0.154483,
		0.486227, -0.624330, 0.611388,
		36.709133, 36.047279, 39.277554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073536, 36.618988, 38.808441>,  <36.368774, 36.484310, 38.849579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073536, 36.618988, 38.808441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016590, 36.242161, 38.929932>,  <36.982422, 36.016064, 39.002827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016590, 36.242161, 38.929932>,  <37.073536, 36.618988, 38.808441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016590, 36.242161, 38.929932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583931, -0.327695, -0.742725,
		0.799223, 0.071619, 0.596752,
		-0.142360, -0.942065, 0.303722,
		36.973881, 35.959541, 39.021049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733994, 36.375107, 38.513466>,  <37.073536, 36.618988, 38.808441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733994, 36.375107, 38.513466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.506569, 36.062401, 38.615898>,  <37.370113, 35.874775, 38.677357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.506569, 36.062401, 38.615898>,  <37.733994, 36.375107, 38.513466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506569, 36.062401, 38.615898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376249, -0.523945, -0.764145,
		0.731555, -0.338116, 0.592035,
		-0.568563, -0.781767, 0.256079,
		37.335999, 35.827869, 38.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.569143, 34.913330, 26.549414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.361366, 34.579838, 26.624331>,  <29.236700, 34.379742, 26.669281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.361366, 34.579838, 26.624331>,  <29.569143, 34.913330, 26.549414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361366, 34.579838, 26.624331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557691, 0.496836, 0.664932,
		-0.647424, 0.240945, -0.723041,
		-0.519445, -0.833726, 0.187290,
		29.205532, 34.329720, 26.680517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949333, 35.166729, 26.906429>,  <29.569143, 34.913330, 26.549414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949333, 35.166729, 26.906429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950844, 34.770252, 26.959373>,  <28.951750, 34.532364, 26.991140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950844, 34.770252, 26.959373>,  <28.949333, 35.166729, 26.906429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950844, 34.770252, 26.959373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505968, 0.112274, 0.855214,
		-0.862544, -0.070199, -0.501088,
		0.003776, -0.991195, 0.132360,
		28.951977, 34.472893, 26.999081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271780, 35.013065, 26.967531>,  <28.949333, 35.166729, 26.906429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271780, 35.013065, 26.967531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496920, 34.736778, 27.149128>,  <28.632004, 34.571007, 27.258087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496920, 34.736778, 27.149128>,  <28.271780, 35.013065, 26.967531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496920, 34.736778, 27.149128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456088, 0.198537, 0.867506,
		-0.689334, -0.695338, -0.203280,
		0.562851, -0.690715, 0.453994,
		28.665775, 34.529564, 27.285326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802147, 34.621696, 27.325108>,  <28.271780, 35.013065, 26.967531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802147, 34.621696, 27.325108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158878, 34.566441, 27.497416>,  <28.372917, 34.533287, 27.600800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.158878, 34.566441, 27.497416>,  <27.802147, 34.621696, 27.325108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158878, 34.566441, 27.497416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431595, 0.025468, 0.901708,
		-0.135536, -0.990085, -0.036909,
		0.891827, -0.138143, 0.430768,
		28.426426, 34.524998, 27.626646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634310, 34.179028, 27.859983>,  <27.802147, 34.621696, 27.325108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634310, 34.179028, 27.859983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991354, 34.324497, 27.966558>,  <28.205582, 34.411777, 28.030502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991354, 34.324497, 27.966558>,  <27.634310, 34.179028, 27.859983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991354, 34.324497, 27.966558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299047, 0.035374, 0.953582,
		0.337365, -0.930856, 0.140330,
		0.892612, 0.363671, 0.266436,
		28.259138, 34.433598, 28.046490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826258, 33.813587, 28.402733>,  <27.634310, 34.179028, 27.859983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826258, 33.813587, 28.402733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035715, 34.152966, 28.433567>,  <28.161390, 34.356590, 28.452068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035715, 34.152966, 28.433567>,  <27.826258, 33.813587, 28.402733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035715, 34.152966, 28.433567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068821, -0.048059, 0.996471,
		0.849153, -0.527101, 0.033224,
		0.523644, 0.848443, 0.077085,
		28.192808, 34.407497, 28.456692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097404, 33.760723, 28.976999>,  <27.826258, 33.813587, 28.402733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097404, 33.760723, 28.976999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160156, 34.153831, 28.937929>,  <28.197807, 34.389698, 28.914486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160156, 34.153831, 28.937929>,  <28.097404, 33.760723, 28.976999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160156, 34.153831, 28.937929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077585, 0.086332, 0.993241,
		0.984566, -0.163398, -0.062705,
		0.156880, 0.982776, -0.097676,
		28.207220, 34.448666, 28.908627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551151, 34.003391, 29.515760>,  <28.097404, 33.760723, 28.976999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551151, 34.003391, 29.515760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355856, 34.335777, 29.409092>,  <28.238678, 34.535210, 29.345091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355856, 34.335777, 29.409092>,  <28.551151, 34.003391, 29.515760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355856, 34.335777, 29.409092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034645, 0.323782, 0.945497,
		0.872021, 0.452391, -0.186872,
		-0.488240, 0.830968, -0.266672,
		28.209383, 34.585068, 29.329090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920191, 34.627213, 29.814507>,  <28.551151, 34.003391, 29.515760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920191, 34.627213, 29.814507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557203, 34.786678, 29.761480>,  <28.339411, 34.882359, 29.729666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557203, 34.786678, 29.761480>,  <28.920191, 34.627213, 29.814507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557203, 34.786678, 29.761480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053782, 0.423173, 0.904451,
		0.416666, 0.813631, -0.405456,
		-0.907467, 0.398660, -0.132563,
		28.284964, 34.906277, 29.721712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916086, 35.073303, 30.340761>,  <28.920191, 34.627213, 29.814507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916086, 35.073303, 30.340761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544264, 35.099312, 30.195602>,  <28.321171, 35.114918, 30.108507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544264, 35.099312, 30.195602>,  <28.916086, 35.073303, 30.340761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544264, 35.099312, 30.195602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280311, 0.514720, 0.810240,
		0.239477, 0.854889, -0.460234,
		-0.929557, 0.065025, -0.362899,
		28.265396, 35.118820, 30.086733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747227, 35.739689, 30.476509>,  <28.916086, 35.073303, 30.340761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747227, 35.739689, 30.476509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396227, 35.549091, 30.454821>,  <28.185627, 35.434731, 30.441807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396227, 35.549091, 30.454821>,  <28.747227, 35.739689, 30.476509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396227, 35.549091, 30.454821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234309, 0.327327, 0.915400,
		-0.418438, 0.815970, -0.398878,
		-0.877502, -0.476498, -0.054223,
		28.132977, 35.406143, 30.438553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269657, 36.243324, 30.741024>,  <28.747227, 35.739689, 30.476509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269657, 36.243324, 30.741024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156517, 35.862911, 30.790880>,  <28.088633, 35.634663, 30.820793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156517, 35.862911, 30.790880>,  <28.269657, 36.243324, 30.741024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156517, 35.862911, 30.790880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405830, 0.236403, 0.882845,
		-0.869079, 0.199129, -0.452823,
		-0.282849, -0.951032, 0.124641,
		28.071663, 35.577602, 30.828272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567692, 36.295696, 30.952366>,  <28.269657, 36.243324, 30.741024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567692, 36.295696, 30.952366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712681, 35.952427, 31.097778>,  <27.799675, 35.746468, 31.185026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712681, 35.952427, 31.097778>,  <27.567692, 36.295696, 30.952366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712681, 35.952427, 31.097778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371444, 0.224719, 0.900850,
		-0.854776, -0.461566, -0.237308,
		0.362474, -0.858172, 0.363530,
		27.821423, 35.694977, 31.206837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232334, 36.253822, 31.496288>,  <27.567692, 36.295696, 30.952366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232334, 36.253822, 31.496288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.497889, 35.965897, 31.577408>,  <27.657221, 35.793140, 31.626080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.497889, 35.965897, 31.577408>,  <27.232334, 36.253822, 31.496288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497889, 35.965897, 31.577408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377944, -0.088947, 0.921546,
		-0.645300, -0.688449, -0.331099,
		0.663887, -0.719810, 0.202798,
		27.697054, 35.749954, 31.638247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801186, 35.829350, 31.867977>,  <27.232334, 36.253822, 31.496288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801186, 35.829350, 31.867977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179888, 35.756798, 31.974377>,  <27.407108, 35.713264, 32.038216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179888, 35.756798, 31.974377>,  <26.801186, 35.829350, 31.867977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179888, 35.756798, 31.974377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285686, -0.092320, 0.953866,
		-0.148462, -0.979069, -0.139224,
		0.946754, -0.181387, 0.266000,
		27.463915, 35.702385, 32.054176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836323, 35.213654, 32.309410>,  <26.801186, 35.829350, 31.867977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836323, 35.213654, 32.309410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.157225, 35.442120, 32.378876>,  <27.349766, 35.579201, 32.420555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.157225, 35.442120, 32.378876>,  <26.836323, 35.213654, 32.309410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157225, 35.442120, 32.378876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218969, 0.010912, 0.975671,
		0.555377, -0.820761, 0.133822,
		0.802253, 0.571168, 0.173661,
		27.397900, 35.613468, 32.430973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892126, 35.223801, 33.017353>,  <26.836323, 35.213654, 32.309410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892126, 35.223801, 33.017353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211571, 35.449261, 32.932949>,  <27.403236, 35.584538, 32.882309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211571, 35.449261, 32.932949>,  <26.892126, 35.223801, 33.017353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211571, 35.449261, 32.932949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129617, 0.181293, 0.974850,
		0.587727, -0.805874, 0.071724,
		0.798609, 0.563649, -0.211006,
		27.451153, 35.618355, 32.869648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486868, 34.966568, 33.440212>,  <26.892126, 35.223801, 33.017353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486868, 34.966568, 33.440212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.497118, 35.355293, 33.346466>,  <27.503267, 35.588528, 33.290218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.497118, 35.355293, 33.346466>,  <27.486868, 34.966568, 33.440212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497118, 35.355293, 33.346466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098478, 0.230848, 0.967993,
		0.994809, -0.047883, -0.089787,
		0.025623, 0.971811, -0.234365,
		27.504805, 35.646835, 33.276157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157925, 34.806282, 33.793480>,  <27.486868, 34.966568, 33.440212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157925, 34.806282, 33.793480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120018, 34.494492, 34.041168>,  <28.097273, 34.307419, 34.189781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120018, 34.494492, 34.041168>,  <28.157925, 34.806282, 33.793480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120018, 34.494492, 34.041168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412955, -0.596763, -0.687999,
		0.905807, 0.190512, 0.378442,
		-0.094768, -0.779474, 0.619225,
		28.091587, 34.260651, 34.226936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835659, 34.688725, 34.053772>,  <28.157925, 34.806282, 33.793480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835659, 34.688725, 34.053772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598381, 34.366867, 34.064079>,  <28.456015, 34.173752, 34.070263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598381, 34.366867, 34.064079>,  <28.835659, 34.688725, 34.053772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598381, 34.366867, 34.064079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469456, -0.371740, -0.800887,
		0.654010, -0.462985, 0.598260,
		-0.593196, -0.804645, 0.025771,
		28.420422, 34.125473, 34.071812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343552, 34.161663, 34.067944>,  <28.835659, 34.688725, 34.053772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343552, 34.161663, 34.067944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002953, 33.976727, 33.968998>,  <28.798592, 33.865765, 33.909630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002953, 33.976727, 33.968998>,  <29.343552, 34.161663, 34.067944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002953, 33.976727, 33.968998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495048, -0.553334, -0.669887,
		0.172845, -0.692864, 0.700046,
		-0.851500, -0.462343, -0.247360,
		28.747503, 33.838024, 33.894791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461985, 33.343185, 34.086033>,  <29.343552, 34.161663, 34.067944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461985, 33.343185, 34.086033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.153601, 33.417175, 33.842262>,  <28.968571, 33.461571, 33.695999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.153601, 33.417175, 33.842262>,  <29.461985, 33.343185, 34.086033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153601, 33.417175, 33.842262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505433, -0.404512, -0.762173,
		-0.387500, -0.895632, 0.218374,
		-0.770961, 0.184969, -0.609430,
		28.922314, 33.472668, 33.659431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228323, 32.779701, 33.806351>,  <29.461985, 33.343185, 34.086033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228323, 32.779701, 33.806351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088921, 33.039566, 33.536095>,  <29.005280, 33.195484, 33.373943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088921, 33.039566, 33.536095>,  <29.228323, 32.779701, 33.806351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088921, 33.039566, 33.536095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514186, -0.470172, -0.717322,
		-0.783682, -0.597393, -0.170190,
		-0.348505, 0.649661, -0.675636,
		28.984369, 33.234463, 33.333405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192358, 32.386509, 33.268513>,  <29.228323, 32.779701, 33.806351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192358, 32.386509, 33.268513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150406, 32.749912, 33.106712>,  <29.125235, 32.967953, 33.009632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150406, 32.749912, 33.106712>,  <29.192358, 32.386509, 33.268513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150406, 32.749912, 33.106712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340079, -0.349458, -0.873055,
		-0.934530, -0.229129, -0.272311,
		-0.104881, 0.908504, -0.404501,
		29.118942, 33.022465, 32.985363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823257, 32.308998, 32.627033>,  <29.192358, 32.386509, 33.268513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823257, 32.308998, 32.627033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015083, 32.659065, 32.601425>,  <29.130178, 32.869106, 32.586060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015083, 32.659065, 32.601425>,  <28.823257, 32.308998, 32.627033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015083, 32.659065, 32.601425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378830, -0.272289, -0.884504,
		-0.791522, 0.399922, -0.462120,
		0.479563, 0.875169, -0.064020,
		29.158953, 32.921616, 32.582218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647669, 32.463924, 31.947599>,  <28.823257, 32.308998, 32.627033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647669, 32.463924, 31.947599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965214, 32.683941, 32.051319>,  <29.155741, 32.815952, 32.113552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965214, 32.683941, 32.051319>,  <28.647669, 32.463924, 31.947599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965214, 32.683941, 32.051319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401892, -0.154562, -0.902548,
		-0.456360, 0.820711, -0.343758,
		0.793863, 0.550040, 0.259301,
		29.203373, 32.848953, 32.129108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690674, 32.895859, 31.350254>,  <28.647669, 32.463924, 31.947599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690674, 32.895859, 31.350254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039530, 32.897961, 31.545946>,  <29.248844, 32.899220, 31.663361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039530, 32.897961, 31.545946>,  <28.690674, 32.895859, 31.350254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039530, 32.897961, 31.545946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487465, -0.094839, -0.867976,
		0.041841, 0.995479, -0.085272,
		0.872139, 0.005250, 0.489230,
		29.301172, 32.899536, 31.692715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160738, 33.357174, 30.943188>,  <28.690674, 32.895859, 31.350254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160738, 33.357174, 30.943188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404001, 33.143105, 31.177702>,  <29.549959, 33.014664, 31.318411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404001, 33.143105, 31.177702>,  <29.160738, 33.357174, 30.943188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404001, 33.143105, 31.177702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669088, -0.051843, -0.741372,
		0.427157, 0.843151, 0.326548,
		0.608159, -0.535172, 0.586288,
		29.586449, 32.982552, 31.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713615, 33.746334, 30.961117>,  <29.160738, 33.357174, 30.943188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713615, 33.746334, 30.961117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832701, 33.377342, 31.059423>,  <29.904152, 33.155949, 31.118406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832701, 33.377342, 31.059423>,  <29.713615, 33.746334, 30.961117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832701, 33.377342, 31.059423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732484, 0.055629, -0.678508,
		0.612237, 0.382019, 0.692262,
		0.297713, -0.922479, 0.245765,
		29.922014, 33.100597, 31.133152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407467, 33.798107, 31.004997>,  <29.713615, 33.746334, 30.961117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407467, 33.798107, 31.004997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.370264, 33.401581, 30.967793>,  <30.347942, 33.163666, 30.945469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.370264, 33.401581, 30.967793>,  <30.407467, 33.798107, 31.004997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370264, 33.401581, 30.967793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751588, -0.008628, -0.659577,
		0.653044, -0.131250, 0.745860,
		-0.093005, -0.991312, -0.093012,
		30.342363, 33.104187, 30.939888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170359, 33.492046, 30.989782>,  <30.407467, 33.798107, 31.004997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170359, 33.492046, 30.989782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916872, 33.221699, 30.839262>,  <30.764780, 33.059490, 30.748949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916872, 33.221699, 30.839262>,  <31.170359, 33.492046, 30.989782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916872, 33.221699, 30.839262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640319, -0.185369, -0.745406,
		0.434041, -0.713331, 0.550242,
		-0.633719, -0.675868, -0.376302,
		30.726757, 33.018940, 30.726372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525900, 33.012028, 30.646193>,  <31.170359, 33.492046, 30.989782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525900, 33.012028, 30.646193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179790, 32.919083, 30.468515>,  <30.972124, 32.863316, 30.361908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179790, 32.919083, 30.468515>,  <31.525900, 33.012028, 30.646193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179790, 32.919083, 30.468515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490399, -0.208567, -0.846173,
		0.103980, -0.950003, 0.294420,
		-0.865273, -0.232368, -0.444194,
		30.920208, 32.849373, 30.335257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669794, 32.427082, 30.329872>,  <31.525900, 33.012028, 30.646193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669794, 32.427082, 30.329872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369972, 32.616558, 30.144922>,  <31.190079, 32.730244, 30.033953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369972, 32.616558, 30.144922>,  <31.669794, 32.427082, 30.329872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369972, 32.616558, 30.144922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434128, -0.175526, -0.883585,
		-0.499701, -0.863025, -0.074075,
		-0.749554, 0.473686, -0.462374,
		31.145105, 32.758663, 30.006210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411209, 32.052635, 29.778418>,  <31.669794, 32.427082, 30.329872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411209, 32.052635, 29.778418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.278738, 32.406467, 29.647064>,  <31.199255, 32.618767, 29.568253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.278738, 32.406467, 29.647064>,  <31.411209, 32.052635, 29.778418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278738, 32.406467, 29.647064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144399, -0.296410, -0.944082,
		-0.932454, -0.360077, -0.029568,
		-0.331178, 0.884582, -0.328383,
		31.179384, 32.671841, 29.548550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263170, 31.820444, 29.158440>,  <31.411209, 32.052635, 29.778418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263170, 31.820444, 29.158440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263731, 32.220444, 29.158489>,  <31.264067, 32.460442, 29.158518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263731, 32.220444, 29.158489>,  <31.263170, 31.820444, 29.158440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263731, 32.220444, 29.158489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039899, 0.000067, -0.999204,
		-0.999203, 0.001405, -0.039899,
		0.001401, 0.999999, 0.000123,
		31.264151, 32.520443, 29.158525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813751, 32.087337, 28.598051>,  <31.263170, 31.820444, 29.158440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813751, 32.087337, 28.598051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.069641, 32.385201, 28.674191>,  <31.223175, 32.563919, 28.719875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.069641, 32.385201, 28.674191>,  <30.813751, 32.087337, 28.598051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069641, 32.385201, 28.674191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097832, 0.166752, -0.981133,
		-0.762351, 0.646279, 0.033824,
		0.639727, 0.744659, 0.190350,
		31.261559, 32.608597, 28.731297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622581, 32.609169, 28.224146>,  <30.813751, 32.087337, 28.598051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622581, 32.609169, 28.224146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010723, 32.664959, 28.303101>,  <31.243608, 32.698433, 28.350473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010723, 32.664959, 28.303101>,  <30.622581, 32.609169, 28.224146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010723, 32.664959, 28.303101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177511, 0.142990, -0.973675,
		-0.164026, 0.979848, 0.113993,
		0.970353, 0.139473, 0.197388,
		31.301828, 32.706802, 28.362316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917898, 33.123135, 27.694118>,  <30.622581, 32.609169, 28.224146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917898, 33.123135, 27.694118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246840, 32.954620, 27.847090>,  <31.444204, 32.853512, 27.938871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246840, 32.954620, 27.847090>,  <30.917898, 33.123135, 27.694118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246840, 32.954620, 27.847090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444690, 0.056597, -0.893894,
		0.354945, 0.905158, 0.233887,
		0.822353, -0.421290, 0.382426,
		31.493546, 32.828232, 27.961817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463373, 33.600128, 27.474636>,  <30.917898, 33.123135, 27.694118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463373, 33.600128, 27.474636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.636566, 33.252262, 27.569471>,  <31.740482, 33.043545, 27.626371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.636566, 33.252262, 27.569471>,  <31.463373, 33.600128, 27.474636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636566, 33.252262, 27.569471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487503, 0.004689, -0.873109,
		0.758199, 0.493623, 0.425994,
		0.432984, -0.869663, 0.237087,
		31.766462, 32.991364, 27.640598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119625, 33.781097, 27.200548>,  <31.463373, 33.600128, 27.474636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119625, 33.781097, 27.200548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.103882, 33.386818, 27.266085>,  <32.094437, 33.150249, 27.305407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.103882, 33.386818, 27.266085>,  <32.119625, 33.781097, 27.200548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103882, 33.386818, 27.266085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685935, -0.145885, -0.712889,
		0.726598, 0.084326, 0.681869,
		-0.039359, -0.985701, 0.163842,
		32.092075, 33.091106, 27.315237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797920, 33.593273, 27.408432>,  <32.119625, 33.781097, 27.200548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797920, 33.593273, 27.408432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.617607, 33.274406, 27.247768>,  <32.509418, 33.083088, 27.151371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.617607, 33.274406, 27.247768>,  <32.797920, 33.593273, 27.408432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617607, 33.274406, 27.247768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697975, -0.034280, -0.715301,
		0.556443, -0.602790, 0.571853,
		-0.450779, -0.797163, -0.401657,
		32.482372, 33.035259, 27.127272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276684, 32.973103, 27.536476>,  <32.797920, 33.593273, 27.408432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276684, 32.973103, 27.536476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.058559, 33.001431, 27.202381>,  <32.927685, 33.018429, 27.001925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.058559, 33.001431, 27.202381>,  <33.276684, 32.973103, 27.536476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058559, 33.001431, 27.202381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822304, 0.238534, -0.516641,
		0.162642, -0.968548, -0.188314,
		-0.545311, 0.070824, -0.835237,
		32.894966, 33.022678, 26.951811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.131954, 34.130081, 43.978172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733570, 34.140221, 43.943707>,  <36.494541, 34.146305, 43.923027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733570, 34.140221, 43.943707>,  <37.131954, 34.130081, 43.978172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733570, 34.140221, 43.943707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055424, 0.581447, 0.811695,
		0.070680, 0.813189, -0.577691,
		-0.995958, 0.025352, -0.086167,
		36.434784, 34.147827, 43.917858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774700, 34.907291, 44.000969>,  <37.131954, 34.130081, 43.978172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774700, 34.907291, 44.000969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514408, 34.625698, 44.114777>,  <36.358234, 34.456741, 44.183064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514408, 34.625698, 44.114777>,  <36.774700, 34.907291, 44.000969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514408, 34.625698, 44.114777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215740, 0.530688, 0.819650,
		-0.728017, 0.471987, -0.497212,
		-0.650729, -0.703988, 0.284523,
		36.319191, 34.414501, 44.200134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335579, 35.320301, 44.412624>,  <36.774700, 34.907291, 44.000969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335579, 35.320301, 44.412624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222992, 34.952309, 44.521740>,  <36.155437, 34.731514, 44.587212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222992, 34.952309, 44.521740>,  <36.335579, 35.320301, 44.412624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222992, 34.952309, 44.521740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452694, 0.377970, 0.807593,
		-0.846075, 0.103821, -0.522855,
		-0.281469, -0.919978, 0.272792,
		36.138550, 34.676315, 44.603577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548000, 35.309296, 44.663845>,  <36.335579, 35.320301, 44.412624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548000, 35.309296, 44.663845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752037, 35.008171, 44.830257>,  <35.874458, 34.827496, 44.930107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752037, 35.008171, 44.830257>,  <35.548000, 35.309296, 44.663845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752037, 35.008171, 44.830257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427768, 0.197596, 0.882026,
		-0.746205, -0.627879, -0.221236,
		0.510090, -0.752810, 0.416034,
		35.905064, 34.782330, 44.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087368, 34.964390, 45.078262>,  <35.548000, 35.309296, 44.663845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087368, 34.964390, 45.078262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442276, 34.852177, 45.224716>,  <35.655220, 34.784851, 45.312588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442276, 34.852177, 45.224716>,  <35.087368, 34.964390, 45.078262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442276, 34.852177, 45.224716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369510, 0.042797, 0.928241,
		-0.276069, -0.958891, -0.065686,
		0.887270, -0.280530, 0.366134,
		35.708458, 34.768017, 45.334557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952503, 34.462746, 45.596870>,  <35.087368, 34.964390, 45.078262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952503, 34.462746, 45.596870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336983, 34.535400, 45.679913>,  <35.567673, 34.578995, 45.729736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336983, 34.535400, 45.679913>,  <34.952503, 34.462746, 45.596870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336983, 34.535400, 45.679913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196498, -0.077350, 0.977448,
		0.193604, -0.980318, -0.038656,
		0.961201, 0.181642, 0.207606,
		35.625343, 34.589893, 45.742195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203819, 33.933964, 46.125969>,  <34.952503, 34.462746, 45.596870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203819, 33.933964, 46.125969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458843, 34.240868, 46.153763>,  <35.611858, 34.425011, 46.170437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458843, 34.240868, 46.153763>,  <35.203819, 33.933964, 46.125969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458843, 34.240868, 46.153763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222452, 0.096998, 0.970106,
		0.737583, -0.633959, 0.232521,
		0.637562, 0.767259, 0.069481,
		35.650112, 34.471046, 46.174606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680450, 33.770153, 46.760338>,  <35.203819, 33.933964, 46.125969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680450, 33.770153, 46.760338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681534, 34.163528, 46.687840>,  <35.682182, 34.399551, 46.644341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681534, 34.163528, 46.687840>,  <35.680450, 33.770153, 46.760338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681534, 34.163528, 46.687840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164669, 0.179211, 0.969932,
		0.986345, 0.027223, 0.162426,
		0.002704, 0.983434, -0.181247,
		35.682346, 34.458557, 46.633465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846111, 34.045895, 47.404690>,  <35.680450, 33.770153, 46.760338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846111, 34.045895, 47.404690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727074, 34.389256, 47.237560>,  <35.655651, 34.595272, 47.137283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727074, 34.389256, 47.237560>,  <35.846111, 34.045895, 47.404690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727074, 34.389256, 47.237560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349682, 0.309232, 0.884363,
		0.888347, 0.409287, 0.208144,
		-0.297593, 0.858405, -0.417826,
		35.637794, 34.646778, 47.112213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138493, 34.625713, 47.824459>,  <35.846111, 34.045895, 47.404690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138493, 34.625713, 47.824459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833759, 34.784309, 47.619556>,  <35.650921, 34.879467, 47.496616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833759, 34.784309, 47.619556>,  <36.138493, 34.625713, 47.824459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833759, 34.784309, 47.619556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416789, 0.305338, 0.856187,
		0.495885, 0.865772, -0.067361,
		-0.761830, 0.396495, -0.512257,
		35.605209, 34.903259, 47.465878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974499, 35.318726, 47.993393>,  <36.138493, 34.625713, 47.824459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974499, 35.318726, 47.993393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640076, 35.150379, 47.852608>,  <35.439423, 35.049374, 47.768139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640076, 35.150379, 47.852608>,  <35.974499, 35.318726, 47.993393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640076, 35.150379, 47.852608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493010, 0.294864, 0.818533,
		-0.240709, 0.857864, -0.454014,
		-0.836062, -0.420862, -0.351959,
		35.389256, 35.024120, 47.747021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417599, 35.792290, 48.150608>,  <35.974499, 35.318726, 47.993393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417599, 35.792290, 48.150608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195667, 35.470188, 48.066963>,  <35.062508, 35.276928, 48.016777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195667, 35.470188, 48.066963>,  <35.417599, 35.792290, 48.150608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195667, 35.470188, 48.066963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459500, 0.087068, 0.883900,
		-0.693557, 0.586503, -0.418322,
		-0.554832, -0.805254, -0.209112,
		35.029217, 35.228611, 48.004230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045479, 35.809246, 48.739925>,  <35.417599, 35.792290, 48.150608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045479, 35.809246, 48.739925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806087, 35.540367, 48.565582>,  <34.662453, 35.379040, 48.460976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806087, 35.540367, 48.565582>,  <35.045479, 35.809246, 48.739925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806087, 35.540367, 48.565582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582894, -0.007865, 0.812510,
		-0.549595, 0.740330, -0.387113,
		-0.598481, -0.672197, -0.435857,
		34.626545, 35.338707, 48.434826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427898, 36.149239, 48.786251>,  <35.045479, 35.809246, 48.739925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427898, 36.149239, 48.786251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417862, 35.749573, 48.799187>,  <34.411839, 35.509773, 48.806950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417862, 35.749573, 48.799187>,  <34.427898, 36.149239, 48.786251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417862, 35.749573, 48.799187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339717, 0.038948, 0.939721,
		-0.940193, 0.012596, -0.340409,
		-0.025095, -0.999162, 0.032340,
		34.410332, 35.449825, 48.808887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417328, 36.767227, 48.464138>,  <34.427898, 36.149239, 48.786251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417328, 36.767227, 48.464138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116058, 37.030319, 48.459629>,  <33.935299, 37.188175, 48.456924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116058, 37.030319, 48.459629>,  <34.417328, 36.767227, 48.464138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116058, 37.030319, 48.459629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130318, 0.132388, -0.982594,
		-0.644788, -0.741529, -0.185424,
		-0.753170, 0.657729, -0.011272,
		33.890106, 37.227638, 48.456249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972366, 36.558819, 47.933784>,  <34.417328, 36.767227, 48.464138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972366, 36.558819, 47.933784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887489, 36.944061, 48.000000>,  <33.836563, 37.175205, 48.039730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887489, 36.944061, 48.000000>,  <33.972366, 36.558819, 47.933784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887489, 36.944061, 48.000000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048617, 0.179588, -0.982540,
		-0.976019, -0.200436, -0.084930,
		-0.212188, 0.963106, 0.165536,
		33.823833, 37.232994, 48.049660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481972, 36.804703, 47.407928>,  <33.972366, 36.558819, 47.933784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481972, 36.804703, 47.407928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681736, 37.122841, 47.545341>,  <33.801594, 37.313725, 47.627789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681736, 37.122841, 47.545341>,  <33.481972, 36.804703, 47.407928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681736, 37.122841, 47.545341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242828, 0.252124, -0.936733,
		-0.831641, 0.551230, -0.067220,
		0.499408, 0.795348, 0.343531,
		33.831558, 37.361446, 47.648399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399532, 37.288200, 46.939289>,  <33.481972, 36.804703, 47.407928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399532, 37.288200, 46.939289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694813, 37.446537, 47.157784>,  <33.871979, 37.541538, 47.288879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694813, 37.446537, 47.157784>,  <33.399532, 37.288200, 46.939289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694813, 37.446537, 47.157784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502863, 0.216841, -0.836725,
		-0.449657, 0.892350, -0.038983,
		0.738198, 0.395843, 0.546234,
		33.916271, 37.565289, 47.321655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457348, 37.920639, 46.727165>,  <33.399532, 37.288200, 46.939289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457348, 37.920639, 46.727165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811367, 37.828835, 46.889164>,  <34.023777, 37.773750, 46.986362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811367, 37.828835, 46.889164>,  <33.457348, 37.920639, 46.727165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811367, 37.828835, 46.889164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451367, 0.210294, -0.867205,
		0.113868, 0.950315, 0.289715,
		0.885043, -0.229515, 0.404996,
		34.076881, 37.759979, 47.010662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937534, 38.481663, 46.610924>,  <33.457348, 37.920639, 46.727165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937534, 38.481663, 46.610924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167942, 38.155598, 46.635315>,  <34.306187, 37.959957, 46.649948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167942, 38.155598, 46.635315>,  <33.937534, 38.481663, 46.610924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167942, 38.155598, 46.635315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415317, 0.227593, -0.880746,
		0.704073, 0.532647, 0.469648,
		0.576015, -0.815162, 0.060975,
		34.340748, 37.911049, 46.653606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655781, 38.704594, 46.368370>,  <33.937534, 38.481663, 46.610924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655781, 38.704594, 46.368370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665672, 38.306358, 46.332146>,  <34.671608, 38.067417, 46.310410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665672, 38.306358, 46.332146>,  <34.655781, 38.704594, 46.368370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665672, 38.306358, 46.332146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528377, 0.089920, -0.844235,
		0.848650, -0.026976, 0.528266,
		0.024727, -0.995583, -0.090564,
		34.673092, 38.007683, 46.304977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288189, 38.607498, 46.050476>,  <34.655781, 38.704594, 46.368370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288189, 38.607498, 46.050476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120167, 38.245659, 46.021469>,  <35.019352, 38.028557, 46.004066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120167, 38.245659, 46.021469>,  <35.288189, 38.607498, 46.050476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120167, 38.245659, 46.021469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541297, -0.185616, -0.820088,
		0.728389, -0.383734, 0.567625,
		-0.420055, -0.904597, -0.072514,
		34.994148, 37.974281, 45.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768562, 38.179836, 45.817867>,  <35.288189, 38.607498, 46.050476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768562, 38.179836, 45.817867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442631, 37.964104, 45.732853>,  <35.247070, 37.834663, 45.681843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442631, 37.964104, 45.732853>,  <35.768562, 38.179836, 45.817867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442631, 37.964104, 45.732853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355518, -0.175334, -0.918077,
		0.457880, -0.823640, 0.334609,
		-0.814833, -0.539329, -0.212537,
		35.198181, 37.802303, 45.669090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029659, 37.448639, 45.691280>,  <35.768562, 38.179836, 45.817867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029659, 37.448639, 45.691280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682869, 37.534420, 45.511345>,  <35.474792, 37.585888, 45.403381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682869, 37.534420, 45.511345>,  <36.029659, 37.448639, 45.691280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682869, 37.534420, 45.511345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372080, -0.321932, -0.870584,
		-0.331549, -0.922147, 0.199298,
		-0.866967, 0.214487, -0.449848,
		35.422775, 37.598755, 45.376392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993649, 36.978107, 45.257286>,  <36.029659, 37.448639, 45.691280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993649, 36.978107, 45.257286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705761, 37.210533, 45.105301>,  <35.533028, 37.349991, 45.014111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705761, 37.210533, 45.105301>,  <35.993649, 36.978107, 45.257286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705761, 37.210533, 45.105301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124405, -0.430486, -0.893983,
		-0.683030, -0.690684, 0.237541,
		-0.719717, 0.581066, -0.379960,
		35.489845, 37.384853, 44.991314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625301, 36.529236, 44.753082>,  <35.993649, 36.978107, 45.257286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625301, 36.529236, 44.753082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541218, 36.910152, 44.664585>,  <35.490768, 37.138702, 44.611488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541218, 36.910152, 44.664585>,  <35.625301, 36.529236, 44.753082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541218, 36.910152, 44.664585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005787, -0.227508, -0.973759,
		-0.977639, -0.203417, 0.053336,
		-0.210213, 0.952293, -0.221244,
		35.478153, 37.195839, 44.598213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161865, 36.457081, 44.250011>,  <35.625301, 36.529236, 44.753082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161865, 36.457081, 44.250011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261650, 36.842537, 44.211723>,  <35.321522, 37.073811, 44.188751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261650, 36.842537, 44.211723>,  <35.161865, 36.457081, 44.250011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261650, 36.842537, 44.211723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017990, -0.103437, -0.994473,
		-0.968217, 0.246361, -0.043140,
		0.249462, 0.963642, -0.095717,
		35.336487, 37.131630, 44.183006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717163, 36.730789, 43.683994>,  <35.161865, 36.457081, 44.250011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717163, 36.730789, 43.683994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055698, 36.935341, 43.743595>,  <35.258820, 37.058071, 43.779354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055698, 36.935341, 43.743595>,  <34.717163, 36.730789, 43.683994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055698, 36.935341, 43.743595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193035, -0.033751, -0.980611,
		-0.496431, 0.858694, -0.127278,
		0.846341, 0.511375, 0.149003,
		35.309601, 37.088753, 43.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177025, 37.301838, 43.547421>,  <34.717163, 36.730789, 43.683994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177025, 37.301838, 43.547421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828117, 37.162155, 43.410477>,  <33.618774, 37.078346, 43.328312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828117, 37.162155, 43.410477>,  <34.177025, 37.301838, 43.547421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828117, 37.162155, 43.410477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409371, 0.138434, 0.901805,
		-0.267519, 0.926765, -0.263705,
		-0.872266, -0.349203, -0.342358,
		33.566437, 37.057396, 43.307770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651676, 37.737255, 43.801861>,  <34.177025, 37.301838, 43.547421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651676, 37.737255, 43.801861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442066, 37.410854, 43.704254>,  <33.316299, 37.215015, 43.645691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442066, 37.410854, 43.704254>,  <33.651676, 37.737255, 43.801861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442066, 37.410854, 43.704254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298289, -0.092523, 0.949981,
		-0.797763, 0.570597, -0.194921,
		-0.524022, -0.816002, -0.244014,
		33.284859, 37.166054, 43.631050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973595, 37.839748, 44.161068>,  <33.651676, 37.737255, 43.801861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973595, 37.839748, 44.161068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969696, 37.449593, 44.072956>,  <32.967358, 37.215500, 44.020088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969696, 37.449593, 44.072956>,  <32.973595, 37.839748, 44.161068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969696, 37.449593, 44.072956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513055, -0.184209, 0.838356,
		-0.858300, 0.121186, -0.498633,
		-0.009744, -0.975388, -0.220282,
		32.966774, 37.156975, 44.006870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340931, 37.717594, 44.190907>,  <32.973595, 37.839748, 44.161068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340931, 37.717594, 44.190907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525288, 37.367092, 44.247139>,  <32.635902, 37.156792, 44.280880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525288, 37.367092, 44.247139>,  <32.340931, 37.717594, 44.190907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525288, 37.367092, 44.247139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532917, -0.146601, 0.833371,
		-0.709632, -0.459013, -0.534537,
		0.460892, -0.876251, 0.140583,
		32.663555, 37.104218, 44.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794319, 37.244373, 44.298080>,  <32.340931, 37.717594, 44.190907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794319, 37.244373, 44.298080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116295, 37.067982, 44.456882>,  <32.309479, 36.962147, 44.552162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116295, 37.067982, 44.456882>,  <31.794319, 37.244373, 44.298080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116295, 37.067982, 44.456882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460794, -0.043044, 0.886462,
		-0.373820, -0.896486, -0.237847,
		0.804939, -0.440976, 0.397005,
		32.357777, 36.935688, 44.575985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539667, 36.682503, 44.681438>,  <31.794319, 37.244373, 44.298080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539667, 36.682503, 44.681438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897598, 36.738255, 44.851078>,  <32.112358, 36.771706, 44.952862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897598, 36.738255, 44.851078>,  <31.539667, 36.682503, 44.681438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897598, 36.738255, 44.851078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390293, -0.216888, 0.894780,
		0.216692, -0.966196, -0.139680,
		0.894828, 0.139376, 0.424097,
		32.166046, 36.780067, 44.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572222, 36.068718, 45.025616>,  <31.539667, 36.682503, 44.681438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572222, 36.068718, 45.025616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822458, 36.332954, 45.191631>,  <31.972599, 36.491497, 45.291241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822458, 36.332954, 45.191631>,  <31.572222, 36.068718, 45.025616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822458, 36.332954, 45.191631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455116, -0.123078, 0.881885,
		0.633646, -0.740591, 0.223648,
		0.625590, 0.660589, 0.415043,
		32.010136, 36.531132, 45.316143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280489, 35.534016, 45.377716>,  <31.572222, 36.068718, 45.025616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280489, 35.534016, 45.377716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.891840, 35.439556, 45.383152>,  <30.658651, 35.382881, 45.386414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.891840, 35.439556, 45.383152>,  <31.280489, 35.534016, 45.377716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891840, 35.439556, 45.383152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103164, -0.474759, -0.874049,
		0.212855, -0.847843, 0.485648,
		-0.971622, -0.236147, 0.013588,
		30.600353, 35.368713, 45.387230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247410, 34.781406, 45.299564>,  <31.280489, 35.534016, 45.377716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247410, 34.781406, 45.299564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902702, 34.938801, 45.171482>,  <30.695879, 35.033237, 45.094635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902702, 34.938801, 45.171482>,  <31.247410, 34.781406, 45.299564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902702, 34.938801, 45.171482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111558, -0.468748, -0.876259,
		-0.494889, -0.790851, 0.360055,
		-0.861766, 0.393484, -0.320204,
		30.644173, 35.056847, 45.075420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095774, 34.341515, 44.814835>,  <31.247410, 34.781406, 45.299564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095774, 34.341515, 44.814835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.834137, 34.630531, 44.725304>,  <30.677155, 34.803940, 44.671585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.834137, 34.630531, 44.725304>,  <31.095774, 34.341515, 44.814835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834137, 34.630531, 44.725304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048239, -0.335152, -0.940929,
		-0.754875, -0.604657, 0.254075,
		-0.654092, 0.722540, -0.223829,
		30.637909, 34.847294, 44.658154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564661, 34.021954, 44.331005>,  <31.095774, 34.341515, 44.814835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564661, 34.021954, 44.331005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.580132, 34.419388, 44.288486>,  <30.589413, 34.657848, 44.262974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.580132, 34.419388, 44.288486>,  <30.564661, 34.021954, 44.331005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580132, 34.419388, 44.288486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018748, -0.105637, -0.994228,
		-0.999076, 0.040445, 0.014542,
		0.038675, 0.993582, -0.106298,
		30.591734, 34.717461, 44.256596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959961, 34.249256, 43.943810>,  <30.564661, 34.021954, 44.331005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959961, 34.249256, 43.943810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257721, 34.512089, 43.896286>,  <30.436377, 34.669788, 43.867771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257721, 34.512089, 43.896286>,  <29.959961, 34.249256, 43.943810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257721, 34.512089, 43.896286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096618, -0.070070, -0.992852,
		-0.660706, 0.750559, 0.011325,
		0.744401, 0.657077, -0.118813,
		30.481041, 34.709213, 43.860641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723497, 34.783260, 43.473568>,  <29.959961, 34.249256, 43.943810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723497, 34.783260, 43.473568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.120787, 34.822639, 43.448860>,  <30.359159, 34.846268, 43.434036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.120787, 34.822639, 43.448860>,  <29.723497, 34.783260, 43.473568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120787, 34.822639, 43.448860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067106, 0.051825, -0.996399,
		-0.094891, 0.993792, 0.058080,
		0.993223, 0.098447, -0.061771,
		30.418755, 34.852173, 43.430328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822382, 35.220737, 42.970455>,  <29.723497, 34.783260, 43.473568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822382, 35.220737, 42.970455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190243, 35.068130, 43.007721>,  <30.410959, 34.976566, 43.030079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190243, 35.068130, 43.007721>,  <29.822382, 35.220737, 42.970455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190243, 35.068130, 43.007721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141183, 0.099809, -0.984939,
		0.366478, 0.918955, 0.145654,
		0.919653, -0.381522, 0.093163,
		30.466139, 34.953674, 43.035671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.958256, 32.073502, 47.207573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102005, 32.379425, 47.421459>,  <33.188255, 32.562981, 47.549789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102005, 32.379425, 47.421459>,  <32.958256, 32.073502, 47.207573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102005, 32.379425, 47.421459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317046, 0.438845, -0.840772,
		-0.877686, 0.471680, -0.084771,
		0.359374, 0.764809, 0.534712,
		33.209816, 32.608868, 47.581871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602039, 32.571522, 47.035896>,  <32.958256, 32.073502, 47.207573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602039, 32.571522, 47.035896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963245, 32.690285, 47.160095>,  <33.179970, 32.761543, 47.234615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963245, 32.690285, 47.160095>,  <32.602039, 32.571522, 47.035896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963245, 32.690285, 47.160095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257976, 0.203177, -0.944546,
		-0.343531, 0.933040, 0.106876,
		0.903014, 0.296909, 0.310499,
		33.234150, 32.779358, 47.253246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756584, 33.174923, 46.729073>,  <32.602039, 32.571522, 47.035896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756584, 33.174923, 46.729073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.110615, 33.014713, 46.823914>,  <33.323032, 32.918587, 46.880817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.110615, 33.014713, 46.823914>,  <32.756584, 33.174923, 46.729073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110615, 33.014713, 46.823914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331275, 0.184250, -0.925370,
		0.326946, 0.897571, 0.295759,
		0.885078, -0.400523, 0.237103,
		33.376137, 32.894558, 46.895046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202282, 33.626083, 46.323910>,  <32.756584, 33.174923, 46.729073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202282, 33.626083, 46.323910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398640, 33.293060, 46.426571>,  <33.516453, 33.093246, 46.488167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398640, 33.293060, 46.426571>,  <33.202282, 33.626083, 46.323910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398640, 33.293060, 46.426571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353775, -0.078714, -0.932013,
		0.796156, 0.548317, 0.255898,
		0.490896, -0.832558, 0.256649,
		33.545910, 33.043293, 46.503567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868961, 33.641796, 45.941101>,  <33.202282, 33.626083, 46.323910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868961, 33.641796, 45.941101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.814213, 33.253254, 46.018799>,  <33.781364, 33.020126, 46.065418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.814213, 33.253254, 46.018799>,  <33.868961, 33.641796, 45.941101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814213, 33.253254, 46.018799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340543, -0.230278, -0.911593,
		0.930214, -0.058618, 0.362306,
		-0.136867, -0.971358, 0.194246,
		33.773151, 32.961845, 46.077072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512650, 33.307812, 45.725105>,  <33.868961, 33.641796, 45.941101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512650, 33.307812, 45.725105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231064, 33.023918, 45.714428>,  <34.062111, 32.853580, 45.708023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231064, 33.023918, 45.714428>,  <34.512650, 33.307812, 45.725105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231064, 33.023918, 45.714428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375097, -0.339609, -0.862536,
		0.603106, -0.617207, 0.505292,
		-0.703964, -0.709733, -0.026692,
		34.019875, 32.810997, 45.706421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893795, 32.645531, 45.742844>,  <34.512650, 33.307812, 45.725105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893795, 32.645531, 45.742844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526733, 32.565865, 45.605301>,  <34.306496, 32.518066, 45.522774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526733, 32.565865, 45.605301>,  <34.893795, 32.645531, 45.742844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526733, 32.565865, 45.605301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397310, -0.475074, -0.785143,
		-0.006986, -0.857111, 0.515085,
		-0.917658, -0.199163, -0.343857,
		34.251434, 32.506115, 45.502144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880596, 31.886974, 45.590527>,  <34.893795, 32.645531, 45.742844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880596, 31.886974, 45.590527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576572, 32.043190, 45.382763>,  <34.394157, 32.136921, 45.258106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576572, 32.043190, 45.382763>,  <34.880596, 31.886974, 45.590527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576572, 32.043190, 45.382763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194834, -0.625561, -0.755456,
		-0.619934, -0.675403, 0.399390,
		-0.760080, 0.390518, -0.519398,
		34.348553, 32.160351, 45.226940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572968, 31.354918, 45.309887>,  <34.880596, 31.886974, 45.590527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572968, 31.354918, 45.309887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.427345, 31.660393, 45.096630>,  <34.339973, 31.843678, 44.968674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.427345, 31.660393, 45.096630>,  <34.572968, 31.354918, 45.309887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427345, 31.660393, 45.096630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100190, -0.536996, -0.837615,
		-0.925973, -0.358355, 0.118983,
		-0.364056, 0.763687, -0.533147,
		34.318127, 31.889500, 44.936687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008472, 31.045958, 44.995895>,  <34.572968, 31.354918, 45.309887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008472, 31.045958, 44.995895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093136, 31.366270, 44.771770>,  <34.143936, 31.558456, 44.637295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093136, 31.366270, 44.771770>,  <34.008472, 31.045958, 44.995895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093136, 31.366270, 44.771770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010500, -0.575132, -0.817993,
		-0.977286, 0.167255, -0.130143,
		0.211663, 0.800780, -0.560313,
		34.156635, 31.606504, 44.603676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581600, 30.996159, 44.380539>,  <34.008472, 31.045958, 44.995895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581600, 30.996159, 44.380539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.829155, 31.292446, 44.275993>,  <33.977688, 31.470219, 44.213264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.829155, 31.292446, 44.275993>,  <33.581600, 30.996159, 44.380539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829155, 31.292446, 44.275993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055713, -0.290514, -0.955248,
		-0.783501, 0.605752, -0.138528,
		0.618888, 0.740720, -0.261366,
		34.014820, 31.514662, 44.197582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266495, 31.423672, 43.833427>,  <33.581600, 30.996159, 44.380539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266495, 31.423672, 43.833427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666023, 31.412132, 43.817856>,  <33.905743, 31.405209, 43.808514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666023, 31.412132, 43.817856>,  <33.266495, 31.423672, 43.833427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666023, 31.412132, 43.817856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045108, -0.260173, -0.964508,
		0.017698, 0.965131, -0.261168,
		0.998825, -0.028851, -0.038931,
		33.965672, 31.403477, 43.806175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884422, 31.996746, 43.474220>,  <33.266495, 31.423672, 43.833427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884422, 31.996746, 43.474220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.491589, 31.942709, 43.421658>,  <32.255890, 31.910286, 43.390118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.491589, 31.942709, 43.421658>,  <32.884422, 31.996746, 43.474220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491589, 31.942709, 43.421658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156394, 0.195099, 0.968234,
		-0.105164, 0.971435, -0.212731,
		-0.982080, -0.135093, -0.131409,
		32.196964, 31.902182, 43.382236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634739, 32.560318, 43.944046>,  <32.884422, 31.996746, 43.474220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634739, 32.560318, 43.944046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.316425, 32.330208, 43.868366>,  <32.125439, 32.192142, 43.822960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.316425, 32.330208, 43.868366>,  <32.634739, 32.560318, 43.944046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316425, 32.330208, 43.868366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388938, 0.246038, 0.887802,
		-0.464177, 0.780082, -0.419538,
		-0.795781, -0.575271, -0.189198,
		32.077690, 32.157627, 43.811607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968145, 32.963329, 44.105816>,  <32.634739, 32.560318, 43.944046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968145, 32.963329, 44.105816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.833872, 32.586548, 44.103497>,  <31.753307, 32.360477, 44.102104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.833872, 32.586548, 44.103497>,  <31.968145, 32.963329, 44.105816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833872, 32.586548, 44.103497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473248, 0.163325, 0.865657,
		-0.814466, 0.293327, -0.500605,
		-0.335682, -0.941958, -0.005794,
		31.733168, 32.303959, 44.101757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252260, 32.967735, 44.162113>,  <31.968145, 32.963329, 44.105816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252260, 32.967735, 44.162113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387165, 32.617298, 44.299934>,  <31.468107, 32.407036, 44.382629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387165, 32.617298, 44.299934>,  <31.252260, 32.967735, 44.162113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387165, 32.617298, 44.299934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468278, 0.161388, 0.868718,
		-0.816683, -0.454334, -0.355824,
		0.337262, -0.876091, 0.344557,
		31.488344, 32.354469, 44.403301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595371, 32.559681, 44.360352>,  <31.252260, 32.967735, 44.162113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595371, 32.559681, 44.360352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900620, 32.379791, 44.545998>,  <31.083769, 32.271858, 44.657383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900620, 32.379791, 44.545998>,  <30.595371, 32.559681, 44.360352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900620, 32.379791, 44.545998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478674, 0.089155, 0.873454,
		-0.434190, -0.888708, -0.147235,
		0.763119, -0.449722, 0.464111,
		31.129555, 32.244873, 44.685230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229853, 32.217300, 44.902874>,  <30.595371, 32.559681, 44.360352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229853, 32.217300, 44.902874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.609552, 32.191902, 45.026093>,  <30.837372, 32.176662, 45.100025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.609552, 32.191902, 45.026093>,  <30.229853, 32.217300, 44.902874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609552, 32.191902, 45.026093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262190, 0.381242, 0.886516,
		-0.173729, -0.922292, 0.345246,
		0.949250, -0.063494, 0.308049,
		30.894327, 32.172855, 45.118507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304571, 31.757612, 45.505089>,  <30.229853, 32.217300, 44.902874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304571, 31.757612, 45.505089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.609184, 32.015114, 45.535160>,  <30.791952, 32.169613, 45.553204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.609184, 32.015114, 45.535160>,  <30.304571, 31.757612, 45.505089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609184, 32.015114, 45.535160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167607, 0.083561, 0.982306,
		0.626082, -0.760656, 0.171532,
		0.761531, 0.643754, 0.075175,
		30.837643, 32.208241, 45.557713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780102, 31.577026, 46.065697>,  <30.304571, 31.757612, 45.505089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780102, 31.577026, 46.065697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.871891, 31.960861, 46.000542>,  <30.926966, 32.191162, 45.961449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.871891, 31.960861, 46.000542>,  <30.780102, 31.577026, 46.065697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871891, 31.960861, 46.000542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032852, 0.159625, 0.986631,
		0.972760, -0.231758, 0.005105,
		0.229474, 0.959587, -0.162891,
		30.940733, 32.248737, 45.951675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212297, 31.743477, 46.611061>,  <30.780102, 31.577026, 46.065697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212297, 31.743477, 46.611061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.085892, 32.102844, 46.489090>,  <31.010048, 32.318462, 46.415905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.085892, 32.102844, 46.489090>,  <31.212297, 31.743477, 46.611061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085892, 32.102844, 46.489090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315828, 0.203454, 0.926747,
		0.894643, 0.389172, 0.219451,
		-0.316015, 0.898416, -0.304930,
		30.991087, 32.372368, 46.397610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395039, 32.238178, 47.132805>,  <31.212297, 31.743477, 46.611061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395039, 32.238178, 47.132805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108223, 32.417381, 46.919212>,  <30.936132, 32.524902, 46.791058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108223, 32.417381, 46.919212>,  <31.395039, 32.238178, 47.132805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108223, 32.417381, 46.919212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316752, 0.472980, 0.822166,
		0.620902, 0.758668, -0.197238,
		-0.717041, 0.448009, -0.533985,
		30.893110, 32.551785, 46.759018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339178, 32.917461, 47.491165>,  <31.395039, 32.238178, 47.132805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339178, 32.917461, 47.491165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.021322, 32.916702, 47.248337>,  <30.830608, 32.916248, 47.102638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.021322, 32.916702, 47.248337>,  <31.339178, 32.917461, 47.491165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021322, 32.916702, 47.248337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417066, 0.728356, 0.543649,
		0.441135, 0.685197, -0.579574,
		-0.794642, -0.001898, -0.607075,
		30.782930, 32.916134, 47.066216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025644, 33.571491, 47.513897>,  <31.339178, 32.917461, 47.491165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025644, 33.571491, 47.513897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.705315, 33.364536, 47.393242>,  <30.513117, 33.240364, 47.320850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.705315, 33.364536, 47.393242>,  <31.025644, 33.571491, 47.513897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705315, 33.364536, 47.393242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583262, 0.559441, 0.588924,
		-0.135954, 0.647559, -0.749788,
		-0.800826, -0.517390, -0.301638,
		30.465067, 33.209320, 47.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556355, 34.056454, 47.350353>,  <31.025644, 33.571491, 47.513897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556355, 34.056454, 47.350353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.366753, 33.716774, 47.443466>,  <30.252991, 33.512966, 47.499332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.366753, 33.716774, 47.443466>,  <30.556355, 34.056454, 47.350353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366753, 33.716774, 47.443466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623689, 0.510416, 0.592020,
		-0.621555, 0.135438, -0.771574,
		-0.474005, -0.849195, 0.232780,
		30.224550, 33.462017, 47.513302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907381, 34.311039, 47.367729>,  <30.556355, 34.056454, 47.350353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907381, 34.311039, 47.367729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.918699, 33.950630, 47.540871>,  <29.925491, 33.734386, 47.644756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.918699, 33.950630, 47.540871>,  <29.907381, 34.311039, 47.367729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918699, 33.950630, 47.540871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606170, 0.328857, 0.724162,
		-0.794831, -0.282877, -0.536865,
		0.028297, -0.901018, 0.432858,
		29.927189, 33.680325, 47.670727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356718, 34.619080, 47.772392>,  <29.907381, 34.311039, 47.367729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356718, 34.619080, 47.772392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.476074, 34.991989, 47.854202>,  <29.547688, 35.215736, 47.903286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.476074, 34.991989, 47.854202>,  <29.356718, 34.619080, 47.772392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476074, 34.991989, 47.854202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018215, 0.208682, -0.977814,
		-0.954270, 0.295496, 0.045288,
		0.298391, 0.932274, 0.204521,
		29.565592, 35.271671, 47.915558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064260, 34.986317, 47.317055>,  <29.356718, 34.619080, 47.772392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064260, 34.986317, 47.317055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.361507, 35.237457, 47.409637>,  <29.539856, 35.388142, 47.465187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.361507, 35.237457, 47.409637>,  <29.064260, 34.986317, 47.317055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361507, 35.237457, 47.409637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185972, 0.138489, -0.972746,
		-0.642798, 0.765911, -0.013849,
		0.743119, 0.627855, 0.231458,
		29.584442, 35.425816, 47.479076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066677, 35.530178, 46.934299>,  <29.064260, 34.986317, 47.317055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066677, 35.530178, 46.934299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.450716, 35.547272, 47.044849>,  <29.681139, 35.557526, 47.111179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.450716, 35.547272, 47.044849>,  <29.066677, 35.530178, 46.934299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450716, 35.547272, 47.044849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260322, 0.224582, -0.939040,
		-0.102194, 0.973518, 0.204497,
		0.960098, 0.042730, 0.276379,
		29.738745, 35.560089, 47.127762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256601, 36.133884, 46.615822>,  <29.066677, 35.530178, 46.934299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256601, 36.133884, 46.615822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571957, 35.894810, 46.674080>,  <29.761169, 35.751366, 46.709034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571957, 35.894810, 46.674080>,  <29.256601, 36.133884, 46.615822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571957, 35.894810, 46.674080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168943, -0.017297, -0.985474,
		0.591523, 0.801544, 0.087338,
		0.788390, -0.597686, 0.145647,
		29.808474, 35.715504, 46.717773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638235, 36.248474, 46.121464>,  <29.256601, 36.133884, 46.615822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638235, 36.248474, 46.121464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883080, 35.970905, 46.273148>,  <30.029985, 35.804363, 46.364159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883080, 35.970905, 46.273148>,  <29.638235, 36.248474, 46.121464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883080, 35.970905, 46.273148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301370, -0.238647, -0.923160,
		0.731094, 0.679357, 0.063048,
		0.612109, -0.693918, 0.379211,
		30.066711, 35.762730, 46.386909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278509, 36.379383, 45.866467>,  <29.638235, 36.248474, 46.121464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278509, 36.379383, 45.866467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.237152, 35.991894, 45.956707>,  <30.212337, 35.759399, 46.010849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.237152, 35.991894, 45.956707>,  <30.278509, 36.379383, 45.866467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237152, 35.991894, 45.956707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338096, -0.247536, -0.907974,
		0.935415, -0.017605, 0.353114,
		-0.103394, -0.968719, 0.225597,
		30.206135, 35.701279, 46.024387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950529, 36.117184, 45.696396>,  <30.278509, 36.379383, 45.866467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950529, 36.117184, 45.696396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.654747, 35.848404, 45.679939>,  <30.477278, 35.687138, 45.670067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.654747, 35.848404, 45.679939>,  <30.950529, 36.117184, 45.696396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654747, 35.848404, 45.679939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386344, -0.373521, -0.843339,
		0.551314, -0.639505, 0.535805,
		-0.739454, -0.671950, -0.041142,
		30.432911, 35.646820, 45.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642639, 35.959057, 45.822880>,  <30.950529, 36.117184, 45.696396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642639, 35.959057, 45.822880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.766434, 36.338806, 45.801292>,  <31.840710, 36.566654, 45.788342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.766434, 36.338806, 45.801292>,  <31.642639, 35.959057, 45.822880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766434, 36.338806, 45.801292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205618, 0.122224, 0.970970,
		0.928408, -0.289403, 0.233034,
		0.309484, 0.949372, -0.053967,
		31.859280, 36.623619, 45.785103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944620, 36.027050, 46.456409>,  <31.642639, 35.959057, 45.822880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944620, 36.027050, 46.456409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913681, 36.413010, 46.356026>,  <31.895119, 36.644585, 46.295795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913681, 36.413010, 46.356026>,  <31.944620, 36.027050, 46.456409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913681, 36.413010, 46.356026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027689, 0.253694, 0.966888,
		0.996620, 0.067836, -0.046339,
		-0.077346, 0.964903, -0.250958,
		31.890478, 36.702480, 46.280739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216686, 36.373535, 47.099594>,  <31.944620, 36.027050, 46.456409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216686, 36.373535, 47.099594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048214, 36.674511, 46.897030>,  <31.947130, 36.855095, 46.775494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048214, 36.674511, 46.897030>,  <32.216686, 36.373535, 47.099594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048214, 36.674511, 46.897030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042008, 0.541563, 0.839610,
		0.906002, 0.374902, -0.196488,
		-0.421183, 0.752435, -0.506406,
		31.921860, 36.900242, 46.745110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613483, 36.996208, 47.267681>,  <32.216686, 36.373535, 47.099594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613483, 36.996208, 47.267681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252796, 37.081322, 47.117146>,  <32.036385, 37.132389, 47.026825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252796, 37.081322, 47.117146>,  <32.613483, 36.996208, 47.267681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252796, 37.081322, 47.117146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132022, 0.693388, 0.708367,
		0.411679, 0.688431, -0.597146,
		-0.901715, 0.212783, -0.376341,
		31.982281, 37.145157, 47.004242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569916, 37.695652, 47.224209>,  <32.613483, 36.996208, 47.267681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569916, 37.695652, 47.224209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185814, 37.584183, 47.230545>,  <31.955353, 37.517303, 47.234344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185814, 37.584183, 47.230545>,  <32.569916, 37.695652, 47.224209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185814, 37.584183, 47.230545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199901, 0.726216, 0.657762,
		-0.194800, 0.628454, -0.753060,
		-0.960257, -0.278669, 0.015839,
		31.897738, 37.500584, 47.235298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129360, 38.358738, 47.154327>,  <32.569916, 37.695652, 47.224209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129360, 38.358738, 47.154327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.882675, 38.085075, 47.310070>,  <31.734663, 37.920879, 47.403515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.882675, 38.085075, 47.310070>,  <32.129360, 38.358738, 47.154327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882675, 38.085075, 47.310070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346154, 0.679923, 0.646438,
		-0.706993, 0.263892, -0.656141,
		-0.616715, -0.684153, 0.389354,
		31.697660, 37.879829, 47.426876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394855, 38.611397, 47.144474>,  <32.129360, 38.358738, 47.154327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394855, 38.611397, 47.144474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444000, 38.331192, 47.425667>,  <31.473488, 38.163071, 47.594383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444000, 38.331192, 47.425667>,  <31.394855, 38.611397, 47.144474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444000, 38.331192, 47.425667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253631, 0.662665, 0.704661,
		-0.959466, -0.264876, -0.096254,
		0.122863, -0.700511, 0.702986,
		31.480860, 38.121040, 47.636562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945389, 38.777309, 47.637440>,  <31.394855, 38.611397, 47.144474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945389, 38.777309, 47.637440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.178160, 38.514912, 47.829700>,  <31.317822, 38.357471, 47.945057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.178160, 38.514912, 47.829700>,  <30.945389, 38.777309, 47.637440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178160, 38.514912, 47.829700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251466, 0.416925, 0.873463,
		-0.773386, -0.629161, 0.077660,
		0.581927, -0.655995, 0.480656,
		31.352737, 38.318111, 47.973896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495508, 38.502666, 48.134903>,  <30.945389, 38.777309, 47.637440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495508, 38.502666, 48.134903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874191, 38.463943, 48.257786>,  <31.101400, 38.440708, 48.331516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874191, 38.463943, 48.257786>,  <30.495508, 38.502666, 48.134903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874191, 38.463943, 48.257786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257023, 0.347789, 0.901655,
		-0.194131, -0.932562, 0.304372,
		0.946706, -0.096809, 0.307206,
		31.158203, 38.434902, 48.349949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.773262, 34.239147, 33.535629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166359, 34.306572, 33.566128>,  <35.402218, 34.347027, 33.584427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166359, 34.306572, 33.566128>,  <34.773262, 34.239147, 33.535629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166359, 34.306572, 33.566128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144087, 0.438878, 0.886919,
		0.116037, -0.882595, 0.455589,
		0.982738, 0.168560, 0.076244,
		35.461182, 34.357140, 33.589001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963467, 34.043812, 34.146847>,  <34.773262, 34.239147, 33.535629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963467, 34.043812, 34.146847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254910, 34.299923, 34.049545>,  <35.429775, 34.453590, 33.991165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254910, 34.299923, 34.049545>,  <34.963467, 34.043812, 34.146847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254910, 34.299923, 34.049545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088138, 0.439851, 0.893735,
		0.679236, -0.629742, 0.376912,
		0.728608, 0.640278, -0.243258,
		35.473492, 34.492008, 33.976566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465649, 34.023201, 34.733028>,  <34.963467, 34.043812, 34.146847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465649, 34.023201, 34.733028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504807, 34.371811, 34.540836>,  <35.528301, 34.580978, 34.425522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504807, 34.371811, 34.540836>,  <35.465649, 34.023201, 34.733028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504807, 34.371811, 34.540836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023513, 0.480635, 0.876606,
		0.994919, -0.097109, 0.026558,
		0.097891, 0.871528, -0.480476,
		35.534172, 34.633270, 34.396694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100796, 34.406631, 35.121307>,  <35.465649, 34.023201, 34.733028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100796, 34.406631, 35.121307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914856, 34.692932, 34.912842>,  <35.803291, 34.864712, 34.787762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914856, 34.692932, 34.912842>,  <36.100796, 34.406631, 35.121307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914856, 34.692932, 34.912842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134694, 0.524609, 0.840621,
		0.875083, 0.460962, -0.147458,
		-0.464852, 0.715751, -0.521165,
		35.775402, 34.907658, 34.756493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384304, 35.001884, 35.325035>,  <36.100796, 34.406631, 35.121307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384304, 35.001884, 35.325035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033222, 35.120102, 35.174152>,  <35.822571, 35.191032, 35.083622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033222, 35.120102, 35.174152>,  <36.384304, 35.001884, 35.325035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033222, 35.120102, 35.174152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154178, 0.571145, 0.806240,
		0.453715, 0.765800, -0.455733,
		-0.877708, 0.295539, -0.377207,
		35.769909, 35.208763, 35.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309193, 35.669075, 35.542580>,  <36.384304, 35.001884, 35.325035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309193, 35.669075, 35.542580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938068, 35.583733, 35.420170>,  <35.715393, 35.532528, 35.346725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938068, 35.583733, 35.420170>,  <36.309193, 35.669075, 35.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938068, 35.583733, 35.420170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372894, 0.554631, 0.743865,
		0.011025, 0.804279, -0.594149,
		-0.927808, -0.213353, -0.306026,
		35.659725, 35.519726, 35.328362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928448, 36.265774, 35.380615>,  <36.309193, 35.669075, 35.542580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928448, 36.265774, 35.380615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617210, 36.031490, 35.471413>,  <35.430470, 35.890923, 35.525890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617210, 36.031490, 35.471413>,  <35.928448, 36.265774, 35.380615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617210, 36.031490, 35.471413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242970, 0.613861, 0.751092,
		-0.579259, 0.529267, -0.619949,
		-0.778091, -0.585705, 0.226989,
		35.383781, 35.855778, 35.539509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428612, 36.727913, 35.661598>,  <35.928448, 36.265774, 35.380615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428612, 36.727913, 35.661598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266487, 36.379803, 35.773563>,  <35.169212, 36.170937, 35.840740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266487, 36.379803, 35.773563>,  <35.428612, 36.727913, 35.661598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266487, 36.379803, 35.773563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557187, 0.477914, 0.679074,
		-0.724750, 0.119277, -0.678609,
		-0.405314, -0.870271, 0.279909,
		35.144894, 36.118721, 35.857536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701813, 36.846561, 35.778816>,  <35.428612, 36.727913, 35.661598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701813, 36.846561, 35.778816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780861, 36.518715, 35.993916>,  <34.828289, 36.322006, 36.122974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780861, 36.518715, 35.993916>,  <34.701813, 36.846561, 35.778816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780861, 36.518715, 35.993916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451055, 0.411019, 0.792220,
		-0.870342, -0.399113, -0.288467,
		0.197620, -0.819617, 0.537749,
		34.840145, 36.272831, 36.155239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090321, 36.670349, 36.176468>,  <34.701813, 36.846561, 35.778816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090321, 36.670349, 36.176468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362972, 36.461056, 36.381058>,  <34.526566, 36.335480, 36.503811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362972, 36.461056, 36.381058>,  <34.090321, 36.670349, 36.176468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362972, 36.461056, 36.381058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548956, 0.096468, 0.830266,
		-0.483763, -0.846713, -0.221476,
		0.681631, -0.523232, 0.511475,
		34.567463, 36.304085, 36.534500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679230, 36.181534, 36.607586>,  <34.090321, 36.670349, 36.176468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679230, 36.181534, 36.607586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045677, 36.219013, 36.763504>,  <34.265545, 36.241501, 36.857056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045677, 36.219013, 36.763504>,  <33.679230, 36.181534, 36.607586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045677, 36.219013, 36.763504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387767, -0.039712, 0.920902,
		0.101771, -0.994808, -0.000046,
		0.916122, 0.093703, 0.389795,
		34.320515, 36.247124, 36.880444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691292, 35.771286, 37.171219>,  <33.679230, 36.181534, 36.607586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691292, 35.771286, 37.171219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982632, 36.033516, 37.250946>,  <34.157436, 36.190853, 37.298782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982632, 36.033516, 37.250946>,  <33.691292, 35.771286, 37.171219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982632, 36.033516, 37.250946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306439, 0.051468, 0.950498,
		0.612860, -0.753377, 0.238379,
		0.728353, 0.655571, 0.199321,
		34.201138, 36.230186, 37.310741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753548, 35.039341, 37.275070>,  <33.691292, 35.771286, 37.171219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753548, 35.039341, 37.275070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398735, 34.856091, 37.252090>,  <33.185848, 34.746140, 37.238304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398735, 34.856091, 37.252090>,  <33.753548, 35.039341, 37.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398735, 34.856091, 37.252090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133828, -0.136030, -0.981624,
		0.441892, -0.878418, 0.181973,
		-0.887030, -0.458125, -0.057446,
		33.132626, 34.718655, 37.234856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739464, 34.520203, 36.703945>,  <33.753548, 35.039341, 37.275070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739464, 34.520203, 36.703945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345383, 34.565609, 36.755318>,  <33.108936, 34.592854, 36.786140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345383, 34.565609, 36.755318>,  <33.739464, 34.520203, 36.703945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345383, 34.565609, 36.755318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160797, -0.352588, -0.921860,
		-0.059363, -0.928868, 0.365623,
		-0.985200, 0.113516, 0.128429,
		33.049824, 34.599663, 36.793846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494770, 33.993259, 36.296188>,  <33.739464, 34.520203, 36.703945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494770, 33.993259, 36.296188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163448, 34.212254, 36.343800>,  <32.964657, 34.343651, 36.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163448, 34.212254, 36.343800>,  <33.494770, 33.993259, 36.296188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163448, 34.212254, 36.343800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324819, -0.296140, -0.898217,
		-0.456517, -0.782658, 0.423129,
		-0.828302, 0.547491, 0.119030,
		32.914959, 34.376499, 36.379509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978081, 33.543793, 36.104237>,  <33.494770, 33.993259, 36.296188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978081, 33.543793, 36.104237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835995, 33.916660, 36.076298>,  <32.750744, 34.140381, 36.059532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835995, 33.916660, 36.076298>,  <32.978081, 33.543793, 36.104237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835995, 33.916660, 36.076298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298660, -0.183981, -0.936458,
		-0.885789, -0.311785, 0.343755,
		-0.355218, 0.932170, -0.069851,
		32.729427, 34.196312, 36.055344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201084, 33.497887, 36.003036>,  <32.978081, 33.543793, 36.104237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201084, 33.497887, 36.003036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355129, 33.835258, 35.853203>,  <32.447556, 34.037682, 35.763302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355129, 33.835258, 35.853203>,  <32.201084, 33.497887, 36.003036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355129, 33.835258, 35.853203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422747, -0.199574, -0.883999,
		-0.820349, 0.498794, 0.279700,
		0.385112, 0.843430, -0.374584,
		32.470661, 34.088287, 35.740826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662571, 33.759888, 35.626633>,  <32.201084, 33.497887, 36.003036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662571, 33.759888, 35.626633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978783, 33.967281, 35.496258>,  <32.168510, 34.091717, 35.418034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978783, 33.967281, 35.496258>,  <31.662571, 33.759888, 35.626633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978783, 33.967281, 35.496258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372881, -0.014700, -0.927763,
		-0.485822, 0.854961, 0.181713,
		0.790529, 0.518484, -0.325940,
		32.215942, 34.122826, 35.398476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430387, 34.357952, 35.192520>,  <31.662571, 33.759888, 35.626633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430387, 34.357952, 35.192520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812258, 34.285397, 35.098125>,  <32.041382, 34.241863, 35.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812258, 34.285397, 35.098125>,  <31.430387, 34.357952, 35.192520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812258, 34.285397, 35.098125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278006, -0.260180, -0.924672,
		0.106322, 0.948370, -0.298814,
		0.954677, -0.181385, -0.235989,
		32.098660, 34.230980, 35.027328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547276, 34.722679, 34.614033>,  <31.430387, 34.357952, 35.192520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547276, 34.722679, 34.614033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857784, 34.471325, 34.634163>,  <32.044090, 34.320511, 34.646240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857784, 34.471325, 34.634163>,  <31.547276, 34.722679, 34.614033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857784, 34.471325, 34.634163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084801, -0.183202, -0.979411,
		0.624666, 0.756023, -0.195503,
		0.776274, -0.628384, 0.050328,
		32.090668, 34.282810, 34.649261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949978, 34.916363, 34.069344>,  <31.547276, 34.722679, 34.614033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949978, 34.916363, 34.069344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050529, 34.538670, 34.154419>,  <32.110863, 34.312054, 34.205463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050529, 34.538670, 34.154419>,  <31.949978, 34.916363, 34.069344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050529, 34.538670, 34.154419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238007, -0.152692, -0.959186,
		0.938168, 0.291742, 0.186350,
		0.251381, -0.944231, 0.212688,
		32.125942, 34.255402, 34.218224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585365, 34.723286, 33.790871>,  <31.949978, 34.916363, 34.069344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585365, 34.723286, 33.790871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407139, 34.367008, 33.826965>,  <32.300201, 34.153244, 33.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407139, 34.367008, 33.826965>,  <32.585365, 34.723286, 33.790871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407139, 34.367008, 33.826965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023138, -0.112216, -0.993414,
		0.894949, -0.440546, 0.070608,
		-0.445568, -0.890689, 0.090234,
		32.273468, 34.099800, 33.854034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886604, 34.252068, 33.274811>,  <32.585365, 34.723286, 33.790871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886604, 34.252068, 33.274811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576744, 34.016460, 33.366875>,  <32.390827, 33.875095, 33.422115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576744, 34.016460, 33.366875>,  <32.886604, 34.252068, 33.274811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576744, 34.016460, 33.366875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096292, -0.249851, -0.963484,
		0.625014, -0.768528, 0.136830,
		-0.774652, -0.589016, 0.230163,
		32.344349, 33.839756, 33.435925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053059, 33.559540, 32.974113>,  <32.886604, 34.252068, 33.274811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053059, 33.559540, 32.974113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655823, 33.582134, 33.015247>,  <32.417480, 33.595692, 33.039928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655823, 33.582134, 33.015247>,  <33.053059, 33.559540, 32.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655823, 33.582134, 33.015247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116709, -0.386039, -0.915070,
		-0.011993, -0.920752, 0.389965,
		-0.993094, 0.056487, 0.102830,
		32.357895, 33.599079, 33.046097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752888, 32.984257, 33.004848>,  <33.053059, 33.559540, 32.974113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752888, 32.984257, 33.004848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455566, 33.201813, 32.849060>,  <32.277176, 33.332348, 32.755589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455566, 33.201813, 32.849060>,  <32.752888, 32.984257, 33.004848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455566, 33.201813, 32.849060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085342, -0.654544, -0.751192,
		-0.663514, -0.525107, 0.532928,
		-0.743280, 0.543907, -0.389485,
		32.232574, 33.364979, 32.732220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141304, 32.460415, 32.861599>,  <32.752888, 32.984257, 33.004848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141304, 32.460415, 32.861599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107384, 32.322601, 33.235573>,  <33.087032, 32.239914, 33.459957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107384, 32.322601, 33.235573>,  <33.141304, 32.460415, 32.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107384, 32.322601, 33.235573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926411, -0.318192, -0.201289,
		0.366840, -0.883205, -0.292195,
		-0.084805, -0.344534, 0.934936,
		33.081944, 32.219242, 33.516052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132198, 31.728594, 32.883575>,  <33.141304, 32.460415, 32.861599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132198, 31.728594, 32.883575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942917, 31.902973, 33.189785>,  <32.829350, 32.007599, 33.373512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942917, 31.902973, 33.189785>,  <33.132198, 31.728594, 32.883575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942917, 31.902973, 33.189785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853429, -0.442370, -0.275624,
		0.218488, -0.783747, 0.581380,
		-0.473204, 0.435946, 0.765525,
		32.800957, 32.033756, 33.419441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550819, 31.150299, 32.855930>,  <33.132198, 31.728594, 32.883575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550819, 31.150299, 32.855930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740627, 30.800644, 32.897339>,  <33.854511, 30.590851, 32.922184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740627, 30.800644, 32.897339>,  <33.550819, 31.150299, 32.855930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740627, 30.800644, 32.897339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332815, -0.069295, 0.940442,
		-0.814903, -0.480709, -0.323808,
		0.474517, -0.874138, 0.103519,
		33.882984, 30.538403, 32.928394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068077, 30.694567, 33.147598>,  <33.550819, 31.150299, 32.855930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068077, 30.694567, 33.147598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436672, 30.573263, 33.244675>,  <33.657829, 30.500481, 33.302921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436672, 30.573263, 33.244675>,  <33.068077, 30.694567, 33.147598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436672, 30.573263, 33.244675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278273, -0.079546, 0.957202,
		-0.270975, -0.949582, -0.157690,
		0.921486, -0.303259, 0.242688,
		33.713120, 30.482286, 33.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987965, 30.024294, 33.544147>,  <33.068077, 30.694567, 33.147598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987965, 30.024294, 33.544147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359268, 30.140289, 33.637306>,  <33.582050, 30.209887, 33.693199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359268, 30.140289, 33.637306>,  <32.987965, 30.024294, 33.544147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359268, 30.140289, 33.637306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228949, -0.047963, 0.972256,
		0.293115, -0.955827, 0.021870,
		0.928259, 0.289990, 0.232894,
		33.637745, 30.227285, 33.707176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278454, 29.563560, 34.132370>,  <32.987965, 30.024294, 33.544147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278454, 29.563560, 34.132370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487427, 29.904633, 34.131985>,  <33.612812, 30.109276, 34.131752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487427, 29.904633, 34.131985>,  <33.278454, 29.563560, 34.132370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487427, 29.904633, 34.131985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053068, -0.031386, 0.998098,
		0.851029, -0.521488, -0.061647,
		0.522431, 0.852681, -0.000964,
		33.644157, 30.160437, 34.131695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868553, 29.488642, 34.521439>,  <33.278454, 29.563560, 34.132370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868553, 29.488642, 34.521439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796192, 29.881641, 34.539207>,  <33.752777, 30.117441, 34.549870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796192, 29.881641, 34.539207>,  <33.868553, 29.488642, 34.521439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796192, 29.881641, 34.539207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155129, -0.073107, 0.985186,
		0.971190, 0.171332, 0.165639,
		-0.180903, 0.982497, 0.044422,
		33.741920, 30.176390, 34.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117496, 29.715004, 35.140759>,  <33.868553, 29.488642, 34.521439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117496, 29.715004, 35.140759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859020, 30.008127, 35.055504>,  <33.703934, 30.184002, 35.004349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859020, 30.008127, 35.055504>,  <34.117496, 29.715004, 35.140759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859020, 30.008127, 35.055504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228807, 0.080407, 0.970145,
		0.728069, 0.675668, 0.115714,
		-0.646192, 0.732808, -0.213139,
		33.665161, 30.227970, 34.991562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303864, 30.248354, 35.558716>,  <34.117496, 29.715004, 35.140759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303864, 30.248354, 35.558716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920948, 30.303486, 35.457047>,  <33.691200, 30.336565, 35.396046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920948, 30.303486, 35.457047>,  <34.303864, 30.248354, 35.558716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920948, 30.303486, 35.457047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229777, 0.170981, 0.958106,
		0.175515, 0.975586, -0.132007,
		-0.957286, 0.137829, -0.254177,
		33.633762, 30.344835, 35.380795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144943, 30.782846, 35.921036>,  <34.303864, 30.248354, 35.558716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144943, 30.782846, 35.921036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782440, 30.644943, 35.823189>,  <33.564938, 30.562201, 35.764481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782440, 30.644943, 35.823189>,  <34.144943, 30.782846, 35.921036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782440, 30.644943, 35.823189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349728, 0.286419, 0.891994,
		-0.237459, 0.893927, -0.380142,
		-0.906258, -0.344758, -0.244619,
		33.510563, 30.541515, 35.749802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638760, 31.347261, 36.071785>,  <34.144943, 30.782846, 35.921036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638760, 31.347261, 36.071785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440487, 31.000624, 36.094818>,  <33.321522, 30.792641, 36.108639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440487, 31.000624, 36.094818>,  <33.638760, 31.347261, 36.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440487, 31.000624, 36.094818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381028, 0.276568, 0.882229,
		-0.780459, 0.415363, -0.467287,
		-0.495682, -0.866593, 0.057585,
		33.291782, 30.740646, 36.112095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947964, 31.456690, 36.422832>,  <33.638760, 31.347261, 36.071785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947964, 31.456690, 36.422832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977917, 31.058987, 36.453403>,  <32.995888, 30.820364, 36.471745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977917, 31.058987, 36.453403>,  <32.947964, 31.456690, 36.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977917, 31.058987, 36.453403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431057, 0.036833, 0.901572,
		-0.899212, -0.100457, -0.425825,
		0.074885, -0.994259, 0.076423,
		33.000381, 30.760710, 36.476330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352982, 31.325821, 36.688992>,  <32.947964, 31.456690, 36.422832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352982, 31.325821, 36.688992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592274, 31.016178, 36.771828>,  <32.735847, 30.830393, 36.821529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592274, 31.016178, 36.771828>,  <32.352982, 31.325821, 36.688992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592274, 31.016178, 36.771828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260987, 0.056119, 0.963710,
		-0.757634, -0.630565, -0.168459,
		0.598228, -0.774105, 0.207087,
		32.771744, 30.783947, 36.833954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986729, 30.881760, 37.060341>,  <32.352982, 31.325821, 36.688992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986729, 30.881760, 37.060341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356701, 30.764824, 37.157536>,  <32.578686, 30.694662, 37.215851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356701, 30.764824, 37.157536>,  <31.986729, 30.881760, 37.060341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356701, 30.764824, 37.157536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236675, 0.057344, 0.969895,
		-0.297473, -0.954594, -0.016150,
		0.924930, -0.292340, 0.242986,
		32.634178, 30.677122, 37.230431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892921, 30.438751, 37.550003>,  <31.986729, 30.881760, 37.060341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892921, 30.438751, 37.550003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277855, 30.535395, 37.599865>,  <32.508816, 30.593380, 37.629784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277855, 30.535395, 37.599865>,  <31.892921, 30.438751, 37.550003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277855, 30.535395, 37.599865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136942, 0.034668, 0.989972,
		0.234864, -0.969754, 0.066449,
		0.962333, 0.241608, 0.124658,
		32.566555, 30.607878, 37.637264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181049, 29.980682, 38.096241>,  <31.892921, 30.438751, 37.550003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181049, 29.980682, 38.096241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430321, 30.293440, 38.103027>,  <32.579884, 30.481094, 38.107098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430321, 30.293440, 38.103027>,  <32.181049, 29.980682, 38.096241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430321, 30.293440, 38.103027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108439, 0.064905, 0.991982,
		0.774524, -0.620023, 0.125235,
		0.623180, 0.781894, 0.016964,
		32.617275, 30.528008, 38.108116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427738, 30.009418, 38.812458>,  <32.181049, 29.980682, 38.096241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427738, 30.009418, 38.812458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610615, 30.336458, 38.672451>,  <32.720341, 30.532682, 38.588448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610615, 30.336458, 38.672451>,  <32.427738, 30.009418, 38.812458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610615, 30.336458, 38.672451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255525, 0.256210, 0.932236,
		0.851872, -0.515646, -0.091780,
		0.457188, 0.817598, -0.350019,
		32.747772, 30.581738, 38.567444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085197, 30.126482, 39.162758>,  <32.427738, 30.009418, 38.812458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085197, 30.126482, 39.162758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939606, 30.473249, 39.026539>,  <32.852249, 30.681311, 38.944809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939606, 30.473249, 39.026539>,  <33.085197, 30.126482, 39.162758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939606, 30.473249, 39.026539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114850, 0.404610, 0.907249,
		0.924299, 0.291108, -0.246835,
		-0.363979, 0.866918, -0.340547,
		32.830414, 30.733324, 38.924374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548889, 30.690399, 39.436615>,  <33.085197, 30.126482, 39.162758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548889, 30.690399, 39.436615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188980, 30.836786, 39.341553>,  <32.973034, 30.924618, 39.284515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188980, 30.836786, 39.341553>,  <33.548889, 30.690399, 39.436615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188980, 30.836786, 39.341553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059175, 0.437272, 0.897381,
		0.432333, 0.821500, -0.371788,
		-0.899770, 0.365967, -0.237659,
		32.919048, 30.946577, 39.270256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613972, 31.351347, 39.606461>,  <33.548889, 30.690399, 39.436615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613972, 31.351347, 39.606461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221973, 31.271788, 39.609375>,  <32.986774, 31.224052, 39.611126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221973, 31.271788, 39.609375>,  <33.613972, 31.351347, 39.606461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221973, 31.271788, 39.609375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079475, 0.424639, 0.901868,
		-0.182474, 0.883245, -0.431950,
		-0.979993, -0.198897, 0.007290,
		32.927975, 31.212118, 39.611561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268898, 31.953043, 39.979832>,  <33.613972, 31.351347, 39.606461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268898, 31.953043, 39.979832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999756, 31.657137, 39.981373>,  <32.838272, 31.479593, 39.982296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999756, 31.657137, 39.981373>,  <33.268898, 31.953043, 39.979832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999756, 31.657137, 39.981373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313090, 0.289484, 0.904529,
		-0.670255, 0.607410, -0.426394,
		-0.672855, -0.739765, 0.003854,
		32.797901, 31.435207, 39.982529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661110, 32.318329, 40.114479>,  <33.268898, 31.953043, 39.979832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661110, 32.318329, 40.114479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569672, 31.936146, 40.189140>,  <32.514809, 31.706835, 40.233936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569672, 31.936146, 40.189140>,  <32.661110, 32.318329, 40.114479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569672, 31.936146, 40.189140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389636, 0.265500, 0.881869,
		-0.892148, 0.128861, -0.432973,
		-0.228593, -0.955460, 0.186657,
		32.501095, 31.649508, 40.245136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941540, 32.223145, 40.263275>,  <32.661110, 32.318329, 40.114479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941540, 32.223145, 40.263275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115353, 31.918089, 40.454926>,  <32.219639, 31.735054, 40.569916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115353, 31.918089, 40.454926>,  <31.941540, 32.223145, 40.263275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115353, 31.918089, 40.454926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461282, 0.268458, 0.845665,
		-0.773565, -0.588478, -0.235140,
		0.434530, -0.762643, 0.479124,
		32.245712, 31.689297, 40.598663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426867, 32.003292, 40.610844>,  <31.941540, 32.223145, 40.263275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426867, 32.003292, 40.610844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747107, 31.845007, 40.790821>,  <31.939251, 31.750036, 40.898808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747107, 31.845007, 40.790821>,  <31.426867, 32.003292, 40.610844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747107, 31.845007, 40.790821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407738, 0.190463, 0.893014,
		-0.439075, -0.898407, -0.008863,
		0.800602, -0.395714, 0.449942,
		31.987288, 31.726294, 40.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158659, 31.589766, 41.131207>,  <31.426867, 32.003292, 40.610844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158659, 31.589766, 41.131207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547325, 31.616896, 41.221771>,  <31.780525, 31.633175, 41.276112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547325, 31.616896, 41.221771>,  <31.158659, 31.589766, 41.131207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547325, 31.616896, 41.221771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230740, 0.064612, 0.970868,
		0.051205, -0.995604, 0.078428,
		0.971667, 0.067810, 0.226418,
		31.838825, 31.637243, 41.289696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214443, 31.143412, 41.706829>,  <31.158659, 31.589766, 41.131207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214443, 31.143412, 41.706829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522341, 31.398180, 41.723915>,  <31.707079, 31.551041, 41.734165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522341, 31.398180, 41.723915>,  <31.214443, 31.143412, 41.706829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522341, 31.398180, 41.723915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033593, -0.026404, 0.999087,
		0.637469, -0.770475, 0.001072,
		0.769743, 0.636923, 0.042715,
		31.753263, 31.589256, 41.736729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756662, 30.857943, 42.233505>,  <31.214443, 31.143412, 41.706829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756662, 30.857943, 42.233505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795332, 31.253780, 42.190868>,  <31.818533, 31.491283, 42.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795332, 31.253780, 42.190868>,  <31.756662, 30.857943, 42.233505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795332, 31.253780, 42.190868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168961, 0.089222, 0.981576,
		0.980870, -0.112901, -0.158577,
		0.096672, 0.989592, -0.106591,
		31.824333, 31.550657, 42.158890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214741, 31.029625, 42.668720>,  <31.756662, 30.857943, 42.233505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214741, 31.029625, 42.668720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042740, 31.385695, 42.608471>,  <31.939539, 31.599337, 42.572323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042740, 31.385695, 42.608471>,  <32.214741, 31.029625, 42.668720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042740, 31.385695, 42.608471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141573, 0.231256, 0.962537,
		0.891657, 0.392573, -0.225466,
		-0.430006, 0.890173, -0.150624,
		31.913738, 31.652746, 42.563282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770931, 31.419651, 42.987576>,  <32.214741, 31.029625, 42.668720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770931, 31.419651, 42.987576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402172, 31.573315, 42.967480>,  <32.180916, 31.665512, 42.955421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402172, 31.573315, 42.967480>,  <32.770931, 31.419651, 42.987576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402172, 31.573315, 42.967480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024461, 0.187128, 0.982031,
		0.386655, 0.904105, -0.181910,
		-0.921900, 0.384157, -0.050239,
		32.125603, 31.688562, 42.952408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395996, 31.687662, 43.096386>,  <32.770931, 31.419651, 42.987576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395996, 31.687662, 43.096386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738979, 31.532415, 43.231514>,  <33.944771, 31.439266, 43.312592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738979, 31.532415, 43.231514>,  <33.395996, 31.687662, 43.096386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738979, 31.532415, 43.231514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266205, -0.227234, -0.936750,
		0.440335, 0.893156, -0.091525,
		0.857461, -0.388119, 0.337822,
		33.996220, 31.415979, 43.332859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977158, 31.849367, 42.633026>,  <33.395996, 31.687662, 43.096386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977158, 31.849367, 42.633026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112167, 31.534348, 42.839268>,  <34.193172, 31.345335, 42.963013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112167, 31.534348, 42.839268>,  <33.977158, 31.849367, 42.633026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112167, 31.534348, 42.839268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308299, -0.425044, -0.851052,
		0.889397, 0.446212, 0.099336,
		0.337527, -0.787548, 0.515600,
		34.213425, 31.298082, 42.993946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692081, 31.745363, 42.525558>,  <33.977158, 31.849367, 42.633026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692081, 31.745363, 42.525558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595959, 31.372938, 42.635376>,  <34.538284, 31.149483, 42.701267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595959, 31.372938, 42.635376>,  <34.692081, 31.745363, 42.525558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595959, 31.372938, 42.635376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356051, -0.347667, -0.867384,
		0.903040, -0.110684, 0.415052,
		-0.240306, -0.931062, 0.274548,
		34.523869, 31.093620, 42.717739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254063, 31.361839, 42.293644>,  <34.692081, 31.745363, 42.525558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254063, 31.361839, 42.293644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950111, 31.110039, 42.358532>,  <34.767742, 30.958958, 42.397465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950111, 31.110039, 42.358532>,  <35.254063, 31.361839, 42.293644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950111, 31.110039, 42.358532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174563, -0.437972, -0.881878,
		0.626194, -0.641799, 0.442692,
		-0.759875, -0.629504, 0.162221,
		34.722149, 30.921188, 42.407200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546146, 30.744219, 42.308197>,  <35.254063, 31.361839, 42.293644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546146, 30.744219, 42.308197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168846, 30.650803, 42.213753>,  <34.942467, 30.594753, 42.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168846, 30.650803, 42.213753>,  <35.546146, 30.744219, 42.308197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168846, 30.650803, 42.213753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322178, -0.471073, -0.821153,
		0.080548, -0.850617, 0.519579,
		-0.943246, -0.233539, -0.236106,
		34.885872, 30.580740, 42.142921>
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
