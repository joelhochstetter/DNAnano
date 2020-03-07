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
	<0.238277, 0.558194, 2.418225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.126715, 0.661446, 2.788216>,  <0.059777, 0.723396, 3.010210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.126715, 0.661446, 2.788216>,  <0.238277, 0.558194, 2.418225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.126715, 0.661446, 2.788216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152934, 0.962844, -0.222582,
		-0.948063, 0.079381, -0.308019,
		-0.278905, 0.258128, 0.924977,
		0.043043, 0.738884, 3.065709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.205604, 1.159092, 2.318775>,  <0.238277, 0.558194, 2.418225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.205604, 1.159092, 2.318775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.063683, 1.157898, 2.692749>,  <0.021471, 1.157181, 2.917134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.063683, 1.157898, 2.692749>,  <-0.205604, 1.159092, 2.318775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.063683, 1.157898, 2.692749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119004, 0.992006, -0.041993,
		-0.927336, 0.126160, 0.352323,
		0.354805, -0.002986, 0.934936,
		0.042759, 1.157002, 2.973230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.597895, 1.723243, 2.839383>,  <-0.205604, 1.159092, 2.318775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.597895, 1.723243, 2.839383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.208052, 1.633690, 2.841049>,  <0.025854, 1.579958, 2.842049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.208052, 1.633690, 2.841049>,  <-0.597895, 1.723243, 2.839383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.208052, 1.633690, 2.841049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223922, 0.974425, -0.018831,
		0.000157, 0.019285, 0.999814,
		0.974607, -0.223883, 0.004166,
		0.084330, 1.566525, 2.842299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.176396, 1.948208, 3.421335>,  <-0.597895, 1.723243, 2.839383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.176396, 1.948208, 3.421335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.078672, 1.949188, 3.113213>,  <0.231713, 1.949776, 2.928339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.078672, 1.949188, 3.113213>,  <-0.176396, 1.948208, 3.421335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.078672, 1.949188, 3.113213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012642, 0.999827, 0.013645,
		0.770205, -0.018439, 0.637530,
		0.637671, 0.002449, -0.770305,
		0.269974, 1.949923, 2.882121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.450199, 2.392264, 3.573250>,  <-0.176396, 1.948208, 3.421335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.450199, 2.392264, 3.573250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.369003, 2.368286, 3.182312>,  <0.320286, 2.353899, 2.947749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.369003, 2.368286, 3.182312>,  <0.450199, 2.392264, 3.573250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.369003, 2.368286, 3.182312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147063, 0.988669, -0.030096,
		0.968074, 0.137622, -0.209506,
		-0.202990, -0.059945, -0.977344,
		0.308106, 2.350302, 2.889109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.755537, 3.003071, 3.259418>,  <0.450199, 2.392264, 3.573250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.755537, 3.003071, 3.259418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.496058, 2.845535, 2.998932>,  <0.340370, 2.751014, 2.842640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.496058, 2.845535, 2.998932>,  <0.755537, 3.003071, 3.259418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.496058, 2.845535, 2.998932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332102, 0.916406, -0.223400,
		0.684762, 0.071351, -0.725265,
		-0.648698, -0.393838, -0.651216,
		0.301448, 2.727384, 2.803567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690946, 3.465326, 2.617254>,  <0.755537, 3.003071, 3.259418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690946, 3.465326, 2.617254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344328, 3.265968, 2.627869>,  <0.136357, 3.146354, 2.634237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344328, 3.265968, 2.627869>,  <0.690946, 3.465326, 2.617254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.344328, 3.265968, 2.627869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491516, 0.842937, -0.218789,
		0.086675, -0.202634, -0.975411,
		-0.866544, -0.498394, 0.026536,
		0.084365, 3.116450, 2.635829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.351080, 3.859121, 2.106081>,  <0.690946, 3.465326, 2.617254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.351080, 3.859121, 2.106081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083954, 3.626801, 2.292282>,  <-0.076322, 3.487408, 2.404003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.083954, 3.626801, 2.292282>,  <0.351080, 3.859121, 2.106081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.083954, 3.626801, 2.292282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674290, 0.736911, -0.047910,
		-0.315208, -0.345878, -0.883749,
		-0.667816, -0.580801, 0.465502,
		-0.116391, 3.452560, 2.431933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.923687, 4.318731, 2.926200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.612847, 4.202194, 3.149353>,  <4.426342, 4.132272, 3.283245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.612847, 4.202194, 3.149353>,  <4.923687, 4.318731, 2.926200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.612847, 4.202194, 3.149353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008672, -0.891279, -0.453372,
		0.629316, -0.347478, 0.695141,
		-0.777102, -0.291342, 0.557883,
		4.379716, 4.114791, 3.316718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.013119, 3.737745, 3.406803>,  <4.923687, 4.318731, 2.926200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.013119, 3.737745, 3.406803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.643049, 3.765297, 3.257507>,  <4.421007, 3.781828, 3.167930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.643049, 3.765297, 3.257507>,  <5.013119, 3.737745, 3.406803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643049, 3.765297, 3.257507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104015, -0.899730, -0.423872,
		-0.365011, -0.430978, 0.825242,
		-0.925174, 0.068880, -0.373239,
		4.365497, 3.785961, 3.145535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.654134, 3.175041, 3.633457>,  <5.013119, 3.737745, 3.406803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.654134, 3.175041, 3.633457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.537277, 3.331886, 3.284538>,  <4.467164, 3.425994, 3.075187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.537277, 3.331886, 3.284538>,  <4.654134, 3.175041, 3.633457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.537277, 3.331886, 3.284538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309776, -0.824117, -0.474204,
		-0.904816, -0.408751, 0.119291,
		-0.292141, 0.392113, -0.872296,
		4.449635, 3.449520, 3.022849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.216293, 2.703235, 3.245963>,  <4.654134, 3.175041, 3.633457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.216293, 2.703235, 3.245963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417347, 2.944901, 2.998627>,  <4.537979, 3.089900, 2.850225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.417347, 2.944901, 2.998627>,  <4.216293, 2.703235, 3.245963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.417347, 2.944901, 2.998627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400279, -0.796614, -0.452972,
		-0.766248, -0.019829, -0.642240,
		0.502635, 0.604163, -0.618341,
		4.568137, 3.126149, 2.813124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993771, 2.458122, 2.494762>,  <4.216293, 2.703235, 3.245963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993771, 2.458122, 2.494762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.338893, 2.654877, 2.541435>,  <4.545967, 2.772929, 2.569439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.338893, 2.654877, 2.541435>,  <3.993771, 2.458122, 2.494762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.338893, 2.654877, 2.541435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492041, -0.764124, -0.417145,
		-0.116026, 0.417328, -0.901318,
		0.862806, 0.491886, 0.116684,
		4.597735, 2.802442, 2.576440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.417827, 2.479711, 1.863816>,  <3.993771, 2.458122, 2.494762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.417827, 2.479711, 1.863816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.682070, 2.521660, 2.161163>,  <4.840616, 2.546829, 2.339572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.682070, 2.521660, 2.161163>,  <4.417827, 2.479711, 1.863816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.682070, 2.521660, 2.161163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472174, -0.827862, -0.302815,
		0.583650, 0.551042, -0.596411,
		0.660609, 0.104872, 0.743369,
		4.880253, 2.553121, 2.384174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.030459, 2.147192, 1.587846>,  <4.417827, 2.479711, 1.863816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.030459, 2.147192, 1.587846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.091301, 2.196877, 1.980057>,  <5.127806, 2.226688, 2.215384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.091301, 2.196877, 1.980057>,  <5.030459, 2.147192, 1.587846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.091301, 2.196877, 1.980057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502826, -0.863816, 0.031426,
		0.850899, 0.488255, -0.193848,
		0.152105, 0.124213, 0.980528,
		5.136932, 2.234140, 2.274215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.694801, 2.185046, 1.720496>,  <5.030459, 2.147192, 1.587846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.694801, 2.185046, 1.720496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.534104, 2.051849, 2.061722>,  <5.437685, 1.971931, 2.266457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.534104, 2.051849, 2.061722>,  <5.694801, 2.185046, 1.720496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.534104, 2.051849, 2.061722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566336, -0.822383, -0.054305,
		0.719629, 0.461305, 0.518973,
		-0.401743, -0.332992, 0.853064,
		5.413581, 1.951952, 2.317641>
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
